CREATE TABLE PropiedadServicios (
    IdPropiedad          INT           NOT NULL,
    IdServicio           INT           NOT NULL,
    DescripcionAdicional VARCHAR (200) NULL,
    IncluidoEnPrecio     BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdPropiedad, IdServicio),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdServicio) REFERENCES ServiciosPropiedad (IdServicio)
);


