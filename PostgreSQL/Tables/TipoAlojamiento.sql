CREATE TABLE TipoAlojamiento (
    IdTipo      SERIAL NOT NULL,
    IdCategoria INT           NOT NULL,
    NombreTipo  VARCHAR (100) NOT NULL,
    Descripcion VARCHAR (300) NULL,
    Activo      BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdTipo),
    FOREIGN KEY (IdCategoria) REFERENCES CategoriaAlojamiento (IdCategoria)
);


