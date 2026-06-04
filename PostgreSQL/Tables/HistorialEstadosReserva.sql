CREATE TABLE HistorialEstadosReserva (
    IdHistorial      SERIAL NOT NULL,
    IdReserva        INT           NOT NULL,
    IdEstadoAnterior INT           NULL,
    IdEstadoNuevo    INT           NOT NULL,
    FechaCambio      TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    UsuarioCambio    INT           NULL,
    MotivoCambio     VARCHAR (200) NULL,
    PRIMARY KEY (IdHistorial),
    FOREIGN KEY (IdEstadoAnterior) REFERENCES Estados (IdEstado),
    FOREIGN KEY (IdEstadoNuevo) REFERENCES Estados (IdEstado),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    FOREIGN KEY (UsuarioCambio) REFERENCES Usuarios (IdUsuario)
);


