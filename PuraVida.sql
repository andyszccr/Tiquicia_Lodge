USE [TiquiciaLodge2]
GO
/****** Object:  Table [dbo].[BitacoraAcciones]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraAcciones](
	[IdBitacora] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[Accion] [varchar](100) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[IPAddress] [varchar](45) NULL,
	[Fecha] [datetime] NULL,
	[TablaAfectada] [varchar](100) NULL,
	[RegistroAfectado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusquedasUsuarios]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusquedasUsuarios](
	[IdBusqueda] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[TerminosBusqueda] [varchar](500) NULL,
	[FiltrosAplicados] [varchar](500) NULL,
	[FechaBusqueda] [datetime] NULL,
	[ResultadosCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBusqueda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalificacionesCliente]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalificacionesCliente](
	[IdCalificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdReserva] [int] NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Calificacion] [int] NOT NULL,
	[Comentario] [varchar](500) NULL,
	[Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[IdReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalificacionesPropiedad]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalificacionesPropiedad](
	[IdCalificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdReserva] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[Calificacion] [int] NOT NULL,
	[Comentario] [varchar](500) NULL,
	[Fecha] [datetime] NULL,
	[Visible] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[IdReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cantones]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cantones](
	[IdCanton] [int] IDENTITY(1,1) NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[NombreCanton] [varchar](100) NOT NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCanton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaAlojamiento]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaAlojamiento](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Icono] [varchar](50) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaEquipamiento]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaEquipamiento](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Icono] [varchar](50) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaExperiencia]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaExperiencia](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Icono] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaLugarTuristico]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaLugarTuristico](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NOT NULL,
	[Icono] [varchar](50) NULL,
	[Descripcion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaServicio]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaServicio](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Icono] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriasFAQ]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriasFAQ](
	[IdCategoriaFAQ] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Orden] [int] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoriaFAQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClicksContacto]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClicksContacto](
	[IdClick] [int] IDENTITY(1,1) NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[IdUsuario] [int] NULL,
	[TipoContacto] [varchar](20) NOT NULL,
	[FechaClick] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdClick] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComerciosCercanos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComerciosCercanos](
	[IdComercio] [int] IDENTITY(1,1) NOT NULL,
	[NombreComercio] [varchar](200) NOT NULL,
	[TipoComercio] [varchar](50) NOT NULL,
	[Telefono] [varchar](20) NULL,
	[Direccion] [varchar](300) NULL,
	[HorarioAtencion] [varchar](200) NULL,
	[UbicacionCoordenadas] [geography] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdComercio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comisiones]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comisiones](
	[IdComision] [int] IDENTITY(1,1) NOT NULL,
	[IdReserva] [int] NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[PorcentajeAplicado] [decimal](5, 2) NOT NULL,
	[MontoComision] [decimal](18, 2) NOT NULL,
	[FechaCalculo] [datetime] NULL,
	[Pagada] [bit] NULL,
	[FechaPago] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdComision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[IdReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfiguracionSistema]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfiguracionSistema](
	[IdConfiguracion] [int] IDENTITY(1,1) NOT NULL,
	[IdModulo] [int] NOT NULL,
	[Clave] [varchar](100) NOT NULL,
	[Valor] [varchar](500) NOT NULL,
	[TipoDato] [varchar](20) NULL,
	[Descripcion] [varchar](200) NULL,
	[FechaActualizacion] [datetime] NULL,
	[IdUsuarioModifico] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConfiguracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactosDirectos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactosDirectos](
	[IdContacto] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[FechaContacto] [datetime] NULL,
	[TipoContacto] [varchar](20) NULL,
	[DuracionSegundos] [int] NULL,
	[Resumen] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorreosUsuario]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorreosUsuario](
	[IdCorreo] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[EsPrincipal] [bit] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DashboardProveedor]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DashboardProveedor](
	[IdDashboard] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[VistasPropiedades] [int] NULL,
	[ContactosRecibidos] [int] NULL,
	[ReservasConfirmadas] [int] NULL,
	[Cancelaciones] [int] NULL,
	[IngresosGenerados] [decimal](18, 2) NULL,
	[RatingPromedio] [decimal](3, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDashboard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Descuentos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descuentos](
	[IdDescuento] [int] IDENTITY(1,1) NOT NULL,
	[NombreDescuento] [varchar](100) NOT NULL,
	[TipoDescuento] [varchar](30) NULL,
	[ValorDescuento] [decimal](10, 2) NOT NULL,
	[Condiciones] [varchar](300) NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDescuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DescuentosPropiedad]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DescuentosPropiedad](
	[IdDescuento] [int] NOT NULL,
	[IdPropiedad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDescuento] ASC,
	[IdPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distritos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distritos](
	[IdDistrito] [int] IDENTITY(1,1) NOT NULL,
	[IdCanton] [int] NOT NULL,
	[NombreDistrito] [varchar](100) NOT NULL,
	[CodigoPostal] [varchar](10) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDistrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentosPropiedad]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentosPropiedad](
	[IdDocumento] [int] IDENTITY(1,1) NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[TipoDocumento] [varchar](50) NOT NULL,
	[NombreArchivo] [varchar](200) NOT NULL,
	[UrlArchivo] [varchar](500) NOT NULL,
	[FechaSubida] [datetime] NULL,
	[Verificado] [bit] NULL,
	[FechaVerificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentosVerificacion]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentosVerificacion](
	[IdDocumentoVerificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdVerificacion] [int] NOT NULL,
	[TipoDocumento] [varchar](50) NOT NULL,
	[NombreArchivo] [varchar](200) NOT NULL,
	[UrlArchivo] [varchar](500) NOT NULL,
	[FechaSubida] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDocumentoVerificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipamiento]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipamiento](
	[IdEquipamiento] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[NombreEquipamiento] [varchar](100) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Icono] [varchar](50) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEquipamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[NombreEstado] [varchar](50) NOT NULL,
	[TipoEntidad] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvidenciasReporte]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvidenciasReporte](
	[IdEvidencia] [int] IDENTITY(1,1) NOT NULL,
	[IdReporte] [int] NOT NULL,
	[TipoEvidencia] [varchar](30) NULL,
	[UrlArchivo] [varchar](500) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[FechaSubida] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEvidencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Experiencias]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experiencias](
	[IdExperiencia] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[NombreExperiencia] [varchar](200) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[DuracionHoras] [int] NULL,
	[CostoAproximado] [decimal](18, 2) NULL,
	[IdMoneda] [int] NULL,
	[RecomendadoPor] [bit] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdExperiencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExperienciasCercanas]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExperienciasCercanas](
	[IdPropiedad] [int] NOT NULL,
	[IdExperiencia] [int] NOT NULL,
	[DistanciaKM] [decimal](5, 2) NOT NULL,
	[TiempoTraslado] [int] NULL,
	[ProveedorExperiencia] [varchar](100) NULL,
	[TelefonoContacto] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdExperiencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[IdFactura] [int] IDENTITY(1,1) NOT NULL,
	[IdReserva] [int] NOT NULL,
	[NumeroFactura] [varchar](50) NOT NULL,
	[FechaEmision] [datetime] NULL,
	[MontoTotal] [decimal](18, 2) NOT NULL,
	[PdfURL] [varchar](500) NULL,
	[Enviada] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NumeroFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAQs]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQs](
	[IdFAQ] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoriaFAQ] [int] NOT NULL,
	[Pregunta] [varchar](300) NOT NULL,
	[Respuesta] [varchar](1000) NOT NULL,
	[Orden] [int] NULL,
	[VecesVista] [int] NULL,
	[Activo] [bit] NULL,
	[CreadoPor] [int] NOT NULL,
	[FechaCreacion] [datetime] NULL,
	[ModificadoPor] [int] NULL,
	[FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFAQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FotosPropiedad]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FotosPropiedad](
	[IdFoto] [int] IDENTITY(1,1) NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[UrlFoto] [varchar](500) NOT NULL,
	[Titulo] [varchar](200) NULL,
	[Descripcion] [varchar](300) NULL,
	[Orden] [int] NULL,
	[EsPrincipal] [bit] NULL,
	[FechaSubida] [datetime] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFoto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GananciasProveedor]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GananciasProveedor](
	[IdGanancia] [int] IDENTITY(1,1) NOT NULL,
	[IdPagoComision] [int] NOT NULL,
	[IdReserva] [int] NOT NULL,
	[MontoProveedor] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdGanancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialEstadosReserva]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialEstadosReserva](
	[IdHistorial] [int] IDENTITY(1,1) NOT NULL,
	[IdReserva] [int] NOT NULL,
	[IdEstadoAnterior] [int] NULL,
	[IdEstadoNuevo] [int] NOT NULL,
	[FechaCambio] [datetime] NULL,
	[UsuarioCambio] [int] NULL,
	[MotivoCambio] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialPrecios]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialPrecios](
	[IdHistorial] [int] IDENTITY(1,1) NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[PrecioAnterior] [decimal](18, 2) NOT NULL,
	[PrecioNuevo] [decimal](18, 2) NOT NULL,
	[FechaCambio] [datetime] NULL,
	[MotivoCambio] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorariosCheckInOut]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorariosCheckInOut](
	[IdHorario] [int] IDENTITY(1,1) NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[TipoHorario] [varchar](10) NULL,
	[HoraDesde] [time](7) NOT NULL,
	[HoraHasta] [time](7) NULL,
	[Flexible] [bit] NULL,
	[Notas] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaPropiedades]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaPropiedades](
	[IdLista] [int] NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[FechaAgregado] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLista] ASC,
	[IdPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListasDeseos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListasDeseos](
	[IdLista] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[NombreLista] [varchar](100) NULL,
	[FechaCreacion] [datetime] NULL,
	[Privada] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogsErrores]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogsErrores](
	[IdError] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[Usuario] [int] NULL,
	[Modulo] [varchar](100) NULL,
	[ErrorMensaje] [varchar](1000) NOT NULL,
	[ErrorDetalle] [text] NULL,
	[IPAddress] [varchar](45) NULL,
	[Resuelto] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdError] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LugaresTuristicos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LugaresTuristicos](
	[IdLugarTuristico] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[NombreLugar] [varchar](200) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[UbicacionCoordenadas] [geography] NULL,
	[Direccion] [varchar](300) NULL,
	[IdDistrito] [int] NULL,
	[DistanciaReferencia] [varchar](100) NULL,
	[HorarioAtencion] [varchar](200) NULL,
	[Telefono] [varchar](20) NULL,
	[SitioWeb] [varchar](200) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLugarTuristico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MensajesSoporte]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MensajesSoporte](
	[IdMensaje] [int] IDENTITY(1,1) NOT NULL,
	[IdTicket] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Mensaje] [varchar](1000) NOT NULL,
	[FechaEnvio] [datetime] NULL,
	[AdjuntoURL] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetricasDiarias]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetricasDiarias](
	[IdMetrica] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[IdPropiedad] [int] NULL,
	[UsuariosNuevos] [int] NULL,
	[PropiedadesNuevas] [int] NULL,
	[ReservasCompletadas] [int] NULL,
	[IngresosBrutos] [decimal](18, 2) NULL,
	[IngresosComisiones] [decimal](18, 2) NULL,
	[VisitasTotales] [int] NULL,
	[BusquedasRealizadas] [int] NULL,
	[ContactosDirectos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMetrica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_MetricasDiarias] UNIQUE NONCLUSTERED 
(
	[Fecha] ASC,
	[IdPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModulosSistema]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModulosSistema](
	[IdModulo] [int] IDENTITY(1,1) NOT NULL,
	[NombreModulo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monedas]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monedas](
	[IdMoneda] [int] IDENTITY(1,1) NOT NULL,
	[NombreMoneda] [varchar](50) NOT NULL,
	[CodigoISO] [char](3) NOT NULL,
	[Simbolo] [char](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CodigoISO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidades]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidades](
	[IdNacionalidad] [int] IDENTITY(1,1) NOT NULL,
	[Nacionalidad] [varchar](100) NOT NULL,
	[CodigoISO] [char](2) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsletterSuscriptores]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsletterSuscriptores](
	[IdSuscriptor] [int] IDENTITY(1,1) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[FechaSuscripcion] [datetime] NULL,
	[Activo] [bit] NULL,
	[TokenCancelacion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSuscriptor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notificaciones]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notificaciones](
	[IdNotificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[TipoNotificacion] [varchar](50) NOT NULL,
	[Titulo] [varchar](200) NOT NULL,
	[Mensaje] [varchar](500) NOT NULL,
	[Leida] [bit] NULL,
	[FechaEnvio] [datetime] NULL,
	[FechaLectura] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[IdPago] [int] IDENTITY(1,1) NOT NULL,
	[IdReserva] [int] NOT NULL,
	[Monto_CRC] [decimal](18, 2) NOT NULL,
	[MontoUSD] [decimal](18, 2) NULL,
	[FechaPago] [datetime] NULL,
	[MetodoPago] [varchar](30) NOT NULL,
	[EstadoPago] [varchar](20) NULL,
	[ComprobanteURL] [varchar](500) NULL,
	[TelefonoSINPE] [varchar](20) NULL,
	[ReferenciaBanco] [varchar](100) NULL,
	[IdUsuarioRegistra] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagosComisiones]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosComisiones](
	[IdPagoComision] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[PeriodoInicio] [date] NOT NULL,
	[PeriodoFin] [date] NOT NULL,
	[MontoTotal] [decimal](18, 2) NOT NULL,
	[FechaPago] [datetime] NULL,
	[MetodoPago] [varchar](30) NOT NULL,
	[ComprobanteURL] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPagoComision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagosPendientes]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosPendientes](
	[IdPendiente] [int] IDENTITY(1,1) NOT NULL,
	[IdReserva] [int] NOT NULL,
	[MontoPendiente] [decimal](18, 2) NOT NULL,
	[FechaLimite] [date] NOT NULL,
	[RecordatoriosEnviados] [int] NULL,
	[UltimoRecordatorio] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPendiente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanesProveedor]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanesProveedor](
	[IdPlan] [int] IDENTITY(1,1) NOT NULL,
	[NombrePlan] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[PorcentajeComision] [decimal](5, 2) NOT NULL,
	[CostoMensual_CRC] [decimal](18, 2) NULL,
	[MaximoPropiedades] [int] NULL,
	[SoportePrioritario] [bit] NULL,
	[VerificacionGratuita] [bit] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombrePlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PoliticasCancelacion]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PoliticasCancelacion](
	[IdPolitica] [int] IDENTITY(1,1) NOT NULL,
	[NombrePolitica] [varchar](50) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[ReembolsoPorcentaje] [decimal](5, 2) NOT NULL,
	[DiasAntelacion] [int] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPolitica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombrePolitica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreciosTemporada]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreciosTemporada](
	[IdPropiedad] [int] NOT NULL,
	[IdTemporada] [int] NOT NULL,
	[PrecioPersonalizado] [decimal](18, 2) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdTemporada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promociones]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promociones](
	[IdPromocion] [int] IDENTITY(1,1) NOT NULL,
	[NombrePromo] [varchar](100) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[TipoPromo] [varchar](30) NULL,
	[PorcentajeDescuento] [decimal](5, 2) NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPromocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromocionesPropiedad]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromocionesPropiedad](
	[IdPromocion] [int] NOT NULL,
	[IdPropiedad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPromocion] ASC,
	[IdPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadComerciosCercanos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadComerciosCercanos](
	[IdPropiedad] [int] NOT NULL,
	[IdComercio] [int] NOT NULL,
	[DistanciaKM] [decimal](5, 2) NOT NULL,
	[TiempoCaminando] [int] NULL,
	[TiempoEnCarro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdComercio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadEquipamiento]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadEquipamiento](
	[IdPropiedad] [int] NOT NULL,
	[IdEquipamiento] [int] NOT NULL,
	[Cantidad] [int] NULL,
	[DescripcionAdicional] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdEquipamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Propiedades]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propiedades](
	[IdPropiedad] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[IdTipoAlojamiento] [int] NOT NULL,
	[IdZona] [int] NOT NULL,
	[IdDistrito] [int] NULL,
	[NombrePropiedad] [varchar](250) NOT NULL,
	[TituloPromocional] [varchar](200) NULL,
	[DescripcionLarga] [varchar](2000) NOT NULL,
	[DescripcionCorta] [varchar](300) NULL,
	[UbicacionDetallada] [varchar](300) NOT NULL,
	[Coordenadas] [geography] NULL,
	[CantidadHabitaciones] [int] NOT NULL,
	[CantidadCamas] [int] NOT NULL,
	[CapacidadMaxima] [int] NOT NULL,
	[CantidadBanios] [int] NOT NULL,
	[AreaMetrosCuadrados] [int] NULL,
	[MontoXNoche] [decimal](18, 2) NOT NULL,
	[Moneda] [int] NOT NULL,
	[DepositoGarantia] [decimal](18, 2) NULL,
	[IdEstado] [int] NOT NULL,
	[Verificado] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaActualizacion] [datetime] NULL,
	[VecesVisto] [int] NULL,
	[RatingPromedio] [decimal](3, 2) NULL,
	[TotalResenas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadLugaresCercanos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadLugaresCercanos](
	[IdPropiedad] [int] NOT NULL,
	[IdLugarTuristico] [int] NOT NULL,
	[DistanciaKM] [decimal](5, 2) NOT NULL,
	[TiempoCaminando] [int] NULL,
	[TiempoEnCarro] [int] NULL,
	[EsLoMasCercano] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdLugarTuristico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadPoliticasCancelacion]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadPoliticasCancelacion](
	[IdPropiedad] [int] NOT NULL,
	[IdPolitica] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdPolitica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadReglas]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadReglas](
	[IdPropiedad] [int] NOT NULL,
	[IdRegla] [int] NOT NULL,
	[EsAplicable] [bit] NULL,
	[DetalleEspecifico] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdRegla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadRequerimientos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadRequerimientos](
	[IdPropiedad] [int] NOT NULL,
	[IdRequerimiento] [int] NOT NULL,
	[MontoDeposito] [decimal](18, 2) NULL,
	[CondicionesEspeciales] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdRequerimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadSellos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadSellos](
	[IdPropiedad] [int] NOT NULL,
	[IdSello] [int] NOT NULL,
	[FechaOtorgado] [datetime] NULL,
	[FechaExpiracion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdSello] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadServicios]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadServicios](
	[IdPropiedad] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
	[DescripcionAdicional] [varchar](200) NULL,
	[IncluidoEnPrecio] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropiedadTransporteCercano]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropiedadTransporteCercano](
	[IdPropiedad] [int] NOT NULL,
	[IdTransporte] [int] NOT NULL,
	[DistanciaKM] [decimal](5, 2) NOT NULL,
	[TiempoCaminando] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC,
	[IdTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[IdProvincia] [int] IDENTITY(1,1) NOT NULL,
	[NombreProvincia] [varchar](50) NOT NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecuperacionContrasena]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecuperacionContrasena](
	[IdSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Token] [varchar](255) NOT NULL,
	[FechaSolicitud] [datetime] NULL,
	[FechaExpiracion] [datetime] NOT NULL,
	[Usada] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reembolsos]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reembolsos](
	[IdReembolso] [int] IDENTITY(1,1) NOT NULL,
	[IdPago] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[FechaReembolso] [datetime] NULL,
	[Motivo] [varchar](300) NOT NULL,
	[AprobadoPor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReembolso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReglasCasa]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReglasCasa](
	[IdRegla] [int] IDENTITY(1,1) NOT NULL,
	[NombreRegla] [varchar](100) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[Icono] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRegla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreRegla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reportes]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reportes](
	[IdReporte] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuarioReporta] [int] NOT NULL,
	[IdUsuarioReportado] [int] NULL,
	[IdPropiedadReportada] [int] NULL,
	[IdReservaRelacionada] [int] NULL,
	[Motivo] [varchar](100) NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[FechaReporte] [datetime] NULL,
	[IdEstado] [int] NOT NULL,
	[Resolucion] [varchar](500) NULL,
	[FechaResolucion] [datetime] NULL,
	[ResueltoPor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequerimientosReserva]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequerimientosReserva](
	[IdRequerimiento] [int] IDENTITY(1,1) NOT NULL,
	[NombreRequerimiento] [varchar](100) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[EsObligatorio] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRequerimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreRequerimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservas](
	[IdReserva] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[FechaEntrada] [date] NOT NULL,
	[FechaSalida] [date] NOT NULL,
	[CantidadPersonas] [int] NOT NULL,
	[CantidadNoches] [int] NOT NULL,
	[PrecioPorNoche] [decimal](18, 2) NOT NULL,
	[Subtotal] [decimal](18, 2) NOT NULL,
	[DescuentoAplicado] [decimal](18, 2) NULL,
	[Comision] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[IdEstado] [int] NOT NULL,
	[FechaReserva] [datetime] NULL,
	[NotasCliente] [varchar](500) NULL,
	[NotasInternas] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestasCalificacion]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestasCalificacion](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdCalificacion] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Respuesta] [varchar](500) NOT NULL,
	[Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[NombreRol] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellosConfianza]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellosConfianza](
	[IdSello] [int] IDENTITY(1,1) NOT NULL,
	[NombreSello] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Icono] [varchar](50) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSello] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreSello] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosPropiedad]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosPropiedad](
	[IdServicio] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[NombreServicio] [varchar](100) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Icono] [varchar](50) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sesiones]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sesiones](
	[IdSesion] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Token] [varchar](500) NOT NULL,
	[FechaInicio] [datetime] NULL,
	[FechaExpiracion] [datetime] NOT NULL,
	[IPAddress] [varchar](45) NULL,
	[UserAgent] [varchar](500) NULL,
	[Activa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuscripcionesProveedor]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuscripcionesProveedor](
	[IdSuscripcion] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[IdPlan] [int] NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NULL,
	[Activa] [bit] NULL,
	[MotivoCancelacion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSuscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefonosUsuario]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefonosUsuario](
	[IdTelefono] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[TipoTelefono] [varchar](20) NULL,
	[EsPrincipal] [bit] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temporadas]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temporadas](
	[IdTemporada] [int] IDENTITY(1,1) NOT NULL,
	[NombreTemporada] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[FactorMultiplicador] [decimal](3, 2) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTemporada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketsSoporte]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketsSoporte](
	[IdTicket] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Asunto] [varchar](200) NOT NULL,
	[Descripcion] [varchar](1000) NOT NULL,
	[IdEstado] [int] NOT NULL,
	[Prioridad] [varchar](20) NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaCierre] [datetime] NULL,
	[IdAgenteAsignado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAlojamiento]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAlojamiento](
	[IdTipo] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[NombreTipo] [varchar](100) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransporteCercano]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransporteCercano](
	[IdTransporte] [int] IDENTITY(1,1) NOT NULL,
	[TipoTransporte] [varchar](50) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[DistanciaReferencia] [varchar](100) NULL,
	[Telefono] [varchar](20) NULL,
	[UbicacionCoordenadas] [geography] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[PrimerApellido] [varchar](100) NOT NULL,
	[SegundoApellido] [varchar](100) NULL,
	[Correo] [varchar](100) NOT NULL,
	[Contrasena] [varchar](255) NOT NULL,
	[IdNacionalidad] [int] NOT NULL,
	[Direccion] [varchar](300) NOT NULL,
	[IdDistrito] [int] NULL,
	[FechaNacimiento] [date] NULL,
	[Genero] [char](1) NULL,
	[IdRol] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[UltimoAcceso] [datetime] NULL,
	[EmailConfirmado] [bit] NULL,
	[TelefonoConfirmado] [bit] NULL,
	[FotoPerfil] [varchar](500) NULL,
	[NotasInternas] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VerificacionesPropiedad]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VerificacionesPropiedad](
	[IdVerificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[FechaVerificacion] [date] NOT NULL,
	[VerificadoPor] [varchar](100) NULL,
	[MetodoVerificacion] [varchar](50) NULL,
	[EstadoVerificacion] [varchar](20) NULL,
	[Comentarios] [varchar](500) NULL,
	[FechaExpiracion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVerificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VerificacionesUsuario]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VerificacionesUsuario](
	[IdVerificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[TipoVerificacion] [varchar](50) NULL,
	[Verificado] [bit] NULL,
	[FechaVerificacion] [datetime] NULL,
	[MetodoVerificacion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVerificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideosPropiedad]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideosPropiedad](
	[IdVideo] [int] IDENTITY(1,1) NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[UrlVideo] [varchar](500) NOT NULL,
	[TipoVideo] [varchar](20) NULL,
	[Titulo] [varchar](200) NULL,
	[Descripcion] [varchar](300) NULL,
	[Orden] [int] NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVideo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VistasPropiedad]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VistasPropiedad](
	[IdVista] [int] IDENTITY(1,1) NOT NULL,
	[IdPropiedad] [int] NOT NULL,
	[IdUsuario] [int] NULL,
	[FechaVista] [datetime] NULL,
	[IPAddress] [varchar](45) NULL,
	[TipoDispositivo] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZonasTicas]    Script Date: 01/03/2026 20:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZonasTicas](
	[IdZona] [int] IDENTITY(1,1) NOT NULL,
	[NombreZona] [varchar](100) NOT NULL,
	[Descripcion] [varchar](255) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BitacoraAcciones] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[BusquedasUsuarios] ADD  DEFAULT (getdate()) FOR [FechaBusqueda]
GO
ALTER TABLE [dbo].[CalificacionesCliente] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[CalificacionesPropiedad] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[CalificacionesPropiedad] ADD  DEFAULT ((1)) FOR [Visible]
GO
ALTER TABLE [dbo].[Cantones] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[CategoriaAlojamiento] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[CategoriaEquipamiento] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[CategoriasFAQ] ADD  DEFAULT ((0)) FOR [Orden]
GO
ALTER TABLE [dbo].[CategoriasFAQ] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ClicksContacto] ADD  DEFAULT (getdate()) FOR [FechaClick]
GO
ALTER TABLE [dbo].[ComerciosCercanos] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Comisiones] ADD  DEFAULT (getdate()) FOR [FechaCalculo]
GO
ALTER TABLE [dbo].[Comisiones] ADD  DEFAULT ((0)) FOR [Pagada]
GO
ALTER TABLE [dbo].[ConfiguracionSistema] ADD  DEFAULT ((1)) FOR [IdModulo]
GO
ALTER TABLE [dbo].[ConfiguracionSistema] ADD  DEFAULT ('string') FOR [TipoDato]
GO
ALTER TABLE [dbo].[ConfiguracionSistema] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[ContactosDirectos] ADD  DEFAULT (getdate()) FOR [FechaContacto]
GO
ALTER TABLE [dbo].[CorreosUsuario] ADD  DEFAULT ((0)) FOR [EsPrincipal]
GO
ALTER TABLE [dbo].[CorreosUsuario] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[DashboardProveedor] ADD  DEFAULT ((0)) FOR [VistasPropiedades]
GO
ALTER TABLE [dbo].[DashboardProveedor] ADD  DEFAULT ((0)) FOR [ContactosRecibidos]
GO
ALTER TABLE [dbo].[DashboardProveedor] ADD  DEFAULT ((0)) FOR [ReservasConfirmadas]
GO
ALTER TABLE [dbo].[DashboardProveedor] ADD  DEFAULT ((0)) FOR [Cancelaciones]
GO
ALTER TABLE [dbo].[DashboardProveedor] ADD  DEFAULT ((0)) FOR [IngresosGenerados]
GO
ALTER TABLE [dbo].[Descuentos] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Distritos] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[DocumentosPropiedad] ADD  DEFAULT (getdate()) FOR [FechaSubida]
GO
ALTER TABLE [dbo].[DocumentosPropiedad] ADD  DEFAULT ((0)) FOR [Verificado]
GO
ALTER TABLE [dbo].[DocumentosVerificacion] ADD  DEFAULT (getdate()) FOR [FechaSubida]
GO
ALTER TABLE [dbo].[Equipamiento] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[EvidenciasReporte] ADD  DEFAULT (getdate()) FOR [FechaSubida]
GO
ALTER TABLE [dbo].[Experiencias] ADD  DEFAULT ((1)) FOR [RecomendadoPor]
GO
ALTER TABLE [dbo].[Experiencias] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Facturas] ADD  DEFAULT (getdate()) FOR [FechaEmision]
GO
ALTER TABLE [dbo].[Facturas] ADD  DEFAULT ((0)) FOR [Enviada]
GO
ALTER TABLE [dbo].[FAQs] ADD  DEFAULT ((0)) FOR [Orden]
GO
ALTER TABLE [dbo].[FAQs] ADD  DEFAULT ((0)) FOR [VecesVista]
GO
ALTER TABLE [dbo].[FAQs] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[FAQs] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[FotosPropiedad] ADD  DEFAULT ((0)) FOR [Orden]
GO
ALTER TABLE [dbo].[FotosPropiedad] ADD  DEFAULT ((0)) FOR [EsPrincipal]
GO
ALTER TABLE [dbo].[FotosPropiedad] ADD  DEFAULT (getdate()) FOR [FechaSubida]
GO
ALTER TABLE [dbo].[FotosPropiedad] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[HistorialEstadosReserva] ADD  DEFAULT (getdate()) FOR [FechaCambio]
GO
ALTER TABLE [dbo].[HistorialPrecios] ADD  DEFAULT (getdate()) FOR [FechaCambio]
GO
ALTER TABLE [dbo].[HorariosCheckInOut] ADD  DEFAULT ((0)) FOR [Flexible]
GO
ALTER TABLE [dbo].[ListaPropiedades] ADD  DEFAULT (getdate()) FOR [FechaAgregado]
GO
ALTER TABLE [dbo].[ListasDeseos] ADD  DEFAULT ('Mis favoritos') FOR [NombreLista]
GO
ALTER TABLE [dbo].[ListasDeseos] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[ListasDeseos] ADD  DEFAULT ((1)) FOR [Privada]
GO
ALTER TABLE [dbo].[LogsErrores] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[LogsErrores] ADD  DEFAULT ((0)) FOR [Resuelto]
GO
ALTER TABLE [dbo].[LugaresTuristicos] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[MensajesSoporte] ADD  DEFAULT (getdate()) FOR [FechaEnvio]
GO
ALTER TABLE [dbo].[MetricasDiarias] ADD  DEFAULT ((0)) FOR [UsuariosNuevos]
GO
ALTER TABLE [dbo].[MetricasDiarias] ADD  DEFAULT ((0)) FOR [PropiedadesNuevas]
GO
ALTER TABLE [dbo].[MetricasDiarias] ADD  DEFAULT ((0)) FOR [ReservasCompletadas]
GO
ALTER TABLE [dbo].[MetricasDiarias] ADD  DEFAULT ((0)) FOR [IngresosBrutos]
GO
ALTER TABLE [dbo].[MetricasDiarias] ADD  DEFAULT ((0)) FOR [IngresosComisiones]
GO
ALTER TABLE [dbo].[MetricasDiarias] ADD  DEFAULT ((0)) FOR [VisitasTotales]
GO
ALTER TABLE [dbo].[MetricasDiarias] ADD  DEFAULT ((0)) FOR [BusquedasRealizadas]
GO
ALTER TABLE [dbo].[MetricasDiarias] ADD  DEFAULT ((0)) FOR [ContactosDirectos]
GO
ALTER TABLE [dbo].[ModulosSistema] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Nacionalidades] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[NewsletterSuscriptores] ADD  DEFAULT (getdate()) FOR [FechaSuscripcion]
GO
ALTER TABLE [dbo].[NewsletterSuscriptores] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Notificaciones] ADD  DEFAULT ((0)) FOR [Leida]
GO
ALTER TABLE [dbo].[Notificaciones] ADD  DEFAULT (getdate()) FOR [FechaEnvio]
GO
ALTER TABLE [dbo].[Pagos] ADD  DEFAULT (getdate()) FOR [FechaPago]
GO
ALTER TABLE [dbo].[PagosComisiones] ADD  DEFAULT (getdate()) FOR [FechaPago]
GO
ALTER TABLE [dbo].[PagosPendientes] ADD  DEFAULT ((0)) FOR [RecordatoriosEnviados]
GO
ALTER TABLE [dbo].[PlanesProveedor] ADD  DEFAULT ((0)) FOR [SoportePrioritario]
GO
ALTER TABLE [dbo].[PlanesProveedor] ADD  DEFAULT ((0)) FOR [VerificacionGratuita]
GO
ALTER TABLE [dbo].[PlanesProveedor] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[PoliticasCancelacion] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[PreciosTemporada] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Promociones] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[PropiedadEquipamiento] ADD  DEFAULT ((1)) FOR [Cantidad]
GO
ALTER TABLE [dbo].[Propiedades] ADD  DEFAULT ((1)) FOR [CantidadBanios]
GO
ALTER TABLE [dbo].[Propiedades] ADD  DEFAULT ((1)) FOR [Moneda]
GO
ALTER TABLE [dbo].[Propiedades] ADD  DEFAULT ((0)) FOR [Verificado]
GO
ALTER TABLE [dbo].[Propiedades] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Propiedades] ADD  DEFAULT ((0)) FOR [VecesVisto]
GO
ALTER TABLE [dbo].[Propiedades] ADD  DEFAULT ((0)) FOR [RatingPromedio]
GO
ALTER TABLE [dbo].[Propiedades] ADD  DEFAULT ((0)) FOR [TotalResenas]
GO
ALTER TABLE [dbo].[PropiedadLugaresCercanos] ADD  DEFAULT ((0)) FOR [EsLoMasCercano]
GO
ALTER TABLE [dbo].[PropiedadReglas] ADD  DEFAULT ((1)) FOR [EsAplicable]
GO
ALTER TABLE [dbo].[PropiedadSellos] ADD  DEFAULT (getdate()) FOR [FechaOtorgado]
GO
ALTER TABLE [dbo].[PropiedadServicios] ADD  DEFAULT ((1)) FOR [IncluidoEnPrecio]
GO
ALTER TABLE [dbo].[Provincias] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[RecuperacionContrasena] ADD  DEFAULT (getdate()) FOR [FechaSolicitud]
GO
ALTER TABLE [dbo].[RecuperacionContrasena] ADD  DEFAULT ((0)) FOR [Usada]
GO
ALTER TABLE [dbo].[Reembolsos] ADD  DEFAULT (getdate()) FOR [FechaReembolso]
GO
ALTER TABLE [dbo].[Reportes] ADD  DEFAULT (getdate()) FOR [FechaReporte]
GO
ALTER TABLE [dbo].[RequerimientosReserva] ADD  DEFAULT ((1)) FOR [EsObligatorio]
GO
ALTER TABLE [dbo].[Reservas] ADD  DEFAULT ((0)) FOR [DescuentoAplicado]
GO
ALTER TABLE [dbo].[Reservas] ADD  DEFAULT (getdate()) FOR [FechaReserva]
GO
ALTER TABLE [dbo].[RespuestasCalificacion] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[SellosConfianza] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ServiciosPropiedad] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Sesiones] ADD  DEFAULT (getdate()) FOR [FechaInicio]
GO
ALTER TABLE [dbo].[Sesiones] ADD  DEFAULT ((1)) FOR [Activa]
GO
ALTER TABLE [dbo].[SuscripcionesProveedor] ADD  DEFAULT ((1)) FOR [Activa]
GO
ALTER TABLE [dbo].[TelefonosUsuario] ADD  DEFAULT ((0)) FOR [EsPrincipal]
GO
ALTER TABLE [dbo].[TelefonosUsuario] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Temporadas] ADD  DEFAULT ((1.0)) FOR [FactorMultiplicador]
GO
ALTER TABLE [dbo].[Temporadas] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[TicketsSoporte] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[TipoAlojamiento] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((0)) FOR [EmailConfirmado]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((0)) FOR [TelefonoConfirmado]
GO
ALTER TABLE [dbo].[VerificacionesUsuario] ADD  DEFAULT ((0)) FOR [Verificado]
GO
ALTER TABLE [dbo].[VideosPropiedad] ADD  DEFAULT ((0)) FOR [Orden]
GO
ALTER TABLE [dbo].[VideosPropiedad] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[VistasPropiedad] ADD  DEFAULT (getdate()) FOR [FechaVista]
GO
ALTER TABLE [dbo].[ZonasTicas] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[BitacoraAcciones]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[BusquedasUsuarios]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[CalificacionesCliente]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[CalificacionesCliente]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[CalificacionesCliente]  WITH CHECK ADD FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Reservas] ([IdReserva])
GO
ALTER TABLE [dbo].[CalificacionesPropiedad]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[CalificacionesPropiedad]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[CalificacionesPropiedad]  WITH CHECK ADD FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Reservas] ([IdReserva])
GO
ALTER TABLE [dbo].[Cantones]  WITH CHECK ADD FOREIGN KEY([IdProvincia])
REFERENCES [dbo].[Provincias] ([IdProvincia])
GO
ALTER TABLE [dbo].[ClicksContacto]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[ClicksContacto]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Comisiones]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Comisiones]  WITH CHECK ADD FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Reservas] ([IdReserva])
GO
ALTER TABLE [dbo].[ConfiguracionSistema]  WITH CHECK ADD FOREIGN KEY([IdModulo])
REFERENCES [dbo].[ModulosSistema] ([IdModulo])
GO
ALTER TABLE [dbo].[ConfiguracionSistema]  WITH CHECK ADD FOREIGN KEY([IdUsuarioModifico])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[ContactosDirectos]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[ContactosDirectos]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[CorreosUsuario]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[DashboardProveedor]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[DescuentosPropiedad]  WITH CHECK ADD FOREIGN KEY([IdDescuento])
REFERENCES [dbo].[Descuentos] ([IdDescuento])
GO
ALTER TABLE [dbo].[DescuentosPropiedad]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[Distritos]  WITH CHECK ADD FOREIGN KEY([IdCanton])
REFERENCES [dbo].[Cantones] ([IdCanton])
GO
ALTER TABLE [dbo].[DocumentosPropiedad]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[DocumentosVerificacion]  WITH CHECK ADD FOREIGN KEY([IdVerificacion])
REFERENCES [dbo].[VerificacionesPropiedad] ([IdVerificacion])
GO
ALTER TABLE [dbo].[Equipamiento]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriaEquipamiento] ([IdCategoria])
GO
ALTER TABLE [dbo].[EvidenciasReporte]  WITH CHECK ADD FOREIGN KEY([IdReporte])
REFERENCES [dbo].[Reportes] ([IdReporte])
GO
ALTER TABLE [dbo].[Experiencias]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriaExperiencia] ([IdCategoria])
GO
ALTER TABLE [dbo].[Experiencias]  WITH CHECK ADD FOREIGN KEY([IdMoneda])
REFERENCES [dbo].[Monedas] ([IdMoneda])
GO
ALTER TABLE [dbo].[ExperienciasCercanas]  WITH CHECK ADD FOREIGN KEY([IdExperiencia])
REFERENCES [dbo].[Experiencias] ([IdExperiencia])
GO
ALTER TABLE [dbo].[ExperienciasCercanas]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Reservas] ([IdReserva])
GO
ALTER TABLE [dbo].[FAQs]  WITH CHECK ADD FOREIGN KEY([CreadoPor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[FAQs]  WITH CHECK ADD FOREIGN KEY([IdCategoriaFAQ])
REFERENCES [dbo].[CategoriasFAQ] ([IdCategoriaFAQ])
GO
ALTER TABLE [dbo].[FAQs]  WITH CHECK ADD FOREIGN KEY([ModificadoPor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[FotosPropiedad]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[GananciasProveedor]  WITH CHECK ADD FOREIGN KEY([IdPagoComision])
REFERENCES [dbo].[PagosComisiones] ([IdPagoComision])
GO
ALTER TABLE [dbo].[GananciasProveedor]  WITH CHECK ADD FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Reservas] ([IdReserva])
GO
ALTER TABLE [dbo].[HistorialEstadosReserva]  WITH CHECK ADD FOREIGN KEY([IdEstadoAnterior])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[HistorialEstadosReserva]  WITH CHECK ADD FOREIGN KEY([IdEstadoNuevo])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[HistorialEstadosReserva]  WITH CHECK ADD FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Reservas] ([IdReserva])
GO
ALTER TABLE [dbo].[HistorialEstadosReserva]  WITH CHECK ADD FOREIGN KEY([UsuarioCambio])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[HistorialPrecios]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[HorariosCheckInOut]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[ListaPropiedades]  WITH CHECK ADD FOREIGN KEY([IdLista])
REFERENCES [dbo].[ListasDeseos] ([IdLista])
GO
ALTER TABLE [dbo].[ListaPropiedades]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[ListasDeseos]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[LogsErrores]  WITH CHECK ADD FOREIGN KEY([Usuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[LugaresTuristicos]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriaLugarTuristico] ([IdCategoria])
GO
ALTER TABLE [dbo].[LugaresTuristicos]  WITH CHECK ADD FOREIGN KEY([IdDistrito])
REFERENCES [dbo].[Distritos] ([IdDistrito])
GO
ALTER TABLE [dbo].[MensajesSoporte]  WITH CHECK ADD FOREIGN KEY([IdTicket])
REFERENCES [dbo].[TicketsSoporte] ([IdTicket])
GO
ALTER TABLE [dbo].[MensajesSoporte]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[MetricasDiarias]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[Notificaciones]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Reservas] ([IdReserva])
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD FOREIGN KEY([IdUsuarioRegistra])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[PagosComisiones]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[PagosPendientes]  WITH CHECK ADD FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Reservas] ([IdReserva])
GO
ALTER TABLE [dbo].[PreciosTemporada]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[PreciosTemporada]  WITH CHECK ADD FOREIGN KEY([IdTemporada])
REFERENCES [dbo].[Temporadas] ([IdTemporada])
GO
ALTER TABLE [dbo].[PromocionesPropiedad]  WITH CHECK ADD FOREIGN KEY([IdPromocion])
REFERENCES [dbo].[Promociones] ([IdPromocion])
GO
ALTER TABLE [dbo].[PromocionesPropiedad]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[PropiedadComerciosCercanos]  WITH CHECK ADD FOREIGN KEY([IdComercio])
REFERENCES [dbo].[ComerciosCercanos] ([IdComercio])
GO
ALTER TABLE [dbo].[PropiedadComerciosCercanos]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[PropiedadEquipamiento]  WITH CHECK ADD FOREIGN KEY([IdEquipamiento])
REFERENCES [dbo].[Equipamiento] ([IdEquipamiento])
GO
ALTER TABLE [dbo].[PropiedadEquipamiento]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD FOREIGN KEY([IdDistrito])
REFERENCES [dbo].[Distritos] ([IdDistrito])
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD FOREIGN KEY([IdTipoAlojamiento])
REFERENCES [dbo].[TipoAlojamiento] ([IdTipo])
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD FOREIGN KEY([IdZona])
REFERENCES [dbo].[ZonasTicas] ([IdZona])
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD FOREIGN KEY([Moneda])
REFERENCES [dbo].[Monedas] ([IdMoneda])
GO
ALTER TABLE [dbo].[PropiedadLugaresCercanos]  WITH CHECK ADD FOREIGN KEY([IdLugarTuristico])
REFERENCES [dbo].[LugaresTuristicos] ([IdLugarTuristico])
GO
ALTER TABLE [dbo].[PropiedadLugaresCercanos]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[PropiedadPoliticasCancelacion]  WITH CHECK ADD FOREIGN KEY([IdPolitica])
REFERENCES [dbo].[PoliticasCancelacion] ([IdPolitica])
GO
ALTER TABLE [dbo].[PropiedadPoliticasCancelacion]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[PropiedadReglas]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[PropiedadReglas]  WITH CHECK ADD FOREIGN KEY([IdRegla])
REFERENCES [dbo].[ReglasCasa] ([IdRegla])
GO
ALTER TABLE [dbo].[PropiedadRequerimientos]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[PropiedadRequerimientos]  WITH CHECK ADD FOREIGN KEY([IdRequerimiento])
REFERENCES [dbo].[RequerimientosReserva] ([IdRequerimiento])
GO
ALTER TABLE [dbo].[PropiedadSellos]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[PropiedadSellos]  WITH CHECK ADD FOREIGN KEY([IdSello])
REFERENCES [dbo].[SellosConfianza] ([IdSello])
GO
ALTER TABLE [dbo].[PropiedadServicios]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[PropiedadServicios]  WITH CHECK ADD FOREIGN KEY([IdServicio])
REFERENCES [dbo].[ServiciosPropiedad] ([IdServicio])
GO
ALTER TABLE [dbo].[PropiedadTransporteCercano]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[PropiedadTransporteCercano]  WITH CHECK ADD FOREIGN KEY([IdTransporte])
REFERENCES [dbo].[TransporteCercano] ([IdTransporte])
GO
ALTER TABLE [dbo].[RecuperacionContrasena]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Reembolsos]  WITH CHECK ADD FOREIGN KEY([AprobadoPor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Reembolsos]  WITH CHECK ADD FOREIGN KEY([IdPago])
REFERENCES [dbo].[Pagos] ([IdPago])
GO
ALTER TABLE [dbo].[Reportes]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[Reportes]  WITH CHECK ADD FOREIGN KEY([IdPropiedadReportada])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[Reportes]  WITH CHECK ADD FOREIGN KEY([IdReservaRelacionada])
REFERENCES [dbo].[Reservas] ([IdReserva])
GO
ALTER TABLE [dbo].[Reportes]  WITH CHECK ADD FOREIGN KEY([IdUsuarioReporta])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Reportes]  WITH CHECK ADD FOREIGN KEY([IdUsuarioReportado])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Reportes]  WITH CHECK ADD FOREIGN KEY([ResueltoPor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[RespuestasCalificacion]  WITH CHECK ADD FOREIGN KEY([IdCalificacion])
REFERENCES [dbo].[CalificacionesPropiedad] ([IdCalificacion])
GO
ALTER TABLE [dbo].[RespuestasCalificacion]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[ServiciosPropiedad]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriaServicio] ([IdCategoria])
GO
ALTER TABLE [dbo].[Sesiones]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[SuscripcionesProveedor]  WITH CHECK ADD FOREIGN KEY([IdPlan])
REFERENCES [dbo].[PlanesProveedor] ([IdPlan])
GO
ALTER TABLE [dbo].[SuscripcionesProveedor]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[TelefonosUsuario]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[TicketsSoporte]  WITH CHECK ADD FOREIGN KEY([IdAgenteAsignado])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[TicketsSoporte]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[TicketsSoporte]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[TipoAlojamiento]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriaAlojamiento] ([IdCategoria])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([IdDistrito])
REFERENCES [dbo].[Distritos] ([IdDistrito])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([IdNacionalidad])
REFERENCES [dbo].[Nacionalidades] ([IdNacionalidad])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([IdRol])
REFERENCES [dbo].[Roles] ([IdRol])
GO
ALTER TABLE [dbo].[VerificacionesPropiedad]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[VerificacionesUsuario]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[VideosPropiedad]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[VistasPropiedad]  WITH CHECK ADD FOREIGN KEY([IdPropiedad])
REFERENCES [dbo].[Propiedades] ([IdPropiedad])
GO
ALTER TABLE [dbo].[VistasPropiedad]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[CalificacionesCliente]  WITH CHECK ADD CHECK  (([Calificacion]>=(1) AND [Calificacion]<=(5)))
GO
ALTER TABLE [dbo].[CalificacionesPropiedad]  WITH CHECK ADD CHECK  (([Calificacion]>=(1) AND [Calificacion]<=(5)))
GO
ALTER TABLE [dbo].[ComerciosCercanos]  WITH CHECK ADD CHECK  (([TipoComercio]='Otro' OR [TipoComercio]='Taller' OR [TipoComercio]='Gasolinera' OR [TipoComercio]='Clínica' OR [TipoComercio]='Banco' OR [TipoComercio]='Restaurante' OR [TipoComercio]='Farmacia' OR [TipoComercio]='Supermercado'))
GO
ALTER TABLE [dbo].[ContactosDirectos]  WITH CHECK ADD CHECK  (([TipoContacto]='Visita' OR [TipoContacto]='Correo' OR [TipoContacto]='SitioWeb' OR [TipoContacto]='Llamada' OR [TipoContacto]='WhatsApp'))
GO
ALTER TABLE [dbo].[Descuentos]  WITH CHECK ADD CHECK  (([TipoDescuento]='MontoFijo' OR [TipoDescuento]='Porcentaje'))
GO
ALTER TABLE [dbo].[EvidenciasReporte]  WITH CHECK ADD CHECK  (([TipoEvidencia]='Documento' OR [TipoEvidencia]='Captura' OR [TipoEvidencia]='Foto'))
GO
ALTER TABLE [dbo].[HorariosCheckInOut]  WITH CHECK ADD CHECK  (([TipoHorario]='CheckOut' OR [TipoHorario]='CheckIn'))
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD CHECK  (([EstadoPago]='Reembolsado' OR [EstadoPago]='Fallido' OR [EstadoPago]='Completado' OR [EstadoPago]='Pendiente'))
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD CHECK  (([MetodoPago]='PayPal' OR [MetodoPago]='Transferencia' OR [MetodoPago]='Efectivo' OR [MetodoPago]='Tarjeta' OR [MetodoPago]='SINPE Movil'))
GO
ALTER TABLE [dbo].[Promociones]  WITH CHECK ADD CHECK  (([TipoPromo]='Lanzamiento' OR [TipoPromo]='TemporadaBaja' OR [TipoPromo]='Feriado' OR [TipoPromo]='FindeSemana'))
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD CHECK  (([CantidadHabitaciones]>(0)))
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD CHECK  (([CantidadCamas]>(0)))
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD CHECK  (([CapacidadMaxima]>(0)))
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD CHECK  (([MontoXNoche]>(0)))
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD CHECK  (([CantidadPersonas]>(0)))
GO
ALTER TABLE [dbo].[TelefonosUsuario]  WITH CHECK ADD CHECK  (([TipoTelefono]='WhatsApp' OR [TipoTelefono]='Trabajo' OR [TipoTelefono]='Fijo' OR [TipoTelefono]='Celular'))
GO
ALTER TABLE [dbo].[TicketsSoporte]  WITH CHECK ADD CHECK  (([Prioridad]='Urgente' OR [Prioridad]='Alta' OR [Prioridad]='Media' OR [Prioridad]='Baja'))
GO
ALTER TABLE [dbo].[TransporteCercano]  WITH CHECK ADD CHECK  (([TipoTransporte]='Terminal' OR [TipoTransporte]='Alquiler de Carros' OR [TipoTransporte]='Estación de Tren' OR [TipoTransporte]='Taxi' OR [TipoTransporte]='Parada de Bus'))
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD CHECK  (([Genero]='O' OR [Genero]='F' OR [Genero]='M'))
GO
ALTER TABLE [dbo].[VerificacionesPropiedad]  WITH CHECK ADD CHECK  (([EstadoVerificacion]='Expirado' OR [EstadoVerificacion]='Rechazado' OR [EstadoVerificacion]='Pendiente' OR [EstadoVerificacion]='Verificado'))
GO
ALTER TABLE [dbo].[VerificacionesPropiedad]  WITH CHECK ADD CHECK  (([MetodoVerificacion]='Fotos georreferenciadas' OR [MetodoVerificacion]='Documentos' OR [MetodoVerificacion]='Video llamada' OR [MetodoVerificacion]='Visita presencial'))
GO
ALTER TABLE [dbo].[VerificacionesUsuario]  WITH CHECK ADD CHECK  (([TipoVerificacion]='RedSocial' OR [TipoVerificacion]='Correo' OR [TipoVerificacion]='Telefono' OR [TipoVerificacion]='Identificacion'))
GO
ALTER TABLE [dbo].[VideosPropiedad]  WITH CHECK ADD CHECK  (([TipoVideo]='Local' OR [TipoVideo]='Vimeo' OR [TipoVideo]='YouTube'))
GO
