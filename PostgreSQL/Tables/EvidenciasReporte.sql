CREATE TABLE EvidenciasReporte (
    IdEvidencia   SERIAL NOT NULL,
    IdReporte     INT           NOT NULL,
    TipoEvidencia VARCHAR (30)  NULL,
    UrlArchivo    VARCHAR (500) NOT NULL,
    Descripcion   VARCHAR (200) NULL,
    FechaSubida   TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    PRIMARY KEY (IdEvidencia),
    CHECK (TipoEvidencia='Documento' OR TipoEvidencia='Captura' OR TipoEvidencia='Foto'),
    FOREIGN KEY (IdReporte) REFERENCES Reportes (IdReporte),
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



