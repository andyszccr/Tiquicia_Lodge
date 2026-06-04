CREATE TABLE GananciasProveedor (
    IdGanancia     SERIAL NOT NULL,
    IdPagoComision INT             NOT NULL,
    IdReserva      INT             NOT NULL,
    MontoProveedor DECIMAL (18, 2) NOT NULL,
    PRIMARY KEY (IdGanancia),
    FOREIGN KEY (IdPagoComision) REFERENCES PagosComisiones (IdPagoComision),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva)
);


