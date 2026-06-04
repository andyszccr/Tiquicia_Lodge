CREATE TABLE LugaresTuristicos (
    IdLugarTuristico     SERIAL NOT NULL,
    IdCategoria          INT               NOT NULL,
    NombreLugar          VARCHAR (200)     NOT NULL,
    Descripcion          VARCHAR (500)     NULL,
    UbicacionCoordenadas GEOGRAPHY(POINT, 4326) NULL,
    Direccion            VARCHAR (300)     NULL,
    IdDistrito           INT               NULL,
    DistanciaReferencia  VARCHAR (100)     NULL,
    HorarioAtencion      VARCHAR (200)     NULL,
    Telefono             VARCHAR (20)      NULL,
    SitioWeb             VARCHAR (200)     NULL,
    Activo               BOOLEAN               DEFAULT TRUE NULL,
    PRIMARY KEY (IdLugarTuristico),
    FOREIGN KEY (IdCategoria) REFERENCES CategoriaLugarTuristico (IdCategoria),
    FOREIGN KEY (IdDistrito) REFERENCES Distritos (IdDistrito)
);


