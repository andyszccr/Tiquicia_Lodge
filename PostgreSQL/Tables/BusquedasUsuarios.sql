CREATE TABLE BusquedasUsuarios (
    IdBusqueda       SERIAL NOT NULL,
    IdUsuario        INT           NULL,
    TerminosBusqueda VARCHAR (500) NULL,
    FiltrosAplicados VARCHAR (500) NULL,
    FechaBusqueda    TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    ResultadosCount  INT           NULL,
    PRIMARY KEY (IdBusqueda),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


