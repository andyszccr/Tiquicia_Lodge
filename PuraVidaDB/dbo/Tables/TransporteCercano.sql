CREATE TABLE [dbo].[TransporteCercano] (
    [IdTransporte]         INT               IDENTITY (1, 1) NOT NULL,
    [TipoTransporte]       VARCHAR (50)      NOT NULL,
    [Nombre]               VARCHAR (200)     NOT NULL,
    [DistanciaReferencia]  VARCHAR (100)     NULL,
    [Telefono]             VARCHAR (20)      NULL,
    [UbicacionCoordenadas] [sys].[geography] NULL,
    PRIMARY KEY CLUSTERED ([IdTransporte] ASC),
    CHECK ([TipoTransporte]='Terminal' OR [TipoTransporte]='Alquiler de Carros' OR [TipoTransporte]='Estación de Tren' OR [TipoTransporte]='Taxi' OR [TipoTransporte]='Parada de Bus')
);

