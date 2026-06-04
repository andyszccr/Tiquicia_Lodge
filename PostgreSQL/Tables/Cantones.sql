CREATE TABLE Cantones (
    IdCanton     SERIAL NOT NULL,
    IdProvincia  INT           NOT NULL,
    NombreCanton VARCHAR (100) NOT NULL,
    Activo       BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdCanton),
    FOREIGN KEY (IdProvincia) REFERENCES Provincias (IdProvincia)
);


