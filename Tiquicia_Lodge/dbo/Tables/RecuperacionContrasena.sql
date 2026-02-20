CREATE TABLE [dbo].[RecuperacionContrasena] (
    [IdSolicitud]     INT           IDENTITY (1, 1) NOT NULL,
    [IdUsuario]       INT           NOT NULL,
    [Token]           VARCHAR (255) NOT NULL,
    [FechaSolicitud]  DATETIME      DEFAULT (getdate()) NULL,
    [FechaExpiracion] DATETIME      NOT NULL,
    [Usada]           BIT           DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([IdSolicitud] ASC),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    UNIQUE NONCLUSTERED ([Token] ASC)
);

