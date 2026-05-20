CREATE TABLE [dbo].[FotosPropiedad] (
    [IdFoto]      INT           IDENTITY (1, 1) NOT NULL,
    [IdPropiedad] INT           NOT NULL,
    [UrlFoto]     VARCHAR (500) NOT NULL,
    [Titulo]      VARCHAR (200) NULL,
    [Descripcion] VARCHAR (300) NULL,
    [Orden]       INT           DEFAULT ((0)) NULL,
    [EsPrincipal] BIT           DEFAULT ((0)) NULL,
    [FechaSubida] DATETIME      DEFAULT (getdate()) NULL,
    [Activo]      BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdFoto] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

