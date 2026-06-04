-- PROCEDIMIENTOS ALMACENADOS PARA TIQUICIA LODGE (POSTGRESQL)
-- Fecha: 2026-06-03

--------------------------------------------------------------------------------
-- 1. GESTIÓN DE USUARIOS
--------------------------------------------------------------------------------

-- Insertar Usuario
CREATE OR REPLACE PROCEDURE sp_InsertarUsuario(
    p_Nombre VARCHAR,
    p_PrimerApellido VARCHAR,
    p_SegundoApellido VARCHAR,
    p_Correo VARCHAR,
    p_Contrasena VARCHAR,
    p_IdNacionalidad INT,
    p_Direccion VARCHAR,
    p_IdDistrito INT,
    p_FechaNacimiento DATE,
    p_Genero CHAR,
    p_IdRol INT,
    p_IdEstado INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Usuarios (
        Nombre, PrimerApellido, SegundoApellido, Correo, Contrasena, 
        IdNacionalidad, Direccion, IdDistrito, FechaNacimiento, Genero, 
        IdRol, IdEstado, FechaRegistro
    ) VALUES (
        p_Nombre, p_PrimerApellido, p_SegundoApellido, p_Correo, p_Contrasena, 
        p_IdNacionalidad, p_Direccion, p_IdDistrito, p_FechaNacimiento, p_Genero, 
        p_IdRol, p_IdEstado, CURRENT_TIMESTAMP
    );
END;
$$;

-- Actualizar Usuario
CREATE OR REPLACE PROCEDURE sp_ActualizarUsuario(
    p_IdUsuario INT,
    p_Nombre VARCHAR,
    p_PrimerApellido VARCHAR,
    p_SegundoApellido VARCHAR,
    p_Direccion VARCHAR,
    p_IdDistrito INT,
    p_IdEstado INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Usuarios SET
        Nombre = p_Nombre,
        PrimerApellido = p_PrimerApellido,
        SegundoApellido = p_SegundoApellido,
        Direccion = p_Direccion,
        IdDistrito = p_IdDistrito,
        IdEstado = p_IdEstado
    WHERE IdUsuario = p_IdUsuario;
END;
$$;

--------------------------------------------------------------------------------
-- 2. GESTIÓN DE PROPIEDADES
--------------------------------------------------------------------------------

-- Insertar Propiedad
CREATE OR REPLACE PROCEDURE sp_InsertarPropiedad(
    p_IdProveedor INT,
    p_IdTipoAlojamiento INT,
    p_IdZona INT,
    p_IdDistrito INT,
    p_NombrePropiedad VARCHAR,
    p_DescripcionLarga TEXT,
    p_UbicacionDetallada VARCHAR,
    p_CantidadHabitaciones INT,
    p_CantidadCamas INT,
    p_CapacidadMaxima INT,
    p_MontoXNoche DECIMAL,
    p_Moneda INT,
    p_IdEstado INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Propiedades (
        IdProveedor, IdTipoAlojamiento, IdZona, IdDistrito, NombrePropiedad, 
        DescripcionLarga, UbicacionDetallada, CantidadHabitaciones, 
        CantidadCamas, CapacidadMaxima, MontoXNoche, Moneda, IdEstado, FechaRegistro
    ) VALUES (
        p_IdProveedor, p_IdTipoAlojamiento, p_IdZona, p_IdDistrito, p_NombrePropiedad, 
        p_DescripcionLarga, p_UbicacionDetallada, p_CantidadHabitaciones, 
        p_CantidadCamas, p_CapacidadMaxima, p_MontoXNoche, p_Moneda, p_IdEstado, CURRENT_TIMESTAMP
    );
END;
$$;

--------------------------------------------------------------------------------
-- 3. GESTIÓN DE RESERVAS Y PAGOS
--------------------------------------------------------------------------------

-- Crear Reserva
CREATE OR REPLACE PROCEDURE sp_CrearReserva(
    p_IdCliente INT,
    p_IdPropiedad INT,
    p_FechaEntrada DATE,
    p_FechaSalida DATE,
    p_CantidadPersonas INT,
    p_PrecioPorNoche DECIMAL,
    p_Subtotal DECIMAL,
    p_Comision DECIMAL,
    p_Total DECIMAL,
    p_IdEstado INT
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_CantidadNoches INT;
BEGIN
    v_CantidadNoches := p_FechaSalida - p_FechaEntrada;
    
    INSERT INTO Reservas (
        IdCliente, IdPropiedad, FechaEntrada, FechaSalida, CantidadPersonas, 
        CantidadNoches, PrecioPorNoche, Subtotal, Comision, Total, IdEstado, FechaReserva
    ) VALUES (
        p_IdCliente, p_IdPropiedad, p_FechaEntrada, p_FechaSalida, p_CantidadPersonas, 
        v_CantidadNoches, p_PrecioPorNoche, p_Subtotal, p_Comision, p_Total, p_IdEstado, CURRENT_TIMESTAMP
    );
END;
$$;

-- Registrar Pago
CREATE OR REPLACE PROCEDURE sp_RegistrarPago(
    p_IdReserva INT,
    p_Monto_CRC DECIMAL,
    p_MontoUSD DECIMAL,
    p_MetodoPago VARCHAR,
    p_EstadoPago VARCHAR,
    p_ComprobanteURL VARCHAR,
    p_IdUsuarioRegistra INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Pagos (
        IdReserva, Monto_CRC, MontoUSD, FechaPago, MetodoPago, 
        EstadoPago, ComprobanteURL, IdUsuarioRegistra
    ) VALUES (
        p_IdReserva, p_Monto_CRC, p_MontoUSD, CURRENT_TIMESTAMP, p_MetodoPago, 
        p_EstadoPago, p_ComprobanteURL, p_IdUsuarioRegistra
    );
    
    -- Si el pago es completado, actualizar el estado de la reserva
    IF p_EstadoPago = 'Completado' THEN
        UPDATE Reservas SET IdEstado = (SELECT IdEstado FROM Estados WHERE NombreEstado = 'Confirmada')
        WHERE IdReserva = p_IdReserva;
    END IF;
END;
$$;

--------------------------------------------------------------------------------
-- 4. UTILIDADES Y AUDITORÍA
--------------------------------------------------------------------------------

-- Registrar Acción en Bitácora
CREATE OR REPLACE PROCEDURE sp_RegistrarBitacora(
    p_IdUsuario INT,
    p_Accion VARCHAR,
    p_Descripcion VARCHAR,
    p_IPAddress VARCHAR,
    p_TablaAfectada VARCHAR,
    p_RegistroAfectado INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO BitacoraAcciones (
        IdUsuario, Accion, Descripcion, IPAddress, Fecha, TablaAfectada, RegistroAfectado
    ) VALUES (
        p_IdUsuario, p_Accion, p_Descripcion, p_IPAddress, CURRENT_TIMESTAMP, p_TablaAfectada, p_RegistroAfectado
    );
END;
$$;

-- Registrar Error
CREATE OR REPLACE PROCEDURE sp_RegistrarError(
    p_Usuario INT,
    p_Modulo VARCHAR,
    p_ErrorMensaje VARCHAR,
    p_ErrorDetalle TEXT,
    p_IPAddress VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO LogsErrores (
        Fecha, Usuario, Modulo, ErrorMensaje, ErrorDetalle, IPAddress, Resuelto
    ) VALUES (
        CURRENT_TIMESTAMP, p_Usuario, p_Modulo, p_ErrorMensaje, p_ErrorDetalle, p_IPAddress, FALSE
    );
END;
$$;
