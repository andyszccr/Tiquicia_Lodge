CREATE TABLE CategoriaExperiencia (
    IdCategoria     SERIAL NOT NULL,
    NombreCategoria VARCHAR (50)  NOT NULL,
    Descripcion     VARCHAR (200) NULL,
    Icono           VARCHAR (50)  NULL,
    PRIMARY KEY (IdCategoria),
    UNIQUE (NombreCategoria)
);


