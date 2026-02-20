CREATE TABLE [dbo].[Temporadas] (
    [IdTemporada]         INT            IDENTITY (1, 1) NOT NULL,
    [NombreTemporada]     VARCHAR (50)   NOT NULL,
    [Descripcion]         VARCHAR (200)  NULL,
    [FechaInicio]         DATE           NOT NULL,
    [FechaFin]            DATE           NOT NULL,
    [FactorMultiplicador] DECIMAL (3, 2) DEFAULT ((1.0)) NULL,
    [Activo]              BIT            DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdTemporada] ASC)
);

