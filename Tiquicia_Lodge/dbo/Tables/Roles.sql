CREATE TABLE [dbo].[Roles] (
    [IdRol]       INT           IDENTITY (1, 1) NOT NULL,
    [NombreRol]   VARCHAR (50)  NOT NULL,
    [Descripcion] VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([IdRol] ASC),
    UNIQUE NONCLUSTERED ([NombreRol] ASC)
);

