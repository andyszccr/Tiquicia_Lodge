CREATE TABLE PropiedadPoliticasCancelacion (
    IdPropiedad INT NOT NULL,
    IdPolitica  INT NOT NULL,
    PRIMARY KEY (IdPropiedad, IdPolitica),
    FOREIGN KEY (IdPolitica) REFERENCES PoliticasCancelacion (IdPolitica),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


