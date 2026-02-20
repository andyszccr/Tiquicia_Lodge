CREATE TABLE [dbo].[ListasDeseos] (
    [IdLista]       INT           IDENTITY (1, 1) NOT NULL,
    [IdUsuario]     INT           NOT NULL,
    [NombreLista]   VARCHAR (100) DEFAULT ('Mis favoritos') NULL,
    [FechaCreacion] DATETIME      DEFAULT (getdate()) NULL,
    [Privada]       BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdLista] ASC),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

