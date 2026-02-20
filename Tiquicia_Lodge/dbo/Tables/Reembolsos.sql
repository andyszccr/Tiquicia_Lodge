CREATE TABLE [dbo].[Reembolsos] (
    [IdReembolso]    INT             IDENTITY (1, 1) NOT NULL,
    [IdPago]         INT             NOT NULL,
    [Monto]          DECIMAL (18, 2) NOT NULL,
    [FechaReembolso] DATETIME        DEFAULT (getdate()) NULL,
    [Motivo]         VARCHAR (300)   NOT NULL,
    [AprobadoPor]    INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([IdReembolso] ASC),
    FOREIGN KEY ([AprobadoPor]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    FOREIGN KEY ([IdPago]) REFERENCES [dbo].[Pagos] ([IdPago])
);

