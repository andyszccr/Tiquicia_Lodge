CREATE TABLE [dbo].[ContactosDirectos] (
    [IdContacto]       INT           IDENTITY (1, 1) NOT NULL,
    [IdCliente]        INT           NOT NULL,
    [IdPropiedad]      INT           NOT NULL,
    [FechaContacto]    DATETIME      DEFAULT (getdate()) NULL,
    [TipoContacto]     VARCHAR (20)  NULL,
    [DuracionSegundos] INT           NULL,
    [Resumen]          VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([IdContacto] ASC),
    CHECK ([TipoContacto]='Visita' OR [TipoContacto]='Correo' OR [TipoContacto]='SitioWeb' OR [TipoContacto]='Llamada' OR [TipoContacto]='WhatsApp'),
    FOREIGN KEY ([IdCliente]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

