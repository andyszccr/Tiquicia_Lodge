-- =============================================================================
-- ARQUITECTURA DE TRIGGERS: TIQUICIA LODGE (POSTGRESQL)
-- ROL: INGENIERO DE BASE DE DATOS SENIOR
-- PROPÓSITO: AUTOMATIZACIÓN DE INTEGRIDAD, AUDITORÍA Y MÉTRICAS
-- =============================================================================

--------------------------------------------------------------------------------
-- 1. AUDITORÍA AUTOMÁTICA DE CAMBIOS (TABLAS CRÍTICAS)
--------------------------------------------------------------------------------

-- Función Genérica para Auditoría
CREATE OR REPLACE FUNCTION fn_trg_AuditoriaGeneral()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO BitacoraAcciones (Accion, Descripcion, Fecha, TablaAfectada, RegistroAfectado)
        VALUES ('INSERT', 'Nuevo registro creado', CURRENT_TIMESTAMP, TG_TABLE_NAME, 
                (CASE 
                    WHEN TG_TABLE_NAME = 'Usuarios' THEN NEW.IdUsuario 
                    WHEN TG_TABLE_NAME = 'Propiedades' THEN NEW.IdPropiedad
                    WHEN TG_TABLE_NAME = 'Reservas' THEN NEW.IdReserva
                 END));
        RETURN NEW;
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO BitacoraAcciones (Accion, Descripcion, Fecha, TablaAfectada, RegistroAfectado)
        VALUES ('UPDATE', 'Registro modificado', CURRENT_TIMESTAMP, TG_TABLE_NAME, 
                (CASE 
                    WHEN TG_TABLE_NAME = 'Usuarios' THEN OLD.IdUsuario 
                    WHEN TG_TABLE_NAME = 'Propiedades' THEN OLD.IdPropiedad
                    WHEN TG_TABLE_NAME = 'Reservas' THEN OLD.IdReserva
                 END));
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        INSERT INTO BitacoraAcciones (Accion, Descripcion, Fecha, TablaAfectada, RegistroAfectado)
        VALUES ('DELETE', 'Registro eliminado', CURRENT_TIMESTAMP, TG_TABLE_NAME, 
                (CASE 
                    WHEN TG_TABLE_NAME = 'Usuarios' THEN OLD.IdUsuario 
                    WHEN TG_TABLE_NAME = 'Propiedades' THEN OLD.IdPropiedad
                    WHEN TG_TABLE_NAME = 'Reservas' THEN OLD.IdReserva
                 END));
        RETURN OLD;
    END IF;
    RETURN NULL;
END;
$$;

-- Triggers de Auditoría
CREATE TRIGGER trg_AuditoriaUsuarios AFTER INSERT OR UPDATE OR DELETE ON Usuarios FOR EACH ROW EXECUTE FUNCTION fn_trg_AuditoriaGeneral();
CREATE TRIGGER trg_AuditoriaPropiedades AFTER INSERT OR UPDATE OR DELETE ON Propiedades FOR EACH ROW EXECUTE FUNCTION fn_trg_AuditoriaGeneral();
CREATE TRIGGER trg_AuditoriaReservas AFTER INSERT OR UPDATE OR DELETE ON Reservas FOR EACH ROW EXECUTE FUNCTION fn_trg_AuditoriaGeneral();

--------------------------------------------------------------------------------
-- 2. INTEGRIDAD DE NEGOCIO Y VALIDACIONES
--------------------------------------------------------------------------------

-- Validar que la Fecha de Salida sea mayor a la de Entrada
CREATE OR REPLACE FUNCTION fn_trg_ValidarFechasReserva()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    IF NEW.FechaSalida <= NEW.FechaEntrada THEN
        RAISE EXCEPTION 'Error de Negocio: La fecha de salida debe ser posterior a la fecha de entrada.';
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_ValidarFechasReserva BEFORE INSERT OR UPDATE ON Reservas FOR EACH ROW EXECUTE FUNCTION fn_trg_ValidarFechasReserva();

-- Actualizar Fecha de Actualización Automáticamente
CREATE OR REPLACE FUNCTION fn_trg_ActualizarTimestamp()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    NEW.FechaActualizacion = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_ActualizarTimestampPropiedades BEFORE UPDATE ON Propiedades FOR EACH ROW EXECUTE FUNCTION fn_trg_ActualizarTimestamp();

--------------------------------------------------------------------------------
-- 3. SINCRONIZACIÓN DE MÉTRICAS Y TOTALES
--------------------------------------------------------------------------------

-- Actualizar Calificación Promedio de Propiedad automáticamente
CREATE OR REPLACE FUNCTION fn_trg_ActualizarRatingPropiedad()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    UPDATE Propiedades 
    SET RatingPromedio = (SELECT AVG(Calificacion) FROM CalificacionesPropiedad WHERE IdPropiedad = NEW.IdPropiedad),
        TotalResenas = (SELECT COUNT(*) FROM CalificacionesPropiedad WHERE IdPropiedad = NEW.IdPropiedad)
    WHERE IdPropiedad = NEW.IdPropiedad;
    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_ActualizarRatingPropiedad AFTER INSERT OR UPDATE OR DELETE ON CalificacionesPropiedad FOR EACH ROW EXECUTE FUNCTION fn_trg_ActualizarRatingPropiedad();

-- Actualizar Métricas Diarias al completar una Reserva
CREATE OR REPLACE FUNCTION fn_trg_ActualizarMetricasReserva()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    -- Si la reserva pasa a estado 'Completada' o 'Pagada'
    IF (NEW.IdEstado != OLD.IdEstado AND NEW.IdEstado = (SELECT IdEstado FROM Estados WHERE NombreEstado IN ('Completada', 'Pagada'))) THEN
        INSERT INTO MetricasDiarias (Fecha, IdPropiedad, ReservasCompletadas, IngresosBrutos, IngresosComisiones)
        VALUES (CURRENT_DATE, NEW.IdPropiedad, 1, NEW.Total, NEW.Comision)
        ON CONFLICT (Fecha, IdPropiedad) DO UPDATE SET
            ReservasCompletadas = MetricasDiarias.ReservasCompletadas + 1,
            IngresosBrutos = MetricasDiarias.IngresosBrutos + NEW.Total,
            IngresosComisiones = MetricasDiarias.IngresosComisiones + NEW.Comision;
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_ActualizarMetricasReserva AFTER UPDATE ON Reservas FOR EACH ROW EXECUTE FUNCTION fn_trg_ActualizarMetricasReserva();

--------------------------------------------------------------------------------
-- 4. SEGURIDAD Y ESTADOS
--------------------------------------------------------------------------------

-- Bloquear eliminación de usuarios con reservas activas
CREATE OR REPLACE FUNCTION fn_trg_PrevenirBorradoUsuario()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM Reservas WHERE IdCliente = OLD.IdUsuario AND IdEstado NOT IN (SELECT IdEstado FROM Estados WHERE NombreEstado IN ('Completada', 'Cancelada'))) THEN
        RAISE EXCEPTION 'Seguridad: No se puede eliminar un usuario con reservas activas o pendientes.';
    END IF;
    RETURN OLD;
END;
$$;

CREATE TRIGGER trg_PrevenirBorradoUsuario BEFORE DELETE ON Usuarios FOR EACH ROW EXECUTE FUNCTION fn_trg_PrevenirBorradoUsuario();

-- Historial de Estados de Reserva Automático
CREATE OR REPLACE FUNCTION fn_trg_HistorialEstadoReserva()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    IF (OLD.IdEstado IS DISTINCT FROM NEW.IdEstado) THEN
        INSERT INTO HistorialEstadosReserva (IdReserva, IdEstadoAnterior, IdEstadoNuevo, FechaCambio, MotivoCambio)
        VALUES (NEW.IdReserva, OLD.IdEstado, NEW.IdEstado, CURRENT_TIMESTAMP, 'Cambio de estado automático via Trigger');
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_HistorialEstadoReserva AFTER UPDATE ON Reservas FOR EACH ROW EXECUTE FUNCTION fn_trg_HistorialEstadoReserva();
