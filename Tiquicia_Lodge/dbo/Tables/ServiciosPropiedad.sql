CREATE TABLE [dbo].[ServiciosPropiedad] (
    [IdServicio]     INT           IDENTITY (1, 1) NOT NULL,
    [IdCategoria]    INT           NOT NULL,
    [NombreServicio] VARCHAR (100) NOT NULL,
    [Descripcion]    VARCHAR (200) NULL,
    [Icono]          VARCHAR (50)  NULL,
    [Activo]         BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdServicio] ASC),
    FOREIGN KEY ([IdCategoria]) REFERENCES [dbo].[CategoriaServicio] ([IdCategoria])
);

