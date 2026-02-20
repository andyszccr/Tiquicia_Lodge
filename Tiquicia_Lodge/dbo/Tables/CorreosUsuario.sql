CREATE TABLE [dbo].[CorreosUsuario] (
    [IdCorreo]    INT           IDENTITY (1, 1) NOT NULL,
    [IdUsuario]   INT           NOT NULL,
    [Correo]      VARCHAR (100) NOT NULL,
    [EsPrincipal] BIT           DEFAULT ((0)) NULL,
    [Activo]      BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdCorreo] ASC),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

