CREATE TABLE [dbo].[ModulosSistema] (
    [IdModulo]     INT           IDENTITY (1, 1) NOT NULL,
    [NombreModulo] VARCHAR (50)  NOT NULL,
    [Descripcion]  VARCHAR (200) NULL,
    [Activo]       BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdModulo] ASC),
    UNIQUE NONCLUSTERED ([NombreModulo] ASC)
);

