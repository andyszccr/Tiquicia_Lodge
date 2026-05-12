CREATE TABLE [dbo].[ReglasCasa] (
    [IdRegla]     INT           IDENTITY (1, 1) NOT NULL,
    [NombreRegla] VARCHAR (100) NOT NULL,
    [Descripcion] VARCHAR (300) NULL,
    [Icono]       VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([IdRegla] ASC),
    UNIQUE NONCLUSTERED ([NombreRegla] ASC)
);

