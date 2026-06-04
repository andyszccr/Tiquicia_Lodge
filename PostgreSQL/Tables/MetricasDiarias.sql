CREATE TABLE MetricasDiarias (
    IdMetrica           SERIAL NOT NULL,
    Fecha               DATE            NOT NULL,
    IdPropiedad         INT             NULL,
    UsuariosNuevos      INT             DEFAULT 0 NULL,
    PropiedadesNuevas   INT             DEFAULT 0 NULL,
    ReservasCompletadas INT             DEFAULT 0 NULL,
    IngresosBrutos      DECIMAL (18, 2) DEFAULT 0 NULL,
    IngresosComisiones  DECIMAL (18, 2) DEFAULT 0 NULL,
    VisitasTotales      INT             DEFAULT 0 NULL,
    BusquedasRealizadas INT             DEFAULT 0 NULL,
    ContactosDirectos   INT             DEFAULT 0 NULL,
    PRIMARY KEY (IdMetrica),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    CONSTRAINT UQ_MetricasDiarias UNIQUE (Fecha, IdPropiedad),
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



