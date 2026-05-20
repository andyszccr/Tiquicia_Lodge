CREATE TABLE [dbo].[CategoriaAlojamiento] (
    [IdCategoria]     INT           IDENTITY (1, 1) NOT NULL,
    [NombreCategoria] VARCHAR (50)  NOT NULL,
    [Descripcion]     VARCHAR (200) NULL,
    [Icono]           VARCHAR (50)  NULL,
    [Activo]          BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdCategoria] ASC),
    UNIQUE NONCLUSTERED ([NombreCategoria] ASC)
);

