CREATE TABLE MensajesSoporte (
    IdMensaje  SERIAL NOT NULL,
    IdTicket   INT            NOT NULL,
    IdUsuario  INT            NOT NULL,
    Mensaje    VARCHAR (1000) NOT NULL,
    FechaEnvio TIMESTAMP       DEFAULT CURRENT_TIMESTAMP NULL,
    AdjuntoURL VARCHAR (500)  NULL,
    PRIMARY KEY (IdMensaje),
    FOREIGN KEY (IdTicket) REFERENCES TicketsSoporte (IdTicket),
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



