CREATE TABLE [dbo].[TelefonosUsuario] (
    [IdTelefono]   INT          IDENTITY (1, 1) NOT NULL,
    [IdUsuario]    INT          NOT NULL,
    [Telefono]     VARCHAR (20) NOT NULL,
    [TipoTelefono] VARCHAR (20) NULL,
    [EsPrincipal]  BIT          DEFAULT ((0)) NULL,
    [Activo]       BIT          DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdTelefono] ASC),
    CHECK ([TipoTelefono]='WhatsApp' OR [TipoTelefono]='Trabajo' OR [TipoTelefono]='Fijo' OR [TipoTelefono]='Celular'),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

