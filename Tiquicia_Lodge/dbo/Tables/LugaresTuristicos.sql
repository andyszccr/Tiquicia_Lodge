CREATE TABLE [dbo].[LugaresTuristicos] (
    [IdLugarTuristico]     INT               IDENTITY (1, 1) NOT NULL,
    [IdCategoria]          INT               NOT NULL,
    [NombreLugar]          VARCHAR (200)     NOT NULL,
    [Descripcion]          VARCHAR (500)     NULL,
    [UbicacionCoordenadas] [sys].[geography] NULL,
    [Direccion]            VARCHAR (300)     NULL,
    [IdDistrito]           INT               NULL,
    [DistanciaReferencia]  VARCHAR (100)     NULL,
    [HorarioAtencion]      VARCHAR (200)     NULL,
    [Telefono]             VARCHAR (20)      NULL,
    [SitioWeb]             VARCHAR (200)     NULL,
    [Activo]               BIT               DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdLugarTuristico] ASC),
    FOREIGN KEY ([IdCategoria]) REFERENCES [dbo].[CategoriaLugarTuristico] ([IdCategoria]),
    FOREIGN KEY ([IdDistrito]) REFERENCES [dbo].[Distritos] ([IdDistrito])
);

