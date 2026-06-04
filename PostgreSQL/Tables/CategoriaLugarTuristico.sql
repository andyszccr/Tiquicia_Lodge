CREATE TABLE CategoriaLugarTuristico (
    IdCategoria     SERIAL NOT NULL,
    NombreCategoria VARCHAR (50)  NOT NULL,
    Icono           VARCHAR (50)  NULL,
    Descripcion     VARCHAR (200) NULL,
    PRIMARY KEY (IdCategoria),
    UNIQUE (NombreCategoria)
);


