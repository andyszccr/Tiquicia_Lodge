CREATE TABLE DescuentosPropiedad (
    IdDescuento INT NOT NULL,
    IdPropiedad INT NOT NULL,
    PRIMARY KEY (IdDescuento, IdPropiedad),
    FOREIGN KEY (IdDescuento) REFERENCES Descuentos (IdDescuento),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


