CREATE TABLE PoliticasCancelacion (
    IdPolitica          SERIAL NOT NULL,
    NombrePolitica      VARCHAR (50)   NOT NULL,
    Descripcion         VARCHAR (300)  NULL,
    ReembolsoPorcentaje DECIMAL (5, 2) NOT NULL,
    DiasAntelacion      INT            NULL,
    Activo              BOOLEAN            DEFAULT TRUE NULL,
    PRIMARY KEY (IdPolitica),
    UNIQUE (NombrePolitica)
);


