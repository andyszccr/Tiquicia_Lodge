CREATE TABLE Facturas (
    IdFactura     SERIAL NOT NULL,
    IdReserva     INT             NOT NULL,
    NumeroFactura VARCHAR (50)    NOT NULL,
    FechaEmision  TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    MontoTotal    DECIMAL (18, 2) NOT NULL,
    PdfURL        VARCHAR (500)   NULL,
    Enviada       BOOLEAN             DEFAULT FALSE NULL,
    PRIMARY KEY (IdFactura),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    UNIQUE (NumeroFactura)
);


