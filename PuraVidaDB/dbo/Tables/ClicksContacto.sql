CREATE TABLE [dbo].[ClicksContacto] (
    [IdClick]      INT          IDENTITY (1, 1) NOT NULL,
    [IdPropiedad]  INT          NOT NULL,
    [IdUsuario]    INT          NULL,
    [TipoContacto] VARCHAR (20) NOT NULL,
    [FechaClick]   DATETIME     DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdClick] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

