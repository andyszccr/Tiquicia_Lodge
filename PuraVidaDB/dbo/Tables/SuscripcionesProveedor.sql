CREATE TABLE [dbo].[SuscripcionesProveedor] (
    [IdSuscripcion]     INT           IDENTITY (1, 1) NOT NULL,
    [IdProveedor]       INT           NOT NULL,
    [IdPlan]            INT           NOT NULL,
    [FechaInicio]       DATE          NOT NULL,
    [FechaFin]          DATE          NULL,
    [Activa]            BIT           DEFAULT ((1)) NULL,
    [MotivoCancelacion] VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([IdSuscripcion] ASC),
    FOREIGN KEY ([IdPlan]) REFERENCES [dbo].[PlanesProveedor] ([IdPlan]),
    FOREIGN KEY ([IdProveedor]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

