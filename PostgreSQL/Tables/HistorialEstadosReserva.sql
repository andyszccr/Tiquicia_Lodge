CREATE TABLE HistorialEstadosReserva (
    IdHistorial      SERIAL NOT NULL,
    IdReserva        INT           NOT NULL,
    IdEstadoAnterior INT           NULL,
    IdEstadoNuevo    INT           NOT NULL,
    FechaCambio      TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    UsuarioCambio    INT           NULL,
    MotivoCambio     VARCHAR (200) NULL,
    PRIMARY KEY (IdHistorial),
    FOREIGN KEY (IdEstadoAnterior) REFERENCES Estados (IdEstado),
    FOREIGN KEY (IdEstadoNuevo) REFERENCES Estados (IdEstado),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    FOREIGN KEY (UsuarioCambio) REFERENCES Usuarios (IdUsuario),
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



