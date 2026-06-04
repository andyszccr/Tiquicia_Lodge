CREATE TABLE CalificacionesCliente (
    IdCalificacion SERIAL NOT NULL,
    IdReserva      INT           NOT NULL,
    IdProveedor    INT           NOT NULL,
    IdCliente      INT           NOT NULL,
    Calificacion   INT           NOT NULL,
    Comentario     VARCHAR (500) NULL,
    Fecha          TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    PRIMARY KEY (IdCalificacion),
    CHECK (Calificacion>=(1) AND Calificacion<=(5)),
    FOREIGN KEY (IdCliente) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdProveedor) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    UNIQUE (IdReserva)
);


