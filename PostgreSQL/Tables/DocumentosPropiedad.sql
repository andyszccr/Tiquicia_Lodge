CREATE TABLE DocumentosPropiedad (
    IdDocumento       SERIAL NOT NULL,
    IdPropiedad       INT           NOT NULL,
    TipoDocumento     VARCHAR (50)  NOT NULL,
    NombreArchivo     VARCHAR (200) NOT NULL,
    UrlArchivo        VARCHAR (500) NOT NULL,
    FechaSubida       TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    Verificado        BOOLEAN           DEFAULT FALSE NULL,
    FechaVerificacion TIMESTAMP      NULL,
    PRIMARY KEY (IdDocumento),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


