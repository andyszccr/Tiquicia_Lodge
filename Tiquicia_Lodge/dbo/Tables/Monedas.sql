CREATE TABLE [dbo].[Monedas] (
    [IdMoneda]     INT          IDENTITY (1, 1) NOT NULL,
    [NombreMoneda] VARCHAR (50) NOT NULL,
    [CodigoISO]    CHAR (3)     NOT NULL,
    [Simbolo]      CHAR (3)     NOT NULL,
    PRIMARY KEY CLUSTERED ([IdMoneda] ASC),
    UNIQUE NONCLUSTERED ([CodigoISO] ASC)
);

