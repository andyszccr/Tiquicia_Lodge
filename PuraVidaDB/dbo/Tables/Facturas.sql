CREATE TABLE [dbo].[Facturas] (
    [IdFactura]     INT             IDENTITY (1, 1) NOT NULL,
    [IdReserva]     INT             NOT NULL,
    [NumeroFactura] VARCHAR (50)    NOT NULL,
    [FechaEmision]  DATETIME        DEFAULT (getdate()) NULL,
    [MontoTotal]    DECIMAL (18, 2) NOT NULL,
    [PdfURL]        VARCHAR (500)   NULL,
    [Enviada]       BIT             DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([IdFactura] ASC),
    FOREIGN KEY ([IdReserva]) REFERENCES [dbo].[Reservas] ([IdReserva]),
    UNIQUE NONCLUSTERED ([NumeroFactura] ASC)
);

