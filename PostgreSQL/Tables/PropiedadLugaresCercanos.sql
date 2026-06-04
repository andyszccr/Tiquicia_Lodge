CREATE TABLE PropiedadLugaresCercanos (
    IdPropiedad      INT            NOT NULL,
    IdLugarTuristico INT            NOT NULL,
    DistanciaKM      DECIMAL (5, 2) NOT NULL,
    TiempoCaminando  INT            NULL,
    TiempoEnCarro    INT            NULL,
    EsLoMasCercano   BOOLEAN            DEFAULT FALSE NULL,
    PRIMARY KEY (IdPropiedad, IdLugarTuristico),
    FOREIGN KEY (IdLugarTuristico) REFERENCES LugaresTuristicos (IdLugarTuristico),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);



