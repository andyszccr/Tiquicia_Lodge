CREATE TABLE NewsletterSuscriptores (
    IdSuscriptor     SERIAL NOT NULL,
    Correo           VARCHAR (100) NOT NULL,
    Nombre           VARCHAR (100) NULL,
    FechaSuscripcion TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    Activo           BOOLEAN           DEFAULT TRUE NULL,
    TokenCancelacion VARCHAR (100) NULL,
    PRIMARY KEY (IdSuscriptor),
    UNIQUE (Correo),
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



