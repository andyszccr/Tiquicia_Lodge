CREATE TABLE [dbo].[BusquedasUsuarios] (
    [IdBusqueda]       INT           IDENTITY (1, 1) NOT NULL,
    [IdUsuario]        INT           NULL,
    [TerminosBusqueda] VARCHAR (500) NULL,
    [FiltrosAplicados] VARCHAR (500) NULL,
    [FechaBusqueda]    DATETIME      DEFAULT (getdate()) NULL,
    [ResultadosCount]  INT           NULL,
    PRIMARY KEY CLUSTERED ([IdBusqueda] ASC),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

