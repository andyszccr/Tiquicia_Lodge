CREATE TABLE [dbo].[PropiedadComerciosCercanos] (
    [IdPropiedad]     INT            NOT NULL,
    [IdComercio]      INT            NOT NULL,
    [DistanciaKM]     DECIMAL (5, 2) NOT NULL,
    [TiempoCaminando] INT            NULL,
    [TiempoEnCarro]   INT            NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdComercio] ASC),
    FOREIGN KEY ([IdComercio]) REFERENCES [dbo].[ComerciosCercanos] ([IdComercio]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

