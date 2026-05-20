# Diccionario de base de datos

Documentacion del esquema **dbo** del proyecto **PuraVidaDB** (SQL Server). El contenido se obtiene de los scripts en `PuraVidaDB/dbo/Tables/`. En el README del repositorio, la base operativa del API se nombra **`PV`**.

| Leyenda | Significado |
| --- | --- |
| **PK** | Clave primaria (simple o compuesta) |
| **FK** | Clave foranea: apunta a la tabla y columna indicadas en **Referencia** |

> [!NOTE]
> Los scripts no incluyen metadatos extendidos de SQL Server (`MS_Description`). La columna **Descripcion** resume el uso esperado del campo segun su nombre y el rol de la tabla en el dominio (alojamientos, reservas, pagos, etc.).

---

## `BitacoraAcciones`

**Archivo:** `BitacoraAcciones.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdBitacora` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `Accion` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `BitacoraAcciones`. |
| `Descripcion` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `BitacoraAcciones`. |
| `IPAddress` | `VARCHAR (45)` |  |  | Dato asociado a la entidad `BitacoraAcciones`. |
| `Fecha` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `BitacoraAcciones`. |
| `TablaAfectada` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `BitacoraAcciones`. |
| `RegistroAfectado` | `INT` |  |  | Dato asociado a la entidad `BitacoraAcciones`. |

---

## `BusquedasUsuarios`

**Archivo:** `BusquedasUsuarios.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdBusqueda` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `TerminosBusqueda` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `BusquedasUsuarios`. |
| `FiltrosAplicados` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `BusquedasUsuarios`. |
| `FechaBusqueda` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `BusquedasUsuarios`. |
| `ResultadosCount` | `INT` |  |  | Dato asociado a la entidad `BusquedasUsuarios`. |

---

## `CalificacionesCliente`

**Archivo:** `CalificacionesCliente.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdCalificacion` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdReserva` | `INT` | FK | `Reservas.IdReserva` | Identificador o referencia a otra entidad. |
| `IdProveedor` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `IdCliente` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `Calificacion` | `INT` |  |  | Dato asociado a la entidad `CalificacionesCliente`. |
| `Comentario` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `CalificacionesCliente`. |
| `Fecha` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `CalificacionesCliente`. |

---

## `CalificacionesPropiedad`

**Archivo:** `CalificacionesPropiedad.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdCalificacion` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdReserva` | `INT` | FK | `Reservas.IdReserva` | Identificador o referencia a otra entidad. |
| `IdCliente` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `Calificacion` | `INT` |  |  | Dato asociado a la entidad `CalificacionesPropiedad`. |
| `Comentario` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `CalificacionesPropiedad`. |
| `Fecha` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `CalificacionesPropiedad`. |
| `Visible` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `CalificacionesPropiedad`. |

---

## `Cantones`

**Archivo:** `Cantones.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdCanton` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdProvincia` | `INT` | FK | `Provincias.IdProvincia` | Identificador o referencia a otra entidad. |
| `NombreCanton` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Cantones`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Cantones`. |

---

## `CategoriaAlojamiento`

**Archivo:** `CategoriaAlojamiento.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdCategoria` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreCategoria` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriaAlojamiento`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `CategoriaAlojamiento`. |
| `Icono` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriaAlojamiento`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `CategoriaAlojamiento`. |

---

## `CategoriaEquipamiento`

**Archivo:** `CategoriaEquipamiento.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdCategoria` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreCategoria` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriaEquipamiento`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `CategoriaEquipamiento`. |
| `Icono` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriaEquipamiento`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `CategoriaEquipamiento`. |

---

## `CategoriaExperiencia`

**Archivo:** `CategoriaExperiencia.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdCategoria` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreCategoria` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriaExperiencia`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `CategoriaExperiencia`. |
| `Icono` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriaExperiencia`. |

---

## `CategoriaLugarTuristico`

**Archivo:** `CategoriaLugarTuristico.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdCategoria` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreCategoria` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriaLugarTuristico`. |
| `Icono` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriaLugarTuristico`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `CategoriaLugarTuristico`. |

---

## `CategoriaServicio`

**Archivo:** `CategoriaServicio.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdCategoria` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreCategoria` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriaServicio`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `CategoriaServicio`. |
| `Icono` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriaServicio`. |

---

## `CategoriasFAQ`

**Archivo:** `CategoriasFAQ.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdCategoriaFAQ` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreCategoria` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `CategoriasFAQ`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `CategoriasFAQ`. |
| `Orden` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `CategoriasFAQ`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `CategoriasFAQ`. |

---

## `ClicksContacto`

**Archivo:** `ClicksContacto.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdClick` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `TipoContacto` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `ClicksContacto`. |
| `FechaClick` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `ClicksContacto`. |

---

## `ComerciosCercanos`

**Archivo:** `ComerciosCercanos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdComercio` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreComercio` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `ComerciosCercanos`. |
| `TipoComercio` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `ComerciosCercanos`. |
| `Telefono` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `ComerciosCercanos`. |
| `Direccion` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `ComerciosCercanos`. |
| `HorarioAtencion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `ComerciosCercanos`. |
| `UbicacionCoordenadas` | `[sys].[geography]` |  |  | Dato asociado a la entidad `ComerciosCercanos`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `ComerciosCercanos`. |

---

## `Comisiones`

**Archivo:** `Comisiones.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdComision` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdReserva` | `INT` | FK | `Reservas.IdReserva` | Identificador o referencia a otra entidad. |
| `IdProveedor` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `PorcentajeAplicado` | `DECIMAL (5, 2)` |  |  | Dato asociado a la entidad `Comisiones`. |
| `MontoComision` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Comisiones`. |
| `FechaCalculo` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `Comisiones`. |
| `Pagada` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `Comisiones`. |
| `FechaPago` | `DATETIME` |  |  | Dato asociado a la entidad `Comisiones`. |

---

## `ConfiguracionSistema`

**Archivo:** `ConfiguracionSistema.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdConfiguracion` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdModulo` | `INT DEFAULT ((1))` | FK | `ModulosSistema.IdModulo` | Identificador o referencia a otra entidad. |
| `Clave` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `ConfiguracionSistema`. |
| `Valor` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `ConfiguracionSistema`. |
| `TipoDato` | `VARCHAR (20) DEFAULT ('string')` |  |  | Dato asociado a la entidad `ConfiguracionSistema`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `ConfiguracionSistema`. |
| `FechaActualizacion` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `ConfiguracionSistema`. |
| `IdUsuarioModifico` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |

---

## `ContactosDirectos`

**Archivo:** `ContactosDirectos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdContacto` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdCliente` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `FechaContacto` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `ContactosDirectos`. |
| `TipoContacto` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `ContactosDirectos`. |
| `DuracionSegundos` | `INT` |  |  | Dato asociado a la entidad `ContactosDirectos`. |
| `Resumen` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `ContactosDirectos`. |

---

## `CorreosUsuario`

**Archivo:** `CorreosUsuario.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdCorreo` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `Correo` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `CorreosUsuario`. |
| `EsPrincipal` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `CorreosUsuario`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `CorreosUsuario`. |

---

## `DashboardProveedor`

**Archivo:** `DashboardProveedor.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdDashboard` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdProveedor` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `Fecha` | `DATE` |  |  | Dato asociado a la entidad `DashboardProveedor`. |
| `VistasPropiedades` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `DashboardProveedor`. |
| `ContactosRecibidos` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `DashboardProveedor`. |
| `ReservasConfirmadas` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `DashboardProveedor`. |
| `Cancelaciones` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `DashboardProveedor`. |
| `IngresosGenerados` | `DECIMAL (18, 2) DEFAULT ((0))` |  |  | Dato asociado a la entidad `DashboardProveedor`. |
| `RatingPromedio` | `DECIMAL (3, 2)` |  |  | Dato asociado a la entidad `DashboardProveedor`. |

---

## `Descuentos`

**Archivo:** `Descuentos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdDescuento` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreDescuento` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Descuentos`. |
| `TipoDescuento` | `VARCHAR (30)` |  |  | Dato asociado a la entidad `Descuentos`. |
| `ValorDescuento` | `DECIMAL (10, 2)` |  |  | Dato asociado a la entidad `Descuentos`. |
| `Condiciones` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `Descuentos`. |
| `FechaInicio` | `DATE` |  |  | Dato asociado a la entidad `Descuentos`. |
| `FechaFin` | `DATE` |  |  | Dato asociado a la entidad `Descuentos`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Descuentos`. |

---

## `DescuentosPropiedad`

**Archivo:** `DescuentosPropiedad.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdDescuento` | `INT` | PK, FK | `Descuentos.IdDescuento` | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |

---

## `Distritos`

**Archivo:** `Distritos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdDistrito` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdCanton` | `INT` | FK | `Cantones.IdCanton` | Identificador o referencia a otra entidad. |
| `NombreDistrito` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Distritos`. |
| `CodigoPostal` | `VARCHAR (10)` |  |  | Dato asociado a la entidad `Distritos`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Distritos`. |

---

## `DocumentosPropiedad`

**Archivo:** `DocumentosPropiedad.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdDocumento` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `TipoDocumento` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `DocumentosPropiedad`. |
| `NombreArchivo` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `DocumentosPropiedad`. |
| `UrlArchivo` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `DocumentosPropiedad`. |
| `FechaSubida` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `DocumentosPropiedad`. |
| `Verificado` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `DocumentosPropiedad`. |
| `FechaVerificacion` | `DATETIME` |  |  | Dato asociado a la entidad `DocumentosPropiedad`. |

---

## `DocumentosVerificacion`

**Archivo:** `DocumentosVerificacion.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdDocumentoVerificacion` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdVerificacion` | `INT` | FK | `VerificacionesPropiedad.IdVerificacion` | Identificador o referencia a otra entidad. |
| `TipoDocumento` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `DocumentosVerificacion`. |
| `NombreArchivo` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `DocumentosVerificacion`. |
| `UrlArchivo` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `DocumentosVerificacion`. |
| `FechaSubida` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `DocumentosVerificacion`. |

---

## `Equipamiento`

**Archivo:** `Equipamiento.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdEquipamiento` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdCategoria` | `INT` | FK | `CategoriaEquipamiento.IdCategoria` | Identificador o referencia a otra entidad. |
| `NombreEquipamiento` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Equipamiento`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `Equipamiento`. |
| `Icono` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `Equipamiento`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Equipamiento`. |

---

## `Estados`

**Archivo:** `Estados.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdEstado` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreEstado` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `Estados`. |
| `TipoEntidad` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `Estados`. |

---

## `EvidenciasReporte`

**Archivo:** `EvidenciasReporte.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdEvidencia` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdReporte` | `INT` | FK | `Reportes.IdReporte` | Identificador o referencia a otra entidad. |
| `TipoEvidencia` | `VARCHAR (30)` |  |  | Dato asociado a la entidad `EvidenciasReporte`. |
| `UrlArchivo` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `EvidenciasReporte`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `EvidenciasReporte`. |
| `FechaSubida` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `EvidenciasReporte`. |

---

## `Experiencias`

**Archivo:** `Experiencias.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdExperiencia` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdCategoria` | `INT` | FK | `CategoriaExperiencia.IdCategoria` | Identificador o referencia a otra entidad. |
| `NombreExperiencia` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `Experiencias`. |
| `Descripcion` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Experiencias`. |
| `DuracionHoras` | `INT` |  |  | Dato asociado a la entidad `Experiencias`. |
| `CostoAproximado` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Experiencias`. |
| `IdMoneda` | `INT` | FK | `Monedas.IdMoneda` | Identificador o referencia a otra entidad. |
| `RecomendadoPor` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Experiencias`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Experiencias`. |

---

## `ExperienciasCercanas`

**Archivo:** `ExperienciasCercanas.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdExperiencia` | `INT` | PK, FK | `Experiencias.IdExperiencia` | Identificador o referencia a otra entidad. |
| `DistanciaKM` | `DECIMAL (5, 2)` |  |  | Dato asociado a la entidad `ExperienciasCercanas`. |
| `TiempoTraslado` | `INT` |  |  | Dato asociado a la entidad `ExperienciasCercanas`. |
| `ProveedorExperiencia` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `ExperienciasCercanas`. |
| `TelefonoContacto` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `ExperienciasCercanas`. |

---

## `Facturas`

**Archivo:** `Facturas.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdFactura` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdReserva` | `INT` | FK | `Reservas.IdReserva` | Identificador o referencia a otra entidad. |
| `NumeroFactura` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `Facturas`. |
| `FechaEmision` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `Facturas`. |
| `MontoTotal` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Facturas`. |
| `PdfURL` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Facturas`. |
| `Enviada` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `Facturas`. |

---

## `FAQs`

**Archivo:** `FAQs.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdFAQ` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdCategoriaFAQ` | `INT` | FK | `CategoriasFAQ.IdCategoriaFAQ` | Identificador o referencia a otra entidad. |
| `Pregunta` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `FAQs`. |
| `Respuesta` | `VARCHAR (1000)` |  |  | Dato asociado a la entidad `FAQs`. |
| `Orden` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `FAQs`. |
| `VecesVista` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `FAQs`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `FAQs`. |
| `CreadoPor` | `INT` | FK | `Usuarios.IdUsuario` | Dato asociado a la entidad `FAQs`. |
| `FechaCreacion` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `FAQs`. |
| `ModificadoPor` | `INT` | FK | `Usuarios.IdUsuario` | Dato asociado a la entidad `FAQs`. |
| `FechaModificacion` | `DATETIME` |  |  | Dato asociado a la entidad `FAQs`. |

---

## `FotosPropiedad`

**Archivo:** `FotosPropiedad.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdFoto` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `UrlFoto` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `FotosPropiedad`. |
| `Titulo` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `FotosPropiedad`. |
| `Descripcion` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `FotosPropiedad`. |
| `Orden` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `FotosPropiedad`. |
| `EsPrincipal` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `FotosPropiedad`. |
| `FechaSubida` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `FotosPropiedad`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `FotosPropiedad`. |

---

## `GananciasProveedor`

**Archivo:** `GananciasProveedor.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdGanancia` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdPagoComision` | `INT` | FK | `PagosComisiones.IdPagoComision` | Identificador o referencia a otra entidad. |
| `IdReserva` | `INT` | FK | `Reservas.IdReserva` | Identificador o referencia a otra entidad. |
| `MontoProveedor` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `GananciasProveedor`. |

---

## `HistorialEstadosReserva`

**Archivo:** `HistorialEstadosReserva.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdHistorial` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdReserva` | `INT` | FK | `Reservas.IdReserva` | Identificador o referencia a otra entidad. |
| `IdEstadoAnterior` | `INT` | FK | `Estados.IdEstado` | Identificador o referencia a otra entidad. |
| `IdEstadoNuevo` | `INT` | FK | `Estados.IdEstado` | Identificador o referencia a otra entidad. |
| `FechaCambio` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `HistorialEstadosReserva`. |
| `UsuarioCambio` | `INT` | FK | `Usuarios.IdUsuario` | Dato asociado a la entidad `HistorialEstadosReserva`. |
| `MotivoCambio` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `HistorialEstadosReserva`. |

---

## `HistorialPrecios`

**Archivo:** `HistorialPrecios.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdHistorial` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `PrecioAnterior` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `HistorialPrecios`. |
| `PrecioNuevo` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `HistorialPrecios`. |
| `FechaCambio` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `HistorialPrecios`. |
| `MotivoCambio` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `HistorialPrecios`. |

---

## `HorariosCheckInOut`

**Archivo:** `HorariosCheckInOut.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdHorario` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `TipoHorario` | `VARCHAR (10)` |  |  | Dato asociado a la entidad `HorariosCheckInOut`. |
| `HoraDesde` | `TIME (7)` |  |  | Dato asociado a la entidad `HorariosCheckInOut`. |
| `HoraHasta` | `TIME (7)` |  |  | Dato asociado a la entidad `HorariosCheckInOut`. |
| `Flexible` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `HorariosCheckInOut`. |
| `Notas` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `HorariosCheckInOut`. |

---

## `ListaPropiedades`

**Archivo:** `ListaPropiedades.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdLista` | `INT` | PK, FK | `ListasDeseos.IdLista` | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `FechaAgregado` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `ListaPropiedades`. |

---

## `ListasDeseos`

**Archivo:** `ListasDeseos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdLista` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `NombreLista` | `VARCHAR (100) DEFAULT ('Mis favoritos')` |  |  | Dato asociado a la entidad `ListasDeseos`. |
| `FechaCreacion` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `ListasDeseos`. |
| `Privada` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `ListasDeseos`. |

---

## `LogsErrores`

**Archivo:** `LogsErrores.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdError` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `Fecha` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `LogsErrores`. |
| `Usuario` | `INT` | FK | `Usuarios.IdUsuario` | Dato asociado a la entidad `LogsErrores`. |
| `Modulo` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `LogsErrores`. |
| `ErrorMensaje` | `VARCHAR (1000)` |  |  | Dato asociado a la entidad `LogsErrores`. |
| `ErrorDetalle` | `TEXT` |  |  | Dato asociado a la entidad `LogsErrores`. |
| `IPAddress` | `VARCHAR (45)` |  |  | Dato asociado a la entidad `LogsErrores`. |
| `Resuelto` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `LogsErrores`. |

---

## `LugaresTuristicos`

**Archivo:** `LugaresTuristicos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdLugarTuristico` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdCategoria` | `INT` | FK | `CategoriaLugarTuristico.IdCategoria` | Identificador o referencia a otra entidad. |
| `NombreLugar` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `LugaresTuristicos`. |
| `Descripcion` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `LugaresTuristicos`. |
| `UbicacionCoordenadas` | `[sys].[geography]` |  |  | Dato asociado a la entidad `LugaresTuristicos`. |
| `Direccion` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `LugaresTuristicos`. |
| `IdDistrito` | `INT` | FK | `Distritos.IdDistrito` | Identificador o referencia a otra entidad. |
| `DistanciaReferencia` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `LugaresTuristicos`. |
| `HorarioAtencion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `LugaresTuristicos`. |
| `Telefono` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `LugaresTuristicos`. |
| `SitioWeb` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `LugaresTuristicos`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `LugaresTuristicos`. |

---

## `MensajesSoporte`

**Archivo:** `MensajesSoporte.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdMensaje` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdTicket` | `INT` | FK | `TicketsSoporte.IdTicket` | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `Mensaje` | `VARCHAR (1000)` |  |  | Dato asociado a la entidad `MensajesSoporte`. |
| `FechaEnvio` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `MensajesSoporte`. |
| `AdjuntoURL` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `MensajesSoporte`. |

---

## `MetricasDiarias`

**Archivo:** `MetricasDiarias.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdMetrica` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `Fecha` | `DATE` |  |  | Dato asociado a la entidad `MetricasDiarias`. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `UsuariosNuevos` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `MetricasDiarias`. |
| `PropiedadesNuevas` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `MetricasDiarias`. |
| `ReservasCompletadas` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `MetricasDiarias`. |
| `IngresosBrutos` | `DECIMAL (18, 2) DEFAULT ((0))` |  |  | Dato asociado a la entidad `MetricasDiarias`. |
| `IngresosComisiones` | `DECIMAL (18, 2) DEFAULT ((0))` |  |  | Dato asociado a la entidad `MetricasDiarias`. |
| `VisitasTotales` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `MetricasDiarias`. |
| `BusquedasRealizadas` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `MetricasDiarias`. |
| `ContactosDirectos` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `MetricasDiarias`. |

---

## `ModulosSistema`

**Archivo:** `ModulosSistema.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdModulo` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreModulo` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `ModulosSistema`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `ModulosSistema`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `ModulosSistema`. |

---

## `Monedas`

**Archivo:** `Monedas.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdMoneda` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreMoneda` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `Monedas`. |
| `CodigoISO` | `CHAR (3)` |  |  | Dato asociado a la entidad `Monedas`. |
| `Simbolo` | `CHAR (3)` |  |  | Dato asociado a la entidad `Monedas`. |

---

## `Nacionalidades`

**Archivo:** `Nacionalidades.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdNacionalidad` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `Nacionalidad` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Nacionalidades`. |
| `CodigoISO` | `CHAR (2)` |  |  | Dato asociado a la entidad `Nacionalidades`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Nacionalidades`. |

---

## `NewsletterSuscriptores`

**Archivo:** `NewsletterSuscriptores.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdSuscriptor` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `Correo` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `NewsletterSuscriptores`. |
| `Nombre` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `NewsletterSuscriptores`. |
| `FechaSuscripcion` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `NewsletterSuscriptores`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `NewsletterSuscriptores`. |
| `TokenCancelacion` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `NewsletterSuscriptores`. |

---

## `Notificaciones`

**Archivo:** `Notificaciones.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdNotificacion` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `TipoNotificacion` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `Notificaciones`. |
| `Titulo` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `Notificaciones`. |
| `Mensaje` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Notificaciones`. |
| `Leida` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `Notificaciones`. |
| `FechaEnvio` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `Notificaciones`. |
| `FechaLectura` | `DATETIME` |  |  | Dato asociado a la entidad `Notificaciones`. |

---

## `Pagos`

**Archivo:** `Pagos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPago` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdReserva` | `INT` | FK | `Reservas.IdReserva` | Identificador o referencia a otra entidad. |
| `Monto_CRC` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Pagos`. |
| `MontoUSD` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Pagos`. |
| `FechaPago` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `Pagos`. |
| `MetodoPago` | `VARCHAR (30)` |  |  | Dato asociado a la entidad `Pagos`. |
| `EstadoPago` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `Pagos`. |
| `ComprobanteURL` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Pagos`. |
| `TelefonoSINPE` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `Pagos`. |
| `ReferenciaBanco` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Pagos`. |
| `IdUsuarioRegistra` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |

---

## `PagosComisiones`

**Archivo:** `PagosComisiones.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPagoComision` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdProveedor` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `PeriodoInicio` | `DATE` |  |  | Dato asociado a la entidad `PagosComisiones`. |
| `PeriodoFin` | `DATE` |  |  | Dato asociado a la entidad `PagosComisiones`. |
| `MontoTotal` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `PagosComisiones`. |
| `FechaPago` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `PagosComisiones`. |
| `MetodoPago` | `VARCHAR (30)` |  |  | Dato asociado a la entidad `PagosComisiones`. |
| `ComprobanteURL` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `PagosComisiones`. |

---

## `PagosPendientes`

**Archivo:** `PagosPendientes.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPendiente` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdReserva` | `INT` | FK | `Reservas.IdReserva` | Identificador o referencia a otra entidad. |
| `MontoPendiente` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `PagosPendientes`. |
| `FechaLimite` | `DATE` |  |  | Dato asociado a la entidad `PagosPendientes`. |
| `RecordatoriosEnviados` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `PagosPendientes`. |
| `UltimoRecordatorio` | `DATETIME` |  |  | Dato asociado a la entidad `PagosPendientes`. |

---

## `PlanesProveedor`

**Archivo:** `PlanesProveedor.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPlan` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombrePlan` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `PlanesProveedor`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `PlanesProveedor`. |
| `PorcentajeComision` | `DECIMAL (5, 2)` |  |  | Dato asociado a la entidad `PlanesProveedor`. |
| `CostoMensual_CRC` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `PlanesProveedor`. |
| `MaximoPropiedades` | `INT` |  |  | Dato asociado a la entidad `PlanesProveedor`. |
| `SoportePrioritario` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `PlanesProveedor`. |
| `VerificacionGratuita` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `PlanesProveedor`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `PlanesProveedor`. |

---

## `PoliticasCancelacion`

**Archivo:** `PoliticasCancelacion.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPolitica` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombrePolitica` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `PoliticasCancelacion`. |
| `Descripcion` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `PoliticasCancelacion`. |
| `ReembolsoPorcentaje` | `DECIMAL (5, 2)` |  |  | Dato asociado a la entidad `PoliticasCancelacion`. |
| `DiasAntelacion` | `INT` |  |  | Dato asociado a la entidad `PoliticasCancelacion`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `PoliticasCancelacion`. |

---

## `PreciosTemporada`

**Archivo:** `PreciosTemporada.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdTemporada` | `INT` | PK, FK | `Temporadas.IdTemporada` | Identificador o referencia a otra entidad. |
| `PrecioPersonalizado` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `PreciosTemporada`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `PreciosTemporada`. |

---

## `Promociones`

**Archivo:** `Promociones.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPromocion` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombrePromo` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Promociones`. |
| `Descripcion` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `Promociones`. |
| `TipoPromo` | `VARCHAR (30)` |  |  | Dato asociado a la entidad `Promociones`. |
| `PorcentajeDescuento` | `DECIMAL (5, 2)` |  |  | Dato asociado a la entidad `Promociones`. |
| `FechaInicio` | `DATE` |  |  | Dato asociado a la entidad `Promociones`. |
| `FechaFin` | `DATE` |  |  | Dato asociado a la entidad `Promociones`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Promociones`. |

---

## `PromocionesPropiedad`

**Archivo:** `PromocionesPropiedad.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPromocion` | `INT` | PK, FK | `Promociones.IdPromocion` | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |

---

## `PropiedadComerciosCercanos`

**Archivo:** `PropiedadComerciosCercanos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdComercio` | `INT` | PK, FK | `ComerciosCercanos.IdComercio` | Identificador o referencia a otra entidad. |
| `DistanciaKM` | `DECIMAL (5, 2)` |  |  | Dato asociado a la entidad `PropiedadComerciosCercanos`. |
| `TiempoCaminando` | `INT` |  |  | Dato asociado a la entidad `PropiedadComerciosCercanos`. |
| `TiempoEnCarro` | `INT` |  |  | Dato asociado a la entidad `PropiedadComerciosCercanos`. |

---

## `PropiedadEquipamiento`

**Archivo:** `PropiedadEquipamiento.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdEquipamiento` | `INT` | PK, FK | `Equipamiento.IdEquipamiento` | Identificador o referencia a otra entidad. |
| `Cantidad` | `INT DEFAULT ((1))` |  |  | Dato asociado a la entidad `PropiedadEquipamiento`. |
| `DescripcionAdicional` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `PropiedadEquipamiento`. |

---

## `Propiedades`

**Archivo:** `Propiedades.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdProveedor` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `IdTipoAlojamiento` | `INT` | FK | `TipoAlojamiento.IdTipo` | Identificador o referencia a otra entidad. |
| `IdZona` | `INT` | FK | `ZonasTicas.IdZona` | Identificador o referencia a otra entidad. |
| `IdDistrito` | `INT` | FK | `Distritos.IdDistrito` | Identificador o referencia a otra entidad. |
| `NombrePropiedad` | `VARCHAR (250)` |  |  | Dato asociado a la entidad `Propiedades`. |
| `TituloPromocional` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `Propiedades`. |
| `DescripcionLarga` | `VARCHAR (2000)` |  |  | Dato asociado a la entidad `Propiedades`. |
| `DescripcionCorta` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `Propiedades`. |
| `UbicacionDetallada` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `Propiedades`. |
| `Coordenadas` | `[sys].[geography]` |  |  | Dato asociado a la entidad `Propiedades`. |
| `CantidadHabitaciones` | `INT` |  |  | Dato asociado a la entidad `Propiedades`. |
| `CantidadCamas` | `INT` |  |  | Dato asociado a la entidad `Propiedades`. |
| `CapacidadMaxima` | `INT` |  |  | Dato asociado a la entidad `Propiedades`. |
| `CantidadBanios` | `INT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Propiedades`. |
| `AreaMetrosCuadrados` | `INT` |  |  | Dato asociado a la entidad `Propiedades`. |
| `MontoXNoche` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Propiedades`. |
| `Moneda` | `INT DEFAULT ((1))` | FK | `Monedas.IdMoneda` | Dato asociado a la entidad `Propiedades`. |
| `DepositoGarantia` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Propiedades`. |
| `IdEstado` | `INT` | FK | `Estados.IdEstado` | Identificador o referencia a otra entidad. |
| `Verificado` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `Propiedades`. |
| `FechaRegistro` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `Propiedades`. |
| `FechaActualizacion` | `DATETIME` |  |  | Dato asociado a la entidad `Propiedades`. |
| `VecesVisto` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `Propiedades`. |
| `RatingPromedio` | `DECIMAL (3, 2) DEFAULT ((0))` |  |  | Dato asociado a la entidad `Propiedades`. |
| `TotalResenas` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `Propiedades`. |

---

## `PropiedadLugaresCercanos`

**Archivo:** `PropiedadLugaresCercanos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdLugarTuristico` | `INT` | PK, FK | `LugaresTuristicos.IdLugarTuristico` | Identificador o referencia a otra entidad. |
| `DistanciaKM` | `DECIMAL (5, 2)` |  |  | Dato asociado a la entidad `PropiedadLugaresCercanos`. |
| `TiempoCaminando` | `INT` |  |  | Dato asociado a la entidad `PropiedadLugaresCercanos`. |
| `TiempoEnCarro` | `INT` |  |  | Dato asociado a la entidad `PropiedadLugaresCercanos`. |
| `EsLoMasCercano` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `PropiedadLugaresCercanos`. |

---

## `PropiedadPoliticasCancelacion`

**Archivo:** `PropiedadPoliticasCancelacion.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdPolitica` | `INT` | PK, FK | `PoliticasCancelacion.IdPolitica` | Identificador o referencia a otra entidad. |

---

## `PropiedadReglas`

**Archivo:** `PropiedadReglas.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdRegla` | `INT` | PK, FK | `ReglasCasa.IdRegla` | Identificador o referencia a otra entidad. |
| `EsAplicable` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `PropiedadReglas`. |
| `DetalleEspecifico` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `PropiedadReglas`. |

---

## `PropiedadRequerimientos`

**Archivo:** `PropiedadRequerimientos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdRequerimiento` | `INT` | PK, FK | `RequerimientosReserva.IdRequerimiento` | Identificador o referencia a otra entidad. |
| `MontoDeposito` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `PropiedadRequerimientos`. |
| `CondicionesEspeciales` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `PropiedadRequerimientos`. |

---

## `PropiedadSellos`

**Archivo:** `PropiedadSellos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdSello` | `INT` | PK, FK | `SellosConfianza.IdSello` | Identificador o referencia a otra entidad. |
| `FechaOtorgado` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `PropiedadSellos`. |
| `FechaExpiracion` | `DATE` |  |  | Dato asociado a la entidad `PropiedadSellos`. |

---

## `PropiedadServicios`

**Archivo:** `PropiedadServicios.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdServicio` | `INT` | PK, FK | `ServiciosPropiedad.IdServicio` | Identificador o referencia a otra entidad. |
| `DescripcionAdicional` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `PropiedadServicios`. |
| `IncluidoEnPrecio` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `PropiedadServicios`. |

---

## `PropiedadTransporteCercano`

**Archivo:** `PropiedadTransporteCercano.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdPropiedad` | `INT` | PK, FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdTransporte` | `INT` | PK, FK | `TransporteCercano.IdTransporte` | Identificador o referencia a otra entidad. |
| `DistanciaKM` | `DECIMAL (5, 2)` |  |  | Dato asociado a la entidad `PropiedadTransporteCercano`. |
| `TiempoCaminando` | `INT` |  |  | Dato asociado a la entidad `PropiedadTransporteCercano`. |

---

## `Provincias`

**Archivo:** `Provincias.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdProvincia` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreProvincia` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `Provincias`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Provincias`. |

---

## `RecuperacionContrasena`

**Archivo:** `RecuperacionContrasena.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdSolicitud` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `Token` | `VARCHAR (255)` |  |  | Dato asociado a la entidad `RecuperacionContrasena`. |
| `FechaSolicitud` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `RecuperacionContrasena`. |
| `FechaExpiracion` | `DATETIME` |  |  | Dato asociado a la entidad `RecuperacionContrasena`. |
| `Usada` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `RecuperacionContrasena`. |

---

## `Reembolsos`

**Archivo:** `Reembolsos.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdReembolso` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdPago` | `INT` | FK | `Pagos.IdPago` | Identificador o referencia a otra entidad. |
| `Monto` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Reembolsos`. |
| `FechaReembolso` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `Reembolsos`. |
| `Motivo` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `Reembolsos`. |
| `AprobadoPor` | `INT` | FK | `Usuarios.IdUsuario` | Dato asociado a la entidad `Reembolsos`. |

---

## `ReglasCasa`

**Archivo:** `ReglasCasa.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdRegla` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreRegla` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `ReglasCasa`. |
| `Descripcion` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `ReglasCasa`. |
| `Icono` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `ReglasCasa`. |

---

## `Reportes`

**Archivo:** `Reportes.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdReporte` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuarioReporta` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `IdUsuarioReportado` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `IdPropiedadReportada` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdReservaRelacionada` | `INT` | FK | `Reservas.IdReserva` | Identificador o referencia a otra entidad. |
| `Motivo` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Reportes`. |
| `Descripcion` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Reportes`. |
| `FechaReporte` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `Reportes`. |
| `IdEstado` | `INT` | FK | `Estados.IdEstado` | Identificador o referencia a otra entidad. |
| `Resolucion` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Reportes`. |
| `FechaResolucion` | `DATETIME` |  |  | Dato asociado a la entidad `Reportes`. |
| `ResueltoPor` | `INT` | FK | `Usuarios.IdUsuario` | Dato asociado a la entidad `Reportes`. |

---

## `RequerimientosReserva`

**Archivo:** `RequerimientosReserva.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdRequerimiento` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreRequerimiento` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `RequerimientosReserva`. |
| `Descripcion` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `RequerimientosReserva`. |
| `EsObligatorio` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `RequerimientosReserva`. |

---

## `Reservas`

**Archivo:** `Reservas.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdReserva` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdCliente` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `FechaEntrada` | `DATE` |  |  | Dato asociado a la entidad `Reservas`. |
| `FechaSalida` | `DATE` |  |  | Dato asociado a la entidad `Reservas`. |
| `CantidadPersonas` | `INT` |  |  | Dato asociado a la entidad `Reservas`. |
| `CantidadNoches` | `INT` |  |  | Dato asociado a la entidad `Reservas`. |
| `PrecioPorNoche` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Reservas`. |
| `Subtotal` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Reservas`. |
| `DescuentoAplicado` | `DECIMAL (18, 2) DEFAULT ((0))` |  |  | Dato asociado a la entidad `Reservas`. |
| `Comision` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Reservas`. |
| `Total` | `DECIMAL (18, 2)` |  |  | Dato asociado a la entidad `Reservas`. |
| `IdEstado` | `INT` | FK | `Estados.IdEstado` | Identificador o referencia a otra entidad. |
| `FechaReserva` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `Reservas`. |
| `NotasCliente` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Reservas`. |
| `NotasInternas` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Reservas`. |

---

## `RespuestasCalificacion`

**Archivo:** `RespuestasCalificacion.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdRespuesta` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdCalificacion` | `INT` | FK | `CalificacionesPropiedad.IdCalificacion` | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `Respuesta` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `RespuestasCalificacion`. |
| `Fecha` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `RespuestasCalificacion`. |

---

## `Roles`

**Archivo:** `Roles.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdRol` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreRol` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `Roles`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `Roles`. |

---

## `SellosConfianza`

**Archivo:** `SellosConfianza.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdSello` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreSello` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `SellosConfianza`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `SellosConfianza`. |
| `Icono` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `SellosConfianza`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `SellosConfianza`. |

---

## `ServiciosPropiedad`

**Archivo:** `ServiciosPropiedad.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdServicio` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdCategoria` | `INT` | FK | `CategoriaServicio.IdCategoria` | Identificador o referencia a otra entidad. |
| `NombreServicio` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `ServiciosPropiedad`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `ServiciosPropiedad`. |
| `Icono` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `ServiciosPropiedad`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `ServiciosPropiedad`. |

---

## `Sesiones`

**Archivo:** `Sesiones.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdSesion` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `Token` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Sesiones`. |
| `FechaInicio` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `Sesiones`. |
| `FechaExpiracion` | `DATETIME` |  |  | Dato asociado a la entidad `Sesiones`. |
| `IPAddress` | `VARCHAR (45)` |  |  | Dato asociado a la entidad `Sesiones`. |
| `UserAgent` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Sesiones`. |
| `Activa` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Sesiones`. |

---

## `SuscripcionesProveedor`

**Archivo:** `SuscripcionesProveedor.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdSuscripcion` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdProveedor` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `IdPlan` | `INT` | FK | `PlanesProveedor.IdPlan` | Identificador o referencia a otra entidad. |
| `FechaInicio` | `DATE` |  |  | Dato asociado a la entidad `SuscripcionesProveedor`. |
| `FechaFin` | `DATE` |  |  | Dato asociado a la entidad `SuscripcionesProveedor`. |
| `Activa` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `SuscripcionesProveedor`. |
| `MotivoCancelacion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `SuscripcionesProveedor`. |

---

## `TelefonosUsuario`

**Archivo:** `TelefonosUsuario.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdTelefono` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `Telefono` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `TelefonosUsuario`. |
| `TipoTelefono` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `TelefonosUsuario`. |
| `EsPrincipal` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `TelefonosUsuario`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `TelefonosUsuario`. |

---

## `Temporadas`

**Archivo:** `Temporadas.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdTemporada` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreTemporada` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `Temporadas`. |
| `Descripcion` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `Temporadas`. |
| `FechaInicio` | `DATE` |  |  | Dato asociado a la entidad `Temporadas`. |
| `FechaFin` | `DATE` |  |  | Dato asociado a la entidad `Temporadas`. |
| `FactorMultiplicador` | `DECIMAL (3, 2) DEFAULT ((1.0))` |  |  | Dato asociado a la entidad `Temporadas`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `Temporadas`. |

---

## `TicketsSoporte`

**Archivo:** `TicketsSoporte.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdTicket` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `Asunto` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `TicketsSoporte`. |
| `Descripcion` | `VARCHAR (1000)` |  |  | Dato asociado a la entidad `TicketsSoporte`. |
| `IdEstado` | `INT` | FK | `Estados.IdEstado` | Identificador o referencia a otra entidad. |
| `Prioridad` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `TicketsSoporte`. |
| `FechaCreacion` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `TicketsSoporte`. |
| `FechaCierre` | `DATETIME` |  |  | Dato asociado a la entidad `TicketsSoporte`. |
| `IdAgenteAsignado` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |

---

## `TipoAlojamiento`

**Archivo:** `TipoAlojamiento.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdTipo` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdCategoria` | `INT` | FK | `CategoriaAlojamiento.IdCategoria` | Identificador o referencia a otra entidad. |
| `NombreTipo` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `TipoAlojamiento`. |
| `Descripcion` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `TipoAlojamiento`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `TipoAlojamiento`. |

---

## `TransporteCercano`

**Archivo:** `TransporteCercano.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdTransporte` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `TipoTransporte` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `TransporteCercano`. |
| `Nombre` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `TransporteCercano`. |
| `DistanciaReferencia` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `TransporteCercano`. |
| `Telefono` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `TransporteCercano`. |
| `UbicacionCoordenadas` | `[sys].[geography]` |  |  | Dato asociado a la entidad `TransporteCercano`. |

---

## `Usuarios`

**Archivo:** `Usuarios.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdUsuario` | `INT` | PK |  | Identificador o referencia a otra entidad. |
| `Nombre` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Usuarios`. |
| `PrimerApellido` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Usuarios`. |
| `SegundoApellido` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Usuarios`. |
| `Correo` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `Usuarios`. |
| `Contrasena` | `VARCHAR (255)` |  |  | Dato asociado a la entidad `Usuarios`. |
| `IdNacionalidad` | `INT` | FK | `Nacionalidades.IdNacionalidad` | Identificador o referencia a otra entidad. |
| `Direccion` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `Usuarios`. |
| `IdDistrito` | `INT` | FK | `Distritos.IdDistrito` | Identificador o referencia a otra entidad. |
| `FechaNacimiento` | `DATE` |  |  | Dato asociado a la entidad `Usuarios`. |
| `Genero` | `CHAR (1)` |  |  | Dato asociado a la entidad `Usuarios`. |
| `IdRol` | `INT` | FK | `Roles.IdRol` | Identificador o referencia a otra entidad. |
| `IdEstado` | `INT` | FK | `Estados.IdEstado` | Identificador o referencia a otra entidad. |
| `FechaRegistro` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `Usuarios`. |
| `UltimoAcceso` | `DATETIME` |  |  | Dato asociado a la entidad `Usuarios`. |
| `EmailConfirmado` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `Usuarios`. |
| `TelefonoConfirmado` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `Usuarios`. |
| `FotoPerfil` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Usuarios`. |
| `NotasInternas` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `Usuarios`. |

---

## `VerificacionesPropiedad`

**Archivo:** `VerificacionesPropiedad.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdVerificacion` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `FechaVerificacion` | `DATE` |  |  | Dato asociado a la entidad `VerificacionesPropiedad`. |
| `VerificadoPor` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `VerificacionesPropiedad`. |
| `MetodoVerificacion` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `VerificacionesPropiedad`. |
| `EstadoVerificacion` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `VerificacionesPropiedad`. |
| `Comentarios` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `VerificacionesPropiedad`. |
| `FechaExpiracion` | `DATE` |  |  | Dato asociado a la entidad `VerificacionesPropiedad`. |

---

## `VerificacionesUsuario`

**Archivo:** `VerificacionesUsuario.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdVerificacion` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `TipoVerificacion` | `VARCHAR (50)` |  |  | Dato asociado a la entidad `VerificacionesUsuario`. |
| `Verificado` | `BIT DEFAULT ((0))` |  |  | Dato asociado a la entidad `VerificacionesUsuario`. |
| `FechaVerificacion` | `DATETIME` |  |  | Dato asociado a la entidad `VerificacionesUsuario`. |
| `MetodoVerificacion` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `VerificacionesUsuario`. |

---

## `VideosPropiedad`

**Archivo:** `VideosPropiedad.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdVideo` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `UrlVideo` | `VARCHAR (500)` |  |  | Dato asociado a la entidad `VideosPropiedad`. |
| `TipoVideo` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `VideosPropiedad`. |
| `Titulo` | `VARCHAR (200)` |  |  | Dato asociado a la entidad `VideosPropiedad`. |
| `Descripcion` | `VARCHAR (300)` |  |  | Dato asociado a la entidad `VideosPropiedad`. |
| `Orden` | `INT DEFAULT ((0))` |  |  | Dato asociado a la entidad `VideosPropiedad`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `VideosPropiedad`. |

---

## `VistasPropiedad`

**Archivo:** `VistasPropiedad.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdVista` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `IdPropiedad` | `INT` | FK | `Propiedades.IdPropiedad` | Identificador o referencia a otra entidad. |
| `IdUsuario` | `INT` | FK | `Usuarios.IdUsuario` | Identificador o referencia a otra entidad. |
| `FechaVista` | `DATETIME DEFAULT (getdate())` |  |  | Dato asociado a la entidad `VistasPropiedad`. |
| `IPAddress` | `VARCHAR (45)` |  |  | Dato asociado a la entidad `VistasPropiedad`. |
| `TipoDispositivo` | `VARCHAR (20)` |  |  | Dato asociado a la entidad `VistasPropiedad`. |

---

## `ZonasTicas`

**Archivo:** `ZonasTicas.sql`

| Columna | Tipo | Clave | Referencia (tabla.columna) | Descripcion |
| --- | --- | --- | --- | --- |
| `IdZona` | `INT IDENTITY` | PK |  | Identificador o referencia a otra entidad. |
| `NombreZona` | `VARCHAR (100)` |  |  | Dato asociado a la entidad `ZonasTicas`. |
| `Descripcion` | `VARCHAR (255)` |  |  | Dato asociado a la entidad `ZonasTicas`. |
| `Activo` | `BIT DEFAULT ((1))` |  |  | Dato asociado a la entidad `ZonasTicas`. |

---

