CREATE TABLE ReglasCasa (
    IdRegla     SERIAL NOT NULL,
    NombreRegla VARCHAR (100) NOT NULL,
    Descripcion VARCHAR (300) NULL,
    Icono       VARCHAR (50)  NULL,
    PRIMARY KEY (IdRegla),
    UNIQUE (NombreRegla),
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



