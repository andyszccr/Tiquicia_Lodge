CREATE TABLE ListaPropiedades (
    IdLista       INT      NOT NULL,
    IdPropiedad   INT      NOT NULL,
    FechaAgregado TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,
    PRIMARY KEY (IdLista, IdPropiedad),
    FOREIGN KEY (IdLista) REFERENCES ListasDeseos (IdLista),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


