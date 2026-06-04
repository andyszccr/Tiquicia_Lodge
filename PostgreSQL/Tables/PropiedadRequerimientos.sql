CREATE TABLE PropiedadRequerimientos (
    IdPropiedad           INT             NOT NULL,
    IdRequerimiento       INT             NOT NULL,
    MontoDeposito         DECIMAL (18, 2) NULL,
    CondicionesEspeciales VARCHAR (300)   NULL,
    PRIMARY KEY (IdPropiedad, IdRequerimiento),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdRequerimiento) REFERENCES RequerimientosReserva (IdRequerimiento)
);


