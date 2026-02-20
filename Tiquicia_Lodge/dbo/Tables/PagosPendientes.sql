CREATE TABLE [dbo].[PagosPendientes] (
    [IdPendiente]           INT             IDENTITY (1, 1) NOT NULL,
    [IdReserva]             INT             NOT NULL,
    [MontoPendiente]        DECIMAL (18, 2) NOT NULL,
    [FechaLimite]           DATE            NOT NULL,
    [RecordatoriosEnviados] INT             DEFAULT ((0)) NULL,
    [UltimoRecordatorio]    DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([IdPendiente] ASC),
    FOREIGN KEY ([IdReserva]) REFERENCES [dbo].[Reservas] ([IdReserva])
);

