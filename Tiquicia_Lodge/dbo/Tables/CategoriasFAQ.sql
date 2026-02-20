CREATE TABLE [dbo].[CategoriasFAQ] (
    [IdCategoriaFAQ]  INT           IDENTITY (1, 1) NOT NULL,
    [NombreCategoria] VARCHAR (50)  NOT NULL,
    [Descripcion]     VARCHAR (200) NULL,
    [Orden]           INT           DEFAULT ((0)) NULL,
    [Activo]          BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdCategoriaFAQ] ASC),
    UNIQUE NONCLUSTERED ([NombreCategoria] ASC)
);

