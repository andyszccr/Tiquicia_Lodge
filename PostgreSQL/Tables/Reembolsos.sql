CREATE TABLE Reembolsos (
    IdReembolso    SERIAL NOT NULL,
    IdPago         INT             NOT NULL,
    Monto          DECIMAL (18, 2) NOT NULL,
    FechaReembolso TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    Motivo         VARCHAR (300)   NOT NULL,
    AprobadoPor    INT             NOT NULL,
    PRIMARY KEY (IdReembolso),
    FOREIGN KEY (AprobadoPor) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdPago) REFERENCES Pagos (IdPago)
);


