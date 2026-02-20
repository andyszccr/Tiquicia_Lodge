CREATE TABLE [dbo].[SellosConfianza] (
    [IdSello]     INT           IDENTITY (1, 1) NOT NULL,
    [NombreSello] VARCHAR (50)  NOT NULL,
    [Descripcion] VARCHAR (200) NULL,
    [Icono]       VARCHAR (50)  NULL,
    [Activo]      BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdSello] ASC),
    UNIQUE NONCLUSTERED ([NombreSello] ASC)
);

