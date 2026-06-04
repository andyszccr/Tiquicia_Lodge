CREATE TABLE PagosComisiones (
    IdPagoComision SERIAL NOT NULL,
    IdProveedor    INT             NOT NULL,
    PeriodoInicio  DATE            NOT NULL,
    PeriodoFin     DATE            NOT NULL,
    MontoTotal     DECIMAL (18, 2) NOT NULL,
    FechaPago      TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    MetodoPago     VARCHAR (30)    NOT NULL,
    ComprobanteURL VARCHAR (500)   NULL,
    PRIMARY KEY (IdPagoComision),
    FOREIGN KEY (IdProveedor) REFERENCES Usuarios (IdUsuario)
);


