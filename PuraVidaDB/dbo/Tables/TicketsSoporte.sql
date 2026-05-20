CREATE TABLE [dbo].[TicketsSoporte] (
    [IdTicket]         INT            IDENTITY (1, 1) NOT NULL,
    [IdUsuario]        INT            NOT NULL,
    [Asunto]           VARCHAR (200)  NOT NULL,
    [Descripcion]      VARCHAR (1000) NOT NULL,
    [IdEstado]         INT            NOT NULL,
    [Prioridad]        VARCHAR (20)   NULL,
    [FechaCreacion]    DATETIME       DEFAULT (getdate()) NULL,
    [FechaCierre]      DATETIME       NULL,
    [IdAgenteAsignado] INT            NULL,
    PRIMARY KEY CLUSTERED ([IdTicket] ASC),
    CHECK ([Prioridad]='Urgente' OR [Prioridad]='Alta' OR [Prioridad]='Media' OR [Prioridad]='Baja'),
    FOREIGN KEY ([IdAgenteAsignado]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    FOREIGN KEY ([IdEstado]) REFERENCES [dbo].[Estados] ([IdEstado]),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

