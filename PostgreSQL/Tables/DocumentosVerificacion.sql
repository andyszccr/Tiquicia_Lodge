CREATE TABLE DocumentosVerificacion (
    IdDocumentoVerificacion SERIAL NOT NULL,
    IdVerificacion          INT           NOT NULL,
    TipoDocumento           VARCHAR (50)  NOT NULL,
    NombreArchivo           VARCHAR (200) NOT NULL,
    UrlArchivo              VARCHAR (500) NOT NULL,
    FechaSubida             TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    PRIMARY KEY (IdDocumentoVerificacion),
    FOREIGN KEY (IdVerificacion) REFERENCES VerificacionesPropiedad (IdVerificacion),
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



