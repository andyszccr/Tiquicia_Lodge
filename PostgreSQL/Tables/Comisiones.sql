CREATE TABLE Comisiones (
    IdComision         SERIAL NOT NULL,
    IdReserva          INT             NOT NULL,
    IdProveedor        INT             NOT NULL,
    PorcentajeAplicado DECIMAL (5, 2)  NOT NULL,
    MontoComision      DECIMAL (18, 2) NOT NULL,
    FechaCalculo       TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    Pagada             BOOLEAN             DEFAULT FALSE NULL,
    FechaPago          TIMESTAMP        NULL,
    PRIMARY KEY (IdComision),
    FOREIGN KEY (IdProveedor) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    UNIQUE (IdReserva)
);


