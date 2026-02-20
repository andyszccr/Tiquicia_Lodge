CREATE TABLE [dbo].[Estados] (
    [IdEstado]     INT          IDENTITY (1, 1) NOT NULL,
    [NombreEstado] VARCHAR (50) NOT NULL,
    [TipoEntidad]  VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([IdEstado] ASC),
    UNIQUE NONCLUSTERED ([NombreEstado] ASC)
);

