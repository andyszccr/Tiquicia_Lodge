CREATE TABLE [dbo].[Provincias] (
    [IdProvincia]     INT          IDENTITY (1, 1) NOT NULL,
    [NombreProvincia] VARCHAR (50) NOT NULL,
    [Activo]          BIT          DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdProvincia] ASC),
    UNIQUE NONCLUSTERED ([NombreProvincia] ASC)
);

