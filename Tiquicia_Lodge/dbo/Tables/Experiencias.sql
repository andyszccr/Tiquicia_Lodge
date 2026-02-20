CREATE TABLE [dbo].[Experiencias] (
    [IdExperiencia]     INT             IDENTITY (1, 1) NOT NULL,
    [IdCategoria]       INT             NOT NULL,
    [NombreExperiencia] VARCHAR (200)   NOT NULL,
    [Descripcion]       VARCHAR (500)   NULL,
    [DuracionHoras]     INT             NULL,
    [CostoAproximado]   DECIMAL (18, 2) NULL,
    [IdMoneda]          INT             NULL,
    [RecomendadoPor]    BIT             DEFAULT ((1)) NULL,
    [Activo]            BIT             DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdExperiencia] ASC),
    FOREIGN KEY ([IdCategoria]) REFERENCES [dbo].[CategoriaExperiencia] ([IdCategoria]),
    FOREIGN KEY ([IdMoneda]) REFERENCES [dbo].[Monedas] ([IdMoneda])
);

