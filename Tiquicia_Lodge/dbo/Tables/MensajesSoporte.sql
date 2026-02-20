CREATE TABLE [dbo].[MensajesSoporte] (
    [IdMensaje]  INT            IDENTITY (1, 1) NOT NULL,
    [IdTicket]   INT            NOT NULL,
    [IdUsuario]  INT            NOT NULL,
    [Mensaje]    VARCHAR (1000) NOT NULL,
    [FechaEnvio] DATETIME       DEFAULT (getdate()) NULL,
    [AdjuntoURL] VARCHAR (500)  NULL,
    PRIMARY KEY CLUSTERED ([IdMensaje] ASC),
    FOREIGN KEY ([IdTicket]) REFERENCES [dbo].[TicketsSoporte] ([IdTicket]),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

