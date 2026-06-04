CREATE TABLE Pagos (
    IdPago            SERIAL NOT NULL,
    IdReserva         INT             NOT NULL,
    Monto_CRC         DECIMAL (18, 2) NOT NULL,
    MontoUSD          DECIMAL (18, 2) NULL,
    FechaPago         TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    MetodoPago        VARCHAR (30)    NOT NULL,
    EstadoPago        VARCHAR (20)    NULL,
    ComprobanteURL    VARCHAR (500)   NULL,
    TelefonoSINPE     VARCHAR (20)    NULL,
    ReferenciaBanco   VARCHAR (100)   NULL,
    IdUsuarioRegistra INT             NOT NULL,
    PRIMARY KEY (IdPago),
    CHECK (EstadoPago='Reembolsado' OR EstadoPago='Fallido' OR EstadoPago='Completado' OR EstadoPago='Pendiente'),
    CHECK (MetodoPago='PayPal' OR MetodoPago='Transferencia' OR MetodoPago='Efectivo' OR MetodoPago='Tarjeta' OR MetodoPago='SINPE Movil'),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    FOREIGN KEY (IdUsuarioRegistra) REFERENCES Usuarios (IdUsuario)
);


