CREATE TABLE ZonasTicas (
    IdZona      SERIAL NOT NULL,
    NombreZona  VARCHAR (100) NOT NULL,
    Descripcion VARCHAR (255) NULL,
    Activo      BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdZona)
);


