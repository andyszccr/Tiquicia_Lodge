CREATE TABLE PropiedadComerciosCercanos (
    IdPropiedad     INT            NOT NULL,
    IdComercio      INT            NOT NULL,
    DistanciaKM     DECIMAL (5, 2) NOT NULL,
    TiempoCaminando INT            NULL,
    TiempoEnCarro   INT            NULL,
    PRIMARY KEY (IdPropiedad, IdComercio),
    FOREIGN KEY (IdComercio) REFERENCES ComerciosCercanos (IdComercio),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


