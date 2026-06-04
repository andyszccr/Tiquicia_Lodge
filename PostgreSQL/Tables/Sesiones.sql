CREATE TABLE Sesiones (
    IdSesion        SERIAL NOT NULL,
    IdUsuario       INT           NOT NULL,
    Token           VARCHAR (500) NOT NULL,
    FechaInicio     TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    FechaExpiracion TIMESTAMP      NOT NULL,
    IPAddress       VARCHAR (45)  NULL,
    UserAgent       VARCHAR (500) NULL,
    Activa          BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdSesion),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario),
    UNIQUE (Token),
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



