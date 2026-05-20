CREATE TABLE [dbo].[PropiedadEquipamiento] (
    [IdPropiedad]          INT           NOT NULL,
    [IdEquipamiento]       INT           NOT NULL,
    [Cantidad]             INT           DEFAULT ((1)) NULL,
    [DescripcionAdicional] VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdEquipamiento] ASC),
    FOREIGN KEY ([IdEquipamiento]) REFERENCES [dbo].[Equipamiento] ([IdEquipamiento]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    CONSTRAINT [FK_PropiedadEquipamiento_Equipamiento_IdEquipamiento] FOREIGN KEY ([IdEquipamiento]) REFERENCES [dbo].[Equipamiento] ([IdEquipamiento]),
    CONSTRAINT [FK_PropiedadEquipamiento_Propiedad_IdPropiedad] FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

