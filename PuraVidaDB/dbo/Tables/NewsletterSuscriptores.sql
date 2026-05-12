CREATE TABLE [dbo].[NewsletterSuscriptores] (
    [IdSuscriptor]     INT           IDENTITY (1, 1) NOT NULL,
    [Correo]           VARCHAR (100) NOT NULL,
    [Nombre]           VARCHAR (100) NULL,
    [FechaSuscripcion] DATETIME      DEFAULT (getdate()) NULL,
    [Activo]           BIT           DEFAULT ((1)) NULL,
    [TokenCancelacion] VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([IdSuscriptor] ASC),
    UNIQUE NONCLUSTERED ([Correo] ASC)
);

