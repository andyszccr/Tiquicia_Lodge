CREATE TABLE PropiedadTransporteCercano (
    IdPropiedad     INT            NOT NULL,
    IdTransporte    INT            NOT NULL,
    DistanciaKM     DECIMAL (5, 2) NOT NULL,
    TiempoCaminando INT            NULL,
    PRIMARY KEY (IdPropiedad, IdTransporte),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdTransporte) REFERENCES TransporteCercano (IdTransporte)
);


