CREATE TABLE [dbo].[MetricasDiarias] (
    [IdMetrica]           INT             IDENTITY (1, 1) NOT NULL,
    [Fecha]               DATE            NOT NULL,
    [IdPropiedad]         INT             NULL,
    [UsuariosNuevos]      INT             DEFAULT ((0)) NULL,
    [PropiedadesNuevas]   INT             DEFAULT ((0)) NULL,
    [ReservasCompletadas] INT             DEFAULT ((0)) NULL,
    [IngresosBrutos]      DECIMAL (18, 2) DEFAULT ((0)) NULL,
    [IngresosComisiones]  DECIMAL (18, 2) DEFAULT ((0)) NULL,
    [VisitasTotales]      INT             DEFAULT ((0)) NULL,
    [BusquedasRealizadas] INT             DEFAULT ((0)) NULL,
    [ContactosDirectos]   INT             DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([IdMetrica] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    CONSTRAINT [UQ_MetricasDiarias] UNIQUE NONCLUSTERED ([Fecha] ASC, [IdPropiedad] ASC)
);

