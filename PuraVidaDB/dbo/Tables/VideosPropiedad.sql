CREATE TABLE [dbo].[VideosPropiedad] (
    [IdVideo]     INT           IDENTITY (1, 1) NOT NULL,
    [IdPropiedad] INT           NOT NULL,
    [UrlVideo]    VARCHAR (500) NOT NULL,
    [TipoVideo]   VARCHAR (20)  NULL,
    [Titulo]      VARCHAR (200) NULL,
    [Descripcion] VARCHAR (300) NULL,
    [Orden]       INT           DEFAULT ((0)) NULL,
    [Activo]      BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdVideo] ASC),
    CHECK ([TipoVideo]='Local' OR [TipoVideo]='Vimeo' OR [TipoVideo]='YouTube'),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

