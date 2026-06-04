CREATE TABLE Monedas (
    IdMoneda     SERIAL NOT NULL,
    NombreMoneda VARCHAR (50) NOT NULL,
    CodigoISO    CHAR (3)     NOT NULL,
    Simbolo      CHAR (3)     NOT NULL,
    PRIMARY KEY (IdMoneda),
    UNIQUE (CodigoISO)
);


