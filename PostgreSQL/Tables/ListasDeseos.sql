CREATE TABLE ListasDeseos (
    IdLista       SERIAL NOT NULL,
    IdUsuario     INT           NOT NULL,
    NombreLista   VARCHAR (100) DEFAULT ('Mis favoritos') NULL,
    FechaCreacion TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    Privada       BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdLista),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


