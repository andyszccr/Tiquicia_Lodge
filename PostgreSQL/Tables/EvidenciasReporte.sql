CREATE TABLE EvidenciasReporte (
    IdEvidencia   SERIAL NOT NULL,
    IdReporte     INT           NOT NULL,
    TipoEvidencia VARCHAR (30)  NULL,
    UrlArchivo    VARCHAR (500) NOT NULL,
    Descripcion   VARCHAR (200) NULL,
    FechaSubida   TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    PRIMARY KEY (IdEvidencia),
    CHECK (TipoEvidencia='Documento' OR TipoEvidencia='Captura' OR TipoEvidencia='Foto'),
    FOREIGN KEY (IdReporte) REFERENCES Reportes (IdReporte)
);


