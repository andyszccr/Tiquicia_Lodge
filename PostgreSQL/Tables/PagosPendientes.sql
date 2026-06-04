CREATE TABLE PagosPendientes (
    IdPendiente           SERIAL NOT NULL,
    IdReserva             INT             NOT NULL,
    MontoPendiente        DECIMAL (18, 2) NOT NULL,
    FechaLimite           DATE            NOT NULL,
    RecordatoriosEnviados INT             DEFAULT 0 NULL,
    UltimoRecordatorio    TIMESTAMP        NULL,
    PRIMARY KEY (IdPendiente),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva)
);


