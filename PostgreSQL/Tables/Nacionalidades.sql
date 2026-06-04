CREATE TABLE Nacionalidades (
    IdNacionalidad SERIAL NOT NULL,
    Nacionalidad   VARCHAR (100) NOT NULL,
    CodigoISO      CHAR (2)      NULL,
    Activo         BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdNacionalidad)
);


