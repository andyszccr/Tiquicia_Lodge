CREATE TABLE PropiedadLugaresCercanos (
    IdPropiedad      INT            NOT NULL,
    IdLugarTuristico INT            NOT NULL,
    DistanciaKM      DECIMAL (5, 2) NOT NULL,
    TiempoCaminando  INT            NULL,
    TiempoEnCarro    INT            NULL,
    EsLoMasCercano   BOOLEAN            DEFAULT FALSE NULL,
    PRIMARY KEY (IdPropiedad, IdLugarTuristico),
    FOREIGN KEY (IdLugarTuristico) REFERENCES LugaresTuristicos (IdLugarTuristico),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


