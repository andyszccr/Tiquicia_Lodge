CREATE TABLE HistorialPrecios (
    IdHistorial    SERIAL NOT NULL,
    IdPropiedad    INT             NOT NULL,
    PrecioAnterior DECIMAL (18, 2) NOT NULL,
    PrecioNuevo    DECIMAL (18, 2) NOT NULL,
    FechaCambio    TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    MotivoCambio   VARCHAR (100)   NULL,
    PRIMARY KEY (IdHistorial),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


