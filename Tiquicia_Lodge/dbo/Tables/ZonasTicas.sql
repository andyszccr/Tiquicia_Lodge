CREATE TABLE [dbo].[ZonasTicas] (
    [IdZona]      INT           IDENTITY (1, 1) NOT NULL,
    [NombreZona]  VARCHAR (100) NOT NULL,
    [Descripcion] VARCHAR (255) NULL,
    [Activo]      BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdZona] ASC)
);

