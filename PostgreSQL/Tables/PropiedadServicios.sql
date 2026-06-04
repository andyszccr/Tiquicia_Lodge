CREATE TABLE PropiedadServicios (
    IdPropiedad          INT           NOT NULL,
    IdServicio           INT           NOT NULL,
    DescripcionAdicional VARCHAR (200) NULL,
    IncluidoEnPrecio     BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdPropiedad, IdServicio),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdServicio) REFERENCES ServiciosPropiedad (IdServicio),
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



