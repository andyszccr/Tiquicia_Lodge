CREATE TABLE [dbo].[HistorialEstadosReserva] (
    [IdHistorial]      INT           IDENTITY (1, 1) NOT NULL,
    [IdReserva]        INT           NOT NULL,
    [IdEstadoAnterior] INT           NULL,
    [IdEstadoNuevo]    INT           NOT NULL,
    [FechaCambio]      DATETIME      DEFAULT (getdate()) NULL,
    [UsuarioCambio]    INT           NULL,
    [MotivoCambio]     VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([IdHistorial] ASC),
    FOREIGN KEY ([IdEstadoAnterior]) REFERENCES [dbo].[Estados] ([IdEstado]),
    FOREIGN KEY ([IdEstadoNuevo]) REFERENCES [dbo].[Estados] ([IdEstado]),
    FOREIGN KEY ([IdReserva]) REFERENCES [dbo].[Reservas] ([IdReserva]),
    FOREIGN KEY ([UsuarioCambio]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

