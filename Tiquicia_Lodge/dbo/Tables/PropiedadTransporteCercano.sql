CREATE TABLE [dbo].[PropiedadTransporteCercano] (
    [IdPropiedad]     INT            NOT NULL,
    [IdTransporte]    INT            NOT NULL,
    [DistanciaKM]     DECIMAL (5, 2) NOT NULL,
    [TiempoCaminando] INT            NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdTransporte] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    FOREIGN KEY ([IdTransporte]) REFERENCES [dbo].[TransporteCercano] ([IdTransporte])
);

