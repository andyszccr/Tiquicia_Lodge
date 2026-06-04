CREATE TABLE CategoriaLugarTuristico (
    IdCategoria     SERIAL NOT NULL,
    NombreCategoria VARCHAR (50)  NOT NULL,
    Icono           VARCHAR (50)  NULL,
    Descripcion     VARCHAR (200) NULL,
    PRIMARY KEY (IdCategoria),
    UNIQUE (NombreCategoria),
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



