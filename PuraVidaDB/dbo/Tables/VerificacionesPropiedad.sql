CREATE TABLE [dbo].[VerificacionesPropiedad] (
    [IdVerificacion]     INT           IDENTITY (1, 1) NOT NULL,
    [IdPropiedad]        INT           NOT NULL,
    [FechaVerificacion]  DATE          NOT NULL,
    [VerificadoPor]      VARCHAR (100) NULL,
    [MetodoVerificacion] VARCHAR (50)  NULL,
    [EstadoVerificacion] VARCHAR (20)  NULL,
    [Comentarios]        VARCHAR (500) NULL,
    [FechaExpiracion]    DATE          NULL,
    PRIMARY KEY CLUSTERED ([IdVerificacion] ASC),
    CHECK ([EstadoVerificacion]='Expirado' OR [EstadoVerificacion]='Rechazado' OR [EstadoVerificacion]='Pendiente' OR [EstadoVerificacion]='Verificado'),
    CHECK ([MetodoVerificacion]='Fotos georreferenciadas' OR [MetodoVerificacion]='Documentos' OR [MetodoVerificacion]='Video llamada' OR [MetodoVerificacion]='Visita presencial'),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

