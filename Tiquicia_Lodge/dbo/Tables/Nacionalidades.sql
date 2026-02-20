CREATE TABLE [dbo].[Nacionalidades] (
    [IdNacionalidad] INT           IDENTITY (1, 1) NOT NULL,
    [Nacionalidad]   VARCHAR (100) NOT NULL,
    [CodigoISO]      CHAR (2)      NULL,
    [Activo]         BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdNacionalidad] ASC)
);

