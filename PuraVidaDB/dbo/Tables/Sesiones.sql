CREATE TABLE [dbo].[Sesiones] (
    [IdSesion]        INT           IDENTITY (1, 1) NOT NULL,
    [IdUsuario]       INT           NOT NULL,
    [Token]           VARCHAR (500) NOT NULL,
    [FechaInicio]     DATETIME      DEFAULT (getdate()) NULL,
    [FechaExpiracion] DATETIME      NOT NULL,
    [IPAddress]       VARCHAR (45)  NULL,
    [UserAgent]       VARCHAR (500) NULL,
    [Activa]          BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdSesion] ASC),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    UNIQUE NONCLUSTERED ([Token] ASC)
);

