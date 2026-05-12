CREATE TABLE [dbo].[PropiedadRequerimientos] (
    [IdPropiedad]           INT             NOT NULL,
    [IdRequerimiento]       INT             NOT NULL,
    [MontoDeposito]         DECIMAL (18, 2) NULL,
    [CondicionesEspeciales] VARCHAR (300)   NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdRequerimiento] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    FOREIGN KEY ([IdRequerimiento]) REFERENCES [dbo].[RequerimientosReserva] ([IdRequerimiento])
);

