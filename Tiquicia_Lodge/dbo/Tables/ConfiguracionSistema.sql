CREATE TABLE [dbo].[ConfiguracionSistema] (
    [IdConfiguracion]    INT           IDENTITY (1, 1) NOT NULL,
    [IdModulo]           INT           DEFAULT ((1)) NOT NULL,
    [Clave]              VARCHAR (100) NOT NULL,
    [Valor]              VARCHAR (500) NOT NULL,
    [TipoDato]           VARCHAR (20)  DEFAULT ('string') NULL,
    [Descripcion]        VARCHAR (200) NULL,
    [FechaActualizacion] DATETIME      DEFAULT (getdate()) NULL,
    [IdUsuarioModifico]  INT           NULL,
    PRIMARY KEY CLUSTERED ([IdConfiguracion] ASC),
    FOREIGN KEY ([IdModulo]) REFERENCES [dbo].[ModulosSistema] ([IdModulo]),
    FOREIGN KEY ([IdUsuarioModifico]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    UNIQUE NONCLUSTERED ([Clave] ASC)
);

