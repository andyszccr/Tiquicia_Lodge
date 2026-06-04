CREATE TABLE TicketsSoporte (
    IdTicket         SERIAL NOT NULL,
    IdUsuario        INT            NOT NULL,
    Asunto           VARCHAR (200)  NOT NULL,
    Descripcion      VARCHAR (1000) NOT NULL,
    IdEstado         INT            NOT NULL,
    Prioridad        VARCHAR (20)   NULL,
    FechaCreacion    TIMESTAMP       DEFAULT CURRENT_TIMESTAMP NULL,
    FechaCierre      TIMESTAMP       NULL,
    IdAgenteAsignado INT            NULL,
    PRIMARY KEY (IdTicket),
    CHECK (Prioridad='Urgente' OR Prioridad='Alta' OR Prioridad='Media' OR Prioridad='Baja'),
    FOREIGN KEY (IdAgenteAsignado) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdEstado) REFERENCES Estados (IdEstado),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario),
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



