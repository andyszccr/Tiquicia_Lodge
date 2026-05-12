CREATE TABLE [dbo].[TipoAlojamiento] (
    [IdTipo]      INT           IDENTITY (1, 1) NOT NULL,
    [IdCategoria] INT           NOT NULL,
    [NombreTipo]  VARCHAR (100) NOT NULL,
    [Descripcion] VARCHAR (300) NULL,
    [Activo]      BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdTipo] ASC),
    FOREIGN KEY ([IdCategoria]) REFERENCES [dbo].[CategoriaAlojamiento] ([IdCategoria])
);

