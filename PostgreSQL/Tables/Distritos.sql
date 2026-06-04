CREATE TABLE Distritos (
    IdDistrito     SERIAL NOT NULL,
    IdCanton       INT           NOT NULL,
    NombreDistrito VARCHAR (100) NOT NULL,
    CodigoPostal   VARCHAR (10)  NULL,
    Activo         BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdDistrito),
    FOREIGN KEY (IdCanton) REFERENCES Cantones (IdCanton)
);


