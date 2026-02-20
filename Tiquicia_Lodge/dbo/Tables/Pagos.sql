CREATE TABLE [dbo].[Pagos] (
    [IdPago]            INT             IDENTITY (1, 1) NOT NULL,
    [IdReserva]         INT             NOT NULL,
    [Monto_CRC]         DECIMAL (18, 2) NOT NULL,
    [MontoUSD]          DECIMAL (18, 2) NULL,
    [FechaPago]         DATETIME        DEFAULT (getdate()) NULL,
    [MetodoPago]        VARCHAR (30)    NOT NULL,
    [EstadoPago]        VARCHAR (20)    NULL,
    [ComprobanteURL]    VARCHAR (500)   NULL,
    [TelefonoSINPE]     VARCHAR (20)    NULL,
    [ReferenciaBanco]   VARCHAR (100)   NULL,
    [IdUsuarioRegistra] INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([IdPago] ASC),
    CHECK ([EstadoPago]='Reembolsado' OR [EstadoPago]='Fallido' OR [EstadoPago]='Completado' OR [EstadoPago]='Pendiente'),
    CHECK ([MetodoPago]='PayPal' OR [MetodoPago]='Transferencia' OR [MetodoPago]='Efectivo' OR [MetodoPago]='Tarjeta' OR [MetodoPago]='SINPE Movil'),
    FOREIGN KEY ([IdReserva]) REFERENCES [dbo].[Reservas] ([IdReserva]),
    FOREIGN KEY ([IdUsuarioRegistra]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

