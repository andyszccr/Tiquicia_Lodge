CREATE TABLE Notificaciones (
    IdNotificacion   SERIAL NOT NULL,
    IdUsuario        INT           NOT NULL,
    TipoNotificacion VARCHAR (50)  NOT NULL,
    Titulo           VARCHAR (200) NOT NULL,
    Mensaje          VARCHAR (500) NOT NULL,
    Leida            BOOLEAN           DEFAULT FALSE NULL,
    FechaEnvio       TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    FechaLectura     TIMESTAMP      NULL,
    PRIMARY KEY (IdNotificacion),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario),
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



