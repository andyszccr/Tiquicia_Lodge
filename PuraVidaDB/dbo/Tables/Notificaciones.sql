CREATE TABLE [dbo].[Notificaciones] (
    [IdNotificacion]   INT           IDENTITY (1, 1) NOT NULL,
    [IdUsuario]        INT           NOT NULL,
    [TipoNotificacion] VARCHAR (50)  NOT NULL,
    [Titulo]           VARCHAR (200) NOT NULL,
    [Mensaje]          VARCHAR (500) NOT NULL,
    [Leida]            BIT           DEFAULT ((0)) NULL,
    [FechaEnvio]       DATETIME      DEFAULT (getdate()) NULL,
    [FechaLectura]     DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([IdNotificacion] ASC),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

