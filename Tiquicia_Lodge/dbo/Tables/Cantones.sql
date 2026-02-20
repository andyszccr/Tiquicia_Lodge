CREATE TABLE [dbo].[Cantones] (
    [IdCanton]     INT           IDENTITY (1, 1) NOT NULL,
    [IdProvincia]  INT           NOT NULL,
    [NombreCanton] VARCHAR (100) NOT NULL,
    [Activo]       BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdCanton] ASC),
    FOREIGN KEY ([IdProvincia]) REFERENCES [dbo].[Provincias] ([IdProvincia])
);

