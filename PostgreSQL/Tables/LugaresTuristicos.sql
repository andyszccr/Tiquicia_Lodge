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
    FOREIGN KEY (IdDistrito) REFERENCES Distritos (IdDistrito),
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



