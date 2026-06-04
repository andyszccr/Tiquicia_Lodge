-- =============================================================================
-- ARQUITECTURA INTEGRAL DE BASE DE DATOS: TIQUICIA LODGE (POSTGRESQL)
-- ROL: INGENIERO DE BASE DE DATOS SENIOR
-- PROPÓSITO: GESTIÓN INTEGRAL DE LÓGICA DE NEGOCIO, SEGURIDAD Y MÉTRICAS
-- =============================================================================

--------------------------------------------------------------------------------
-- 1. SEGURIDAD, AUTENTICACIÓN Y SESIONES
--------------------------------------------------------------------------------

-- Validar Login y Registrar Sesión
CREATE OR REPLACE FUNCTION fn_ValidarLogin(
    p_Correo VARCHAR,
    p_Contrasena VARCHAR,
    p_IPAddress VARCHAR
) RETURNS TABLE (
    IdUsuario INT,
    NombreCompleto TEXT,
    Rol VARCHAR,
    Estado VARCHAR
) LANGUAGE plpgsql AS $$
DECLARE
    v_IdUsuario INT;
BEGIN
    SELECT u.IdUsuario INTO v_IdUsuario
    FROM Usuarios u
    WHERE u.Correo = p_Correo AND u.Contrasena = p_Contrasena; -- En prod usar hashing

    IF FOUND THEN
        -- Actualizar último acceso
        UPDATE Usuarios SET UltimoAcceso = CURRENT_TIMESTAMP WHERE IdUsuario = v_IdUsuario;
        
        -- Registrar en bitácora
        INSERT INTO BitacoraAcciones (IdUsuario, Accion, Descripcion, IPAddress, Fecha)
        VALUES (v_IdUsuario, 'LOGIN', 'Inicio de sesión exitoso', p_IPAddress, CURRENT_TIMESTAMP);

        RETURN QUERY
        SELECT u.IdUsuario, 
               (u.Nombre || ' ' || u.PrimerApellido)::TEXT, 
               r.NombreRol, 
               e.NombreEstado
        FROM Usuarios u
        JOIN Roles r ON u.IdRol = r.IdRol
        JOIN Estados e ON u.IdEstado = e.IdEstado
        WHERE u.IdUsuario = v_IdUsuario;
    ELSE
        INSERT INTO LogsErrores (Fecha, ErrorMensaje, IPAddress)
        VALUES (CURRENT_TIMESTAMP, 'Intento de login fallido: ' || p_Correo, p_IPAddress);
        RETURN;
    END IF;
END;
$$;

--------------------------------------------------------------------------------
-- 2. LÓGICA AVANZADA DE RESERVAS Y DISPONIBILIDAD
--------------------------------------------------------------------------------

-- Verificar Disponibilidad de Propiedad
CREATE OR REPLACE FUNCTION fn_VerificarDisponibilidad(
    p_IdPropiedad INT,
    p_FechaEntrada DATE,
    p_FechaSalida DATE
) RETURNS BOOLEAN LANGUAGE plpgsql AS $$
BEGIN
    RETURN NOT EXISTS (
        SELECT 1 FROM Reservas
        WHERE IdPropiedad = p_IdPropiedad
        AND IdEstado NOT IN (SELECT IdEstado FROM Estados WHERE NombreEstado IN ('Cancelada', 'Rechazada'))
        AND (
            (p_FechaEntrada BETWEEN FechaEntrada AND (FechaSalida - INTERVAL '1 day'))
            OR (p_FechaSalida BETWEEN (FechaEntrada + INTERVAL '1 day') AND FechaSalida)
            OR (FechaEntrada BETWEEN p_FechaEntrada AND (p_FechaSalida - INTERVAL '1 day'))
        )
    );
END;
$$;

-- Calcular Precio Total (Incluyendo Temporadas y Descuentos)
CREATE OR REPLACE FUNCTION fn_CalcularPrecioReserva(
    p_IdPropiedad INT,
    p_FechaEntrada DATE,
    p_FechaSalida DATE,
    p_CantidadPersonas INT
) RETURNS TABLE (
    Subtotal DECIMAL,
    MontoDescuento DECIMAL,
    MontoComision DECIMAL,
    TotalFinal DECIMAL
) LANGUAGE plpgsql AS $$
DECLARE
    v_PrecioBase DECIMAL;
    v_Noches INT;
    v_FactorTemporada DECIMAL := 1.0;
    v_DescuentoPct DECIMAL := 0.0;
    v_ComisionPct DECIMAL;
BEGIN
    v_Noches := p_FechaSalida - p_FechaEntrada;
    
    -- Obtener precio base y comisión del plan del proveedor
    SELECT p.MontoXNoche, pl.PorcentajeComision INTO v_PrecioBase, v_ComisionPct
    FROM Propiedades p
    JOIN Usuarios u ON p.IdProveedor = u.IdUsuario
    JOIN PlanesProveedor pl ON u.IdRol = pl.IdPlan -- Simplificación lógica
    WHERE p.IdPropiedad = p_IdPropiedad;

    -- Lógica de Temporada (ejemplo simplificado)
    SELECT FactorPrecio INTO v_FactorTemporada 
    FROM PreciosTemporada 
    WHERE IdPropiedad = p_IdPropiedad 
    AND (p_FechaEntrada BETWEEN FechaInicio AND FechaFin);
    
    v_FactorTemporada := COALESCE(v_FactorTemporada, 1.0);
    
    Subtotal := (v_PrecioBase * v_Noches * v_FactorTemporada);
    
    -- Buscar descuentos activos
    SELECT MAX(d.ValorDescuento) INTO v_DescuentoPct
    FROM Descuentos d
    JOIN DescuentosPropiedad dp ON d.IdDescuento = dp.IdDescuento
    WHERE dp.IdPropiedad = p_IdPropiedad 
    AND d.Activo = TRUE 
    AND (CURRENT_DATE BETWEEN d.FechaInicio AND d.FechaFin);
    
    v_DescuentoPct := COALESCE(v_DescuentoPct, 0.0);
    MontoDescuento := Subtotal * (v_DescuentoPct / 100);
    MontoComision := (Subtotal - MontoDescuento) * (v_ComisionPct / 100);
    TotalFinal := (Subtotal - MontoDescuento);
    
    RETURN NEXT;
END;
$$;

--------------------------------------------------------------------------------
-- 3. GESTIÓN FINANCIERA Y PAGOS
--------------------------------------------------------------------------------

-- Procesar Pago y Generar Factura
CREATE OR REPLACE PROCEDURE sp_ProcesarPagoCompleto(
    p_IdReserva INT,
    p_Monto DECIMAL,
    p_MetodoPago VARCHAR,
    p_Referencia VARCHAR,
    p_IdUsuarioRegistra INT
) LANGUAGE plpgsql AS $$
DECLARE
    v_IdFactura INT;
    v_NumeroFactura VARCHAR;
BEGIN
    -- 1. Registrar el Pago
    INSERT INTO Pagos (IdReserva, Monto_CRC, FechaPago, MetodoPago, EstadoPago, ReferenciaBanco, IdUsuarioRegistra)
    VALUES (p_IdReserva, p_Monto, CURRENT_TIMESTAMP, p_MetodoPago, 'Completado', p_Referencia, p_IdUsuarioRegistra);

    -- 2. Generar Número de Factura (FE-YYYYMMDD-ID)
    v_NumeroFactura := 'FE-' || to_char(CURRENT_DATE, 'YYYYMMDD') || '-' || p_IdReserva;

    -- 3. Crear Factura
    INSERT INTO Facturas (IdReserva, NumeroFactura, FechaEmision, MontoTotal, Enviada)
    VALUES (p_IdReserva, v_NumeroFactura, CURRENT_TIMESTAMP, p_Monto, FALSE)
    RETURNING IdFactura INTO v_IdFactura;

    -- 4. Actualizar Estado de Reserva
    UPDATE Reservas SET IdEstado = (SELECT IdEstado FROM Estados WHERE NombreEstado = 'Pagada')
    WHERE IdReserva = p_IdReserva;

    -- 5. Calcular Ganancia Proveedor
    INSERT INTO Comisiones (IdReserva, IdProveedor, PorcentajeAplicado, MontoComision, FechaCalculo, Pagada)
    SELECT r.IdReserva, pr.IdProveedor, pl.PorcentajeComision, 
           (r.Total * pl.PorcentajeComision / 100), CURRENT_TIMESTAMP, FALSE
    FROM Reservas r
    JOIN Propiedades pr ON r.IdPropiedad = pr.IdPropiedad
    JOIN Usuarios u ON pr.IdProveedor = u.IdUsuario
    JOIN PlanesProveedor pl ON 1=1 -- Lógica de plan según contrato
    WHERE r.IdReserva = p_IdReserva;

END;
$$;

--------------------------------------------------------------------------------
-- 4. BÚSQUEDA GEOESPACIAL Y FILTROS (POSTGIS)
--------------------------------------------------------------------------------

-- Buscar Propiedades por Cercanía (Radio KM)
CREATE OR REPLACE FUNCTION fn_BuscarPropiedadesCercanas(
    p_Latitud DOUBLE PRECISION,
    p_Longitud DOUBLE PRECISION,
    p_RadioKM INT
) RETURNS TABLE (
    IdPropiedad INT,
    NombrePropiedad VARCHAR,
    DistanciaMetros DOUBLE PRECISION,
    Precio DECIMAL
) LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY
    SELECT p.IdPropiedad, p.NombrePropiedad,
           ST_Distance(p.Coordenadas, ST_SetSRID(ST_MakePoint(p_Longitud, p_Latitud), 4326)::geography) as Distancia,
           p.MontoXNoche
    FROM Propiedades p
    WHERE ST_DWithin(p.Coordenadas, ST_SetSRID(ST_MakePoint(p_Longitud, p_Latitud), 4326)::geography, p_RadioKM * 1000)
    AND p.IdEstado = (SELECT IdEstado FROM Estados WHERE NombreEstado = 'Activa')
    ORDER BY Distancia;
END;
$$;

--------------------------------------------------------------------------------
-- 5. DASHBOARD Y ESTADÍSTICAS
--------------------------------------------------------------------------------

-- Obtener Resumen Ejecutivo para Admin
CREATE OR REPLACE FUNCTION fn_ObtenerResumenAdmin()
RETURNS TABLE (
    TotalUsuarios INT,
    TotalPropiedades INT,
    ReservasMesActual INT,
    IngresosMensuales_CRC DECIMAL,
    ComisionesPendientes DECIMAL
) LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY
    SELECT 
        (SELECT COUNT(*)::INT FROM Usuarios),
        (SELECT COUNT(*)::INT FROM Propiedades),
        (SELECT COUNT(*)::INT FROM Reservas WHERE date_trunc('month', FechaReserva) = date_trunc('month', CURRENT_DATE)),
        (SELECT COALESCE(SUM(MontoTotal), 0) FROM Facturas WHERE date_trunc('month', FechaEmision) = date_trunc('month', CURRENT_DATE)),
        (SELECT COALESCE(SUM(MontoComision), 0) FROM Comisiones WHERE Pagada = FALSE);
END;
$$;

--------------------------------------------------------------------------------
-- 6. MANTENIMIENTO Y LIMPIEZA
--------------------------------------------------------------------------------

-- Cancelar Reservas Expiradas (Sin Pago)
CREATE OR REPLACE PROCEDURE sp_MantenimientoReservasExpiradas()
LANGUAGE plpgsql AS $$
BEGIN
    UPDATE Reservas 
    SET IdEstado = (SELECT IdEstado FROM Estados WHERE NombreEstado = 'Expirada')
    WHERE IdEstado = (SELECT IdEstado FROM Estados WHERE NombreEstado = 'Pendiente')
    AND FechaReserva < (CURRENT_TIMESTAMP - INTERVAL '24 hours');
    
    -- Registrar en bitácora el mantenimiento
    INSERT INTO BitacoraAcciones (Accion, Descripcion, Fecha)
    VALUES ('SISTEMA_MANTENIMIENTO', 'Cancelación automática de reservas expiradas', CURRENT_TIMESTAMP);
END;
$$;
