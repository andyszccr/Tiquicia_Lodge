CREATE TABLE HorariosCheckInOut (
    IdHorario   SERIAL NOT NULL,
    IdPropiedad INT           NOT NULL,
    TipoHorario VARCHAR (10)  NULL,
    HoraDesde   TIME (7)      NOT NULL,
    HoraHasta   TIME (7)      NULL,
    Flexible    BOOLEAN           DEFAULT FALSE NULL,
    Notas       VARCHAR (200) NULL,
    PRIMARY KEY (IdHorario),
    CHECK (TipoHorario='CheckOut' OR TipoHorario='CheckIn'),
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



