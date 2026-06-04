CREATE TABLE VideosPropiedad (
    IdVideo     SERIAL NOT NULL,
    IdPropiedad INT           NOT NULL,
    UrlVideo    VARCHAR (500) NOT NULL,
    TipoVideo   VARCHAR (20)  NULL,
    Titulo      VARCHAR (200) NULL,
    Descripcion VARCHAR (300) NULL,
    Orden       INT           DEFAULT 0 NULL,
    Activo      BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdVideo),
    CHECK (TipoVideo='Local' OR TipoVideo='Vimeo' OR TipoVideo='YouTube'),
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



