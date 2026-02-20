CREATE TABLE [dbo].[BitacoraAcciones] (
    [IdBitacora]       INT           IDENTITY (1, 1) NOT NULL,
    [IdUsuario]        INT           NULL,
    [Accion]           VARCHAR (100) NOT NULL,
    [Descripcion]      VARCHAR (500) NULL,
    [IPAddress]        VARCHAR (45)  NULL,
    [Fecha]            DATETIME      DEFAULT (getdate()) NULL,
    [TablaAfectada]    VARCHAR (100) NULL,
    [RegistroAfectado] INT           NULL,
    PRIMARY KEY CLUSTERED ([IdBitacora] ASC),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

