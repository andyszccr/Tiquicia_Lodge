CREATE TABLE HistorialPrecios (
    IdHistorial    SERIAL NOT NULL,
    IdPropiedad    INT             NOT NULL,
    PrecioAnterior DECIMAL (18, 2) NOT NULL,
    PrecioNuevo    DECIMAL (18, 2) NOT NULL,
    FechaCambio    TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    MotivoCambio   VARCHAR (100)   NULL,
    PRIMARY KEY (IdHistorial),
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



