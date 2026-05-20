CREATE TABLE [dbo].[DocumentosPropiedad] (
    [IdDocumento]       INT           IDENTITY (1, 1) NOT NULL,
    [IdPropiedad]       INT           NOT NULL,
    [TipoDocumento]     VARCHAR (50)  NOT NULL,
    [NombreArchivo]     VARCHAR (200) NOT NULL,
    [UrlArchivo]        VARCHAR (500) NOT NULL,
    [FechaSubida]       DATETIME      DEFAULT (getdate()) NULL,
    [Verificado]        BIT           DEFAULT ((0)) NULL,
    [FechaVerificacion] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([IdDocumento] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

