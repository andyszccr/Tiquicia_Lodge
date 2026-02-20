CREATE TABLE [dbo].[LogsErrores] (
    [IdError]      INT            IDENTITY (1, 1) NOT NULL,
    [Fecha]        DATETIME       DEFAULT (getdate()) NULL,
    [Usuario]      INT            NULL,
    [Modulo]       VARCHAR (100)  NULL,
    [ErrorMensaje] VARCHAR (1000) NOT NULL,
    [ErrorDetalle] TEXT           NULL,
    [IPAddress]    VARCHAR (45)   NULL,
    [Resuelto]     BIT            DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([IdError] ASC),
    FOREIGN KEY ([Usuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

