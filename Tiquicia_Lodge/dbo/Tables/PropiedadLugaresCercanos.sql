CREATE TABLE [dbo].[PropiedadLugaresCercanos] (
    [IdPropiedad]      INT            NOT NULL,
    [IdLugarTuristico] INT            NOT NULL,
    [DistanciaKM]      DECIMAL (5, 2) NOT NULL,
    [TiempoCaminando]  INT            NULL,
    [TiempoEnCarro]    INT            NULL,
    [EsLoMasCercano]   BIT            DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdLugarTuristico] ASC),
    FOREIGN KEY ([IdLugarTuristico]) REFERENCES [dbo].[LugaresTuristicos] ([IdLugarTuristico]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

