CREATE TABLE [dbo].[CalificacionesCliente] (
    [IdCalificacion] INT           IDENTITY (1, 1) NOT NULL,
    [IdReserva]      INT           NOT NULL,
    [IdProveedor]    INT           NOT NULL,
    [IdCliente]      INT           NOT NULL,
    [Calificacion]   INT           NOT NULL,
    [Comentario]     VARCHAR (500) NULL,
    [Fecha]          DATETIME      DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdCalificacion] ASC),
    CHECK ([Calificacion]>=(1) AND [Calificacion]<=(5)),
    FOREIGN KEY ([IdCliente]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    FOREIGN KEY ([IdProveedor]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    FOREIGN KEY ([IdReserva]) REFERENCES [dbo].[Reservas] ([IdReserva]),
    UNIQUE NONCLUSTERED ([IdReserva] ASC)
);

