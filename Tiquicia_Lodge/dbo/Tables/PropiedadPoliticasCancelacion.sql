CREATE TABLE [dbo].[PropiedadPoliticasCancelacion] (
    [IdPropiedad] INT NOT NULL,
    [IdPolitica]  INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdPolitica] ASC),
    FOREIGN KEY ([IdPolitica]) REFERENCES [dbo].[PoliticasCancelacion] ([IdPolitica]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

