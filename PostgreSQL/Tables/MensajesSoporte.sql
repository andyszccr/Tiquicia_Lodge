CREATE TABLE MensajesSoporte (
    IdMensaje  SERIAL NOT NULL,
    IdTicket   INT            NOT NULL,
    IdUsuario  INT            NOT NULL,
    Mensaje    VARCHAR (1000) NOT NULL,
    FechaEnvio TIMESTAMP       DEFAULT CURRENT_TIMESTAMP NULL,
    AdjuntoURL VARCHAR (500)  NULL,
    PRIMARY KEY (IdMensaje),
    FOREIGN KEY (IdTicket) REFERENCES TicketsSoporte (IdTicket),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


