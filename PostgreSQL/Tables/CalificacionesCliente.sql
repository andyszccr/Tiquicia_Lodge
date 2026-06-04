CREATE TABLE CalificacionesCliente (
    IdCalificacion SERIAL NOT NULL,
    IdReserva      INT           NOT NULL,
    IdProveedor    INT           NOT NULL,
    IdCliente      INT           NOT NULL,
    Calificacion   INT           NOT NULL,
    Comentario     VARCHAR (500) NULL,
    Fecha          TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    PRIMARY KEY (IdCalificacion),
    CHECK (Calificacion>=(1) AND Calificacion<=(5)),
    FOREIGN KEY (IdCliente) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdProveedor) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    UNIQUE (IdReserva),
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



