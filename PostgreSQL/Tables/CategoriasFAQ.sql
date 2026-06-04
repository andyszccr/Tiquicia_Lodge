CREATE TABLE CategoriasFAQ (
    IdCategoriaFAQ  SERIAL NOT NULL,
    NombreCategoria VARCHAR (50)  NOT NULL,
    Descripcion     VARCHAR (200) NULL,
    Orden           INT           DEFAULT 0 NULL,
    Activo          BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdCategoriaFAQ),
    UNIQUE (NombreCategoria)
);


