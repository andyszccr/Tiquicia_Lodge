CREATE TABLE [dbo].[GananciasProveedor] (
    [IdGanancia]     INT             IDENTITY (1, 1) NOT NULL,
    [IdPagoComision] INT             NOT NULL,
    [IdReserva]      INT             NOT NULL,
    [MontoProveedor] DECIMAL (18, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdGanancia] ASC),
    FOREIGN KEY ([IdPagoComision]) REFERENCES [dbo].[PagosComisiones] ([IdPagoComision]),
    FOREIGN KEY ([IdReserva]) REFERENCES [dbo].[Reservas] ([IdReserva])
);

