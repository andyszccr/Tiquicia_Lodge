CREATE TABLE [dbo].[PagosComisiones] (
    [IdPagoComision] INT             IDENTITY (1, 1) NOT NULL,
    [IdProveedor]    INT             NOT NULL,
    [PeriodoInicio]  DATE            NOT NULL,
    [PeriodoFin]     DATE            NOT NULL,
    [MontoTotal]     DECIMAL (18, 2) NOT NULL,
    [FechaPago]      DATETIME        DEFAULT (getdate()) NULL,
    [MetodoPago]     VARCHAR (30)    NOT NULL,
    [ComprobanteURL] VARCHAR (500)   NULL,
    PRIMARY KEY CLUSTERED ([IdPagoComision] ASC),
    FOREIGN KEY ([IdProveedor]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

