CREATE TABLE PropiedadEquipamiento (
    IdPropiedad          INT           NOT NULL,
    IdEquipamiento       INT           NOT NULL,
    Cantidad             INT           DEFAULT 1 NULL,
    DescripcionAdicional VARCHAR (200) NULL,
    PRIMARY KEY (IdPropiedad, IdEquipamiento),
    FOREIGN KEY (IdEquipamiento) REFERENCES Equipamiento (IdEquipamiento),
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



