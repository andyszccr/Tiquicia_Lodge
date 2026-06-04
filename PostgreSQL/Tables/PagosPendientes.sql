CREATE TABLE PagosPendientes (
    IdPendiente           SERIAL NOT NULL,
    IdReserva             INT             NOT NULL,
    MontoPendiente        DECIMAL (18, 2) NOT NULL,
    FechaLimite           DATE            NOT NULL,
    RecordatoriosEnviados INT             DEFAULT 0 NULL,
    UltimoRecordatorio    TIMESTAMP        NULL,
    PRIMARY KEY (IdPendiente),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
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



