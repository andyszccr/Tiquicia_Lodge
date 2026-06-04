CREATE TABLE ServiciosPropiedad (
    IdServicio     SERIAL NOT NULL,
    IdCategoria    INT           NOT NULL,
    NombreServicio VARCHAR (100) NOT NULL,
    Descripcion    VARCHAR (200) NULL,
    Icono          VARCHAR (50)  NULL,
    Activo         BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdServicio),
    FOREIGN KEY (IdCategoria) REFERENCES CategoriaServicio (IdCategoria)
);


