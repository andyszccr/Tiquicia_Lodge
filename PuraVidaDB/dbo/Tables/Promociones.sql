CREATE TABLE [dbo].[Promociones] (
    [IdPromocion]         INT            IDENTITY (1, 1) NOT NULL,
    [NombrePromo]         VARCHAR (100)  NOT NULL,
    [Descripcion]         VARCHAR (300)  NULL,
    [TipoPromo]           VARCHAR (30)   NULL,
    [PorcentajeDescuento] DECIMAL (5, 2) NULL,
    [FechaInicio]         DATE           NOT NULL,
    [FechaFin]            DATE           NOT NULL,
    [Activo]              BIT            DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdPromocion] ASC),
    CHECK ([TipoPromo]='Lanzamiento' OR [TipoPromo]='TemporadaBaja' OR [TipoPromo]='Feriado' OR [TipoPromo]='FindeSemana')
);

