CREATE TABLE ReglasCasa (
    IdRegla     SERIAL NOT NULL,
    NombreRegla VARCHAR (100) NOT NULL,
    Descripcion VARCHAR (300) NULL,
    Icono       VARCHAR (50)  NULL,
    PRIMARY KEY (IdRegla),
    UNIQUE (NombreRegla)
);


