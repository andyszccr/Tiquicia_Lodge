CREATE TABLE [dbo].[ListaPropiedades] (
    [IdLista]       INT      NOT NULL,
    [IdPropiedad]   INT      NOT NULL,
    [FechaAgregado] DATETIME DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdLista] ASC, [IdPropiedad] ASC),
    FOREIGN KEY ([IdLista]) REFERENCES [dbo].[ListasDeseos] ([IdLista]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

