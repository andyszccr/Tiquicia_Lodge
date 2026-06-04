CREATE TABLE DocumentosVerificacion (
    IdDocumentoVerificacion SERIAL NOT NULL,
    IdVerificacion          INT           NOT NULL,
    TipoDocumento           VARCHAR (50)  NOT NULL,
    NombreArchivo           VARCHAR (200) NOT NULL,
    UrlArchivo              VARCHAR (500) NOT NULL,
    FechaSubida             TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    PRIMARY KEY (IdDocumentoVerificacion),
    FOREIGN KEY (IdVerificacion) REFERENCES VerificacionesPropiedad (IdVerificacion)
);


