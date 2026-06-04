# Tiquicia Lodge — API Backend

Backend REST API para la plataforma **Tiquicia Lodge**, un sistema de gestión de alojamientos turísticos tipo Lodge desarrollado con .NET 10 y Clean Architecture.

El proyecto cuenta con soporte híbrido/multi-base de datos, integrando **SQL Server** y **PostgreSQL** para la persistencia. El modelo de datos completo (**88 tablas**) se encuentra documentado; la API expone actualmente **38** módulos REST sobre la base de datos en ejecución.

---

## Tech Stack

| Capa | Tecnología |
|---|---|
| **Framework** | .NET 10 / ASP.NET Core |
| **ORM** | Entity Framework Core (con Fluent API para llaves compuestas) |
| **Bases de Datos** | SQL Server (Instancia `PV`) & PostgreSQL (Instancia `PuraVida` con extensión `postgis`) |
| **Proveedores EF Core** | `Microsoft.EntityFrameworkCore.SqlServer` & `Npgsql.EntityFrameworkCore.PostgreSQL` |
| **Documentación API** | Swagger / OpenAPI (Redirección automática desde la raíz `/`) |
| **Documentación BD** | Diccionario de datos en `PuraVidaDB/` (SQL Server) y scripts de migración en `PostgreSQL/` |
| **Arquitectura** | Clean Architecture (Presentación, Aplicación, Dominio, Infraestructura SQL Server, Infraestructura PostgreSQL y proyecto SSDT) |

---

## Estructura del Proyecto

```
Tiquicia_Lodge/
│
├── Tiquicia_Lodge/                             # Capa de Presentación (API)
│   ├── Controllers/                            # Controladores REST (incluye diagnóstico de DB)
│   │   ├── DbConnectionController.cs           # Endpoint de salud para SQL Server
│   │   ├── DbConnectionPGController.cs         # Endpoint de salud para PostgreSQL
│   │   └── ... (38 controladores REST adicionales)
│   ├── Program.cs                              # Configuración del pipeline de ASP.NET, DI y contextos DB
│   └── appsettings.json                        # Cadenas de conexión (SQL Server y PostgreSQL)
│
├── Tiquicia_Lodge.Application/                 # Capa de Aplicación
│   ├── Interfaces/                            # Contratos de servicios de negocio
│   └── Services/                              # Implementaciones de lógica de negocio
│
├── Tiquicia_Lodge.Domain/                      # Capa de Dominio
│   ├── Entities/                              # 38 entidades activas expuestas por la API
│   └── Interfaces/                            # IRepository<T> genérico
│
├── Tiquicia_Lodge.Infrastructure/              # Capa de Infraestructura (SQL Server)
│   ├── Data/                                  # DbContext y configuraciones Fluent API para SQL Server
│   ├── Repositories/                          # Implementación genérica de Repositorios
│   └── Migrations/                            # Migraciones de EF Core (SQL Server)
│
├── Tiquicia_Lodge.Infrastructure.PostgreSQL/   # Capa de Infraestructura (PostgreSQL)
│   ├── Data/                                  # PostgresDbContext y configuraciones Fluent API para PostgreSQL
│   └── Repositories/                          # Repositorio genérico adaptado a PostgreSQL
│
├── PuraVidaDB/                                 # Proyecto SSDT (Esquema de SQL Server - 88 tablas)
│   ├── dbo/Tables/                            # Scripts SQL Server individuales
│   ├── PuraVidaDB.sqlproj                     # Archivo de proyecto SSDT
│   └── diccionario-de-datos.md                # Diccionario de datos consolidado
│
├── PostgreSQL/                                 # Scripts de migración y base de datos PostgreSQL
│   ├── Full_Migration_TiquiciaLodge.sql        # Esquema completo migrado (Tablas y relaciones)
│   ├── Tables/                                # Scripts de creación de tablas individuales
│   ├── StoredProcedures/                      # Procedimientos almacenados y funciones PostgreSQL
│   └── Triggers/                              # Triggers de auditoría y operaciones en PostgreSQL
│
└── PuraVida.sql                                # Script monolítico SQL Server (tablas y datos semilla)
```

---

## Módulos y Entidades

### Módulo Core (Negocio Principal)

| Entidad | Tabla SQL | Descripción |
|---|---|---|
| `Usuario` | `Usuarios` | Clientes y proveedores del sistema |
| `Propiedad` | `Propiedades` | Alojamientos publicados (soporta geolocalización) |
| `Reserva` | `Reservas` | Reservaciones de alojamiento |
| `Pago` | `Pagos` | Transacciones y comprobantes |
| `CalificacionPropiedad` | `CalificacionesPropiedad` | Reseñas y puntuaciones |
| `FotosPropiedad` | `FotosPropiedad` | Galería de imágenes |
| `Estado` | `Estados` | Catálogo de estados del sistema |
| `Roles` | `Roles` | Roles de usuario |
| `Provincias` | `Provincias` | Catálogo geográfico |

### Módulo de Seguridad y Autenticación

| Entidad | Tabla SQL | Descripción |
|---|---|---|
| `Sesiones` | `Sesiones` | Tokens JWT activos en base de datos |
| `RecuperacionContrasena` | `RecuperacionContrasena` | Tokens temporales para reset de password |
| `TelefonosUsuario` | `TelefonosUsuario` | Teléfonos de contacto por usuario |
| `CorreosUsuario` | `CorreosUsuario` | Correos adicionales por usuario |
| `VerificacionesUsuario` | `VerificacionesUsuario` | Control de verificación en 2 pasos |

### Módulo de Entorno Inmobiliario

| Entidad | Tabla SQL | Descripción |
|---|---|---|
| `Equipamiento` | `Equipamiento` | Catálogo: Piscina, Wifi, A/C, etc. |
| `PropiedadEquipamiento` | `PropiedadEquipamiento` | Relación propiedad-equipamiento |
| `ReglasCasa` | `ReglasCasa` | Reglas de la propiedad |
| `PropiedadReglas` | `PropiedadReglas` | Relación propiedad-reglas |
| `HorariosCheckInOut` | `HorariosCheckInOut` | Horarios de entrada y salida |
| `PoliticasCancelacion` | `PoliticasCancelacion` | Políticas de cancelación |
| `ComerciosCercanos` | `ComerciosCercanos` | Negocios cercanos a la propiedad |
| `TransporteCercano` | `TransporteCercano` | Opciones de transporte cercano |
| `PropiedadServicios` | `PropiedadServicios` | Servicios incluidos por propiedad |

### Módulo de Soporte Técnico

| Entidad | Tabla SQL | Descripción |
|---|---|---|
| `TicketsSoporte` | `TicketsSoporte` | Sistema de tickets de ayuda |
| `MensajesSoporte` | `MensajesSoporte` | Mensajes internos de los tickets |
| `Reportes` | `Reportes` | Denuncias de usuarios o propiedades |
| `EvidenciasReporte` | `EvidenciasReporte` | Archivos adjuntos a los reportes |
| `CategoriasFAQ` | `CategoriasFAQ` | Categorías de preguntas frecuentes |
| `FAQs` | `FAQs` | Preguntas y respuestas frecuentes |

### Módulo de Marketing y Comunicación

| Entidad | Tabla SQL | Descripción |
|---|---|---|
| `NewsletterSuscriptores` | `NewsletterSuscriptores` | Gestión de suscriptores al boletín |
| `Promociones` | `Promociones` | Ofertas y descuentos globales |
| `PromocionesPropiedad` | `PromocionesPropiedad` | Relación promoción-propiedad |

---

## Arquitectura

El proyecto implementa **Clean Architecture** con inyección desacoplada para múltiples motores de bases de datos:

```
          [API Controllers]
                 |
                 v
       [Application Services]  <-- Lógica de negocio
                 |
                 v
        [Domain Interfaces]     <-- Contratos (IRepository<T>)
           /           \
          v             v
   [Infrastructure]   [Infrastructure.PostgreSQL]
    (SQL Server)          (PostgreSQL)
```

**Patrón Repository Genérico**

La interfaz `IRepository<T>` soporta tanto llaves primarias simples como compuestas mediante `params object[]`:

```csharp
Task<T?> GetByIdAsync(params object[] keyValues);
Task DeleteAsync(params object[] keyValues);
```

Esto permite manejar tablas intermedias (`PropiedadEquipamiento`, `PropiedadReglas`, `PropiedadServicios`) que usan llaves compuestas de manera transparente.

---

## Endpoints de la API

Cada módulo expone los siguientes endpoints REST bajo `/api/[entidad]`:

| Método | Ruta | Descripción |
|---|---|---|
| `GET` | `/api/[entidad]` | Obtener todos los registros |
| `GET` | `/api/[entidad]/{id}` | Obtener por ID |
| `POST` | `/api/[entidad]` | Crear nuevo registro |
| `PUT` | `/api/[entidad]/{id}` | Actualizar registro |
| `DELETE` | `/api/[entidad]/{id}` | Eliminar registro |

Para tablas con llave compuesta, las rutas usan parámetros combinados:

```
GET    /api/PropiedadEquipamiento/{idPropiedad}/{idEquipamiento}
DELETE /api/PropiedadReglas/{idPropiedad}/{idRegla}
GET    /api/PropiedadServicios/{idPropiedad}/{idServicio}
```

### Endpoints de Diagnóstico de Conexión (Health Checks)

Se han implementado endpoints para diagnosticar el estado y conectividad en tiempo real de los motores de bases de datos configurados:

*   **SQL Server**:
    *   **Ruta**: `GET /api/DbConnection`
    *   **Respuesta Exitosa (200 OK)**:
        ```json
        {
          "status": "Healthy",
          "timestamp": "2026-06-04T22:00:00Z",
          "database": {
            "connected": true,
            "message": "Connected successfully!"
          }
        }
        ```
*   **PostgreSQL**:
    *   **Ruta**: `GET /api/DbConnectionPG`
    *   **Respuesta Exitosa (200 OK)**:
        ```json
        {
          "status": "Healthy",
          "timestamp": "2026-06-04T22:00:00Z",
          "database": {
            "type": "PostgreSQL",
            "connected": true,
            "message": "Connected successfully!"
          }
        }
        ```

---

## Instalación y Configuración

### Requisitos previos

- [.NET 10 SDK](https://dotnet.microsoft.com/download)
- **SQL Server** (LocalDB, Express o Standard)
- **PostgreSQL** (Versión 14 o superior, con la extensión **PostGIS** instalada para soporte geográfico)

### 1. Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/tiquicia-lodge.git
cd tiquicia-lodge
```

### 2. Configurar appsettings.json

Edita el archivo `Tiquicia_Lodge/appsettings.json` para establecer las cadenas de conexión correctas:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=localhost;Database=PV;Trusted_Connection=True;MultipleActiveResultSets=true;TrustServerCertificate=True",
    "PostgreSqlConnection": "Host=localhost;Port=5432;Database=PuraVida;Username=postgres;Password=tu_contrasena"
  }
}
```

> [!IMPORTANT]
> - `DefaultConnection` apunta a SQL Server (`PV`).
> - `PostgreSqlConnection` apunta a PostgreSQL (`PuraVida`). Reemplaza `tu_contrasena` con la contraseña de tu usuario administrador.

### 3. Restaurar Bases de Datos

#### SQL Server (Opción recomendada para desarrollo)
Crea una base de datos vacía llamada `PV` y ejecuta el script `PuraVida.sql` para poblar el esquema y los datos base (Estados, Roles, Provincias, etc.).

#### PostgreSQL
1. Crea una base de datos en tu servidor PostgreSQL llamada `PuraVida`.
2. Ejecuta el script `PostgreSQL/Full_Migration_TiquiciaLodge.sql` para crear las tablas maestras, relacionales y configurar la extensión `postgis`.
3. Adicionalmente, puedes ejecutar los scripts situados en `PostgreSQL/StoredProcedures/` y `PostgreSQL/Triggers/` para aplicar funciones personalizadas y triggers.

> [!WARNING]
> La migración inicial de EF Core en SQL Server está configurada como "baseline" (vacía). Evita ejecutar `dotnet ef database update` en SQL Server si ya has restaurado el script `PuraVida.sql` para evitar conflictos en el esquema.

### 4. Compilar la Solución

```bash
dotnet build Tiquicia_Lodge.slnx
```

### 5. Ejecutar la API

```bash
dotnet run --project Tiquicia_Lodge/Tiquicia_Lodge.csproj
```

La API estará disponible en `https://localhost:{puerto}/` y te redirigirá automáticamente a `/swagger` para interactuar con OpenAPI.

---

## Configuración en Program.cs (Inyección de Dependencias)

El archivo `Program.cs` registra los contextos para ambos motores de base de datos de manera simultánea:

```csharp
// Configurar contexto de la base de datos SQL Server
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// Configurar contexto de PostgreSQL con alias para evitar conflictos de nombres
builder.Services.AddDbContext<PostgresDbContext>(options =>
    options.UseNpgsql(builder.Configuration.GetConnectionString("PostgreSqlConnection")));
```

Todos los controladores y servicios utilizan la inyección del repositorio genérico y de los servicios de aplicación con ciclo de vida `Scoped`.

---

## Documentación de la Base de Datos

El esquema original completo consta de **88 tablas**. El diccionario de datos y modelos se documenta en:

| Documento | Ubicación | Formato | Uso Recomendado |
|---|---|---|---|
| **Diccionario de datos** | [`PuraVidaDB/diccionario-de-datos.md`](PuraVidaDB/diccionario-de-datos.md) | Por tabla: Campo, Tipo SQL, Descripción, Relaciones FK | Referencia principal de negocio |
| Diccionario consolidado v5 | [`PuraVidaDB/Diccionario-de-base-datosv5.md`](PuraVidaDB/Diccionario-de-base-datosv5.md) | Tabla única de columnas | Vista de referencia rápida |
| Esquema PostgreSQL | [`PostgreSQL/Full_Migration_TiquiciaLodge.sql`](PostgreSQL/Full_Migration_TiquiciaLodge.sql) | DDL PostgreSQL con PostGIS | Estructura para entorno PostgreSQL |

---

## Pendientes y Roadmap

El esquema completo define **88 tablas**. La API .NET tiene implementados **38** módulos en C#. Los siguientes elementos corresponden a módulos pendientes de implementación en la capa de software, o a funcionalidades transversales:

### Módulo de Auditoría y Logs
- [ ] `BitacoraAcciones`: Seguimiento de acciones de usuarios.
- [ ] `LogsErrores`: Registro centralizado de excepciones de la API.

### Módulo de Analítica y Marketing
- [ ] `MetricasDiarias` y `DashboardProveedor`: Estadísticas de rendimiento.
- [ ] `BusquedasUsuarios` y `ClicksContacto`: Seguimiento de intención de compra.
- [ ] `VistasPropiedad`: Contador de visualizaciones por alojamiento.
- [ ] `NewsletterSuscriptores`: Gestión de correos para marketing.
- [ ] `Promociones` y `PromocionesPropiedad`: Sistema de ofertas temporales.

### Módulo Geográfico Completo (Completado)
- [x] `Cantones` y `Distritos`: División administrativa detallada de Costa Rica.
- [x] `ZonasTicas`: Clasificación por zonas turísticas (Pacífico, Caribe, etc.).
- [x] `Nacionalidades`: Catálogo de nacionalidades para el perfil de huéspedes.
- [x] `ListasDeseos` y `ListaPropiedades`: Favoritos de usuarios.

### Módulo de Catálogo y Multimedia Extendido
- [ ] Categorías: `CategoriaAlojamiento`, `CategoriaEquipamiento`, `CategoriaExperiencia`, `CategoriaServicio`.
- [ ] `VideosPropiedad`: Soporte para tours virtuales en video.
- [ ] `LugaresTuristicos` y `Experiencias`: Catálogo de actividades cercanas.
- [ ] `DocumentosPropiedad`: Almacenamiento de contratos y permisos legales.

### Módulo Financiero Avanzado
- [ ] `Facturas`: Generación de documentos fiscales.
- [ ] `Comisiones` y `PagosComisiones`: Cálculo automático de la cuota de la plataforma.
- [ ] `Descuentos` y `DescuentosPropiedad`: Cupones y rebajas.
- [ ] `Reembolsos`: Gestión de devoluciones monetarias.
- [ ] `PlanesProveedor`: Diferentes niveles de suscripción para dueños de lodges.

### Módulo de Soporte Técnico (Completado)
- [x] `TicketsSoporte` y `MensajesSoporte`: Sistema de mensajería interna.
- [x] `FAQs`: Centro de ayuda dinámico.
- [x] `Reportes` y `EvidenciasReporte`: Gestión de quejas y denuncias.
- [x] `CategoriasFAQ`: Clasificación de ayuda.

### Módulo de Marketing (Completado)
- [x] `NewsletterSuscriptores`: Gestión de suscriptores.
- [x] `Promociones` y `PromocionesPropiedad`: Sistema de ofertas.

### Módulo de Verificación y Confianza
- [ ] `SellosConfianza`: Insignias para propiedades destacadas.
- [ ] `VerificacionesPropiedad`: Auditoría física de alojamientos.

### Funcionalidades de Software
- [ ] Implementar autenticación JWT (Seguridad)
- [ ] Configurar CORS para el frontend
- [ ] Agregar validación con FluentValidation
- [ ] Agregar manejo global de excepciones (Middleware)
- [ ] Implementar paginación y filtros avanzados en todos los endpoints GET
- [ ] Agregar pruebas unitarias y de integración

---

## Bitácora de Cambios e Implementación

### Actualización Fase 7 - Soporte Multi-Base de Datos y PostgreSQL (Junio 2026)

**Migración a PostgreSQL**
- Creación de la capa de infraestructura `Tiquicia_Lodge.Infrastructure.PostgreSQL` e integración de dependencias `Npgsql.EntityFrameworkCore.PostgreSQL`.
- Migración completa del esquema de base de datos a PostgreSQL (tablas, triggers y procedimientos almacenados), disponible bajo el directorio `PostgreSQL/`.
- Habilitación de la extensión geográfica `postgis` en PostgreSQL para soportar tipos de datos de geolocalización.

**Diagnóstico de Conectividad (Health Checks)**
- Incorporación de dos nuevos controladores de salud:
  - `DbConnectionController`: Valida la conexión contra la base de datos SQL Server (`PV`).
  - `DbConnectionPGController`: Valida la conexión contra la base de datos PostgreSQL (`PuraVida`).

**Experiencia del Desarrollador**
- Configuración de la redirección automática del endpoint raíz `/` de la API para redirigir al desarrollador directamente a `/swagger`.

### Actualización Fase 6 (Mayo 2026)

**Documentación de esquema**
- Integración del **diccionario de datos** en `PuraVidaDB/diccionario-de-datos.md`: 88 tablas documentadas con tipo SQL, descripción de negocio y relaciones FK.
- Versiones complementarias: `Diccionario-de-base-datosv5.md` (vista consolidada) y `diccionario-de-base-de-datos.md` (formato legacy por tabla).
- Proyecto **PuraVidaDB** agregado a la solución (`Tiquicia_Lodge.slnx`) como fuente de verdad del esquema `dbo`.

**Esquema SQL**
- Scripts de tablas en `PuraVidaDB/dbo/Tables/` alineados con restricciones `FOREIGN KEY` para integridad referencial.

### Actualización Fase 5 (Mayo 2026)

**Problemas Técnicos Resueltos:**
*   **Error CS1061 (Build Failure)**: Durante la implementación de los servicios de soporte, se utilizó erróneamente el método `AddAsync`. El compilador falló debido a que la interfaz `IRepository<T>` define el método de creación como `CreateAsync`.
    *   *Solución*: Se realizó una refactorización masiva de los 9 servicios (`TicketsSoporteService`, `FAQsService`, etc.) para sincronizarlos con la firma correcta del repositorio.

**Problemas de Arquitectura y Relaciones Resueltos:**
*   **Integridad Referencial y Propiedades de Navegación (Resuelto)**: Se solucionó el problema de integridad donde la base de datos SQL no poseía restricciones `FOREIGN KEY` físicas y las entidades C# carecían de propiedades `virtual` de navegación. Se inyectaron atributos `[ForeignKey]` en las 38 entidades activas y se anexaron `ALTER TABLE` a `PuraVida.sql`, permitiendo que EF Core realice uniones JOIN (con `.Include()`) y asegurando la integridad relacional de toda la plataforma.
*   **Consistencia de Identidad**: Estabilización de la entidad `Usuario` con `DatabaseGeneratedOption.None` para respetar el flujo del SQL original de la base de datos.
*   **Datos Base**: Inclusión del recordatorio obligatorio de ejecutar el script `PuraVida.sql` para poblar los catálogos base (Estados, Roles, Provincias) antes de usar la API.
