-- Migración de Tiquicia Lodge a PostgreSQL
-- Fecha: 2026-06-03

-- Extensiones necesarias
CREATE EXTENSION IF NOT EXISTS postgis;

-- 1. Tablas Maestras (Sin dependencias)
CREATE TABLE Roles (
    IdRol SERIAL PRIMARY KEY,
    NombreRol VARCHAR(50) NOT NULL UNIQUE,
    Descripcion VARCHAR(200) NULL
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

CREATE TABLE Estados (
    IdEstado SERIAL PRIMARY KEY,
    NombreEstado VARCHAR(50) NOT NULL UNIQUE,
    TipoEntidad VARCHAR(50) NULL
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

CREATE TABLE Nacionalidades (
    IdNacionalidad SERIAL PRIMARY KEY,
    Nacionalidad VARCHAR(100) NOT NULL,
    CodigoISO CHAR(2) NULL,
    Activo BOOLEAN DEFAULT TRUE
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

CREATE TABLE Monedas (
    IdMoneda SERIAL PRIMARY KEY,
    NombreMoneda VARCHAR(50) NOT NULL,
    CodigoISO CHAR(3) NOT NULL UNIQUE,
    Simbolo CHAR(3) NOT NULL
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

CREATE TABLE ZonasTicas (
    IdZona SERIAL PRIMARY KEY,
    NombreZona VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(255) NULL,
    Activo BOOLEAN DEFAULT TRUE
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

CREATE TABLE Provincias (
    IdProvincia SERIAL PRIMARY KEY,
    NombreProvincia VARCHAR(50) NOT NULL UNIQUE,
    Activo BOOLEAN DEFAULT TRUE
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

CREATE TABLE CategoriaAlojamiento (
    IdCategoria SERIAL PRIMARY KEY,
    NombreCategoria VARCHAR(50) NOT NULL UNIQUE,
    Descripcion VARCHAR(200) NULL,
    Icono VARCHAR(50) NULL,
    Activo BOOLEAN DEFAULT TRUE
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

-- 2. Tablas con dependencias de nivel 1
CREATE TABLE Cantones (
    IdCanton SERIAL PRIMARY KEY,
    IdProvincia INT NOT NULL REFERENCES Provincias(IdProvincia),
    NombreCanton VARCHAR(100) NOT NULL,
    Activo BOOLEAN DEFAULT TRUE
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

CREATE TABLE TipoAlojamiento (
    IdTipo SERIAL PRIMARY KEY,
    IdCategoria INT NOT NULL REFERENCES CategoriaAlojamiento(IdCategoria),
    NombreTipo VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(300) NULL,
    Activo BOOLEAN DEFAULT TRUE
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

-- 3. Tablas con dependencias de nivel 2
CREATE TABLE Distritos (
    IdDistrito SERIAL PRIMARY KEY,
    IdCanton INT NOT NULL REFERENCES Cantones(IdCanton),
    NombreDistrito VARCHAR(100) NOT NULL,
    CodigoPostal VARCHAR(10) NULL,
    Activo BOOLEAN DEFAULT TRUE
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

-- 4. Tabla de Usuarios (Depende de Nacionalidad, Distrito, Rol, Estado)
CREATE TABLE Usuarios (
    IdUsuario SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    PrimerApellido VARCHAR(100) NOT NULL,
    SegundoApellido VARCHAR(100) NULL,
    Correo VARCHAR(100) NOT NULL UNIQUE,
    Contrasena VARCHAR(255) NOT NULL,
    IdNacionalidad INT NOT NULL REFERENCES Nacionalidades(IdNacionalidad),
    Direccion VARCHAR(300) NOT NULL,
    IdDistrito INT NULL REFERENCES Distritos(IdDistrito),
    FechaNacimiento DATE NULL,
    Genero CHAR(1) CHECK (Genero IN ('O', 'F', 'M')),
    IdRol INT NOT NULL REFERENCES Roles(IdRol),
    IdEstado INT NOT NULL REFERENCES Estados(IdEstado),
    FechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UltimoAcceso TIMESTAMP NULL,
    EmailConfirmado BOOLEAN DEFAULT FALSE,
    TelefonoConfirmado BOOLEAN DEFAULT FALSE,
    FotoPerfil VARCHAR(500) NULL,
    NotasInternas VARCHAR(500) NULL
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

-- 5. Tabla de Propiedades (Depende de Usuario, Tipo, Zona, Distrito, Estado, Moneda)
CREATE TABLE Propiedades (
    IdPropiedad SERIAL PRIMARY KEY,
    IdProveedor INT NOT NULL REFERENCES Usuarios(IdUsuario),
    IdTipoAlojamiento INT NOT NULL REFERENCES TipoAlojamiento(IdTipo),
    IdZona INT NOT NULL REFERENCES ZonasTicas(IdZona),
    IdDistrito INT NULL REFERENCES Distritos(IdDistrito),
    NombrePropiedad VARCHAR(250) NOT NULL,
    TituloPromocional VARCHAR(200) NULL,
    DescripcionLarga TEXT NOT NULL,
    DescripcionCorta VARCHAR(300) NULL,
    UbicacionDetallada VARCHAR(300) NOT NULL,
    Coordenadas GEOGRAPHY(POINT, 4326) NULL,
    CantidadHabitaciones INT NOT NULL CHECK (CantidadHabitaciones > 0),
    CantidadCamas INT NOT NULL CHECK (CantidadCamas > 0),
    CapacidadMaxima INT NOT NULL CHECK (CapacidadMaxima > 0),
    CantidadBanios INT NOT NULL DEFAULT 1,
    AreaMetrosCuadrados INT NULL,
    MontoXNoche DECIMAL(18, 2) NOT NULL CHECK (MontoXNoche > 0),
    Moneda INT NOT NULL DEFAULT 1 REFERENCES Monedas(IdMoneda),
    DepositoGarantia DECIMAL(18, 2) NULL,
    IdEstado INT NOT NULL REFERENCES Estados(IdEstado),
    Verificado BOOLEAN DEFAULT FALSE,
    FechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FechaActualizacion TIMESTAMP NULL,
    VecesVisto INT DEFAULT 0,
    RatingPromedio DECIMAL(3, 2) DEFAULT 0,
    TotalResenas INT DEFAULT 0
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

-- 6. Tabla de Reservas (Depende de Usuario, Propiedad, Estado)
CREATE TABLE Reservas (
    IdReserva SERIAL PRIMARY KEY,
    IdCliente INT NOT NULL REFERENCES Usuarios(IdUsuario),
    IdPropiedad INT NOT NULL REFERENCES Propiedades(IdPropiedad),
    FechaEntrada DATE NOT NULL,
    FechaSalida DATE NOT NULL,
    CantidadPersonas INT NOT NULL CHECK (CantidadPersonas > 0),
    CantidadNoches INT NOT NULL,
    PrecioPorNoche DECIMAL(18, 2) NOT NULL,
    Subtotal DECIMAL(18, 2) NOT NULL,
    DescuentoAplicado DECIMAL(18, 2) DEFAULT 0,
    Comision DECIMAL(18, 2) NOT NULL,
    Total DECIMAL(18, 2) NOT NULL,
    IdEstado INT NOT NULL REFERENCES Estados(IdEstado),
    FechaReserva TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    NotasCliente VARCHAR(500) NULL,
    NotasInternas VARCHAR(500) NULL
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

-- 7. Tablas de Operaciones Financieras (Dependen de Reservas y Usuarios)
CREATE TABLE Facturas (
    IdFactura SERIAL PRIMARY KEY,
    IdReserva INT NOT NULL REFERENCES Reservas(IdReserva),
    NumeroFactura VARCHAR(50) NOT NULL UNIQUE,
    FechaEmision TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    MontoTotal DECIMAL(18, 2) NOT NULL,
    PdfURL VARCHAR(500) NULL,
    Enviada BOOLEAN DEFAULT FALSE
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

CREATE TABLE Pagos (
    IdPago SERIAL PRIMARY KEY,
    IdReserva INT NOT NULL REFERENCES Reservas(IdReserva),
    Monto_CRC DECIMAL(18, 2) NOT NULL,
    MontoUSD DECIMAL(18, 2) NULL,
    FechaPago TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    MetodoPago VARCHAR(30) NOT NULL CHECK (MetodoPago IN ('PayPal', 'Transferencia', 'Efectivo', 'Tarjeta', 'SINPE Movil')),
    EstadoPago VARCHAR(20) CHECK (EstadoPago IN ('Reembolsado', 'Fallido', 'Completado', 'Pendiente')),
    ComprobanteURL VARCHAR(500) NULL,
    TelefonoSINPE VARCHAR(20) NULL,
    ReferenciaBanco VARCHAR(100) NULL,
    IdUsuarioRegistra INT NOT NULL REFERENCES Usuarios(IdUsuario)
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

-- 8. Auditoría y Sistema (Dependen de Usuarios)
CREATE TABLE BitacoraAcciones (
    IdBitacora SERIAL PRIMARY KEY,
    IdUsuario INT NULL REFERENCES Usuarios(IdUsuario),
    Accion VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(500) NULL,
    IPAddress VARCHAR(45) NULL,
    Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TablaAfectada VARCHAR(100) NULL,
    RegistroAfectado INT NULL
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

CREATE TABLE LogsErrores (
    IdError SERIAL PRIMARY KEY,
    Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Usuario INT NULL REFERENCES Usuarios(IdUsuario),
    Modulo VARCHAR(100) NULL,
    ErrorMensaje VARCHAR(1000) NOT NULL,
    ErrorDetalle TEXT NULL,
    IPAddress VARCHAR(45) NULL,
    Resuelto BOOLEAN DEFAULT FALSE
,
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);

