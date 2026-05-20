# Diccionario de datos

Base de datos **PuraVidaDB** (esquema `dbo`). Plataforma de alojamientos en Costa Rica â€” Tiquicia Lodge / Pura Vida.

| Tabla | Campo | Valor (tipo) | Descripcion | Relacion |
| --- | --- | --- | --- | --- |
| BitacoraAcciones | `IdBitacora` | INT IDENTITY (1, 1) NOT NULL | Identificador del registro de auditoria. | PK |
| BitacoraAcciones | `IdUsuario` | INT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| BitacoraAcciones | `Accion` | VARCHAR (100) NOT NULL | Codigo o nombre de la accion registrada (crear, editar, eliminar, etc.). |  |
| BitacoraAcciones | `Descripcion` | VARCHAR (500) NULL | Texto descriptivo del registro. |  |
| BitacoraAcciones | `IPAddress` | VARCHAR (45) NULL | Direccion IP desde la que se realizo la accion. |  |
| BitacoraAcciones | `Fecha` | DATETIME DEFAULT (getdate()) NULL | Fecha y hora del evento registrado. |  |
| BitacoraAcciones | `TablaAfectada` | VARCHAR (100) NULL | Nombre de la tabla modificada en la auditoria. |  |
| BitacoraAcciones | `RegistroAfectado` | INT NULL | ID del registro modificado en la tabla afectada. |  |
| BusquedasUsuarios | `IdBusqueda` | INT IDENTITY (1, 1) NOT NULL | Identificador de la busqueda guardada. | PK |
| BusquedasUsuarios | `IdUsuario` | INT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| BusquedasUsuarios | `TerminosBusqueda` | VARCHAR (500) NULL | Palabras clave usadas en la busqueda. |  |
| BusquedasUsuarios | `FiltrosAplicados` | VARCHAR (500) NULL | JSON o texto con filtros usados en la busqueda. |  |
| BusquedasUsuarios | `FechaBusqueda` | DATETIME DEFAULT (getdate()) NULL | Fecha y hora en que el usuario realizo la busqueda. |  |
| BusquedasUsuarios | `ResultadosCount` | INT NULL | Cantidad de resultados devueltos en la busqueda. |  |
| CalificacionesCliente | `IdCalificacion` | INT IDENTITY (1, 1) NOT NULL | Identificador de la calificacion o resena. | PK |
| CalificacionesCliente | `IdReserva` | INT NOT NULL | Identificador de la reserva. | Reservas.IdReserva |
| CalificacionesCliente | `IdProveedor` | INT NOT NULL | Usuario proveedor dueno de la propiedad. | Usuarios.IdUsuario |
| CalificacionesCliente | `IdCliente` | INT NOT NULL | Usuario huesped que realiza la accion o reserva. | Usuarios.IdUsuario |
| CalificacionesCliente | `Calificacion` | INT NOT NULL | Puntuacion numerica (por ejemplo de 1 a 5). |  |
| CalificacionesCliente | `Comentario` | VARCHAR (500) NULL | Texto de la resena o calificacion del cliente. |  |
| CalificacionesCliente | `Fecha` | DATETIME DEFAULT (getdate()) NULL | Fecha y hora del evento registrado. |  |
| CalificacionesPropiedad | `IdCalificacion` | INT IDENTITY (1, 1) NOT NULL | Identificador de la calificacion o resena. | PK |
| CalificacionesPropiedad | `IdReserva` | INT NOT NULL | Identificador de la reserva. | Reservas.IdReserva |
| CalificacionesPropiedad | `IdCliente` | INT NOT NULL | Usuario huesped que realiza la accion o reserva. | Usuarios.IdUsuario |
| CalificacionesPropiedad | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| CalificacionesPropiedad | `Calificacion` | INT NOT NULL | Puntuacion numerica (por ejemplo de 1 a 5). |  |
| CalificacionesPropiedad | `Comentario` | VARCHAR (500) NULL | Texto de la resena o calificacion del cliente. |  |
| CalificacionesPropiedad | `Fecha` | DATETIME DEFAULT (getdate()) NULL | Fecha y hora del evento registrado. |  |
| CalificacionesPropiedad | `Visible` | BIT DEFAULT ((1)) NULL | Indica si la resena es visible al publico. |  |
| Cantones | `IdCanton` | INT IDENTITY (1, 1) NOT NULL | Identificador del canton. | PK |
| Cantones | `IdProvincia` | INT NOT NULL | Identificador de la provincia. | Provincias.IdProvincia |
| Cantones | `NombreCanton` | VARCHAR (100) NOT NULL | Nombre oficial del canton. |  |
| Cantones | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| CategoriaAlojamiento | `IdCategoria` | INT IDENTITY (1, 1) NOT NULL | Identificador de la categoria del catalogo. | PK |
| CategoriaAlojamiento | `NombreCategoria` | VARCHAR (50) NOT NULL | Nombre de la categoria. |  |
| CategoriaAlojamiento | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| CategoriaAlojamiento | `Icono` | VARCHAR (50) NULL | Nombre o ruta del icono para la interfaz. |  |
| CategoriaAlojamiento | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| CategoriaEquipamiento | `IdCategoria` | INT IDENTITY (1, 1) NOT NULL | Identificador de la categoria del catalogo. | PK |
| CategoriaEquipamiento | `NombreCategoria` | VARCHAR (50) NOT NULL | Nombre de la categoria. |  |
| CategoriaEquipamiento | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| CategoriaEquipamiento | `Icono` | VARCHAR (50) NULL | Nombre o ruta del icono para la interfaz. |  |
| CategoriaEquipamiento | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| CategoriaExperiencia | `IdCategoria` | INT IDENTITY (1, 1) NOT NULL | Identificador de la categoria del catalogo. | PK |
| CategoriaExperiencia | `NombreCategoria` | VARCHAR (50) NOT NULL | Nombre de la categoria. |  |
| CategoriaExperiencia | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| CategoriaExperiencia | `Icono` | VARCHAR (50) NULL | Nombre o ruta del icono para la interfaz. |  |
| CategoriaLugarTuristico | `IdCategoria` | INT IDENTITY (1, 1) NOT NULL | Identificador de la categoria del catalogo. | PK |
| CategoriaLugarTuristico | `NombreCategoria` | VARCHAR (50) NOT NULL | Nombre de la categoria. |  |
| CategoriaLugarTuristico | `Icono` | VARCHAR (50) NULL | Nombre o ruta del icono para la interfaz. |  |
| CategoriaLugarTuristico | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| CategoriaServicio | `IdCategoria` | INT IDENTITY (1, 1) NOT NULL | Identificador de la categoria del catalogo. | PK |
| CategoriaServicio | `NombreCategoria` | VARCHAR (50) NOT NULL | Nombre de la categoria. |  |
| CategoriaServicio | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| CategoriaServicio | `Icono` | VARCHAR (50) NULL | Nombre o ruta del icono para la interfaz. |  |
| CategoriasFAQ | `IdCategoriaFAQ` | INT IDENTITY (1, 1) NOT NULL | Identificador de la categoria de preguntas frecuentes. | PK |
| CategoriasFAQ | `NombreCategoria` | VARCHAR (50) NOT NULL | Nombre de la categoria. |  |
| CategoriasFAQ | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| CategoriasFAQ | `Orden` | INT DEFAULT ((0)) NULL | Orden de visualizacion en listas. |  |
| CategoriasFAQ | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| ClicksContacto | `IdClick` | INT IDENTITY (1, 1) NOT NULL | Identificador del clic en contacto. | PK |
| ClicksContacto | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| ClicksContacto | `IdUsuario` | INT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| ClicksContacto | `TipoContacto` | VARCHAR (20) NOT NULL | Canal de contacto (WhatsApp, telefono, email). |  |
| ClicksContacto | `FechaClick` | DATETIME DEFAULT (getdate()) NULL | Fecha del clic en contacto. |  |
| ComerciosCercanos | `IdComercio` | INT IDENTITY (1, 1) NOT NULL | Identificador del comercio cercano. | PK |
| ComerciosCercanos | `NombreComercio` | VARCHAR (200) NOT NULL | Nombre del comercio o negocio cercano. |  |
| ComerciosCercanos | `TipoComercio` | VARCHAR (50) NOT NULL | Tipo de comercio (restaurante, supermercado, etc.). |  |
| ComerciosCercanos | `Telefono` | VARCHAR (20) NULL | Numero telefonico de contacto. |  |
| ComerciosCercanos | `Direccion` | VARCHAR (300) NULL | Direccion fisica o referencia de ubicacion. |  |
| ComerciosCercanos | `HorarioAtencion` | VARCHAR (200) NULL | Horario de atencion del comercio cercano. |  |
| ComerciosCercanos | `UbicacionCoordenadas` | [sys].[geography] NULL | Coordenadas geograficas del punto de interes. |  |
| ComerciosCercanos | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| Comisiones | `IdComision` | INT IDENTITY (1, 1) NOT NULL | Identificador de la regla de comision. | PK |
| Comisiones | `IdReserva` | INT NOT NULL | Identificador de la reserva. | Reservas.IdReserva |
| Comisiones | `IdProveedor` | INT NOT NULL | Usuario proveedor dueno de la propiedad. | Usuarios.IdUsuario |
| Comisiones | `PorcentajeAplicado` | DECIMAL (5, 2) NOT NULL | Porcentaje aplicado en el calculo. |  |
| Comisiones | `MontoComision` | DECIMAL (18, 2) NOT NULL | Monto de la comision aplicada. |  |
| Comisiones | `FechaCalculo` | DATETIME DEFAULT (getdate()) NULL | Fecha en que se calcularon las metricas. |  |
| Comisiones | `Pagada` | BIT DEFAULT ((0)) NULL | Indica si la comision o factura fue pagada. |  |
| Comisiones | `FechaPago` | DATETIME NULL | Fecha en que se registro el pago. |  |
| ConfiguracionSistema | `IdConfiguracion` | INT IDENTITY (1, 1) NOT NULL | Identificador del parametro de configuracion. | PK |
| ConfiguracionSistema | `IdModulo` | INT DEFAULT ((1)) NOT NULL | Identificador del modulo del sistema. | ModulosSistema.IdModulo |
| ConfiguracionSistema | `Clave` | VARCHAR (100) NOT NULL | Nombre tecnico del parametro de configuracion. |  |
| ConfiguracionSistema | `Valor` | VARCHAR (500) NOT NULL | Valor almacenado del parametro de configuracion. |  |
| ConfiguracionSistema | `TipoDato` | VARCHAR (20) DEFAULT ('string') NULL | Tipo de dato del parametro (texto, numero, booleano). |  |
| ConfiguracionSistema | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| ConfiguracionSistema | `FechaActualizacion` | DATETIME DEFAULT (getdate()) NULL | Fecha de ultima modificacion del registro. |  |
| ConfiguracionSistema | `IdUsuarioModifico` | INT NULL | Usuario que modifico la configuracion por ultima vez. | Usuarios.IdUsuario |
| ContactosDirectos | `IdContacto` | INT IDENTITY (1, 1) NOT NULL | Identificador del contacto directo cliente-propiedad. | PK |
| ContactosDirectos | `IdCliente` | INT NOT NULL | Usuario huesped que realiza la accion o reserva. | Usuarios.IdUsuario |
| ContactosDirectos | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| ContactosDirectos | `FechaContacto` | DATETIME DEFAULT (getdate()) NULL | Fecha del contacto directo. |  |
| ContactosDirectos | `TipoContacto` | VARCHAR (20) NULL | Canal de contacto (WhatsApp, telefono, email). |  |
| ContactosDirectos | `DuracionSegundos` | INT NULL | Tiempo de ejecucion o duracion del proceso en segundos. |  |
| ContactosDirectos | `Resumen` | VARCHAR (200) NULL | Resumen del panel o metrica del periodo. |  |
| CorreosUsuario | `IdCorreo` | INT IDENTITY (1, 1) NOT NULL | Identificador del correo adicional del usuario. | PK |
| CorreosUsuario | `IdUsuario` | INT NOT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| CorreosUsuario | `Correo` | VARCHAR (100) NOT NULL | Direccion de correo electronico. |  |
| CorreosUsuario | `EsPrincipal` | BIT DEFAULT ((0)) NULL | Marca el telefono, correo o foto como principal. |  |
| CorreosUsuario | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| DashboardProveedor | `IdDashboard` | INT IDENTITY (1, 1) NOT NULL | Identificador del snapshot del panel del proveedor. | PK |
| DashboardProveedor | `IdProveedor` | INT NOT NULL | Usuario proveedor dueno de la propiedad. | Usuarios.IdUsuario |
| DashboardProveedor | `Fecha` | DATE NOT NULL | Fecha y hora del evento registrado. |  |
| DashboardProveedor | `VistasPropiedades` | INT DEFAULT ((0)) NULL | Vistas a fichas de propiedad en el periodo. |  |
| DashboardProveedor | `ContactosRecibidos` | INT DEFAULT ((0)) NULL | Cantidad de contactos directos recibidos en el periodo. |  |
| DashboardProveedor | `ReservasConfirmadas` | INT DEFAULT ((0)) NULL | Reservas confirmadas en el periodo. |  |
| DashboardProveedor | `Cancelaciones` | INT DEFAULT ((0)) NULL | Numero de reservas canceladas en el periodo. |  |
| DashboardProveedor | `IngresosGenerados` | DECIMAL (18, 2) DEFAULT ((0)) NULL | Ingresos totales generados en el periodo. |  |
| DashboardProveedor | `RatingPromedio` | DECIMAL (3, 2) NULL | Promedio de calificaciones de la propiedad. |  |
| Descuentos | `IdDescuento` | INT IDENTITY (1, 1) NOT NULL | Identificador del descuento. | PK |
| Descuentos | `NombreDescuento` | VARCHAR (100) NOT NULL | Nombre comercial del descuento. |  |
| Descuentos | `TipoDescuento` | VARCHAR (30) NULL | Tipo de descuento (porcentaje, monto fijo). |  |
| Descuentos | `ValorDescuento` | DECIMAL (10, 2) NOT NULL | Valor del descuento (monto o porcentaje segun tipo). |  |
| Descuentos | `Condiciones` | VARCHAR (300) NULL | Texto de condiciones del descuento o promocion. |  |
| Descuentos | `FechaInicio` | DATE NULL | Fecha de inicio del rango. |  |
| Descuentos | `FechaFin` | DATE NULL | Fecha de fin del rango (temporada, suscripcion, periodo). |  |
| Descuentos | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| DescuentosPropiedad | `IdDescuento` | INT NOT NULL | Identificador del descuento. | Descuentos.IdDescuento |
| DescuentosPropiedad | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| Distritos | `IdDistrito` | INT IDENTITY (1, 1) NOT NULL | Identificador del distrito. | PK |
| Distritos | `IdCanton` | INT NOT NULL | Identificador del canton. | Cantones.IdCanton |
| Distritos | `NombreDistrito` | VARCHAR (100) NOT NULL | Nombre oficial del distrito. |  |
| Distritos | `CodigoPostal` | VARCHAR (10) NULL | Codigo postal del distrito. |  |
| Distritos | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| DocumentosPropiedad | `IdDocumento` | INT IDENTITY (1, 1) NOT NULL | Identificador del documento de propiedad. | PK |
| DocumentosPropiedad | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| DocumentosPropiedad | `TipoDocumento` | VARCHAR (50) NOT NULL | Tipo de documento legal de la propiedad. |  |
| DocumentosPropiedad | `NombreArchivo` | VARCHAR (200) NOT NULL | Nombre del archivo del documento. |  |
| DocumentosPropiedad | `UrlArchivo` | VARCHAR (500) NOT NULL | URL del archivo de evidencia o documento. |  |
| DocumentosPropiedad | `FechaSubida` | DATETIME DEFAULT (getdate()) NULL | Fecha de carga del archivo (foto, evidencia). |  |
| DocumentosPropiedad | `Verificado` | BIT DEFAULT ((0)) NULL | Indica si la entidad paso verificacion. |  |
| DocumentosPropiedad | `FechaVerificacion` | DATETIME NULL | Fecha del proceso de verificacion. |  |
| DocumentosVerificacion | `IdDocumentoVerificacion` | INT IDENTITY (1, 1) NOT NULL | Identificador del documento de verificacion. | PK |
| DocumentosVerificacion | `IdVerificacion` | INT NOT NULL | Identificador del proceso de verificacion. | VerificacionesPropiedad.IdVerificacion |
| DocumentosVerificacion | `TipoDocumento` | VARCHAR (50) NOT NULL | Tipo de documento legal de la propiedad. |  |
| DocumentosVerificacion | `NombreArchivo` | VARCHAR (200) NOT NULL | Nombre del archivo del documento. |  |
| DocumentosVerificacion | `UrlArchivo` | VARCHAR (500) NOT NULL | URL del archivo de evidencia o documento. |  |
| DocumentosVerificacion | `FechaSubida` | DATETIME DEFAULT (getdate()) NULL | Fecha de carga del archivo (foto, evidencia). |  |
| Equipamiento | `IdEquipamiento` | INT IDENTITY (1, 1) NOT NULL | Identificador del item de equipamiento. | PK |
| Equipamiento | `IdCategoria` | INT NOT NULL | Identificador de la categoria del catalogo. | CategoriaEquipamiento.IdCategoria |
| Equipamiento | `NombreEquipamiento` | VARCHAR (100) NOT NULL | Nombre del equipamiento (WiFi, piscina, etc.). |  |
| Equipamiento | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| Equipamiento | `Icono` | VARCHAR (50) NULL | Nombre o ruta del icono para la interfaz. |  |
| Equipamiento | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| Estados | `IdEstado` | INT IDENTITY (1, 1) NOT NULL | Identificador del estado en catalogo. | PK |
| Estados | `NombreEstado` | VARCHAR (50) NOT NULL | Etiqueta del estado (activo, pendiente, etc.). |  |
| Estados | `TipoEntidad` | VARCHAR (50) NULL | Entidad sobre la que aplica la comision. |  |
| EvidenciasReporte | `IdEvidencia` | INT IDENTITY (1, 1) NOT NULL | Identificador de la evidencia del reporte. | PK |
| EvidenciasReporte | `IdReporte` | INT NOT NULL | Identificador del reporte o denuncia. | Reportes.IdReporte |
| EvidenciasReporte | `TipoEvidencia` | VARCHAR (30) NULL | Tipo de archivo de evidencia (imagen, video, PDF). |  |
| EvidenciasReporte | `UrlArchivo` | VARCHAR (500) NOT NULL | URL del archivo de evidencia o documento. |  |
| EvidenciasReporte | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| EvidenciasReporte | `FechaSubida` | DATETIME DEFAULT (getdate()) NULL | Fecha de carga del archivo (foto, evidencia). |  |
| Experiencias | `IdExperiencia` | INT IDENTITY (1, 1) NOT NULL | Identificador de la experiencia turistica. | PK |
| Experiencias | `IdCategoria` | INT NOT NULL | Identificador de la categoria del catalogo. | CategoriaExperiencia.IdCategoria |
| Experiencias | `NombreExperiencia` | VARCHAR (200) NOT NULL | Nombre de la experiencia turistica. |  |
| Experiencias | `Descripcion` | VARCHAR (500) NULL | Texto descriptivo del registro. |  |
| Experiencias | `DuracionHoras` | INT NULL | Duracion estimada de la experiencia en horas. |  |
| Experiencias | `CostoAproximado` | DECIMAL (18, 2) NULL | Costo estimado de la experiencia turistica. |  |
| Experiencias | `IdMoneda` | INT NULL | Identificador de la moneda. | Monedas.IdMoneda |
| Experiencias | `RecomendadoPor` | BIT DEFAULT ((1)) NULL | Usuario o sistema que recomendo el registro. |  |
| Experiencias | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| ExperienciasCercanas | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| ExperienciasCercanas | `IdExperiencia` | INT NOT NULL | Identificador de la experiencia turistica. | Experiencias.IdExperiencia |
| ExperienciasCercanas | `DistanciaKM` | DECIMAL (5, 2) NOT NULL | Distancia en kilometros hasta el punto de referencia. |  |
| ExperienciasCercanas | `TiempoTraslado` | INT NULL | Tiempo estimado de traslado al lugar turistico. |  |
| ExperienciasCercanas | `ProveedorExperiencia` | VARCHAR (100) NULL | Nombre del operador de la experiencia. |  |
| ExperienciasCercanas | `TelefonoContacto` | VARCHAR (20) NULL | Telefono usado en el contacto directo. |  |
| Facturas | `IdFactura` | INT IDENTITY (1, 1) NOT NULL | Identificador de la factura. | PK |
| Facturas | `IdReserva` | INT NOT NULL | Identificador de la reserva. | Reservas.IdReserva |
| Facturas | `NumeroFactura` | VARCHAR (50) NOT NULL | Numero consecutivo o fiscal de la factura. |  |
| Facturas | `FechaEmision` | DATETIME DEFAULT (getdate()) NULL | Fecha de emision de la factura. |  |
| Facturas | `MontoTotal` | DECIMAL (18, 2) NOT NULL | Monto total de la operacion o factura. |  |
| Facturas | `PdfURL` | VARCHAR (500) NULL | Enlace al PDF de la factura. |  |
| Facturas | `Enviada` | BIT DEFAULT ((0)) NULL | Indica si la notificacion fue enviada al destinatario. |  |
| FAQs | `IdFAQ` | INT IDENTITY (1, 1) NOT NULL | Identificador de la pregunta frecuente. | PK |
| FAQs | `IdCategoriaFAQ` | INT NOT NULL | Identificador de la categoria de preguntas frecuentes. | CategoriasFAQ.IdCategoriaFAQ |
| FAQs | `Pregunta` | VARCHAR (300) NOT NULL | Texto de la pregunta frecuente. |  |
| FAQs | `Respuesta` | VARCHAR (1000) NOT NULL | Texto de respuesta del proveedor a una resena. |  |
| FAQs | `Orden` | INT DEFAULT ((0)) NULL | Orden de visualizacion en listas. |  |
| FAQs | `VecesVista` | INT DEFAULT ((0)) NULL | Contador de vistas del listado en metricas. |  |
| FAQs | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| FAQs | `CreadoPor` | INT NOT NULL | Usuario que creo el registro de FAQ. | Usuarios.IdUsuario |
| FAQs | `FechaCreacion` | DATETIME DEFAULT (getdate()) NULL | Fecha de creacion del registro. |  |
| FAQs | `ModificadoPor` | INT NULL | Usuario que modifico por ultima vez el FAQ. | Usuarios.IdUsuario |
| FAQs | `FechaModificacion` | DATETIME NULL | Fecha de ultima edicion del FAQ. |  |
| FotosPropiedad | `IdFoto` | INT IDENTITY (1, 1) NOT NULL | Identificador de la foto de propiedad. | PK |
| FotosPropiedad | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| FotosPropiedad | `UrlFoto` | VARCHAR (500) NOT NULL | URL de la imagen de la propiedad. |  |
| FotosPropiedad | `Titulo` | VARCHAR (200) NULL | Titulo del contenido (foto, video, FAQ). |  |
| FotosPropiedad | `Descripcion` | VARCHAR (300) NULL | Texto descriptivo del registro. |  |
| FotosPropiedad | `Orden` | INT DEFAULT ((0)) NULL | Orden de visualizacion en listas. |  |
| FotosPropiedad | `EsPrincipal` | BIT DEFAULT ((0)) NULL | Marca el telefono, correo o foto como principal. |  |
| FotosPropiedad | `FechaSubida` | DATETIME DEFAULT (getdate()) NULL | Fecha de carga del archivo (foto, evidencia). |  |
| FotosPropiedad | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| GananciasProveedor | `IdGanancia` | INT IDENTITY (1, 1) NOT NULL | Identificador del registro de ganancia del proveedor. | PK |
| GananciasProveedor | `IdPagoComision` | INT NOT NULL | Identificador del pago de comision al proveedor. | PagosComisiones.IdPagoComision |
| GananciasProveedor | `IdReserva` | INT NOT NULL | Identificador de la reserva. | Reservas.IdReserva |
| GananciasProveedor | `MontoProveedor` | DECIMAL (18, 2) NOT NULL | Monto neto que recibe el proveedor. |  |
| HistorialEstadosReserva | `IdHistorial` | INT IDENTITY (1, 1) NOT NULL | Identificador del cambio de estado historico. | PK |
| HistorialEstadosReserva | `IdReserva` | INT NOT NULL | Identificador de la reserva. | Reservas.IdReserva |
| HistorialEstadosReserva | `IdEstadoAnterior` | INT NULL | Estado de la reserva antes del cambio. | Estados.IdEstado |
| HistorialEstadosReserva | `IdEstadoNuevo` | INT NOT NULL | Estado de la reserva despues del cambio. | Estados.IdEstado |
| HistorialEstadosReserva | `FechaCambio` | DATETIME DEFAULT (getdate()) NULL | Fecha del cambio de estado. |  |
| HistorialEstadosReserva | `UsuarioCambio` | INT NULL | Usuario que realizo el cambio de estado. | Usuarios.IdUsuario |
| HistorialEstadosReserva | `MotivoCambio` | VARCHAR (200) NULL | Razon del cambio de estado de la reserva. |  |
| HistorialPrecios | `IdHistorial` | INT IDENTITY (1, 1) NOT NULL | Identificador del cambio de estado historico. | PK |
| HistorialPrecios | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| HistorialPrecios | `PrecioAnterior` | DECIMAL (18, 2) NOT NULL | Precio antes del cambio registrado. |  |
| HistorialPrecios | `PrecioNuevo` | DECIMAL (18, 2) NOT NULL | Precio despues del cambio registrado. |  |
| HistorialPrecios | `FechaCambio` | DATETIME DEFAULT (getdate()) NULL | Fecha del cambio de estado. |  |
| HistorialPrecios | `MotivoCambio` | VARCHAR (100) NULL | Razon del cambio de estado de la reserva. |  |
| HorariosCheckInOut | `IdHorario` | INT IDENTITY (1, 1) NOT NULL | Identificador del horario de check-in/out. | PK |
| HorariosCheckInOut | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| HorariosCheckInOut | `TipoHorario` | VARCHAR (10) NULL | Indica si es check-in o check-out. |  |
| HorariosCheckInOut | `HoraDesde` | TIME (7) NOT NULL | Hora de inicio del rango de check-in o check-out. |  |
| HorariosCheckInOut | `HoraHasta` | TIME (7) NULL | Hora de fin del rango de check-in o check-out. |  |
| HorariosCheckInOut | `Flexible` | BIT DEFAULT ((0)) NULL | Indica si el horario de check-in/out es flexible. |  |
| HorariosCheckInOut | `Notas` | VARCHAR (200) NULL | Notas adicionales en horarios u otros registros. |  |
| ListaPropiedades | `IdLista` | INT NOT NULL | Identificador de la lista de deseos. | ListasDeseos.IdLista |
| ListaPropiedades | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| ListaPropiedades | `FechaAgregado` | DATETIME DEFAULT (getdate()) NULL | Fecha en que se agrego a la lista de deseos. |  |
| ListasDeseos | `IdLista` | INT IDENTITY (1, 1) NOT NULL | Identificador de la lista de deseos. | PK |
| ListasDeseos | `IdUsuario` | INT NOT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| ListasDeseos | `NombreLista` | VARCHAR (100) DEFAULT ('Mis favoritos') NULL | Nombre de la lista de deseos del usuario. |  |
| ListasDeseos | `FechaCreacion` | DATETIME DEFAULT (getdate()) NULL | Fecha de creacion del registro. |  |
| ListasDeseos | `Privada` | BIT DEFAULT ((1)) NULL | Indica si la lista de deseos es privada. |  |
| LogsErrores | `IdError` | INT IDENTITY (1, 1) NOT NULL | Identificador del log de error. | PK |
| LogsErrores | `Fecha` | DATETIME DEFAULT (getdate()) NULL | Fecha y hora del evento registrado. |  |
| LogsErrores | `Usuario` | INT NULL | Usuario asociado al error o accion (puede ser ID). | Usuarios.IdUsuario |
| LogsErrores | `Modulo` | VARCHAR (100) NULL | Nombre del modulo funcional del sistema. |  |
| LogsErrores | `ErrorMensaje` | VARCHAR (1000) NOT NULL | Mensaje de error mostrado o registrado. |  |
| LogsErrores | `ErrorDetalle` | TEXT NULL | Detalle tecnico o stack del error. |  |
| LogsErrores | `IPAddress` | VARCHAR (45) NULL | Direccion IP desde la que se realizo la accion. |  |
| LogsErrores | `Resuelto` | BIT DEFAULT ((0)) NULL | Indica si el reporte fue resuelto. |  |
| LugaresTuristicos | `IdLugarTuristico` | INT IDENTITY (1, 1) NOT NULL | Identificador del lugar turistico. | PK |
| LugaresTuristicos | `IdCategoria` | INT NOT NULL | Identificador de la categoria del catalogo. | CategoriaLugarTuristico.IdCategoria |
| LugaresTuristicos | `NombreLugar` | VARCHAR (200) NOT NULL | Nombre del lugar turistico. |  |
| LugaresTuristicos | `Descripcion` | VARCHAR (500) NULL | Texto descriptivo del registro. |  |
| LugaresTuristicos | `UbicacionCoordenadas` | [sys].[geography] NULL | Coordenadas geograficas del punto de interes. |  |
| LugaresTuristicos | `Direccion` | VARCHAR (300) NULL | Direccion fisica o referencia de ubicacion. |  |
| LugaresTuristicos | `IdDistrito` | INT NULL | Identificador del distrito. | Distritos.IdDistrito |
| LugaresTuristicos | `DistanciaReferencia` | VARCHAR (100) NULL | Descripcion textual de la distancia (ej. 500 m del centro). |  |
| LugaresTuristicos | `HorarioAtencion` | VARCHAR (200) NULL | Horario de atencion del comercio cercano. |  |
| LugaresTuristicos | `Telefono` | VARCHAR (20) NULL | Numero telefonico de contacto. |  |
| LugaresTuristicos | `SitioWeb` | VARCHAR (200) NULL | URL del sitio web del comercio o experiencia. |  |
| LugaresTuristicos | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| MensajesSoporte | `IdMensaje` | INT IDENTITY (1, 1) NOT NULL | Identificador del mensaje de soporte. | PK |
| MensajesSoporte | `IdTicket` | INT NOT NULL | Identificador del ticket de soporte. | TicketsSoporte.IdTicket |
| MensajesSoporte | `IdUsuario` | INT NOT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| MensajesSoporte | `Mensaje` | VARCHAR (1000) NOT NULL | Contenido del mensaje o notificacion. |  |
| MensajesSoporte | `FechaEnvio` | DATETIME DEFAULT (getdate()) NULL | Fecha de envio del mensaje o notificacion. |  |
| MensajesSoporte | `AdjuntoURL` | VARCHAR (500) NULL | Enlace al archivo adjunto del mensaje de soporte. |  |
| MetricasDiarias | `IdMetrica` | INT IDENTITY (1, 1) NOT NULL | Identificador de la metrica diaria agregada. | PK |
| MetricasDiarias | `Fecha` | DATE NOT NULL | Fecha y hora del evento registrado. |  |
| MetricasDiarias | `IdPropiedad` | INT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| MetricasDiarias | `UsuariosNuevos` | INT DEFAULT ((0)) NULL | Usuarios registrados en el periodo. |  |
| MetricasDiarias | `PropiedadesNuevas` | INT DEFAULT ((0)) NULL | Cantidad de propiedades nuevas en el periodo. |  |
| MetricasDiarias | `ReservasCompletadas` | INT DEFAULT ((0)) NULL | Reservas finalizadas en el periodo. |  |
| MetricasDiarias | `IngresosBrutos` | DECIMAL (18, 2) DEFAULT ((0)) NULL | Ingresos brutos del proveedor en el periodo. |  |
| MetricasDiarias | `IngresosComisiones` | DECIMAL (18, 2) DEFAULT ((0)) NULL | Comisiones cobradas por la plataforma en el periodo. |  |
| MetricasDiarias | `VisitasTotales` | INT DEFAULT ((0)) NULL | Total de visitas a propiedades en el periodo. |  |
| MetricasDiarias | `BusquedasRealizadas` | INT DEFAULT ((0)) NULL | Cantidad de busquedas de propiedades en el periodo. |  |
| MetricasDiarias | `ContactosDirectos` | INT DEFAULT ((0)) NULL | Campo de la tabla MetricasDiarias. |  |
| ModulosSistema | `IdModulo` | INT IDENTITY (1, 1) NOT NULL | Identificador del modulo del sistema. | PK |
| ModulosSistema | `NombreModulo` | VARCHAR (50) NOT NULL | Nombre del modulo de configuracion. |  |
| ModulosSistema | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| ModulosSistema | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| Monedas | `IdMoneda` | INT IDENTITY (1, 1) NOT NULL | Identificador de la moneda. | PK |
| Monedas | `NombreMoneda` | VARCHAR (50) NOT NULL | Nombre de la moneda. |  |
| Monedas | `CodigoISO` | CHAR (3) NOT NULL | Codigo ISO de la moneda (por ejemplo CRC, USD). |  |
| Monedas | `Simbolo` | CHAR (3) NOT NULL | Simbolo de la moneda (Â¢, $). |  |
| Nacionalidades | `IdNacionalidad` | INT IDENTITY (1, 1) NOT NULL | Identificador de la nacionalidad. | PK |
| Nacionalidades | `Nacionalidad` | VARCHAR (100) NOT NULL | Nombre del pais de nacionalidad. |  |
| Nacionalidades | `CodigoISO` | CHAR (2) NULL | Codigo ISO de la moneda (por ejemplo CRC, USD). |  |
| Nacionalidades | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| NewsletterSuscriptores | `IdSuscriptor` | INT IDENTITY (1, 1) NOT NULL | Identificador del suscriptor al newsletter. | PK |
| NewsletterSuscriptores | `Correo` | VARCHAR (100) NOT NULL | Direccion de correo electronico. |  |
| NewsletterSuscriptores | `Nombre` | VARCHAR (100) NULL | Nombre de pila del usuario. |  |
| NewsletterSuscriptores | `FechaSuscripcion` | DATETIME DEFAULT (getdate()) NULL | Fecha de suscripcion al newsletter. |  |
| NewsletterSuscriptores | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| NewsletterSuscriptores | `TokenCancelacion` | VARCHAR (100) NULL | Token para cancelar reserva desde enlace. |  |
| Notificaciones | `IdNotificacion` | INT IDENTITY (1, 1) NOT NULL | Identificador de la notificacion. | PK |
| Notificaciones | `IdUsuario` | INT NOT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| Notificaciones | `TipoNotificacion` | VARCHAR (50) NOT NULL | Categoria de la notificacion (reserva, pago, etc.). |  |
| Notificaciones | `Titulo` | VARCHAR (200) NOT NULL | Titulo del contenido (foto, video, FAQ). |  |
| Notificaciones | `Mensaje` | VARCHAR (500) NOT NULL | Contenido del mensaje o notificacion. |  |
| Notificaciones | `Leida` | BIT DEFAULT ((0)) NULL | Indica si la notificacion fue leida por el usuario. |  |
| Notificaciones | `FechaEnvio` | DATETIME DEFAULT (getdate()) NULL | Fecha de envio del mensaje o notificacion. |  |
| Notificaciones | `FechaLectura` | DATETIME NULL | Fecha en que el usuario leyo la notificacion. |  |
| Pagos | `IdPago` | INT IDENTITY (1, 1) NOT NULL | Identificador del pago. | PK |
| Pagos | `IdReserva` | INT NOT NULL | Identificador de la reserva. | Reservas.IdReserva |
| Pagos | `Monto_CRC` | DECIMAL (18, 2) NOT NULL | Monto del pago en colones costarricenses. |  |
| Pagos | `MontoUSD` | DECIMAL (18, 2) NULL | Monto equivalente en dolares, si aplica. |  |
| Pagos | `FechaPago` | DATETIME DEFAULT (getdate()) NULL | Fecha en que se registro el pago. |  |
| Pagos | `MetodoPago` | VARCHAR (30) NOT NULL | Metodo utilizado (SINPE, tarjeta, transferencia, etc.). |  |
| Pagos | `EstadoPago` | VARCHAR (20) NULL | Estado del pago (pendiente, completado, rechazado, etc.). |  |
| Pagos | `ComprobanteURL` | VARCHAR (500) NULL | URL del comprobante de pago subido o generado. |  |
| Pagos | `TelefonoSINPE` | VARCHAR (20) NULL | Numero SINPE asociado al pago. |  |
| Pagos | `ReferenciaBanco` | VARCHAR (100) NULL | Numero de referencia bancaria del pago. |  |
| Pagos | `IdUsuarioRegistra` | INT NOT NULL | Usuario que registro el pago en el sistema. | Usuarios.IdUsuario |
| PagosComisiones | `IdPagoComision` | INT IDENTITY (1, 1) NOT NULL | Identificador del pago de comision al proveedor. | PK |
| PagosComisiones | `IdProveedor` | INT NOT NULL | Usuario proveedor dueno de la propiedad. | Usuarios.IdUsuario |
| PagosComisiones | `PeriodoInicio` | DATE NOT NULL | Fecha inicio del periodo de la metrica o factura. |  |
| PagosComisiones | `PeriodoFin` | DATE NOT NULL | Fecha fin del periodo de la metrica o factura. |  |
| PagosComisiones | `MontoTotal` | DECIMAL (18, 2) NOT NULL | Monto total de la operacion o factura. |  |
| PagosComisiones | `FechaPago` | DATETIME DEFAULT (getdate()) NULL | Fecha en que se registro el pago. |  |
| PagosComisiones | `MetodoPago` | VARCHAR (30) NOT NULL | Metodo utilizado (SINPE, tarjeta, transferencia, etc.). |  |
| PagosComisiones | `ComprobanteURL` | VARCHAR (500) NULL | URL del comprobante de pago subido o generado. |  |
| PagosPendientes | `IdPendiente` | INT IDENTITY (1, 1) NOT NULL | Identificador del pago pendiente. | PK |
| PagosPendientes | `IdReserva` | INT NOT NULL | Identificador de la reserva. | Reservas.IdReserva |
| PagosPendientes | `MontoPendiente` | DECIMAL (18, 2) NOT NULL | Saldo pendiente de cobro de la reserva. |  |
| PagosPendientes | `FechaLimite` | DATE NOT NULL | Fecha limite del pago pendiente. |  |
| PagosPendientes | `RecordatoriosEnviados` | INT DEFAULT ((0)) NULL | Cantidad de recordatorios de pago enviados. |  |
| PagosPendientes | `UltimoRecordatorio` | DATETIME NULL | Fecha del ultimo recordatorio de pago enviado. |  |
| PlanesProveedor | `IdPlan` | INT IDENTITY (1, 1) NOT NULL | Identificador del plan de suscripcion. | PK |
| PlanesProveedor | `NombrePlan` | VARCHAR (50) NOT NULL | Nombre del plan de suscripcion. |  |
| PlanesProveedor | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| PlanesProveedor | `PorcentajeComision` | DECIMAL (5, 2) NOT NULL | Porcentaje de comision de la plataforma. |  |
| PlanesProveedor | `CostoMensual_CRC` | DECIMAL (18, 2) NULL | Costo mensual del plan en colones. |  |
| PlanesProveedor | `MaximoPropiedades` | INT NULL | Cantidad maxima de propiedades permitidas en el plan. |  |
| PlanesProveedor | `SoportePrioritario` | BIT DEFAULT ((0)) NULL | Indica si el plan incluye soporte prioritario. |  |
| PlanesProveedor | `VerificacionGratuita` | BIT DEFAULT ((0)) NULL | Indica si el plan incluye verificacion sin costo. |  |
| PlanesProveedor | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| PoliticasCancelacion | `IdPolitica` | INT IDENTITY (1, 1) NOT NULL | Identificador de la politica de cancelacion. | PK |
| PoliticasCancelacion | `NombrePolitica` | VARCHAR (50) NOT NULL | Nombre de la politica de cancelacion. |  |
| PoliticasCancelacion | `Descripcion` | VARCHAR (300) NULL | Texto descriptivo del registro. |  |
| PoliticasCancelacion | `ReembolsoPorcentaje` | DECIMAL (5, 2) NOT NULL | Porcentaje de reembolso segun politica de cancelacion. |  |
| PoliticasCancelacion | `DiasAntelacion` | INT NULL | Dias minimos de antelacion para cancelar con reembolso. |  |
| PoliticasCancelacion | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| PreciosTemporada | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PreciosTemporada | `IdTemporada` | INT NOT NULL | Identificador de la temporada tarifaria. | Temporadas.IdTemporada |
| PreciosTemporada | `PrecioPersonalizado` | DECIMAL (18, 2) NULL | Precio especial por temporada en la propiedad. |  |
| PreciosTemporada | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| Promociones | `IdPromocion` | INT IDENTITY (1, 1) NOT NULL | Identificador de la promocion. | PK |
| Promociones | `NombrePromo` | VARCHAR (100) NOT NULL | Nombre de la promocion. |  |
| Promociones | `Descripcion` | VARCHAR (300) NULL | Texto descriptivo del registro. |  |
| Promociones | `TipoPromo` | VARCHAR (30) NULL | Tipo de promocion (porcentaje, noches gratis, etc.). |  |
| Promociones | `PorcentajeDescuento` | DECIMAL (5, 2) NULL | Porcentaje de descuento sobre el precio. |  |
| Promociones | `FechaInicio` | DATE NOT NULL | Fecha de inicio del rango. |  |
| Promociones | `FechaFin` | DATE NOT NULL | Fecha de fin del rango (temporada, suscripcion, periodo). |  |
| Promociones | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| PromocionesPropiedad | `IdPromocion` | INT NOT NULL | Identificador de la promocion. | Promociones.IdPromocion |
| PromocionesPropiedad | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PropiedadComerciosCercanos | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PropiedadComerciosCercanos | `IdComercio` | INT NOT NULL | Identificador del comercio cercano. | ComerciosCercanos.IdComercio |
| PropiedadComerciosCercanos | `DistanciaKM` | DECIMAL (5, 2) NOT NULL | Distancia en kilometros hasta el punto de referencia. |  |
| PropiedadComerciosCercanos | `TiempoCaminando` | INT NULL | Minutos a pie hasta el punto de referencia. |  |
| PropiedadComerciosCercanos | `TiempoEnCarro` | INT NULL | Minutos en vehiculo hasta el punto de referencia. |  |
| PropiedadEquipamiento | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PropiedadEquipamiento | `IdEquipamiento` | INT NOT NULL | Identificador del item de equipamiento. | Equipamiento.IdEquipamiento |
| PropiedadEquipamiento | `Cantidad` | INT DEFAULT ((1)) NULL | Cantidad de unidades del equipamiento en la propiedad. |  |
| PropiedadEquipamiento | `DescripcionAdicional` | VARCHAR (200) NULL | Detalle extra del servicio o equipamiento en la propiedad. |  |
| Propiedades | `IdPropiedad` | INT IDENTITY (1, 1) NOT NULL | Identificador de la propiedad o alojamiento. | PK |
| Propiedades | `IdProveedor` | INT NOT NULL | Usuario proveedor dueno de la propiedad. | Usuarios.IdUsuario |
| Propiedades | `IdTipoAlojamiento` | INT NOT NULL | Tipo de alojamiento de la propiedad. | TipoAlojamiento.IdTipo |
| Propiedades | `IdZona` | INT NOT NULL | Identificador de la zona turistica tica. | ZonasTicas.IdZona |
| Propiedades | `IdDistrito` | INT NULL | Identificador del distrito. | Distritos.IdDistrito |
| Propiedades | `NombrePropiedad` | VARCHAR (250) NOT NULL | Nombre comercial del alojamiento. |  |
| Propiedades | `TituloPromocional` | VARCHAR (200) NULL | Frase destacada para marketing del alojamiento. |  |
| Propiedades | `DescripcionLarga` | VARCHAR (2000) NOT NULL | Descripcion completa visible en el detalle de la propiedad. |  |
| Propiedades | `DescripcionCorta` | VARCHAR (300) NULL | Resumen breve para listados y tarjetas. |  |
| Propiedades | `UbicacionDetallada` | VARCHAR (300) NOT NULL | Descripcion textual de como llegar a la propiedad. |  |
| Propiedades | `Coordenadas` | [sys].[geography] NULL | Ubicacion geografica (latitud/longitud) de la propiedad. |  |
| Propiedades | `CantidadHabitaciones` | INT NOT NULL | Numero de habitaciones del alojamiento. |  |
| Propiedades | `CantidadCamas` | INT NOT NULL | Numero total de camas disponibles. |  |
| Propiedades | `CapacidadMaxima` | INT NOT NULL | Maximo de personas que admite la propiedad. |  |
| Propiedades | `CantidadBanios` | INT DEFAULT ((1)) NOT NULL | Numero de banos de la propiedad. |  |
| Propiedades | `AreaMetrosCuadrados` | INT NULL | Superficie habitable de la propiedad en metros cuadrados. |  |
| Propiedades | `MontoXNoche` | DECIMAL (18, 2) NOT NULL | Precio base por noche de la propiedad. |  |
| Propiedades | `Moneda` | INT DEFAULT ((1)) NOT NULL | Moneda en la que se publica el precio de la propiedad. | Monedas.IdMoneda |
| Propiedades | `DepositoGarantia` | DECIMAL (18, 2) NULL | Monto de deposito o garantia exigido por la propiedad. |  |
| Propiedades | `IdEstado` | INT NOT NULL | Identificador del estado en catalogo. | Estados.IdEstado |
| Propiedades | `Verificado` | BIT DEFAULT ((0)) NULL | Indica si la entidad paso verificacion. |  |
| Propiedades | `FechaRegistro` | DATETIME DEFAULT (getdate()) NULL | Fecha de alta del registro en el sistema. |  |
| Propiedades | `FechaActualizacion` | DATETIME NULL | Fecha de ultima modificacion del registro. |  |
| Propiedades | `VecesVisto` | INT DEFAULT ((0)) NULL | Contador de veces que se mostro la propiedad. |  |
| Propiedades | `RatingPromedio` | DECIMAL (3, 2) DEFAULT ((0)) NULL | Promedio de calificaciones de la propiedad. |  |
| Propiedades | `TotalResenas` | INT DEFAULT ((0)) NULL | Cantidad acumulada de resenas de la propiedad. |  |
| PropiedadLugaresCercanos | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PropiedadLugaresCercanos | `IdLugarTuristico` | INT NOT NULL | Identificador del lugar turistico. | LugaresTuristicos.IdLugarTuristico |
| PropiedadLugaresCercanos | `DistanciaKM` | DECIMAL (5, 2) NOT NULL | Distancia en kilometros hasta el punto de referencia. |  |
| PropiedadLugaresCercanos | `TiempoCaminando` | INT NULL | Minutos a pie hasta el punto de referencia. |  |
| PropiedadLugaresCercanos | `TiempoEnCarro` | INT NULL | Minutos en vehiculo hasta el punto de referencia. |  |
| PropiedadLugaresCercanos | `EsLoMasCercano` | BIT DEFAULT ((0)) NULL | Marca el lugar turistico mas cercano entre los vinculados. |  |
| PropiedadPoliticasCancelacion | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PropiedadPoliticasCancelacion | `IdPolitica` | INT NOT NULL | Identificador de la politica de cancelacion. | PoliticasCancelacion.IdPolitica |
| PropiedadReglas | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PropiedadReglas | `IdRegla` | INT NOT NULL | Identificador de la regla de la casa. | ReglasCasa.IdRegla |
| PropiedadReglas | `EsAplicable` | BIT DEFAULT ((1)) NULL | Indica si la regla de casa aplica a esta propiedad. |  |
| PropiedadReglas | `DetalleEspecifico` | VARCHAR (200) NULL | Aclaracion de como aplica la regla en esta propiedad. |  |
| PropiedadRequerimientos | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PropiedadRequerimientos | `IdRequerimiento` | INT NOT NULL | Identificador del requisito de reserva. | RequerimientosReserva.IdRequerimiento |
| PropiedadRequerimientos | `MontoDeposito` | DECIMAL (18, 2) NULL | Monto del deposito exigido para reservar. |  |
| PropiedadRequerimientos | `CondicionesEspeciales` | VARCHAR (300) NULL | Condiciones adicionales del requerimiento de reserva. |  |
| PropiedadSellos | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PropiedadSellos | `IdSello` | INT NOT NULL | Identificador del sello de confianza. | SellosConfianza.IdSello |
| PropiedadSellos | `FechaOtorgado` | DATETIME DEFAULT (getdate()) NULL | Fecha en que se otorgo el sello a la propiedad. |  |
| PropiedadSellos | `FechaExpiracion` | DATE NULL | Fecha de vencimiento del token, sello o verificacion. |  |
| PropiedadServicios | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PropiedadServicios | `IdServicio` | INT NOT NULL | Identificador del servicio o amenidad. | ServiciosPropiedad.IdServicio |
| PropiedadServicios | `DescripcionAdicional` | VARCHAR (200) NULL | Detalle extra del servicio o equipamiento en la propiedad. |  |
| PropiedadServicios | `IncluidoEnPrecio` | BIT DEFAULT ((1)) NULL | Indica si el servicio esta incluido en el precio por noche. |  |
| PropiedadTransporteCercano | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| PropiedadTransporteCercano | `IdTransporte` | INT NOT NULL | Identificador del medio de transporte cercano. | TransporteCercano.IdTransporte |
| PropiedadTransporteCercano | `DistanciaKM` | DECIMAL (5, 2) NOT NULL | Distancia en kilometros hasta el punto de referencia. |  |
| PropiedadTransporteCercano | `TiempoCaminando` | INT NULL | Minutos a pie hasta el punto de referencia. |  |
| Provincias | `IdProvincia` | INT IDENTITY (1, 1) NOT NULL | Identificador de la provincia. | PK |
| Provincias | `NombreProvincia` | VARCHAR (50) NOT NULL | Nombre de la provincia. |  |
| Provincias | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| RecuperacionContrasena | `IdSolicitud` | INT IDENTITY (1, 1) NOT NULL | Identificador de la solicitud de recuperacion de contrasena. | PK |
| RecuperacionContrasena | `IdUsuario` | INT NOT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| RecuperacionContrasena | `Token` | VARCHAR (255) NOT NULL | Token de sesion o recuperacion de contrasena. |  |
| RecuperacionContrasena | `FechaSolicitud` | DATETIME DEFAULT (getdate()) NULL | Fecha de la solicitud de recuperacion de contrasena. |  |
| RecuperacionContrasena | `FechaExpiracion` | DATETIME NOT NULL | Fecha de vencimiento del token, sello o verificacion. |  |
| RecuperacionContrasena | `Usada` | BIT DEFAULT ((0)) NULL | Indica si el token de recuperacion ya fue usado. |  |
| Reembolsos | `IdReembolso` | INT IDENTITY (1, 1) NOT NULL | Identificador del reembolso. | PK |
| Reembolsos | `IdPago` | INT NOT NULL | Identificador del pago. | Pagos.IdPago |
| Reembolsos | `Monto` | DECIMAL (18, 2) NOT NULL | Monto monetario de la operacion. |  |
| Reembolsos | `FechaReembolso` | DATETIME DEFAULT (getdate()) NULL | Fecha del reembolso al cliente. |  |
| Reembolsos | `Motivo` | VARCHAR (300) NOT NULL | Motivo del reporte, reembolso o cambio. |  |
| Reembolsos | `AprobadoPor` | INT NOT NULL | Usuario administrador que aprobo el reembolso. | Usuarios.IdUsuario |
| ReglasCasa | `IdRegla` | INT IDENTITY (1, 1) NOT NULL | Identificador de la regla de la casa. | PK |
| ReglasCasa | `NombreRegla` | VARCHAR (100) NOT NULL | Nombre de la regla de la casa. |  |
| ReglasCasa | `Descripcion` | VARCHAR (300) NULL | Texto descriptivo del registro. |  |
| ReglasCasa | `Icono` | VARCHAR (50) NULL | Nombre o ruta del icono para la interfaz. |  |
| Reportes | `IdReporte` | INT IDENTITY (1, 1) NOT NULL | Identificador del reporte o denuncia. | PK |
| Reportes | `IdUsuarioReporta` | INT NOT NULL | Usuario que presenta el reporte. | Usuarios.IdUsuario |
| Reportes | `IdUsuarioReportado` | INT NULL | Usuario reportado, si el caso es sobre un perfil. | Usuarios.IdUsuario |
| Reportes | `IdPropiedadReportada` | INT NULL | Propiedad objeto del reporte o denuncia. | Propiedades.IdPropiedad |
| Reportes | `IdReservaRelacionada` | INT NULL | Reserva vinculada al reporte, si aplica. | Reservas.IdReserva |
| Reportes | `Motivo` | VARCHAR (100) NOT NULL | Motivo del reporte, reembolso o cambio. |  |
| Reportes | `Descripcion` | VARCHAR (500) NOT NULL | Texto descriptivo del registro. |  |
| Reportes | `FechaReporte` | DATETIME DEFAULT (getdate()) NULL | Fecha en que se presento el reporte. |  |
| Reportes | `IdEstado` | INT NOT NULL | Identificador del estado en catalogo. | Estados.IdEstado |
| Reportes | `Resolucion` | VARCHAR (500) NULL | Texto de resolucion del reporte por soporte. |  |
| Reportes | `FechaResolucion` | DATETIME NULL | Fecha en que se resolvio el reporte. |  |
| Reportes | `ResueltoPor` | INT NULL | Usuario administrador que cerro el reporte. | Usuarios.IdUsuario |
| RequerimientosReserva | `IdRequerimiento` | INT IDENTITY (1, 1) NOT NULL | Identificador del requisito de reserva. | PK |
| RequerimientosReserva | `NombreRequerimiento` | VARCHAR (100) NOT NULL | Nombre del requisito de reserva. |  |
| RequerimientosReserva | `Descripcion` | VARCHAR (300) NULL | Texto descriptivo del registro. |  |
| RequerimientosReserva | `EsObligatorio` | BIT DEFAULT ((1)) NULL | Indica si el requerimiento es obligatorio para reservar. |  |
| Reservas | `IdReserva` | INT IDENTITY (1, 1) NOT NULL | Identificador de la reserva. | PK |
| Reservas | `IdCliente` | INT NOT NULL | Usuario huesped que realiza la accion o reserva. | Usuarios.IdUsuario |
| Reservas | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| Reservas | `FechaEntrada` | DATE NOT NULL | Fecha de check-in de la reserva. |  |
| Reservas | `FechaSalida` | DATE NOT NULL | Fecha de check-out de la reserva. |  |
| Reservas | `CantidadPersonas` | INT NOT NULL | Numero de huespedes incluidos en la reserva. |  |
| Reservas | `CantidadNoches` | INT NOT NULL | Noches de estadia calculadas para la reserva. |  |
| Reservas | `PrecioPorNoche` | DECIMAL (18, 2) NOT NULL | Tarifa por noche acordada en la reserva. |  |
| Reservas | `Subtotal` | DECIMAL (18, 2) NOT NULL | Subtotal antes de descuentos y comision. |  |
| Reservas | `DescuentoAplicado` | DECIMAL (18, 2) DEFAULT ((0)) NULL | Monto descontado aplicado a la reserva. |  |
| Reservas | `Comision` | DECIMAL (18, 2) NOT NULL | Monto de comision de la plataforma sobre la reserva. |  |
| Reservas | `Total` | DECIMAL (18, 2) NOT NULL | Monto total final de la reserva o factura. |  |
| Reservas | `IdEstado` | INT NOT NULL | Identificador del estado en catalogo. | Estados.IdEstado |
| Reservas | `FechaReserva` | DATETIME DEFAULT (getdate()) NULL | Fecha en que se creo la reserva. |  |
| Reservas | `NotasCliente` | VARCHAR (500) NULL | Comentarios del huesped al reservar. |  |
| Reservas | `NotasInternas` | VARCHAR (500) NULL | Notas visibles solo para staff o proveedor. |  |
| RespuestasCalificacion | `IdRespuesta` | INT IDENTITY (1, 1) NOT NULL | Identificador de la respuesta a una calificacion. | PK |
| RespuestasCalificacion | `IdCalificacion` | INT NOT NULL | Identificador de la calificacion o resena. | CalificacionesPropiedad.IdCalificacion |
| RespuestasCalificacion | `IdUsuario` | INT NOT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| RespuestasCalificacion | `Respuesta` | VARCHAR (500) NOT NULL | Texto de respuesta del proveedor a una resena. |  |
| RespuestasCalificacion | `Fecha` | DATETIME DEFAULT (getdate()) NULL | Fecha y hora del evento registrado. |  |
| Roles | `IdRol` | INT IDENTITY (1, 1) NOT NULL | Identificador del rol del usuario. | PK |
| Roles | `NombreRol` | VARCHAR (50) NOT NULL | Nombre del rol (cliente, proveedor, admin). |  |
| Roles | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| SellosConfianza | `IdSello` | INT IDENTITY (1, 1) NOT NULL | Identificador del sello de confianza. | PK |
| SellosConfianza | `NombreSello` | VARCHAR (50) NOT NULL | Nombre del sello de confianza. |  |
| SellosConfianza | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| SellosConfianza | `Icono` | VARCHAR (50) NULL | Nombre o ruta del icono para la interfaz. |  |
| SellosConfianza | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| ServiciosPropiedad | `IdServicio` | INT IDENTITY (1, 1) NOT NULL | Identificador del servicio o amenidad. | PK |
| ServiciosPropiedad | `IdCategoria` | INT NOT NULL | Identificador de la categoria del catalogo. | CategoriaServicio.IdCategoria |
| ServiciosPropiedad | `NombreServicio` | VARCHAR (100) NOT NULL | Nombre del servicio o amenidad. |  |
| ServiciosPropiedad | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| ServiciosPropiedad | `Icono` | VARCHAR (50) NULL | Nombre o ruta del icono para la interfaz. |  |
| ServiciosPropiedad | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| Sesiones | `IdSesion` | INT IDENTITY (1, 1) NOT NULL | Identificador de la sesion de usuario. | PK |
| Sesiones | `IdUsuario` | INT NOT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| Sesiones | `Token` | VARCHAR (500) NOT NULL | Token de sesion o recuperacion de contrasena. |  |
| Sesiones | `FechaInicio` | DATETIME DEFAULT (getdate()) NULL | Fecha de inicio del rango. |  |
| Sesiones | `FechaExpiracion` | DATETIME NOT NULL | Fecha de vencimiento del token, sello o verificacion. |  |
| Sesiones | `IPAddress` | VARCHAR (45) NULL | Direccion IP desde la que se realizo la accion. |  |
| Sesiones | `UserAgent` | VARCHAR (500) NULL | Cadena del navegador o cliente en la sesion. |  |
| Sesiones | `Activa` | BIT DEFAULT ((1)) NULL | Indica si el registro sigue vigente (1 = si, 0 = no). |  |
| SuscripcionesProveedor | `IdSuscripcion` | INT IDENTITY (1, 1) NOT NULL | Identificador de la suscripcion del proveedor. | PK |
| SuscripcionesProveedor | `IdProveedor` | INT NOT NULL | Usuario proveedor dueno de la propiedad. | Usuarios.IdUsuario |
| SuscripcionesProveedor | `IdPlan` | INT NOT NULL | Identificador del plan de suscripcion. | PlanesProveedor.IdPlan |
| SuscripcionesProveedor | `FechaInicio` | DATE NOT NULL | Fecha de inicio del rango. |  |
| SuscripcionesProveedor | `FechaFin` | DATE NULL | Fecha de fin del rango (temporada, suscripcion, periodo). |  |
| SuscripcionesProveedor | `Activa` | BIT DEFAULT ((1)) NULL | Indica si el registro sigue vigente (1 = si, 0 = no). |  |
| SuscripcionesProveedor | `MotivoCancelacion` | VARCHAR (200) NULL | Razon de cancelacion de la suscripcion. |  |
| TelefonosUsuario | `IdTelefono` | INT IDENTITY (1, 1) NOT NULL | Identificador del telefono del usuario. | PK |
| TelefonosUsuario | `IdUsuario` | INT NOT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| TelefonosUsuario | `Telefono` | VARCHAR (20) NOT NULL | Numero telefonico de contacto. |  |
| TelefonosUsuario | `TipoTelefono` | VARCHAR (20) NULL | Clasificacion del telefono (movil, fijo, WhatsApp). |  |
| TelefonosUsuario | `EsPrincipal` | BIT DEFAULT ((0)) NULL | Marca el telefono, correo o foto como principal. |  |
| TelefonosUsuario | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| Temporadas | `IdTemporada` | INT IDENTITY (1, 1) NOT NULL | Identificador de la temporada tarifaria. | PK |
| Temporadas | `NombreTemporada` | VARCHAR (50) NOT NULL | Nombre de la temporada (alta, verano, etc.). |  |
| Temporadas | `Descripcion` | VARCHAR (200) NULL | Texto descriptivo del registro. |  |
| Temporadas | `FechaInicio` | DATE NOT NULL | Fecha de inicio del rango. |  |
| Temporadas | `FechaFin` | DATE NOT NULL | Fecha de fin del rango (temporada, suscripcion, periodo). |  |
| Temporadas | `FactorMultiplicador` | DECIMAL (3, 2) DEFAULT ((1.0)) NULL | Multiplicador de precio para la temporada (ej. 1.25). |  |
| Temporadas | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| TicketsSoporte | `IdTicket` | INT IDENTITY (1, 1) NOT NULL | Identificador del ticket de soporte. | PK |
| TicketsSoporte | `IdUsuario` | INT NOT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| TicketsSoporte | `Asunto` | VARCHAR (200) NOT NULL | Titulo breve del ticket de soporte. |  |
| TicketsSoporte | `Descripcion` | VARCHAR (1000) NOT NULL | Texto descriptivo del registro. |  |
| TicketsSoporte | `IdEstado` | INT NOT NULL | Identificador del estado en catalogo. | Estados.IdEstado |
| TicketsSoporte | `Prioridad` | VARCHAR (20) NULL | Prioridad del ticket (baja, media, alta). |  |
| TicketsSoporte | `FechaCreacion` | DATETIME DEFAULT (getdate()) NULL | Fecha de creacion del registro. |  |
| TicketsSoporte | `FechaCierre` | DATETIME NULL | Fecha de cierre del ticket de soporte. |  |
| TicketsSoporte | `IdAgenteAsignado` | INT NULL | Agente de soporte asignado al ticket. | Usuarios.IdUsuario |
| TipoAlojamiento | `IdTipo` | INT IDENTITY (1, 1) NOT NULL | Identificador del tipo de alojamiento. | PK |
| TipoAlojamiento | `IdCategoria` | INT NOT NULL | Identificador de la categoria del catalogo. | CategoriaAlojamiento.IdCategoria |
| TipoAlojamiento | `NombreTipo` | VARCHAR (100) NOT NULL | Nombre del tipo de alojamiento. |  |
| TipoAlojamiento | `Descripcion` | VARCHAR (300) NULL | Texto descriptivo del registro. |  |
| TipoAlojamiento | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| TransporteCercano | `IdTransporte` | INT IDENTITY (1, 1) NOT NULL | Identificador del medio de transporte cercano. | PK |
| TransporteCercano | `TipoTransporte` | VARCHAR (50) NOT NULL | Tipo de transporte (bus, taxi, aeropuerto, etc.). |  |
| TransporteCercano | `Nombre` | VARCHAR (200) NOT NULL | Nombre de pila del usuario. |  |
| TransporteCercano | `DistanciaReferencia` | VARCHAR (100) NULL | Descripcion textual de la distancia (ej. 500 m del centro). |  |
| TransporteCercano | `Telefono` | VARCHAR (20) NULL | Numero telefonico de contacto. |  |
| TransporteCercano | `UbicacionCoordenadas` | [sys].[geography] NULL | Coordenadas geograficas del punto de interes. |  |
| Usuarios | `IdUsuario` | INT NOT NULL | Identificador del usuario. | PK |
| Usuarios | `Nombre` | VARCHAR (100) NOT NULL | Nombre de pila del usuario. |  |
| Usuarios | `PrimerApellido` | VARCHAR (100) NOT NULL | Primer apellido del usuario. |  |
| Usuarios | `SegundoApellido` | VARCHAR (100) NULL | Segundo apellido del usuario. |  |
| Usuarios | `Correo` | VARCHAR (100) NOT NULL | Direccion de correo electronico. |  |
| Usuarios | `Contrasena` | VARCHAR (255) NOT NULL | Hash de la contrasena del usuario (no texto plano). |  |
| Usuarios | `IdNacionalidad` | INT NOT NULL | Identificador de la nacionalidad. | Nacionalidades.IdNacionalidad |
| Usuarios | `Direccion` | VARCHAR (300) NOT NULL | Direccion fisica o referencia de ubicacion. |  |
| Usuarios | `IdDistrito` | INT NULL | Identificador del distrito. | Distritos.IdDistrito |
| Usuarios | `FechaNacimiento` | DATE NULL | Fecha de nacimiento del usuario. |  |
| Usuarios | `Genero` | CHAR (1) NULL | Genero del usuario (codigo de un caracter). |  |
| Usuarios | `IdRol` | INT NOT NULL | Identificador del rol del usuario. | Roles.IdRol |
| Usuarios | `IdEstado` | INT NOT NULL | Identificador del estado en catalogo. | Estados.IdEstado |
| Usuarios | `FechaRegistro` | DATETIME DEFAULT (getdate()) NULL | Fecha de alta del registro en el sistema. |  |
| Usuarios | `UltimoAcceso` | DATETIME NULL | Fecha y hora del ultimo inicio de sesion. |  |
| Usuarios | `EmailConfirmado` | BIT DEFAULT ((0)) NULL | Indica si el correo principal fue verificado. |  |
| Usuarios | `TelefonoConfirmado` | BIT DEFAULT ((0)) NULL | Indica si el telefono fue verificado. |  |
| Usuarios | `FotoPerfil` | VARCHAR (500) NULL | URL de la imagen de perfil del usuario. |  |
| Usuarios | `NotasInternas` | VARCHAR (500) NULL | Notas visibles solo para staff o proveedor. |  |
| VerificacionesPropiedad | `IdVerificacion` | INT IDENTITY (1, 1) NOT NULL | Identificador del proceso de verificacion. | PK |
| VerificacionesPropiedad | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| VerificacionesPropiedad | `FechaVerificacion` | DATE NOT NULL | Fecha del proceso de verificacion. |  |
| VerificacionesPropiedad | `VerificadoPor` | VARCHAR (100) NULL | Persona o entidad que realizo la verificacion. |  |
| VerificacionesPropiedad | `MetodoVerificacion` | VARCHAR (50) NULL | Metodo usado para verificar (documento, visita, etc.). |  |
| VerificacionesPropiedad | `EstadoVerificacion` | VARCHAR (20) NULL | Resultado del proceso de verificacion de propiedad. |  |
| VerificacionesPropiedad | `Comentarios` | VARCHAR (500) NULL | Observaciones del proceso de verificacion. |  |
| VerificacionesPropiedad | `FechaExpiracion` | DATE NULL | Fecha de vencimiento del token, sello o verificacion. |  |
| VerificacionesUsuario | `IdVerificacion` | INT IDENTITY (1, 1) NOT NULL | Identificador del proceso de verificacion. | PK |
| VerificacionesUsuario | `IdUsuario` | INT NOT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| VerificacionesUsuario | `TipoVerificacion` | VARCHAR (50) NULL | Tipo de verificacion de usuario (email, telefono, identidad). |  |
| VerificacionesUsuario | `Verificado` | BIT DEFAULT ((0)) NULL | Indica si la entidad paso verificacion. |  |
| VerificacionesUsuario | `FechaVerificacion` | DATETIME NULL | Fecha del proceso de verificacion. |  |
| VerificacionesUsuario | `MetodoVerificacion` | VARCHAR (100) NULL | Metodo usado para verificar (documento, visita, etc.). |  |
| VideosPropiedad | `IdVideo` | INT IDENTITY (1, 1) NOT NULL | Identificador del video de la propiedad. | PK |
| VideosPropiedad | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| VideosPropiedad | `UrlVideo` | VARCHAR (500) NOT NULL | URL del video de la propiedad. |  |
| VideosPropiedad | `TipoVideo` | VARCHAR (20) NULL | Formato o origen del video (YouTube, archivo, etc.). |  |
| VideosPropiedad | `Titulo` | VARCHAR (200) NULL | Titulo del contenido (foto, video, FAQ). |  |
| VideosPropiedad | `Descripcion` | VARCHAR (300) NULL | Texto descriptivo del registro. |  |
| VideosPropiedad | `Orden` | INT DEFAULT ((0)) NULL | Orden de visualizacion en listas. |  |
| VideosPropiedad | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
| VistasPropiedad | `IdVista` | INT IDENTITY (1, 1) NOT NULL | Identificador de la vista o visita al listado. | PK |
| VistasPropiedad | `IdPropiedad` | INT NOT NULL | Identificador de la propiedad o alojamiento. | Propiedades.IdPropiedad |
| VistasPropiedad | `IdUsuario` | INT NULL | Identificador del usuario. | Usuarios.IdUsuario |
| VistasPropiedad | `FechaVista` | DATETIME DEFAULT (getdate()) NULL | Fecha de la visita a la ficha de propiedad. |  |
| VistasPropiedad | `IPAddress` | VARCHAR (45) NULL | Direccion IP desde la que se realizo la accion. |  |
| VistasPropiedad | `TipoDispositivo` | VARCHAR (20) NULL | Dispositivo desde el que se vio la propiedad. |  |
| ZonasTicas | `IdZona` | INT IDENTITY (1, 1) NOT NULL | Identificador de la zona turistica tica. | PK |
| ZonasTicas | `NombreZona` | VARCHAR (100) NOT NULL | Nombre de la zona turistica. |  |
| ZonasTicas | `Descripcion` | VARCHAR (255) NULL | Texto descriptivo del registro. |  |
| ZonasTicas | `Activo` | BIT DEFAULT ((1)) NULL | Indica si el registro esta habilitado en catalogos o listados. |  |
