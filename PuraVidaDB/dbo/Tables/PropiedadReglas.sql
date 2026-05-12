CREATE TABLE [dbo].[PropiedadReglas] (
    [IdPropiedad]       INT           NOT NULL,
    [IdRegla]           INT           NOT NULL,
    [EsAplicable]       BIT           DEFAULT ((1)) NULL,
    [DetalleEspecifico] VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdRegla] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    FOREIGN KEY ([IdRegla]) REFERENCES [dbo].[ReglasCasa] ([IdRegla])
);

