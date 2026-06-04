CREATE TABLE CategoriaAlojamiento (
    IdCategoria     SERIAL NOT NULL,
    NombreCategoria VARCHAR (50)  NOT NULL,
    Descripcion     VARCHAR (200) NULL,
    Icono           VARCHAR (50)  NULL,
    Activo          BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdCategoria),
    UNIQUE (NombreCategoria)
);


