CREATE TABLE [dbo].[PropiedadSellos] (
    [IdPropiedad]     INT      NOT NULL,
    [IdSello]         INT      NOT NULL,
    [FechaOtorgado]   DATETIME DEFAULT (getdate()) NULL,
    [FechaExpiracion] DATE     NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdSello] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    FOREIGN KEY ([IdSello]) REFERENCES [dbo].[SellosConfianza] ([IdSello])
);

