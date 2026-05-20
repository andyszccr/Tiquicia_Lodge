CREATE TABLE [dbo].[Equipamiento] (
    [IdEquipamiento]     INT           IDENTITY (1, 1) NOT NULL,
    [IdCategoria]        INT           NOT NULL,
    [NombreEquipamiento] VARCHAR (100) NOT NULL,
    [Descripcion]        VARCHAR (200) NULL,
    [Icono]              VARCHAR (50)  NULL,
    [Activo]             BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdEquipamiento] ASC),
    FOREIGN KEY ([IdCategoria]) REFERENCES [dbo].[CategoriaEquipamiento] ([IdCategoria])
);

