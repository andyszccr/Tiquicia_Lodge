CREATE TABLE PropiedadRequerimientos (
    IdPropiedad           INT             NOT NULL,
    IdRequerimiento       INT             NOT NULL,
    MontoDeposito         DECIMAL (18, 2) NULL,
    CondicionesEspeciales VARCHAR (300)   NULL,
    PRIMARY KEY (IdPropiedad, IdRequerimiento),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdRequerimiento) REFERENCES RequerimientosReserva (IdRequerimiento),
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



