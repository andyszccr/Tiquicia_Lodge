CREATE TABLE [dbo].[CategoriaLugarTuristico] (
    [IdCategoria]     INT           IDENTITY (1, 1) NOT NULL,
    [NombreCategoria] VARCHAR (50)  NOT NULL,
    [Icono]           VARCHAR (50)  NULL,
    [Descripcion]     VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([IdCategoria] ASC),
    UNIQUE NONCLUSTERED ([NombreCategoria] ASC)
);

