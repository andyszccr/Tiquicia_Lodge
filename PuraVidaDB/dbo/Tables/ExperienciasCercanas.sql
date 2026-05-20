CREATE TABLE [dbo].[ExperienciasCercanas] (
    [IdPropiedad]          INT            NOT NULL,
    [IdExperiencia]        INT            NOT NULL,
    [DistanciaKM]          DECIMAL (5, 2) NOT NULL,
    [TiempoTraslado]       INT            NULL,
    [ProveedorExperiencia] VARCHAR (100)  NULL,
    [TelefonoContacto]     VARCHAR (20)   NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdExperiencia] ASC),
    FOREIGN KEY ([IdExperiencia]) REFERENCES [dbo].[Experiencias] ([IdExperiencia]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

