CREATE TABLE [dbo].[Comisiones] (
    [IdComision]         INT             IDENTITY (1, 1) NOT NULL,
    [IdReserva]          INT             NOT NULL,
    [IdProveedor]        INT             NOT NULL,
    [PorcentajeAplicado] DECIMAL (5, 2)  NOT NULL,
    [MontoComision]      DECIMAL (18, 2) NOT NULL,
    [FechaCalculo]       DATETIME        DEFAULT (getdate()) NULL,
    [Pagada]             BIT             DEFAULT ((0)) NULL,
    [FechaPago]          DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([IdComision] ASC),
    FOREIGN KEY ([IdProveedor]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    FOREIGN KEY ([IdReserva]) REFERENCES [dbo].[Reservas] ([IdReserva]),
    UNIQUE NONCLUSTERED ([IdReserva] ASC)
);

