CREATE TABLE [dbo].[PreciosTemporada] (
    [IdPropiedad]         INT             NOT NULL,
    [IdTemporada]         INT             NOT NULL,
    [PrecioPersonalizado] DECIMAL (18, 2) NULL,
    [Activo]              BIT             DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdTemporada] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    FOREIGN KEY ([IdTemporada]) REFERENCES [dbo].[Temporadas] ([IdTemporada])
);

