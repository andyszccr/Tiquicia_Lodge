CREATE TABLE [dbo].[PoliticasCancelacion] (
    [IdPolitica]          INT            IDENTITY (1, 1) NOT NULL,
    [NombrePolitica]      VARCHAR (50)   NOT NULL,
    [Descripcion]         VARCHAR (300)  NULL,
    [ReembolsoPorcentaje] DECIMAL (5, 2) NOT NULL,
    [DiasAntelacion]      INT            NULL,
    [Activo]              BIT            DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdPolitica] ASC),
    UNIQUE NONCLUSTERED ([NombrePolitica] ASC)
);

