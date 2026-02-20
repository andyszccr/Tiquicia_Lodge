CREATE TABLE [dbo].[PlanesProveedor] (
    [IdPlan]               INT             IDENTITY (1, 1) NOT NULL,
    [NombrePlan]           VARCHAR (50)    NOT NULL,
    [Descripcion]          VARCHAR (200)   NULL,
    [PorcentajeComision]   DECIMAL (5, 2)  NOT NULL,
    [CostoMensual_CRC]     DECIMAL (18, 2) NULL,
    [MaximoPropiedades]    INT             NULL,
    [SoportePrioritario]   BIT             DEFAULT ((0)) NULL,
    [VerificacionGratuita] BIT             DEFAULT ((0)) NULL,
    [Activo]               BIT             DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdPlan] ASC),
    UNIQUE NONCLUSTERED ([NombrePlan] ASC)
);

