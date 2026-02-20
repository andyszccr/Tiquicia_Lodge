CREATE TABLE [dbo].[Descuentos] (
    [IdDescuento]     INT             IDENTITY (1, 1) NOT NULL,
    [NombreDescuento] VARCHAR (100)   NOT NULL,
    [TipoDescuento]   VARCHAR (30)    NULL,
    [ValorDescuento]  DECIMAL (10, 2) NOT NULL,
    [Condiciones]     VARCHAR (300)   NULL,
    [FechaInicio]     DATE            NULL,
    [FechaFin]        DATE            NULL,
    [Activo]          BIT             DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdDescuento] ASC),
    CHECK ([TipoDescuento]='MontoFijo' OR [TipoDescuento]='Porcentaje')
);

