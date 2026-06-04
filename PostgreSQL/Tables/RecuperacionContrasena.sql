CREATE TABLE RecuperacionContrasena (
    IdSolicitud     SERIAL NOT NULL,
    IdUsuario       INT           NOT NULL,
    Token           VARCHAR (255) NOT NULL,
    FechaSolicitud  TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    FechaExpiracion TIMESTAMP      NOT NULL,
    Usada           BOOLEAN           DEFAULT FALSE NULL,
    PRIMARY KEY (IdSolicitud),
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



