CREATE TABLE [dbo].[DescuentosPropiedad] (
    [IdDescuento] INT NOT NULL,
    [IdPropiedad] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IdDescuento] ASC, [IdPropiedad] ASC),
    FOREIGN KEY ([IdDescuento]) REFERENCES [dbo].[Descuentos] ([IdDescuento]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

