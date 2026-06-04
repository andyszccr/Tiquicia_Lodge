CREATE TABLE CalificacionesPropiedad (
    IdCalificacion SERIAL NOT NULL,
    IdReserva      INT           NOT NULL,
    IdCliente      INT           NOT NULL,
    IdPropiedad    INT           NOT NULL,
    Calificacion   INT           NOT NULL,
    Comentario     VARCHAR (500) NULL,
    Fecha          TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    Visible        BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdCalificacion),
    CHECK (Calificacion>=(1) AND Calificacion<=(5)),
    FOREIGN KEY (IdCliente) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    UNIQUE (IdReserva)
);


