# Tiquicia Lodge — API Backend

Backend REST API para la plataforma **Tiquicia Lodge**, un sistema de gestión de alojamientos turísticos tipo Lodge desarrollado con .NET 10 y Clean Architecture.

---

## Tech Stack

| Capa | Tecnologia |
|---|---|
| Framework | .NET 10 / ASP.NET Core |
| ORM | Entity Framework Core |
| Base de datos | SQL Server (base de datos: `PV`) |
| Documentacion API | Swagger / OpenAPI |
| Arquitectura | Clean Architecture (4 capas) |

---

## Estructura del Proyecto

```
Tiquicia_Lodge/
│
├── Tiquicia_Lodge/                    # Capa de Presentacion (API)
│   ├── Controllers/                   # 23 controladores REST
│   ├── Program.cs                     # Punto de entrada, DI container
│   └── appsettings.json               # Configuracion y cadena de conexion
│
├── Tiquicia_Lodge.Application/        # Capa de Aplicacion
│   ├── Interfaces/                    # Contratos de servicios (23 interfaces)
│   └── Services/                      # Implementacion de logica de negocio
│
├── Tiquicia_Lodge.Domain/             # Capa de Dominio
│   ├── Entities/                      # 23 entidades del modelo de datos
│   └── Interfaces/                    # IRepository<T> generico
│
└── Tiquicia_Lodge.Infrastructure/     # Capa de Infraestructura
    ├── Data/                          # ApplicationDbContext (EF Core)
    ├── Repositories/                  # Repository<T> generico
    └── Migrations/                    # Migraciones de EF Core
```

---

## Modulos y Entidades

### Modulo Core (Negocio Principal)

| Entidad | Tabla SQL | Descripcion |
|---|---|---|
| `Usuario` | `Usuarios` | Clientes y proveedores del sistema |
| `Propiedad` | `Propiedades` | Alojamientos publicados |
| `Reserva` | `Reservas` | Reservaciones de alojamiento |
| `Pago` | `Pagos` | Transacciones y comprobantes |
| `CalificacionPropiedad` | `CalificacionesPropiedad` | Resenas y puntuaciones |
| `FotosPropiedad` | `FotosPropiedades` | Galeria de imagenes |
| `Estado` | `Estados` | Catálogo de estados del sistema |
| `Roles` | `Roles` | Roles de usuario |
| `Provincias` | `Provincias` | Catálogo geografico |

### Modulo de Seguridad y Autenticacion

| Entidad | Tabla SQL | Descripcion |
|---|---|---|
| `Sesiones` | `Sesiones` | Tokens JWT activos en base de datos |
| `RecuperacionContrasena` | `RecuperacionContrasena` | Tokens temporales para reset de password |
| `TelefonosUsuario` | `TelefonosUsuario` | Telefonos de contacto por usuario |
| `CorreosUsuario` | `CorreosUsuario` | Correos adicionales por usuario |
| `VerificacionesUsuario` | `VerificacionesUsuario` | Control de verificacion en 2 pasos |

### Modulo de Entorno Inmobiliario

| Entidad | Tabla SQL | Descripcion |
|---|---|---|
| `Equipamiento` | `Equipamiento` | Catalogo: Piscina, Wifi, A/C, etc. |
| `PropiedadEquipamiento` | `PropiedadEquipamiento` | Relacion propiedad-equipamiento |
| `ReglasCasa` | `ReglasCasa` | Reglas de la propiedad |
| `PropiedadReglas` | `PropiedadReglas` | Relacion propiedad-reglas |
| `HorariosCheckInOut` | `HorariosCheckInOut` | Horarios de entrada y salida |
| `PoliticasCancelacion` | `PoliticasCancelacion` | Politicas de cancelacion |
| `ComerciosCercanos` | `ComerciosCercanos` | Negocios cercanos a la propiedad |
| `TransporteCercano` | `TransporteCercano` | Opciones de transporte cercano |
| `PropiedadServicios` | `PropiedadServicios` | Servicios incluidos por propiedad |

---

## Arquitectura

El proyecto implementa **Clean Architecture** con las siguientes capas y responsabilidades:

```
[API Controllers]
      |
      v
[Application Services]  <-- Logica de negocio
      |
      v
[Domain Interfaces]     <-- Contratos (IRepository<T>)
      |
      v
[Infrastructure]        <-- EF Core, SQL Server
```

**Patron Repository Generico**

La interfaz `IRepository<T>` soporta tanto llaves primarias simples como compuestas mediante `params object[]`:

```csharp
Task<T?> GetByIdAsync(params object[] keyValues);
Task DeleteAsync(params object[] keyValues);
```

Esto permite manejar tablas intermedias (`PropiedadEquipamiento`, `PropiedadReglas`, `PropiedadServicios`) que usan llaves compuestas sin necesidad de repositorios especializados.

---

## Endpoints de la API

Cada modulo expone los siguientes endpoints REST bajo `/api/[entidad]`:

| Metodo | Ruta | Descripcion |
|---|---|---|
| `GET` | `/api/[entidad]` | Obtener todos los registros |
| `GET` | `/api/[entidad]/{id}` | Obtener por ID |
| `POST` | `/api/[entidad]` | Crear nuevo registro |
| `PUT` | `/api/[entidad]/{id}` | Actualizar registro |
| `DELETE` | `/api/[entidad]/{id}` | Eliminar registro |

Para tablas con llave compuesta, las rutas usan dos parametros:

```
GET    /api/PropiedadEquipamiento/{idPropiedad}/{idEquipamiento}
DELETE /api/PropiedadReglas/{idPropiedad}/{idRegla}
GET    /api/PropiedadServicios/{idPropiedad}/{idServicio}
```

---

## Instalacion y Configuracion

### Requisitos previos

- [.NET 10 SDK](https://dotnet.microsoft.com/download)
- SQL Server (local o remoto)
- La base de datos `PV` restaurada desde `PuraVida.sql`

### 1. Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/tiquicia-lodge.git
cd tiquicia-lodge
```

### 2. Configurar la cadena de conexion

Editar `Tiquicia_Lodge/appsettings.json`:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=localhost;Database=PV;Trusted_Connection=True;MultipleActiveResultSets=true;TrustServerCertificate=True"
  }
}
```

> [!IMPORTANT]
> El nombre de la base de datos debe ser `PV`. Si usas autenticacion SQL en lugar de Windows Authentication, reemplaza `Trusted_Connection=True` por `User Id=sa;Password=tu_password`.

### 3. Restaurar la base de datos

Ejecutar el script SQL en SQL Server Management Studio:

```
PuraVida.sql
```

> [!WARNING]
> La migracion inicial de EF Core ya esta configurada como "baseline" (metodos `Up`/`Down` vacios). No ejecutes `dotnet ef database update` si la base de datos `PV` ya existe con datos, ya que podria generar conflictos de esquema.

### 4. Compilar el proyecto

```bash
dotnet build Tiquicia_Lodge.slnx
```

### 5. Ejecutar la API

```bash
dotnet run --project Tiquicia_Lodge/Tiquicia_Lodge.csproj
```

La API estara disponible en `https://localhost:{puerto}/swagger` con la documentacion interactiva de Swagger.

---

## Inyeccion de Dependencias

Todos los servicios se registran en `Program.cs` con ciclo de vida `Scoped`:

```csharp
// Repositorio generico (unico registro para todas las entidades)
builder.Services.AddScoped(typeof(IRepository<>), typeof(Repository<>));

// Servicios por modulo
builder.Services.AddScoped<IUsuarioService, UsuarioService>();
builder.Services.AddScoped<IPropiedadService, PropiedadService>();
builder.Services.AddScoped<IReservaService, ReservaService>();
// ... (23 servicios en total)
```

> [!TIP]
> Para agregar un nuevo modulo, seguir el patron: crear entidad en `Domain/Entities`, interfaz en `Application/Interfaces`, implementacion en `Application/Services`, registrar en `Program.cs` y crear el controlador en la capa API.

---

## Base de Datos

- **Motor**: SQL Server
- **Nombre**: `PV`
- **Script**: `PuraVida.sql` (incluido en la raiz del repositorio)
- **ORM**: Entity Framework Core con Fluent API para llaves compuestas

Configuracion de llaves compuestas en `ApplicationDbContext`:

```csharp
modelBuilder.Entity<PropiedadServicios>()
    .HasKey(ps => new { ps.IdPropiedad, ps.IdServicio });

modelBuilder.Entity<PropiedadEquipamiento>()
    .HasKey(pe => new { pe.IdPropiedad, pe.IdEquipamiento });

modelBuilder.Entity<PropiedadReglas>()
    .HasKey(pr => new { pr.IdPropiedad, pr.IdRegla });
```

---

## Migraciones de EF Core

```bash
# Agregar nueva migracion
dotnet ef migrations add NombreMigracion \
  --project Tiquicia_Lodge.Infrastructure/Tiquicia_Lodge.Infrastructure.csproj \
  --startup-project Tiquicia_Lodge/Tiquicia_Lodge.csproj

# Aplicar migraciones pendientes
dotnet ef database update \
  --project Tiquicia_Lodge.Infrastructure/Tiquicia_Lodge.Infrastructure.csproj \
  --startup-project Tiquicia_Lodge/Tiquicia_Lodge.csproj
```

> [!NOTE]
> Las herramientas de EF Core instaladas son version 9.x pero el runtime es .NET 10. Esto genera una advertencia en consola pero no afecta el funcionamiento. Para eliminar la advertencia: `dotnet tool update --global dotnet-ef` pero se recomienda cambiar la versión del runtime a 10.x para mantener la consistencia con el proyecto o actualizar las herramientas ya que ira a deploy y provocara conflictos con las versiones de la aplicacion o de la base de datos.

---

## Pendientes y Roadmap

Basado en el analisis del esquema `PuraVida.sql`, aun faltan por implementar los siguientes modulos y funcionalidades para completar el ecosistema de Tiquicia Lodge(obviamente se tiene que cargar el diagrama en el sql server):

### Modulo de Auditoria y Logs
- [ ] `BitacoraAcciones`: Seguimiento de acciones de usuarios.
- [ ] `LogsErrores`: Registro centralizado de excepciones de la API.

### Modulo de Analitica y Marketing
- [ ] `MetricasDiarias` y `DashboardProveedor`: Estadisticas de rendimiento.
- [ ] `BusquedasUsuarios` y `ClicksContacto`: Seguimiento de intencion de compra.
- [ ] `VistasPropiedad`: Contador de visualizaciones por alojamiento.
- [ ] `NewsletterSuscriptores`: Gestion de correos para marketing.
- [ ] `Promociones` y `PromocionesPropiedad`: Sistema de ofertas temporales.

### Modulo Geografico Completo
- [ ] `Cantones` y `Distritos`: Division administrativa detallada de Costa Rica.
- [ ] `ZonasTicas`: Clasificacion por zonas turisticas (Pacifico, Caribe, etc.).

### Modulo de Catalogo y Multimedia Extendido
- [ ] Categorias: `CategoriaAlojamiento`, `CategoriaEquipamiento`, `CategoriaExperiencia`, `CategoriaServicio`.
- [ ] `VideosPropiedad`: Soporte para tours virtuales en video.
- [ ] `LugaresTuristicos` y `Experiencias`: Catalogo de actividades cercanas.
- [ ] `DocumentosPropiedad`: Almacenamiento de contratos y permisos legales.

### Modulo Financiero Avanzado
- [ ] `Facturas`: Generacion de documentos fiscales.
- [ ] `Comisiones` y `PagosComisiones`: Calculo automatico de la cuota de la plataforma.
- [ ] `Descuentos` y `DescuentosPropiedad`: Cupones y rebajas.
- [ ] `Reembolsos`: Gestion de devoluciones monetarias.
- [ ] `PlanesProveedor`: Diferentes niveles de suscripcion para dueños de lodges.

### Modulo de Soporte Tecnico
- [ ] `TicketsSoporte` y `MensajesSoporte`: Sistema de mensajeria interna.
- [ ] `FAQs`: Centro de ayuda dinamico.
- [ ] `Reportes` y `EvidenciasReporte`: Gestion de quejas y denuncias.

### Modulo de Verificacion y Confianza
- [ ] `SellosConfianza`: Insignias para propiedades destacadas.
- [ ] `VerificacionesPropiedad`: Auditoria fisica de alojamientos.

### Funcionalidades de Software
- [ ] Implementar autenticacion JWT (Seguridad)
- [ ] Configurar CORS para el frontend
- [ ] Agregar validacion con FluentValidation
- [ ] Agregar manejo global de excepciones (Middleware)
- [ ] Implementar paginacion y filtros avanzados en todos los endpoints GET
- [ ] Agregar pruebas unitarias y de integracion

---

