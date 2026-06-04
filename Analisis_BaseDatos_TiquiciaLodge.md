# ANÁLISIS DE BASE DE DATOS - TIQUICIA LODGE

Este documento contiene el análisis detallado de la estructura de la base de datos para el proyecto **Tiquicia Lodge**, consolidando la información técnica de los esquemas, procedimientos y lógica de negocio.

---

## 1. Información General

- **Nombre del Sistema:** Tiquicia Lodge
- **Propósito:** Gestión integral de alojamientos, experiencias turísticas y reservas en Costa Rica.
- **Tecnología Original:** SQL Server (Scripts .sql)
- **Tecnología de Migración:** PostgreSQL (Scripts .sql)
- **Fecha de Generación:** 2026-06-03

---

## 2. Módulos Principales y Funcionalidad

### A. Gestión de Usuarios y Seguridad
- **Usuarios:** Almacena perfiles de Clientes, Proveedores y Administradores.
- **Roles:** Define permisos y niveles de acceso (RBAC).
- **Sesiones:** Control de autenticación y recuperación de credenciales.
- **Verificación:** Gestión de documentos de identidad y validación de perfiles.
- **Contacto:** Soporte para múltiples correos y teléfonos por usuario.

### B. Propiedades y Alojamiento
- **Maestro de Propiedades:** Datos detallados de cada alojamiento (ubicación, descripción, capacidad).
- **Categorización:** Clasificación por tipo de hospedaje y zonas turísticas.
- **Multimedia:** Repositorio de fotos y videos por propiedad.
- **Amenidades:** Gestión de equipamiento (WiFi, piscina, AC, etc.) y servicios adicionales.
- **Políticas:** Definición de reglas de convivencia y condiciones de cancelación.

### C. Reservas y Operaciones
- **Ciclo de Reservas:** Control de estados (Pendiente, Pagada, Completada, Cancelada).
- **Precios Dinámicos:** Gestión de tarifas por temporadas y calendarios.
- **Ofertas:** Sistema de descuentos y promociones aplicables.
- **Logística:** Gestión de horarios de Check-in y Check-out.

### D. Finanzas y Pagos
- **Transacciones:** Soporte para múltiples métodos (SINPE Móvil, Transferencia, Tarjeta).
- **Facturación:** Emisión de facturas electrónicas y gestión de comprobantes.
- **Comisiones:** Automatización de cobros de la plataforma y liquidación a proveedores.
- **Reembolsos:** Proceso de devolución ante cancelaciones aplicables.

### E. Geografía y Turismo (Costa Rica)
- **División Territorial:** Provincias, Cantones y Distritos (Carga completa de CR).
- **Regionalización:** Zonas turísticas específicas ("Zonas Ticas").
- **Puntos de Interés:** Catálogo de lugares turísticos y comercios cercanos.
- **Experiencias:** Gestión de tours y actividades complementarias.

### F. Soporte y Comunicación
- **Help Desk:** Sistema de tickets y mensajería interna.
- **Knowledge Base:** FAQs organizadas por categorías.
- **Alertas:** Notificaciones automáticas al usuario.

### G. Métricas y Auditoría
- **Auditoría (Logs):** Bitácora completa de acciones de usuarios y logs de errores técnicos.
- **Business Intelligence:** Métricas diarias de rendimiento, visitas y conversiones.

---

## 3. Inventario de Tablas (PostgreSQL)

Se han migrado y verificado las siguientes **88 tablas**:

| | | | |
|---|---|---|---|
| BitacoraAcciones | BusquedasUsuarios | CalificacionesCliente | CalificacionesPropiedad |
| Cantones | CategoriaAlojamiento | CategoriaEquipamiento | CategoriaExperiencia |
| CategoriaLugarTuristico | CategoriaServicio | CategoriasFAQ | ClicksContacto |
| ComerciosCercanos | Comisiones | ConfiguracionSistema | ContactosDirectos |
| CorreosUsuario | DashboardProveedor | Descuentos | DescuentosPropiedad |
| Distritos | DocumentosPropiedad | DocumentosVerificacion | Equipamiento |
| Estados | EvidenciasReporte | Experiencias | ExperienciasCercanas |
| FAQs | Facturas | FotosPropiedad | GananciasProveedor |
| HistorialEstadosReserva | HistorialPrecios | HorariosCheckInOut | ListaPropiedades |
| ListasDeseos | LogsErrores | LugaresTuristicos | MensajesSoporte |
| MetricasDiarias | ModulosSistema | Monedas | Nacionalidades |
| NewsletterSuscriptores | Notificaciones | Pagos | PagosComisiones |
| PagosPendientes | PlanesProveedor | PoliticasCancelacion | PreciosTemporada |
| Promociones | PromocionesPropiedad | PropiedadComercios | PropiedadEquipamiento |
| PropiedadLugares | PropiedadPoliticas | PropiedadReglas | PropiedadRequerimientos |
| PropiedadSellos | PropiedadServicios | PropiedadTransporte | Propiedades |
| Provincias | RecuperacionContrasena | Reembolsos | ReglasCasa |
| Reportes | RequerimientosReserva | Reservas | RespuestasCalificacion |
| Roles | SellosConfianza | ServiciosPropiedad | Sesiones |
| SuscripcionesProveedor | TelefonosUsuario | Temporadas | TicketsSoporte |
| TipoAlojamiento | TransporteCercano | Usuarios | VerificacionesPropiedad |
| VerificacionesUsuario | VideosPropiedad | VistasPropiedad | ZonasTicas |

---

## 4. Ingeniería de Datos y Estándares de Auditoría

Como parte de los estándares de **Ingeniería de Base de Datos Senior**, se ha implementado un sistema de auditoría exhaustivo en todas las tablas del sistema:

### Estándar de Auditoría (Audit Trail)
Todas las tablas incluyen ahora las siguientes columnas de trazabilidad:
- `CreadoPor`: Usuario de DB que insertó el registro.
- `FechaCreacion`: Timestamp automático de creación.
- `ModificadoPor`: Último usuario que actualizó el registro.
- `FechaModificacion`: Timestamp de la última actualización.
- `IpOrigen`: Dirección IP desde la cual se realizó la operación.
- `Dispositivo`: Metadatos del cliente/dispositivo.
- `EsEliminado`: Flag para **Soft-Delete** (Eliminación Lógica).
- `FechaEliminacion` / `UsuarioElimino`: Trazabilidad de borrado.

### Automatización mediante Triggers
1.  **Auditoría de Cambios:** Localizados en `/PostgreSQL/Triggers/`, capturan cada `INSERT`, `UPDATE` y `DELETE` para alimentar la `BitacoraAcciones`.
2.  **Mantenimiento de Timestamps:** Los triggers actualizan automáticamente `FechaModificacion` y `ModificadoPor` sin intervención de la aplicación.
3.  **Lógica de Negocio Atómica:** Implementada en `/PostgreSQL/StoredProcedures/` para asegurar que las operaciones financieras y de seguridad cumplan con el estándar ACID.
4.  **Geo-Localización:** Integración nativa con **PostGIS** para búsquedas espaciales optimizadas.

---
*Generado por el Asistente de Código - Trae IDE*
