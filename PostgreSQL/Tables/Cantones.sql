CREATE TABLE Cantones (
    IdCanton     SERIAL NOT NULL,
    IdProvincia  INT           NOT NULL,
    NombreCanton VARCHAR (100) NOT NULL,
    Activo       BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdCanton),
    FOREIGN KEY (IdProvincia) REFERENCES Provincias (IdProvincia),
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



