CREATE TABLE [dbo].[PromocionesPropiedad] (
    [IdPromocion] INT NOT NULL,
    [IdPropiedad] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IdPromocion] ASC, [IdPropiedad] ASC),
    FOREIGN KEY ([IdPromocion]) REFERENCES [dbo].[Promociones] ([IdPromocion]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    CONSTRAINT [FK_PromocionesPropiedad_Promociones_IdPromocion] FOREIGN KEY ([IdPromocion]) REFERENCES [dbo].[Promociones] ([IdPromocion]),
    CONSTRAINT [FK_PromocionesPropiedad_Propiedad_IdPropiedad] FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

