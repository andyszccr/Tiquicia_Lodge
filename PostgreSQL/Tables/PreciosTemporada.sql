CREATE TABLE PreciosTemporada (
    IdPropiedad         INT             NOT NULL,
    IdTemporada         INT             NOT NULL,
    PrecioPersonalizado DECIMAL (18, 2) NULL,
    Activo              BOOLEAN             DEFAULT TRUE NULL,
    PRIMARY KEY (IdPropiedad, IdTemporada),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdTemporada) REFERENCES Temporadas (IdTemporada),
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



