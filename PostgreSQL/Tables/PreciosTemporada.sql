CREATE TABLE PreciosTemporada (
    IdPropiedad         INT             NOT NULL,
    IdTemporada         INT             NOT NULL,
    PrecioPersonalizado DECIMAL (18, 2) NULL,
    Activo              BOOLEAN             DEFAULT TRUE NULL,
    PRIMARY KEY (IdPropiedad, IdTemporada),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdTemporada) REFERENCES Temporadas (IdTemporada)
);


