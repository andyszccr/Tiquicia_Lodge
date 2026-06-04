CREATE TABLE Distritos (
    IdDistrito     SERIAL NOT NULL,
    IdCanton       INT           NOT NULL,
    NombreDistrito VARCHAR (100) NOT NULL,
    CodigoPostal   VARCHAR (10)  NULL,
    Activo         BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdDistrito),
    FOREIGN KEY (IdCanton) REFERENCES Cantones (IdCanton),
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



