CREATE TABLE PromocionesPropiedad (
    IdPromocion INT NOT NULL,
    IdPropiedad INT NOT NULL,
    PRIMARY KEY (IdPromocion, IdPropiedad),
    FOREIGN KEY (IdPromocion) REFERENCES Promociones (IdPromocion),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


