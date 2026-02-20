CREATE TABLE [dbo].[RespuestasCalificacion] (
    [IdRespuesta]    INT           IDENTITY (1, 1) NOT NULL,
    [IdCalificacion] INT           NOT NULL,
    [IdUsuario]      INT           NOT NULL,
    [Respuesta]      VARCHAR (500) NOT NULL,
    [Fecha]          DATETIME      DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdRespuesta] ASC),
    FOREIGN KEY ([IdCalificacion]) REFERENCES [dbo].[CalificacionesPropiedad] ([IdCalificacion]),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

