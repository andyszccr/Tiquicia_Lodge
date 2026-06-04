CREATE TABLE VistasPropiedad (
    IdVista         SERIAL NOT NULL,
    IdPropiedad     INT          NOT NULL,
    IdUsuario       INT          NULL,
    FechaVista      TIMESTAMP     DEFAULT CURRENT_TIMESTAMP NULL,
    IPAddress       VARCHAR (45) NULL,
    TipoDispositivo VARCHAR (20) NULL,
    PRIMARY KEY (IdVista),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario),
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



