CREATE TABLE PropiedadReglas (
    IdPropiedad       INT           NOT NULL,
    IdRegla           INT           NOT NULL,
    EsAplicable       BOOLEAN           DEFAULT TRUE NULL,
    DetalleEspecifico VARCHAR (200) NULL,
    PRIMARY KEY (IdPropiedad, IdRegla),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdRegla) REFERENCES ReglasCasa (IdRegla)
);


