CREATE TABLE [dbo].[ComerciosCercanos] (
    [IdComercio]           INT               IDENTITY (1, 1) NOT NULL,
    [NombreComercio]       VARCHAR (200)     NOT NULL,
    [TipoComercio]         VARCHAR (50)      NOT NULL,
    [Telefono]             VARCHAR (20)      NULL,
    [Direccion]            VARCHAR (300)     NULL,
    [HorarioAtencion]      VARCHAR (200)     NULL,
    [UbicacionCoordenadas] [sys].[geography] NULL,
    [Activo]               BIT               DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdComercio] ASC),
    CHECK ([TipoComercio]='Otro' OR [TipoComercio]='Taller' OR [TipoComercio]='Gasolinera' OR [TipoComercio]='Clínica' OR [TipoComercio]='Banco' OR [TipoComercio]='Restaurante' OR [TipoComercio]='Farmacia' OR [TipoComercio]='Supermercado')
);

