CREATE TABLE FotosPropiedad (
    IdFoto      SERIAL NOT NULL,
    IdPropiedad INT           NOT NULL,
    UrlFoto     VARCHAR (500) NOT NULL,
    Titulo      VARCHAR (200) NULL,
    Descripcion VARCHAR (300) NULL,
    Orden       INT           DEFAULT 0 NULL,
    EsPrincipal BOOLEAN           DEFAULT FALSE NULL,
    FechaSubida TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    Activo      BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdFoto),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
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



