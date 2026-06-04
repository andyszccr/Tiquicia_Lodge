CREATE TABLE LogsErrores (
    IdError      SERIAL NOT NULL,
    Fecha        TIMESTAMP       DEFAULT CURRENT_TIMESTAMP NULL,
    Usuario      INT            NULL,
    Modulo       VARCHAR (100)  NULL,
    ErrorMensaje VARCHAR (1000) NOT NULL,
    ErrorDetalle TEXT           NULL,
    IPAddress    VARCHAR (45)   NULL,
    Resuelto     BOOLEAN            DEFAULT FALSE NULL,
    PRIMARY KEY (IdError),
    FOREIGN KEY (Usuario) REFERENCES Usuarios (IdUsuario),
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



