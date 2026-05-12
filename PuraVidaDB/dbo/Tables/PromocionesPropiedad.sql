CREATE TABLE [dbo].[PromocionesPropiedad] (
    [IdPromocion] INT NOT NULL,
    [IdPropiedad] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IdPromocion] ASC, [IdPropiedad] ASC),
    FOREIGN KEY ([IdPromocion]) REFERENCES [dbo].[Promociones] ([IdPromocion]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

