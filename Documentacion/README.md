# Arquitectura de Base de Datos: Tiquicia Lodge (PostgreSQL)

Este repositorio contiene la definición y lógica de base de datos para el sistema **Tiquicia Lodge**, diseñada bajo estándares de ingeniería senior para garantizar escalabilidad, seguridad y trazabilidad.

## 1. Estándar de Auditoría (DB Senior Audit Standard)
Todas las tablas siguen un patrón de auditoría riguroso para cumplimiento legal y seguridad forense.

- **Columnas de Auditoría:** `CreadoPor`, `FechaCreacion`, `ModificadoPor`, `FechaModificacion`, `IpOrigen`, `Dispositivo`.
- **Soft Delete:** Implementado mediante `EsEliminado`, `FechaEliminacion` y `UsuarioElimino`.
- **Justificación:** Garantiza la integridad histórica de los datos y permite recuperar registros eliminados accidentalmente sin romper la integridad referencial.

## 2. Diccionario de Datos por Módulos

### 2.1 Módulo: Infraestructura y Maestros
Tablas de baja volatilidad que sirven de cimiento para el sistema.

| Tabla | Propósito | Justificación Técnica |
| :--- | :--- | :--- |
| **Roles** | Perfiles de acceso (Admin, Proveedor, Cliente). | Control RBAC (Role-Based Access Control). |
| **Estados** | Estados transversales del sistema. | Centralización para evitar lógica "hardcoded". |
| **Monedas** | Soporte para CRC y USD. | Preparación para escalabilidad financiera. |
| **ConfiguracionSistema** | Parámetros globales (IVA, comisiones). | Ajustes de negocio sin cambios en código. |

### 2.2 Módulo: Geografía (Costa Rica Core)
Estructura normalizada según la división territorial de CR.

- **Provincias / Cantones / Distritos:** Jerarquía 1:N estricta.
- **ZonasTicas:** Clasificación comercial para marketing y segmentación turística.

### 2.3 Módulo: Usuarios e Identidad
- **Usuarios:** Gestión central de actores con validaciones de unicidad.
- **Sesiones / Verificaciones:** Capa de seguridad para evitar secuestro de sesiones y fraude de identidad (KYC).

### 2.4 Módulo: Inventario y Propiedades
- **Propiedades:** Utiliza `GEOGRAPHY` (PostGIS) para búsquedas espaciales por radio.
- **PreciosTemporada:** Implementa lógica de precios dinámicos según el calendario turístico de CR.
- **PropiedadEquipamiento:** Relación N:M para gestión dinámica de amenidades.

### 2.5 Módulo: Operaciones y Finanzas
- **Reservas:** Orquestador de la transacción comercial.
- **Pagos:** Registro multicanal (SINPE Móvil, Tarjetas, PayPal).
- **Facturas:** Referencia a documentos legales para cumplimiento tributario.
- **Comisiones:** Gestión transparente de la rentabilidad de la plataforma.

### 2.6 Módulo: Feedback y Soporte
- **CalificacionesPropiedad:** Feedback de clientes (incluye `CHECK` de 1-5 estrellas).
- **CalificacionesCliente:** Sistema de reputación para los huéspedes.
- **BitacoraAcciones / LogsErrores:** Monitoreo y depuración proactiva del sistema.

## 3. Consideraciones de Ingeniería Senior

1.  **Integridad:** Uso mandatorio de `FOREIGN KEY` con restricciones de integridad.
2.  **Rendimiento:** Optimizado para índices B-Tree y GIST (Geoespacial).
3.  **Lógica Centralizada:** Los procedimientos almacenados y funciones en la carpeta `StoredProcedures` garantizan que las reglas de negocio sean consistentes entre todas las aplicaciones cliente.
4.  **Extensibilidad:** El uso de tablas maestras y configuraciones permite añadir nuevas categorías, tipos de alojamiento o métodos de pago sin alterar el esquema central.

---
**Rol:** DB Senior Engineer  
**Fecha de Actualización:** 2026-06-03
