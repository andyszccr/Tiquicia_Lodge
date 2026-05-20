CREATE TABLE [dbo].[VerificacionesUsuario] (
    [IdVerificacion]     INT           IDENTITY (1, 1) NOT NULL,
    [IdUsuario]          INT           NOT NULL,
    [TipoVerificacion]   VARCHAR (50)  NULL,
    [Verificado]         BIT           DEFAULT ((0)) NULL,
    [FechaVerificacion]  DATETIME      NULL,
    [MetodoVerificacion] VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([IdVerificacion] ASC),
    CHECK ([TipoVerificacion]='RedSocial' OR [TipoVerificacion]='Correo' OR [TipoVerificacion]='Telefono' OR [TipoVerificacion]='Identificacion'),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

