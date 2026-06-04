CREATE TABLE PropiedadReglas (
    IdPropiedad       INT           NOT NULL,
    IdRegla           INT           NOT NULL,
    EsAplicable       BOOLEAN           DEFAULT TRUE NULL,
    DetalleEspecifico VARCHAR (200) NULL,
    PRIMARY KEY (IdPropiedad, IdRegla),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdRegla) REFERENCES ReglasCasa (IdRegla),
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



