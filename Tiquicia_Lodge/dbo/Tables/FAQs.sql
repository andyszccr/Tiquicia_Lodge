CREATE TABLE [dbo].[FAQs] (
    [IdFAQ]             INT            IDENTITY (1, 1) NOT NULL,
    [IdCategoriaFAQ]    INT            NOT NULL,
    [Pregunta]          VARCHAR (300)  NOT NULL,
    [Respuesta]         VARCHAR (1000) NOT NULL,
    [Orden]             INT            DEFAULT ((0)) NULL,
    [VecesVista]        INT            DEFAULT ((0)) NULL,
    [Activo]            BIT            DEFAULT ((1)) NULL,
    [CreadoPor]         INT            NOT NULL,
    [FechaCreacion]     DATETIME       DEFAULT (getdate()) NULL,
    [ModificadoPor]     INT            NULL,
    [FechaModificacion] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([IdFAQ] ASC),
    FOREIGN KEY ([CreadoPor]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    FOREIGN KEY ([IdCategoriaFAQ]) REFERENCES [dbo].[CategoriasFAQ] ([IdCategoriaFAQ]),
    FOREIGN KEY ([ModificadoPor]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

