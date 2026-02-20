CREATE TABLE [dbo].[EvidenciasReporte] (
    [IdEvidencia]   INT           IDENTITY (1, 1) NOT NULL,
    [IdReporte]     INT           NOT NULL,
    [TipoEvidencia] VARCHAR (30)  NULL,
    [UrlArchivo]    VARCHAR (500) NOT NULL,
    [Descripcion]   VARCHAR (200) NULL,
    [FechaSubida]   DATETIME      DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdEvidencia] ASC),
    CHECK ([TipoEvidencia]='Documento' OR [TipoEvidencia]='Captura' OR [TipoEvidencia]='Foto'),
    FOREIGN KEY ([IdReporte]) REFERENCES [dbo].[Reportes] ([IdReporte])
);

