CREATE TABLE Provincias (
    IdProvincia     SERIAL NOT NULL,
    NombreProvincia VARCHAR (50) NOT NULL,
    Activo          BOOLEAN          DEFAULT TRUE NULL,
    PRIMARY KEY (IdProvincia),
    UNIQUE (NombreProvincia)
);


