CREATE TABLE [dbo].[VistasPropiedad] (
    [IdVista]         INT          IDENTITY (1, 1) NOT NULL,
    [IdPropiedad]     INT          NOT NULL,
    [IdUsuario]       INT          NULL,
    [FechaVista]      DATETIME     DEFAULT (getdate()) NULL,
    [IPAddress]       VARCHAR (45) NULL,
    [TipoDispositivo] VARCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([IdVista] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

