CREATE TABLE Estados (
    IdEstado     SERIAL NOT NULL,
    NombreEstado VARCHAR (50) NOT NULL,
    TipoEntidad  VARCHAR (50) NULL,
    PRIMARY KEY (IdEstado),
    UNIQUE (NombreEstado)
);


