CREATE TABLE Temporadas (
    IdTemporada         SERIAL NOT NULL,
    NombreTemporada     VARCHAR (50)   NOT NULL,
    Descripcion         VARCHAR (200)  NULL,
    FechaInicio         DATE           NOT NULL,
    FechaFin            DATE           NOT NULL,
    FactorMultiplicador DECIMAL (3, 2) DEFAULT ((1.0)) NULL,
    Activo              BOOLEAN            DEFAULT TRUE NULL,
    PRIMARY KEY (IdTemporada)
);


