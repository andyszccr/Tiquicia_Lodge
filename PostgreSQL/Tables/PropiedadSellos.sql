CREATE TABLE PropiedadSellos (
    IdPropiedad     INT      NOT NULL,
    IdSello         INT      NOT NULL,
    FechaOtorgado   TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,
    FechaExpiracion DATE     NULL,
    PRIMARY KEY (IdPropiedad, IdSello),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdSello) REFERENCES SellosConfianza (IdSello),
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



