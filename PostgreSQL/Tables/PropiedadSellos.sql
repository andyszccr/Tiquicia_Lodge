CREATE TABLE PropiedadSellos (
    IdPropiedad     INT      NOT NULL,
    IdSello         INT      NOT NULL,
    FechaOtorgado   TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,
    FechaExpiracion DATE     NULL,
    PRIMARY KEY (IdPropiedad, IdSello),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdSello) REFERENCES SellosConfianza (IdSello)
);


