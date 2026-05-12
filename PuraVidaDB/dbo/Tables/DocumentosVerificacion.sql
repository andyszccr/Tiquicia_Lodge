CREATE TABLE [dbo].[DocumentosVerificacion] (
    [IdDocumentoVerificacion] INT           IDENTITY (1, 1) NOT NULL,
    [IdVerificacion]          INT           NOT NULL,
    [TipoDocumento]           VARCHAR (50)  NOT NULL,
    [NombreArchivo]           VARCHAR (200) NOT NULL,
    [UrlArchivo]              VARCHAR (500) NOT NULL,
    [FechaSubida]             DATETIME      DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdDocumentoVerificacion] ASC),
    FOREIGN KEY ([IdVerificacion]) REFERENCES [dbo].[VerificacionesPropiedad] ([IdVerificacion])
);

