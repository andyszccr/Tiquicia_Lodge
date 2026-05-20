CREATE TABLE [dbo].[Distritos] (
    [IdDistrito]     INT           IDENTITY (1, 1) NOT NULL,
    [IdCanton]       INT           NOT NULL,
    [NombreDistrito] VARCHAR (100) NOT NULL,
    [CodigoPostal]   VARCHAR (10)  NULL,
    [Activo]         BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdDistrito] ASC),
    FOREIGN KEY ([IdCanton]) REFERENCES [dbo].[Cantones] ([IdCanton])
);

