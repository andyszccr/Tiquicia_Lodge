CREATE TABLE Reembolsos (
    IdReembolso    SERIAL NOT NULL,
    IdPago         INT             NOT NULL,
    Monto          DECIMAL (18, 2) NOT NULL,
    FechaReembolso TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    Motivo         VARCHAR (300)   NOT NULL,
    AprobadoPor    INT             NOT NULL,
    PRIMARY KEY (IdReembolso),
    FOREIGN KEY (AprobadoPor) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdPago) REFERENCES Pagos (IdPago),
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



