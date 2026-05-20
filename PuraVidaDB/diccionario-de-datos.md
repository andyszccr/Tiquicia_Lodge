# Diccionario de datos

Base de datos **PuraVidaDB** (esquema `dbo`). Plataforma de alojamientos Tiquicia Lodge / Pura Vida.

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |

## Tabla: `BitacoraAcciones`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdBitacora` | `INT IDENTITY` | Registro de auditoría. |  |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `Accion` | `VARCHAR (100)` | Tipo de acción registrada en auditoría. |  |
| `Descripcion` | `VARCHAR (500)` | Texto descriptivo o explicativo del registro. |  |
| `IPAddress` | `VARCHAR (45)` | Dirección IP desde la que se realizó la acción. |  |
| `Fecha` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `TablaAfectada` | `VARCHAR (100)` | Tabla de base de datos modificada en la acción. |  |
| `RegistroAfectado` | `INT` | Identificador del registro afectado en la tabla. |  |
| `IdBitacora` | `ASC` | Registro de auditoría. |  |

## Tabla: `BusquedasUsuarios`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdBusqueda` | `INT IDENTITY` | Búsqueda realizada por el usuario. |  |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `TerminosBusqueda` | `VARCHAR (500)` | Texto buscado por el usuario. |  |
| `FiltrosAplicados` | `VARCHAR (500)` | Filtros JSON o texto de la búsqueda. |  |
| `FechaBusqueda` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `ResultadosCount` | `INT` | Valor numérico entero. |  |
| `IdBusqueda` | `ASC` | Búsqueda realizada por el usuario. |  |

## Tabla: `CalificacionesCliente`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdCalificacion` | `INT IDENTITY` | Calificación o reseña. |  |
| `IdReserva` | `INT` | Identificador de la reserva asociada. | Reservas.IdReserva |
| `IdProveedor` | `INT` | Usuario dueño o administrador de la propiedad. | Usuarios.IdUsuario |
| `IdCliente` | `INT` | Usuario huésped que realiza la reserva o acción. | Usuarios.IdUsuario |
| `Calificacion` | `INT` | Puntuación numérica de evaluación. |  |
| `Comentario` | `VARCHAR (500)` | Texto libre asociado a la operación o comunicación. |  |
| `Fecha` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdCalificacion` | `ASC` | Calificación o reseña. |  |
| `IdReserva` | `ASC` | Identificador de la reserva asociada. | Reservas.IdReserva |

## Tabla: `CalificacionesPropiedad`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdCalificacion` | `INT IDENTITY` | Calificación o reseña. |  |
| `IdReserva` | `INT` | Identificador de la reserva asociada. | Reservas.IdReserva |
| `IdCliente` | `INT` | Usuario huésped que realiza la reserva o acción. | Usuarios.IdUsuario |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `Calificacion` | `INT` | Puntuación numérica de evaluación. |  |
| `Comentario` | `VARCHAR (500)` | Texto libre asociado a la operación o comunicación. |  |
| `Fecha` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `Visible` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdCalificacion` | `ASC` | Calificación o reseña. |  |
| `FK_CalificacionesPropiedad_Propiedad_IdPropiedad` | `FOREIGN` | Puntuación numérica de evaluación. |  |
| `FK_CalificacionesPropiedad_Reserva_IdReserva` | `FOREIGN` | Puntuación numérica de evaluación. |  |
| `IdReserva` | `ASC` | Identificador de la reserva asociada. | Reservas.IdReserva |

## Tabla: `Cantones`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdCanton` | `INT IDENTITY` | Cantón al que pertenece el distrito. |  |
| `IdProvincia` | `INT` | Provincia de Costa Rica. | Provincias.IdProvincia |
| `NombreCanton` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdCanton` | `ASC` | Cantón al que pertenece el distrito. |  |
| `FK_Cantones_Provincias_IdProvincia` | `FOREIGN` | Atributo de la tabla Cantones. |  |

## Tabla: `CategoriaAlojamiento`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdCategoria` | `INT IDENTITY` | Categoría del catálogo correspondiente. |  |
| `NombreCategoria` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `Icono` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdCategoria` | `ASC` | Categoría del catálogo correspondiente. |  |
| `NombreCategoria` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `CategoriaEquipamiento`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdCategoria` | `INT IDENTITY` | Categoría del catálogo correspondiente. |  |
| `NombreCategoria` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `Icono` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdCategoria` | `ASC` | Categoría del catálogo correspondiente. |  |
| `NombreCategoria` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `CategoriaExperiencia`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdCategoria` | `INT IDENTITY` | Categoría del catálogo correspondiente. |  |
| `NombreCategoria` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `Icono` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `IdCategoria` | `ASC` | Categoría del catálogo correspondiente. |  |
| `NombreCategoria` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `CategoriaLugarTuristico`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdCategoria` | `INT IDENTITY` | Categoría del catálogo correspondiente. |  |
| `NombreCategoria` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Icono` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `IdCategoria` | `ASC` | Categoría del catálogo correspondiente. |  |
| `NombreCategoria` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `CategoriaServicio`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdCategoria` | `INT IDENTITY` | Categoría del catálogo correspondiente. |  |
| `NombreCategoria` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `Icono` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `IdCategoria` | `ASC` | Categoría del catálogo correspondiente. |  |
| `NombreCategoria` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `CategoriasFAQ`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdCategoriaFAQ` | `INT IDENTITY` | Categoría de la FAQ. |  |
| `NombreCategoria` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `Orden` | `INT` | Valor numérico entero. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdCategoriaFAQ` | `ASC` | Categoría de la FAQ. |  |
| `NombreCategoria` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `ClicksContacto`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdClick` | `INT IDENTITY` | Registro de clic en contacto. |  |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `TipoContacto` | `VARCHAR (20)` | Clasificación o etiqueta del tipo de registro. |  |
| `FechaClick` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdClick` | `ASC` | Registro de clic en contacto. |  |

## Tabla: `ComerciosCercanos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdComercio` | `INT IDENTITY` | Comercio cercano. |  |
| `NombreComercio` | `VARCHAR (200)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `TipoComercio` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `Telefono` | `VARCHAR (20)` | Número de teléfono de contacto o pago. |  |
| `Direccion` | `VARCHAR (300)` | Dirección física del usuario. |  |
| `HorarioAtencion` | `VARCHAR (200)` | Atributo de la tabla ComerciosCercanos. |  |
| `UbicacionCoordenadas` | `[sys].[geography]` | Descripción textual de la ubicación. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdComercio` | `ASC` | Comercio cercano. |  |

## Tabla: `Comisiones`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdComision` | `INT IDENTITY` | Comisión de la plataforma. |  |
| `IdReserva` | `INT` | Identificador de la reserva asociada. | Reservas.IdReserva |
| `IdProveedor` | `INT` | Usuario dueño o administrador de la propiedad. | Usuarios.IdUsuario |
| `PorcentajeAplicado` | `DECIMAL (5, 2)` | Porcentaje de descuento o comisión. |  |
| `MontoComision` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `FechaCalculo` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `Pagada` | `BIT` | Atributo de la tabla Comisiones. |  |
| `FechaPago` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdComision` | `ASC` | Comisión de la plataforma. |  |
| `IdReserva` | `ASC` | Identificador de la reserva asociada. | Reservas.IdReserva |

## Tabla: `ConfiguracionSistema`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdConfiguracion` | `INT IDENTITY` | Parámetro de configuración. |  |
| `IdModulo` | `INT` | Módulo funcional del sistema. | ModulosSistema.IdModulo |
| `Clave` | `VARCHAR (100)` | Clave del parámetro de configuración. |  |
| `Valor` | `VARCHAR (500)` | Valor almacenado del parámetro de configuración. |  |
| `TipoDato` | `VARCHAR (20)` | Clasificación o etiqueta del tipo de registro. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `FechaActualizacion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdUsuarioModifico` | `INT` | Clave foránea o identificador de la entidad relacionada (IdUsuarioModifico). | Usuarios.IdUsuario |
| `IdConfiguracion` | `ASC` | Parámetro de configuración. |  |
| `Clave` | `ASC` | Clave del parámetro de configuración. |  |

## Tabla: `ContactosDirectos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdContacto` | `INT IDENTITY` | Contacto directo cliente-propiedad. |  |
| `IdCliente` | `INT` | Usuario huésped que realiza la reserva o acción. | Usuarios.IdUsuario |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `FechaContacto` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `TipoContacto` | `VARCHAR (20)` | Clasificación o etiqueta del tipo de registro. |  |
| `DuracionSegundos` | `INT` | Atributo de la tabla ContactosDirectos. |  |
| `Resumen` | `VARCHAR (200)` | Atributo de la tabla ContactosDirectos. |  |
| `IdContacto` | `ASC` | Contacto directo cliente-propiedad. |  |

## Tabla: `CorreosUsuario`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdCorreo` | `INT IDENTITY` | Clave foránea o identificador de la entidad relacionada (IdCorreo). |  |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `Correo` | `VARCHAR (100)` | Dirección de correo electrónico. |  |
| `EsPrincipal` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdCorreo` | `ASC` | Clave foránea o identificador de la entidad relacionada (IdCorreo). |  |
| `FK_CorreosUsuario_Usuario_IdUsuario` | `FOREIGN` | Dirección de correo electrónico. |  |

## Tabla: `DashboardProveedor`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdDashboard` | `INT IDENTITY` | Panel de métricas del proveedor. |  |
| `IdProveedor` | `INT` | Usuario dueño o administrador de la propiedad. | Usuarios.IdUsuario |
| `Fecha` | `DATE` | Fecha u hora del evento o registro. |  |
| `VistasPropiedades` | `INT` | Atributo de la tabla DashboardProveedor. |  |
| `ContactosRecibidos` | `INT` | Atributo de la tabla DashboardProveedor. |  |
| `ReservasConfirmadas` | `INT` | Atributo de la tabla DashboardProveedor. |  |
| `Cancelaciones` | `INT` | Atributo de la tabla DashboardProveedor. |  |
| `IngresosGenerados` | `DECIMAL (18, 2)` | Atributo de la tabla DashboardProveedor. |  |
| `RatingPromedio` | `DECIMAL (3, 2)` | Puntuación numérica de evaluación. |  |
| `IdDashboard` | `ASC` | Panel de métricas del proveedor. |  |

## Tabla: `Descuentos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdDescuento` | `INT IDENTITY` | Descuento del catálogo. |  |
| `NombreDescuento` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `TipoDescuento` | `VARCHAR (30)` | Valor monetario o numérico de cálculo financiero. |  |
| `ValorDescuento` | `DECIMAL (10, 2)` | Valor almacenado del parámetro de configuración. |  |
| `Condiciones` | `VARCHAR (300)` | Atributo de la tabla Descuentos. |  |
| `FechaInicio` | `DATE` | Fecha u hora del evento o registro. |  |
| `FechaFin` | `DATE` | Fecha u hora del evento o registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdDescuento` | `ASC` | Descuento del catálogo. |  |

## Tabla: `DescuentosPropiedad`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdDescuento` | `INT` | Descuento del catálogo. | Descuentos.IdDescuento |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdDescuento` | `ASC` | Descuento del catálogo. | Descuentos.IdDescuento |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |

## Tabla: `Distritos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdDistrito` | `INT IDENTITY` | Distrito geográfico de Costa Rica. |  |
| `IdCanton` | `INT` | Cantón al que pertenece el distrito. | Cantones.IdCanton |
| `NombreDistrito` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `CodigoPostal` | `VARCHAR (10)` | Código o referencia de identificación externa. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdDistrito` | `ASC` | Distrito geográfico de Costa Rica. |  |
| `FK_Distritos_Cantones_IdCanton` | `FOREIGN` | Atributo de la tabla Distritos. |  |

## Tabla: `DocumentosPropiedad`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdDocumento` | `INT IDENTITY` | Documento legal o administrativo. |  |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `TipoDocumento` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `NombreArchivo` | `VARCHAR (200)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `UrlArchivo` | `VARCHAR (500)` | Ruta o enlace al recurso almacenado. |  |
| `FechaSubida` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `Verificado` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `FechaVerificacion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdDocumento` | `ASC` | Documento legal o administrativo. |  |

## Tabla: `DocumentosVerificacion`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdDocumentoVerificacion` | `INT IDENTITY` | Documento de verificación de propiedad. |  |
| `IdVerificacion` | `INT` | Proceso de verificación. | VerificacionesPropiedad.IdVerificacion |
| `TipoDocumento` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `NombreArchivo` | `VARCHAR (200)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `UrlArchivo` | `VARCHAR (500)` | Ruta o enlace al recurso almacenado. |  |
| `FechaSubida` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdDocumentoVerificacion` | `ASC` | Documento de verificación de propiedad. |  |

## Tabla: `Equipamiento`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdEquipamiento` | `INT IDENTITY` | Ítem de equipamiento del catálogo. |  |
| `IdCategoria` | `INT` | Categoría del catálogo correspondiente. | CategoriaEquipamiento.IdCategoria |
| `NombreEquipamiento` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `Icono` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdEquipamiento` | `ASC` | Ítem de equipamiento del catálogo. |  |

## Tabla: `Estados`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdEstado` | `INT IDENTITY` | Estado actual del registro (catálogo Estados). |  |
| `NombreEstado` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `TipoEntidad` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `IdEstado` | `ASC` | Estado actual del registro (catálogo Estados). |  |
| `NombreEstado` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `EvidenciasReporte`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdEvidencia` | `INT IDENTITY` | Evidencia adjunta a un reporte. |  |
| `IdReporte` | `INT` | Reporte o denuncia relacionada. | Reportes.IdReporte |
| `TipoEvidencia` | `VARCHAR (30)` | Clasificación o etiqueta del tipo de registro. |  |
| `UrlArchivo` | `VARCHAR (500)` | Ruta o enlace al recurso almacenado. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `FechaSubida` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdEvidencia` | `ASC` | Evidencia adjunta a un reporte. |  |
| `FK_EvidenciasReporte_Reportes_IdReporte` | `FOREIGN` | Atributo de la tabla EvidenciasReporte. |  |

## Tabla: `Experiencias`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdExperiencia` | `INT IDENTITY` | Experiencia turística cercana. |  |
| `IdCategoria` | `INT` | Categoría del catálogo correspondiente. | CategoriaExperiencia.IdCategoria |
| `NombreExperiencia` | `VARCHAR (200)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (500)` | Texto descriptivo o explicativo del registro. |  |
| `DuracionHoras` | `INT` | Atributo de la tabla Experiencias. |  |
| `CostoAproximado` | `DECIMAL (18, 2)` | Atributo de la tabla Experiencias. |  |
| `IdMoneda` | `INT` | Moneda en la que se expresa un monto. | Monedas.IdMoneda |
| `RecomendadoPor` | `BIT` | Atributo de la tabla Experiencias. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdExperiencia` | `ASC` | Experiencia turística cercana. |  |

## Tabla: `ExperienciasCercanas`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdExperiencia` | `INT` | Experiencia turística cercana. | Experiencias.IdExperiencia |
| `DistanciaKM` | `DECIMAL (5, 2)` | Atributo de la tabla ExperienciasCercanas. |  |
| `TiempoTraslado` | `INT` | Atributo de la tabla ExperienciasCercanas. |  |
| `ProveedorExperiencia` | `VARCHAR (100)` | Atributo de la tabla ExperienciasCercanas. |  |
| `TelefonoContacto` | `VARCHAR (20)` | Número de teléfono de contacto o pago. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdExperiencia` | `ASC` | Experiencia turística cercana. | Experiencias.IdExperiencia |

## Tabla: `Facturas`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdFactura` | `INT IDENTITY` | Factura emitida. |  |
| `IdReserva` | `INT` | Identificador de la reserva asociada. | Reservas.IdReserva |
| `NumeroFactura` | `VARCHAR (50)` | Atributo de la tabla Facturas. |  |
| `FechaEmision` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `MontoTotal` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `PdfURL` | `VARCHAR (500)` | Ruta o enlace al recurso almacenado. |  |
| `Enviada` | `BIT` | Atributo de la tabla Facturas. |  |
| `IdFactura` | `ASC` | Factura emitida. |  |
| `NumeroFactura` | `ASC` | Atributo de la tabla Facturas. |  |

## Tabla: `FAQs`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdFAQ` | `INT IDENTITY` | Pregunta frecuente. |  |
| `IdCategoriaFAQ` | `INT` | Categoría de la FAQ. | CategoriasFAQ.IdCategoriaFAQ |
| `Pregunta` | `VARCHAR (300)` | Atributo de la tabla FAQs. |  |
| `Respuesta` | `VARCHAR (1000)` | Atributo de la tabla FAQs. |  |
| `Orden` | `INT` | Valor numérico entero. |  |
| `VecesVista` | `INT` | Valor numérico entero. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `CreadoPor` | `INT` | Atributo de la tabla FAQs. | Usuarios.IdUsuario |
| `FechaCreacion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `ModificadoPor` | `INT` | Atributo de la tabla FAQs. | Usuarios.IdUsuario |
| `FechaModificacion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdFAQ` | `ASC` | Pregunta frecuente. |  |

## Tabla: `FotosPropiedad`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdFoto` | `INT IDENTITY` | Fotografía de la propiedad. |  |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `UrlFoto` | `VARCHAR (500)` | Ruta o enlace al recurso almacenado. |  |
| `Titulo` | `VARCHAR (200)` | Título corto para mostrar en listados o fichas. |  |
| `Descripcion` | `VARCHAR (300)` | Texto descriptivo o explicativo del registro. |  |
| `Orden` | `INT` | Valor numérico entero. |  |
| `EsPrincipal` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `FechaSubida` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdFoto` | `ASC` | Fotografía de la propiedad. |  |
| `FK_FotosPropiedad_Propiedad_IdPropiedad` | `FOREIGN` | Atributo de la tabla FotosPropiedad. |  |

## Tabla: `GananciasProveedor`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdGanancia` | `INT IDENTITY` | Ganancia del proveedor por reserva. |  |
| `IdPagoComision` | `INT` | Pago de comisión al proveedor. | PagosComisiones.IdPagoComision |
| `IdReserva` | `INT` | Identificador de la reserva asociada. | Reservas.IdReserva |
| `MontoProveedor` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `IdGanancia` | `ASC` | Ganancia del proveedor por reserva. |  |

## Tabla: `HistorialEstadosReserva`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdHistorial` | `INT IDENTITY` | Entrada del historial de cambios. |  |
| `IdReserva` | `INT` | Identificador de la reserva asociada. | Reservas.IdReserva |
| `IdEstadoAnterior` | `INT` | Clave foránea o identificador de la entidad relacionada (IdEstadoAnterior). | Estados.IdEstado |
| `IdEstadoNuevo` | `INT` | Clave foránea o identificador de la entidad relacionada (IdEstadoNuevo). | Estados.IdEstado |
| `FechaCambio` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `UsuarioCambio` | `INT` | Atributo de la tabla HistorialEstadosReserva. | Usuarios.IdUsuario |
| `MotivoCambio` | `VARCHAR (200)` | Texto libre asociado a la operación o comunicación. |  |
| `IdHistorial` | `ASC` | Entrada del historial de cambios. |  |

## Tabla: `HistorialPrecios`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdHistorial` | `INT IDENTITY` | Entrada del historial de cambios. |  |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `PrecioAnterior` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `PrecioNuevo` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `FechaCambio` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `MotivoCambio` | `VARCHAR (100)` | Texto libre asociado a la operación o comunicación. |  |
| `IdHistorial` | `ASC` | Entrada del historial de cambios. |  |

## Tabla: `HorariosCheckInOut`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdHorario` | `INT IDENTITY` | Horario de check-in o check-out. |  |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `TipoHorario` | `VARCHAR (10)` | Clasificación o etiqueta del tipo de registro. |  |
| `HoraDesde` | `TIME (7)` | Atributo de la tabla HorariosCheckInOut. |  |
| `HoraHasta` | `TIME (7)` | Atributo de la tabla HorariosCheckInOut. |  |
| `Flexible` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `Notas` | `VARCHAR (200)` | Texto libre asociado a la operación o comunicación. |  |
| `IdHorario` | `ASC` | Horario de check-in o check-out. |  |
| `FK_HorariosCheckInOut_Propiedad_IdPropiedad` | `FOREIGN` | Atributo de la tabla HorariosCheckInOut. |  |

## Tabla: `ListaPropiedades`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdLista` | `INT` | Lista de deseos del usuario. | ListasDeseos.IdLista |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `FechaAgregado` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdLista` | `ASC` | Lista de deseos del usuario. | ListasDeseos.IdLista |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `FK_ListaPropiedades_Propiedad_IdPropiedad` | `FOREIGN` | Atributo de la tabla ListaPropiedades. |  |

## Tabla: `ListasDeseos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdLista` | `INT IDENTITY` | Lista de deseos del usuario. |  |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `NombreLista` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `FechaCreacion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `Privada` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdLista` | `ASC` | Lista de deseos del usuario. |  |
| `FK_ListasDeseos_Usuario_IdUsuario` | `FOREIGN` | Atributo de la tabla ListasDeseos. |  |

## Tabla: `LogsErrores`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdError` | `INT IDENTITY` | Registro de error del sistema. |  |
| `Fecha` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `Usuario` | `INT` | Atributo de la tabla LogsErrores. | Usuarios.IdUsuario |
| `Modulo` | `VARCHAR (100)` | Atributo de la tabla LogsErrores. |  |
| `ErrorMensaje` | `VARCHAR (1000)` | Texto libre asociado a la operación o comunicación. |  |
| `ErrorDetalle` | `TEXT` | Atributo de la tabla LogsErrores. |  |
| `IPAddress` | `VARCHAR (45)` | Dirección IP desde la que se realizó la acción. |  |
| `Resuelto` | `BIT` | Atributo de la tabla LogsErrores. |  |
| `IdError` | `ASC` | Registro de error del sistema. |  |

## Tabla: `LugaresTuristicos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdLugarTuristico` | `INT IDENTITY` | Lugar turístico de referencia. |  |
| `IdCategoria` | `INT` | Categoría del catálogo correspondiente. | CategoriaLugarTuristico.IdCategoria |
| `NombreLugar` | `VARCHAR (200)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (500)` | Texto descriptivo o explicativo del registro. |  |
| `UbicacionCoordenadas` | `[sys].[geography]` | Descripción textual de la ubicación. |  |
| `Direccion` | `VARCHAR (300)` | Dirección física del usuario. |  |
| `IdDistrito` | `INT` | Distrito geográfico de Costa Rica. | Distritos.IdDistrito |
| `DistanciaReferencia` | `VARCHAR (100)` | Código o referencia de identificación externa. |  |
| `HorarioAtencion` | `VARCHAR (200)` | Atributo de la tabla LugaresTuristicos. |  |
| `Telefono` | `VARCHAR (20)` | Número de teléfono de contacto o pago. |  |
| `SitioWeb` | `VARCHAR (200)` | Atributo de la tabla LugaresTuristicos. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdLugarTuristico` | `ASC` | Lugar turístico de referencia. |  |

## Tabla: `MensajesSoporte`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdMensaje` | `INT IDENTITY` | Clave foránea o identificador de la entidad relacionada (IdMensaje). |  |
| `IdTicket` | `INT` | Ticket de soporte al que pertenece el mensaje. | TicketsSoporte.IdTicket |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `Mensaje` | `VARCHAR (1000)` | Texto libre asociado a la operación o comunicación. |  |
| `FechaEnvio` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `AdjuntoURL` | `VARCHAR (500)` | Ruta o enlace al recurso almacenado. |  |
| `IdMensaje` | `ASC` | Clave foránea o identificador de la entidad relacionada (IdMensaje). |  |
| `FK_MensajesSoporte_Usuario_IdUsuario` | `FOREIGN` | Texto libre asociado a la operación o comunicación. |  |

## Tabla: `MetricasDiarias`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdMetrica` | `INT IDENTITY` | Métrica diaria del sistema. |  |
| `Fecha` | `DATE` | Fecha u hora del evento o registro. |  |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `UsuariosNuevos` | `INT` | Atributo de la tabla MetricasDiarias. |  |
| `PropiedadesNuevas` | `INT` | Atributo de la tabla MetricasDiarias. |  |
| `ReservasCompletadas` | `INT` | Atributo de la tabla MetricasDiarias. |  |
| `IngresosBrutos` | `DECIMAL (18, 2)` | Atributo de la tabla MetricasDiarias. |  |
| `IngresosComisiones` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `VisitasTotales` | `INT` | Valor monetario o numérico de cálculo financiero. |  |
| `BusquedasRealizadas` | `INT` | Atributo de la tabla MetricasDiarias. |  |
| `ContactosDirectos` | `INT` | Atributo de la tabla MetricasDiarias. |  |
| `IdMetrica` | `ASC` | Métrica diaria del sistema. |  |
| `UQ_MetricasDiarias` | `UNIQUE` | Atributo de la tabla MetricasDiarias. |  |
| `Fecha` | `ASC` | Fecha u hora del evento o registro. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |

## Tabla: `ModulosSistema`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdModulo` | `INT IDENTITY` | Módulo funcional del sistema. |  |
| `NombreModulo` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdModulo` | `ASC` | Módulo funcional del sistema. |  |
| `NombreModulo` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `Monedas`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdMoneda` | `INT IDENTITY` | Moneda en la que se expresa un monto. |  |
| `NombreMoneda` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `CodigoISO` | `CHAR (3)` | Código ISO de la moneda (CRC, USD). |  |
| `Simbolo` | `CHAR (3)` | Símbolo de la moneda (₡, $, etc.). |  |
| `IdMoneda` | `ASC` | Moneda en la que se expresa un monto. |  |
| `CodigoISO` | `ASC` | Código ISO de la moneda (CRC, USD). |  |

## Tabla: `Nacionalidades`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdNacionalidad` | `INT IDENTITY` | País de nacionalidad del usuario. |  |
| `Nacionalidad` | `VARCHAR (100)` | Atributo de la tabla Nacionalidades. |  |
| `CodigoISO` | `CHAR (2)` | Código ISO de la moneda (CRC, USD). |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdNacionalidad` | `ASC` | País de nacionalidad del usuario. |  |

## Tabla: `NewsletterSuscriptores`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdSuscriptor` | `INT IDENTITY` | Clave foránea o identificador de la entidad relacionada (IdSuscriptor). |  |
| `Correo` | `VARCHAR (100)` | Dirección de correo electrónico. |  |
| `Nombre` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `FechaSuscripcion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `TokenCancelacion` | `VARCHAR (100)` | Credencial o token de seguridad (almacenado de forma protegida). |  |
| `IdSuscriptor` | `ASC` | Clave foránea o identificador de la entidad relacionada (IdSuscriptor). |  |
| `Correo` | `ASC` | Dirección de correo electrónico. |  |

## Tabla: `Notificaciones`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdNotificacion` | `INT IDENTITY` | Notificación enviada al usuario. |  |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `TipoNotificacion` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `Titulo` | `VARCHAR (200)` | Título corto para mostrar en listados o fichas. |  |
| `Mensaje` | `VARCHAR (500)` | Texto libre asociado a la operación o comunicación. |  |
| `Leida` | `BIT` | Atributo de la tabla Notificaciones. |  |
| `FechaEnvio` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `FechaLectura` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdNotificacion` | `ASC` | Notificación enviada al usuario. |  |

## Tabla: `Pagos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPago` | `INT IDENTITY` | Pago registrado en el sistema. |  |
| `IdReserva` | `INT` | Identificador de la reserva asociada. | Reservas.IdReserva |
| `Monto_CRC` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `MontoUSD` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `FechaPago` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `MetodoPago` | `VARCHAR (30)` | Forma de pago utilizada (SINPE, tarjeta, etc.). |  |
| `EstadoPago` | `VARCHAR (20)` | Estado del pago (pendiente, confirmado, rechazado). |  |
| `ComprobanteURL` | `VARCHAR (500)` | Ruta o enlace al recurso almacenado. |  |
| `TelefonoSINPE` | `VARCHAR (20)` | Número de teléfono de contacto o pago. |  |
| `ReferenciaBanco` | `VARCHAR (100)` | Código o referencia de identificación externa. |  |
| `IdUsuarioRegistra` | `INT` | Clave foránea o identificador de la entidad relacionada (IdUsuarioRegistra). | Usuarios.IdUsuario |
| `IdPago` | `ASC` | Pago registrado en el sistema. |  |
| `FK_Pagos_Reserva_IdReserva` | `FOREIGN` | Atributo de la tabla Pagos. |  |

## Tabla: `PagosComisiones`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPagoComision` | `INT IDENTITY` | Pago de comisión al proveedor. |  |
| `IdProveedor` | `INT` | Usuario dueño o administrador de la propiedad. | Usuarios.IdUsuario |
| `PeriodoInicio` | `DATE` | Atributo de la tabla PagosComisiones. |  |
| `PeriodoFin` | `DATE` | Atributo de la tabla PagosComisiones. |  |
| `MontoTotal` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `FechaPago` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `MetodoPago` | `VARCHAR (30)` | Forma de pago utilizada (SINPE, tarjeta, etc.). |  |
| `ComprobanteURL` | `VARCHAR (500)` | Ruta o enlace al recurso almacenado. |  |
| `IdPagoComision` | `ASC` | Pago de comisión al proveedor. |  |

## Tabla: `PagosPendientes`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPendiente` | `INT IDENTITY` | Clave foránea o identificador de la entidad relacionada (IdPendiente). |  |
| `IdReserva` | `INT` | Identificador de la reserva asociada. | Reservas.IdReserva |
| `MontoPendiente` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `FechaLimite` | `DATE` | Fecha u hora del evento o registro. |  |
| `RecordatoriosEnviados` | `INT` | Atributo de la tabla PagosPendientes. |  |
| `UltimoRecordatorio` | `DATETIME` | Atributo de la tabla PagosPendientes. |  |
| `IdPendiente` | `ASC` | Clave foránea o identificador de la entidad relacionada (IdPendiente). |  |

## Tabla: `PlanesProveedor`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPlan` | `INT IDENTITY` | Plan de suscripción del proveedor. |  |
| `NombrePlan` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `PorcentajeComision` | `DECIMAL (5, 2)` | Porcentaje de descuento o comisión. |  |
| `CostoMensual_CRC` | `DECIMAL (18, 2)` | Atributo de la tabla PlanesProveedor. |  |
| `MaximoPropiedades` | `INT` | Atributo de la tabla PlanesProveedor. |  |
| `SoportePrioritario` | `BIT` | Atributo de la tabla PlanesProveedor. |  |
| `VerificacionGratuita` | `BIT` | Atributo de la tabla PlanesProveedor. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdPlan` | `ASC` | Plan de suscripción del proveedor. |  |
| `NombrePlan` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `PoliticasCancelacion`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPolitica` | `INT IDENTITY` | Política de cancelación. |  |
| `NombrePolitica` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (300)` | Texto descriptivo o explicativo del registro. |  |
| `ReembolsoPorcentaje` | `DECIMAL (5, 2)` | Atributo de la tabla PoliticasCancelacion. |  |
| `DiasAntelacion` | `INT` | Atributo de la tabla PoliticasCancelacion. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdPolitica` | `ASC` | Política de cancelación. |  |
| `NombrePolitica` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `PreciosTemporada`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdTemporada` | `INT` | Temporada para precios dinámicos. | Temporadas.IdTemporada |
| `PrecioPersonalizado` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdTemporada` | `ASC` | Temporada para precios dinámicos. | Temporadas.IdTemporada |

## Tabla: `Promociones`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPromocion` | `INT IDENTITY` | Promoción aplicable. |  |
| `NombrePromo` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (300)` | Texto descriptivo o explicativo del registro. |  |
| `TipoPromo` | `VARCHAR (30)` | Clasificación o etiqueta del tipo de registro. |  |
| `PorcentajeDescuento` | `DECIMAL (5, 2)` | Porcentaje de descuento o comisión. |  |
| `FechaInicio` | `DATE` | Fecha u hora del evento o registro. |  |
| `FechaFin` | `DATE` | Fecha u hora del evento o registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdPromocion` | `ASC` | Promoción aplicable. |  |

## Tabla: `PromocionesPropiedad`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPromocion` | `INT` | Promoción aplicable. | Promociones.IdPromocion |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdPromocion` | `ASC` | Promoción aplicable. | Promociones.IdPromocion |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `FK_PromocionesPropiedad_Promociones_IdPromocion` | `FOREIGN` | Atributo de la tabla PromocionesPropiedad. |  |
| `FK_PromocionesPropiedad_Propiedad_IdPropiedad` | `FOREIGN` | Atributo de la tabla PromocionesPropiedad. |  |

## Tabla: `PropiedadComerciosCercanos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdComercio` | `INT` | Comercio cercano. | ComerciosCercanos.IdComercio |
| `DistanciaKM` | `DECIMAL (5, 2)` | Atributo de la tabla PropiedadComerciosCercanos. |  |
| `TiempoCaminando` | `INT` | Atributo de la tabla PropiedadComerciosCercanos. |  |
| `TiempoEnCarro` | `INT` | Atributo de la tabla PropiedadComerciosCercanos. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdComercio` | `ASC` | Comercio cercano. | ComerciosCercanos.IdComercio |

## Tabla: `PropiedadEquipamiento`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdEquipamiento` | `INT` | Ítem de equipamiento del catálogo. | Equipamiento.IdEquipamiento |
| `Cantidad` | `INT` | Valor numérico entero. |  |
| `DescripcionAdicional` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdEquipamiento` | `ASC` | Ítem de equipamiento del catálogo. | Equipamiento.IdEquipamiento |
| `FK_PropiedadEquipamiento_Equipamiento_IdEquipamiento` | `FOREIGN` | Atributo de la tabla PropiedadEquipamiento. |  |
| `FK_PropiedadEquipamiento_Propiedad_IdPropiedad` | `FOREIGN` | Atributo de la tabla PropiedadEquipamiento. |  |

## Tabla: `Propiedades`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT IDENTITY` | Identificador de la propiedad o alojamiento. |  |
| `IdProveedor` | `INT` | Usuario dueño o administrador de la propiedad. | Usuarios.IdUsuario |
| `IdTipoAlojamiento` | `INT` | Tipo de alojamiento (cabaña, hotel, etc.). | TipoAlojamiento.IdTipo |
| `IdZona` | `INT` | Zona turística tica asignada a la propiedad. | ZonasTicas.IdZona |
| `IdDistrito` | `INT` | Distrito geográfico de Costa Rica. | Distritos.IdDistrito |
| `NombrePropiedad` | `VARCHAR (250)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `TituloPromocional` | `VARCHAR (200)` | Título corto para mostrar en listados o fichas. |  |
| `DescripcionLarga` | `VARCHAR (2000)` | Texto descriptivo o explicativo del registro. |  |
| `DescripcionCorta` | `VARCHAR (300)` | Texto descriptivo o explicativo del registro. |  |
| `UbicacionDetallada` | `VARCHAR (300)` | Descripción textual de la ubicación. |  |
| `Coordenadas` | `[sys].[geography]` | Valor numérico entero. |  |
| `CantidadHabitaciones` | `INT` | Valor numérico entero. |  |
| `CantidadCamas` | `INT` | Valor numérico entero. |  |
| `CapacidadMaxima` | `INT` | Valor numérico entero. |  |
| `CantidadBanios` | `INT` | Valor numérico entero. |  |
| `AreaMetrosCuadrados` | `INT` | Atributo de la tabla Propiedades. |  |
| `MontoXNoche` | `DECIMAL (18, 2)` | Precio por noche de hospedaje en la moneda indicada. |  |
| `Moneda` | `INT` | Atributo de la tabla Propiedades. | Monedas.IdMoneda |
| `DepositoGarantia` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `IdEstado` | `INT` | Estado actual del registro (catálogo Estados). | Estados.IdEstado |
| `Verificado` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `FechaRegistro` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `FechaActualizacion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `VecesVisto` | `INT` | Valor numérico entero. |  |
| `RatingPromedio` | `DECIMAL (3, 2)` | Puntuación numérica de evaluación. |  |
| `TotalResenas` | `INT` | Valor monetario o numérico de cálculo financiero. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. |  |
| `FK_Propiedades_Distritos_IdDistrito` | `FOREIGN` | Atributo de la tabla Propiedades. |  |
| `FK_Propiedades_Estado_IdEstado` | `FOREIGN` | Atributo de la tabla Propiedades. |  |

## Tabla: `PropiedadLugaresCercanos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdLugarTuristico` | `INT` | Lugar turístico de referencia. | LugaresTuristicos.IdLugarTuristico |
| `DistanciaKM` | `DECIMAL (5, 2)` | Atributo de la tabla PropiedadLugaresCercanos. |  |
| `TiempoCaminando` | `INT` | Atributo de la tabla PropiedadLugaresCercanos. |  |
| `TiempoEnCarro` | `INT` | Atributo de la tabla PropiedadLugaresCercanos. |  |
| `EsLoMasCercano` | `BIT` | Atributo de la tabla PropiedadLugaresCercanos. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdLugarTuristico` | `ASC` | Lugar turístico de referencia. | LugaresTuristicos.IdLugarTuristico |

## Tabla: `PropiedadPoliticasCancelacion`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdPolitica` | `INT` | Política de cancelación. | PoliticasCancelacion.IdPolitica |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdPolitica` | `ASC` | Política de cancelación. | PoliticasCancelacion.IdPolitica |

## Tabla: `PropiedadReglas`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdRegla` | `INT` | Regla de la casa del catálogo. | ReglasCasa.IdRegla |
| `EsAplicable` | `BIT` | Atributo de la tabla PropiedadReglas. |  |
| `DetalleEspecifico` | `VARCHAR (200)` | Atributo de la tabla PropiedadReglas. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdRegla` | `ASC` | Regla de la casa del catálogo. | ReglasCasa.IdRegla |
| `FK_PropiedadReglas_Propiedad_IdPropiedad` | `FOREIGN` | Atributo de la tabla PropiedadReglas. |  |

## Tabla: `PropiedadRequerimientos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdRequerimiento` | `INT` | Clave foránea o identificador de la entidad relacionada (IdRequerimiento). | RequerimientosReserva.IdRequerimiento |
| `MontoDeposito` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `CondicionesEspeciales` | `VARCHAR (300)` | Atributo de la tabla PropiedadRequerimientos. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdRequerimiento` | `ASC` | Clave foránea o identificador de la entidad relacionada (IdRequerimiento). | RequerimientosReserva.IdRequerimiento |

## Tabla: `PropiedadSellos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdSello` | `INT` | Sello de confianza. | SellosConfianza.IdSello |
| `FechaOtorgado` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `FechaExpiracion` | `DATE` | Fecha u hora del evento o registro. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdSello` | `ASC` | Sello de confianza. | SellosConfianza.IdSello |

## Tabla: `PropiedadServicios`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdServicio` | `INT` | Servicio o amenidad del catálogo. | ServiciosPropiedad.IdServicio |
| `DescripcionAdicional` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `IncluidoEnPrecio` | `BIT` | Valor monetario o numérico de cálculo financiero. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdServicio` | `ASC` | Servicio o amenidad del catálogo. | ServiciosPropiedad.IdServicio |
| `FK_PropiedadServicios_Propiedad_IdPropiedad` | `FOREIGN` | Atributo de la tabla PropiedadServicios. |  |

## Tabla: `PropiedadTransporteCercano`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdTransporte` | `INT` | Opción de transporte cercano. | TransporteCercano.IdTransporte |
| `DistanciaKM` | `DECIMAL (5, 2)` | Atributo de la tabla PropiedadTransporteCercano. |  |
| `TiempoCaminando` | `INT` | Atributo de la tabla PropiedadTransporteCercano. |  |
| `IdPropiedad` | `ASC` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdTransporte` | `ASC` | Opción de transporte cercano. | TransporteCercano.IdTransporte |

## Tabla: `Provincias`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdProvincia` | `INT IDENTITY` | Provincia de Costa Rica. |  |
| `NombreProvincia` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdProvincia` | `ASC` | Provincia de Costa Rica. |  |
| `NombreProvincia` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `RecuperacionContrasena`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdSolicitud` | `INT IDENTITY` | Solicitud de recuperación de contraseña. |  |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `Token` | `VARCHAR (255)` | Credencial o token de seguridad (almacenado de forma protegida). |  |
| `FechaSolicitud` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `FechaExpiracion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `Usada` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdSolicitud` | `ASC` | Solicitud de recuperación de contraseña. |  |
| `FK_RecuperacionContrasena_Usuario_IdUsuario` | `FOREIGN` | Credencial o token de seguridad (almacenado de forma protegida). |  |
| `Token` | `ASC` | Credencial o token de seguridad (almacenado de forma protegida). |  |

## Tabla: `Reembolsos`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdReembolso` | `INT IDENTITY` | Reembolso procesado. |  |
| `IdPago` | `INT` | Pago registrado en el sistema. | Pagos.IdPago |
| `Monto` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `FechaReembolso` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `Motivo` | `VARCHAR (300)` | Texto libre asociado a la operación o comunicación. |  |
| `AprobadoPor` | `INT` | Atributo de la tabla Reembolsos. | Usuarios.IdUsuario |
| `IdReembolso` | `ASC` | Reembolso procesado. |  |

## Tabla: `ReglasCasa`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdRegla` | `INT IDENTITY` | Regla de la casa del catálogo. |  |
| `NombreRegla` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (300)` | Texto descriptivo o explicativo del registro. |  |
| `Icono` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `IdRegla` | `ASC` | Regla de la casa del catálogo. |  |
| `NombreRegla` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `Reportes`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdReporte` | `INT IDENTITY` | Reporte o denuncia relacionada. |  |
| `IdUsuarioReporta` | `INT` | Clave foránea o identificador de la entidad relacionada (IdUsuarioReporta). | Usuarios.IdUsuario |
| `IdUsuarioReportado` | `INT` | Clave foránea o identificador de la entidad relacionada (IdUsuarioReportado). | Usuarios.IdUsuario |
| `IdPropiedadReportada` | `INT` | Clave foránea o identificador de la entidad relacionada (IdPropiedadReportada). | Propiedades.IdPropiedad |
| `IdReservaRelacionada` | `INT` | Clave foránea o identificador de la entidad relacionada (IdReservaRelacionada). | Reservas.IdReserva |
| `Motivo` | `VARCHAR (100)` | Texto libre asociado a la operación o comunicación. |  |
| `Descripcion` | `VARCHAR (500)` | Texto descriptivo o explicativo del registro. |  |
| `FechaReporte` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdEstado` | `INT` | Estado actual del registro (catálogo Estados). | Estados.IdEstado |
| `Resolucion` | `VARCHAR (500)` | Texto libre asociado a la operación o comunicación. |  |
| `FechaResolucion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `ResueltoPor` | `INT` | Atributo de la tabla Reportes. | Usuarios.IdUsuario |
| `IdReporte` | `ASC` | Reporte o denuncia relacionada. |  |
| `FK_Reportes_Estado_IdEstado` | `FOREIGN` | Atributo de la tabla Reportes. |  |

## Tabla: `RequerimientosReserva`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdRequerimiento` | `INT IDENTITY` | Clave foránea o identificador de la entidad relacionada (IdRequerimiento). |  |
| `NombreRequerimiento` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (300)` | Texto descriptivo o explicativo del registro. |  |
| `EsObligatorio` | `BIT` | Atributo de la tabla RequerimientosReserva. |  |
| `IdRequerimiento` | `ASC` | Clave foránea o identificador de la entidad relacionada (IdRequerimiento). |  |
| `NombreRequerimiento` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `Reservas`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdReserva` | `INT IDENTITY` | Identificador de la reserva asociada. |  |
| `IdCliente` | `INT` | Usuario huésped que realiza la reserva o acción. | Usuarios.IdUsuario |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `FechaEntrada` | `DATE` | Fecha de inicio o fin de la estadía reservada. |  |
| `FechaSalida` | `DATE` | Fecha de inicio o fin de la estadía reservada. |  |
| `CantidadPersonas` | `INT` | Número de huéspedes de la reserva. |  |
| `CantidadNoches` | `INT` | Número de noches calculadas para la reserva. |  |
| `PrecioPorNoche` | `DECIMAL (18, 2)` | Precio por noche de hospedaje en la moneda indicada. |  |
| `Subtotal` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `DescuentoAplicado` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `Comision` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `Total` | `DECIMAL (18, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `IdEstado` | `INT` | Estado actual del registro (catálogo Estados). | Estados.IdEstado |
| `FechaReserva` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `NotasCliente` | `VARCHAR (500)` | Texto libre asociado a la operación o comunicación. |  |
| `NotasInternas` | `VARCHAR (500)` | Texto libre asociado a la operación o comunicación. |  |
| `IdReserva` | `ASC` | Identificador de la reserva asociada. |  |
| `FK_Reservas_Estado_IdEstado` | `FOREIGN` | Atributo de la tabla Reservas. |  |
| `FK_Reservas_Propiedad_IdPropiedad` | `FOREIGN` | Atributo de la tabla Reservas. |  |

## Tabla: `RespuestasCalificacion`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdRespuesta` | `INT IDENTITY` | Respuesta a una calificación. |  |
| `IdCalificacion` | `INT` | Calificación o reseña. | CalificacionesPropiedad.IdCalificacion |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `Respuesta` | `VARCHAR (500)` | Atributo de la tabla RespuestasCalificacion. |  |
| `Fecha` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdRespuesta` | `ASC` | Respuesta a una calificación. |  |

## Tabla: `Roles`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdRol` | `INT IDENTITY` | Rol del usuario (cliente, proveedor, admin, etc.). |  |
| `NombreRol` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `IdRol` | `ASC` | Rol del usuario (cliente, proveedor, admin, etc.). |  |
| `NombreRol` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `SellosConfianza`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdSello` | `INT IDENTITY` | Sello de confianza. |  |
| `NombreSello` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `Icono` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdSello` | `ASC` | Sello de confianza. |  |
| `NombreSello` | `ASC` | Nombre o etiqueta del registro en catálogo o entidad. |  |

## Tabla: `ServiciosPropiedad`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdServicio` | `INT IDENTITY` | Servicio o amenidad del catálogo. |  |
| `IdCategoria` | `INT` | Categoría del catálogo correspondiente. | CategoriaServicio.IdCategoria |
| `NombreServicio` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `Icono` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdServicio` | `ASC` | Servicio o amenidad del catálogo. |  |

## Tabla: `Sesiones`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdSesion` | `INT IDENTITY` | Sesión activa de autenticación. |  |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `Token` | `VARCHAR (500)` | Credencial o token de seguridad (almacenado de forma protegida). |  |
| `FechaInicio` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `FechaExpiracion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IPAddress` | `VARCHAR (45)` | Dirección IP desde la que se realizó la acción. |  |
| `UserAgent` | `VARCHAR (500)` | Navegador o cliente que inició la sesión. |  |
| `Activa` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdSesion` | `ASC` | Sesión activa de autenticación. |  |
| `FK_Sesiones_Usuario_IdUsuario` | `FOREIGN` | Atributo de la tabla Sesiones. |  |
| `Token` | `ASC` | Credencial o token de seguridad (almacenado de forma protegida). |  |

## Tabla: `SuscripcionesProveedor`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdSuscripcion` | `INT IDENTITY` | Suscripción activa del proveedor. |  |
| `IdProveedor` | `INT` | Usuario dueño o administrador de la propiedad. | Usuarios.IdUsuario |
| `IdPlan` | `INT` | Plan de suscripción del proveedor. | PlanesProveedor.IdPlan |
| `FechaInicio` | `DATE` | Fecha u hora del evento o registro. |  |
| `FechaFin` | `DATE` | Fecha u hora del evento o registro. |  |
| `Activa` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `MotivoCancelacion` | `VARCHAR (200)` | Texto libre asociado a la operación o comunicación. |  |
| `IdSuscripcion` | `ASC` | Suscripción activa del proveedor. |  |

## Tabla: `TelefonosUsuario`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdTelefono` | `INT IDENTITY` | Clave foránea o identificador de la entidad relacionada (IdTelefono). |  |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `Telefono` | `VARCHAR (20)` | Número de teléfono de contacto o pago. |  |
| `TipoTelefono` | `VARCHAR (20)` | Número de teléfono de contacto o pago. |  |
| `EsPrincipal` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdTelefono` | `ASC` | Clave foránea o identificador de la entidad relacionada (IdTelefono). |  |
| `FK_TelefonosUsuario_Usuario_IdUsuario` | `FOREIGN` | Número de teléfono de contacto o pago. |  |

## Tabla: `Temporadas`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdTemporada` | `INT IDENTITY` | Temporada para precios dinámicos. |  |
| `NombreTemporada` | `VARCHAR (50)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (200)` | Texto descriptivo o explicativo del registro. |  |
| `FechaInicio` | `DATE` | Fecha u hora del evento o registro. |  |
| `FechaFin` | `DATE` | Fecha u hora del evento o registro. |  |
| `FactorMultiplicador` | `DECIMAL (3, 2)` | Valor monetario o numérico de cálculo financiero. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdTemporada` | `ASC` | Temporada para precios dinámicos. |  |

## Tabla: `TicketsSoporte`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdTicket` | `INT IDENTITY` | Ticket de soporte al que pertenece el mensaje. |  |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `Asunto` | `VARCHAR (200)` | Texto libre asociado a la operación o comunicación. |  |
| `Descripcion` | `VARCHAR (1000)` | Texto descriptivo o explicativo del registro. |  |
| `IdEstado` | `INT` | Estado actual del registro (catálogo Estados). | Estados.IdEstado |
| `Prioridad` | `VARCHAR (20)` | Nivel de prioridad del ticket de soporte. |  |
| `FechaCreacion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `FechaCierre` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IdAgenteAsignado` | `INT` | Clave foránea o identificador de la entidad relacionada (IdAgenteAsignado). | Usuarios.IdUsuario |
| `IdTicket` | `ASC` | Ticket de soporte al que pertenece el mensaje. |  |
| `FK_TicketsSoporte_Estado_IdEstado` | `FOREIGN` | Atributo de la tabla TicketsSoporte. |  |
| `FK_TicketsSoporte_Usuario_IdUsuario` | `FOREIGN` | Atributo de la tabla TicketsSoporte. |  |

## Tabla: `TipoAlojamiento`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdTipo` | `INT IDENTITY` | Clave foránea o identificador de la entidad relacionada (IdTipo). |  |
| `IdCategoria` | `INT` | Categoría del catálogo correspondiente. | CategoriaAlojamiento.IdCategoria |
| `NombreTipo` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (300)` | Texto descriptivo o explicativo del registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdTipo` | `ASC` | Clave foránea o identificador de la entidad relacionada (IdTipo). |  |

## Tabla: `TransporteCercano`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdTransporte` | `INT IDENTITY` | Opción de transporte cercano. |  |
| `TipoTransporte` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `Nombre` | `VARCHAR (200)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `DistanciaReferencia` | `VARCHAR (100)` | Código o referencia de identificación externa. |  |
| `Telefono` | `VARCHAR (20)` | Número de teléfono de contacto o pago. |  |
| `UbicacionCoordenadas` | `[sys].[geography]` | Descripción textual de la ubicación. |  |
| `IdTransporte` | `ASC` | Opción de transporte cercano. |  |

## Tabla: `Usuarios`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. |  |
| `Nombre` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `PrimerApellido` | `VARCHAR (100)` | Atributo de la tabla Usuarios. |  |
| `SegundoApellido` | `VARCHAR (100)` | Atributo de la tabla Usuarios. |  |
| `Correo` | `VARCHAR (100)` | Dirección de correo electrónico. |  |
| `Contrasena` | `VARCHAR (255)` | Credencial o token de seguridad (almacenado de forma protegida). |  |
| `IdNacionalidad` | `INT` | País de nacionalidad del usuario. | Nacionalidades.IdNacionalidad |
| `Direccion` | `VARCHAR (300)` | Dirección física del usuario. |  |
| `IdDistrito` | `INT` | Distrito geográfico de Costa Rica. | Distritos.IdDistrito |
| `FechaNacimiento` | `DATE` | Fecha u hora del evento o registro. |  |
| `Genero` | `CHAR (1)` | Género del usuario (M/F/O u otro código). |  |
| `IdRol` | `INT` | Rol del usuario (cliente, proveedor, admin, etc.). | Roles.IdRol |
| `IdEstado` | `INT` | Estado actual del registro (catálogo Estados). | Estados.IdEstado |
| `FechaRegistro` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `UltimoAcceso` | `DATETIME` | Atributo de la tabla Usuarios. |  |
| `EmailConfirmado` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `TelefonoConfirmado` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `FotoPerfil` | `VARCHAR (500)` | URL de la imagen de perfil del usuario. |  |
| `NotasInternas` | `VARCHAR (500)` | Texto libre asociado a la operación o comunicación. |  |
| `IdUsuario` | `ASC` | Identificador único del usuario en el sistema. |  |
| `FK_Usuarios_Distritos_IdDistrito` | `FOREIGN` | Atributo de la tabla Usuarios. |  |
| `FK_Usuarios_Estado_IdEstado` | `FOREIGN` | Atributo de la tabla Usuarios. |  |
| `FK_Usuarios_Nacionalidades_IdNacionalidad` | `FOREIGN` | Atributo de la tabla Usuarios. |  |
| `FK_Usuarios_Roles_IdRol` | `FOREIGN` | Atributo de la tabla Usuarios. |  |
| `Correo` | `ASC` | Dirección de correo electrónico. |  |

## Tabla: `VerificacionesPropiedad`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdVerificacion` | `INT IDENTITY` | Proceso de verificación. |  |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `FechaVerificacion` | `DATE` | Fecha u hora del evento o registro. |  |
| `VerificadoPor` | `VARCHAR (100)` | Indicador booleano (sí/no) del estado o condición. |  |
| `MetodoVerificacion` | `VARCHAR (50)` | Atributo de la tabla VerificacionesPropiedad. |  |
| `EstadoVerificacion` | `VARCHAR (20)` | Atributo de la tabla VerificacionesPropiedad. |  |
| `Comentarios` | `VARCHAR (500)` | Texto libre asociado a la operación o comunicación. |  |
| `FechaExpiracion` | `DATE` | Fecha u hora del evento o registro. |  |
| `IdVerificacion` | `ASC` | Proceso de verificación. |  |

## Tabla: `VerificacionesUsuario`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdVerificacion` | `INT IDENTITY` | Proceso de verificación. |  |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `TipoVerificacion` | `VARCHAR (50)` | Clasificación o etiqueta del tipo de registro. |  |
| `Verificado` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `FechaVerificacion` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `MetodoVerificacion` | `VARCHAR (100)` | Atributo de la tabla VerificacionesUsuario. |  |
| `IdVerificacion` | `ASC` | Proceso de verificación. |  |
| `FK_VerificacionesUsuario_Usuario_IdUsuario` | `FOREIGN` | Atributo de la tabla VerificacionesUsuario. |  |

## Tabla: `VideosPropiedad`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdVideo` | `INT IDENTITY` | Video de la propiedad. |  |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `UrlVideo` | `VARCHAR (500)` | Ruta o enlace al recurso almacenado. |  |
| `TipoVideo` | `VARCHAR (20)` | Clasificación o etiqueta del tipo de registro. |  |
| `Titulo` | `VARCHAR (200)` | Título corto para mostrar en listados o fichas. |  |
| `Descripcion` | `VARCHAR (300)` | Texto descriptivo o explicativo del registro. |  |
| `Orden` | `INT` | Valor numérico entero. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdVideo` | `ASC` | Video de la propiedad. |  |

## Tabla: `VistasPropiedad`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdVista` | `INT IDENTITY` | Visualización de ficha de propiedad. |  |
| `IdPropiedad` | `INT` | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| `IdUsuario` | `INT` | Identificador único del usuario en el sistema. | Usuarios.IdUsuario |
| `FechaVista` | `DATETIME` | Fecha u hora del evento o registro. |  |
| `IPAddress` | `VARCHAR (45)` | Dirección IP desde la que se realizó la acción. |  |
| `TipoDispositivo` | `VARCHAR (20)` | Clasificación o etiqueta del tipo de registro. |  |
| `IdVista` | `ASC` | Visualización de ficha de propiedad. |  |

## Tabla: `ZonasTicas`

| Campo | Valor | Descripción | Relación |
| --- | --- | --- | --- |
| `IdZona` | `INT IDENTITY` | Zona turística tica asignada a la propiedad. |  |
| `NombreZona` | `VARCHAR (100)` | Nombre o etiqueta del registro en catálogo o entidad. |  |
| `Descripcion` | `VARCHAR (255)` | Texto descriptivo o explicativo del registro. |  |
| `Activo` | `BIT` | Indicador booleano (sí/no) del estado o condición. |  |
| `IdZona` | `ASC` | Zona turística tica asignada a la propiedad. |  |

