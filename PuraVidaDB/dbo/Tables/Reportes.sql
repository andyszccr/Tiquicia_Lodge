CREATE TABLE [dbo].[Reportes] (
    [IdReporte]            INT           IDENTITY (1, 1) NOT NULL,
    [IdUsuarioReporta]     INT           NOT NULL,
    [IdUsuarioReportado]   INT           NULL,
    [IdPropiedadReportada] INT           NULL,
    [IdReservaRelacionada] INT           NULL,
    [Motivo]               VARCHAR (100) NOT NULL,
    [Descripcion]          VARCHAR (500) NOT NULL,
    [FechaReporte]         DATETIME      DEFAULT (getdate()) NULL,
    [IdEstado]             INT           NOT NULL,
    [Resolucion]           VARCHAR (500) NULL,
    [FechaResolucion]      DATETIME      NULL,
    [ResueltoPor]          INT           NULL,
    PRIMARY KEY CLUSTERED ([IdReporte] ASC),
    FOREIGN KEY ([IdEstado]) REFERENCES [dbo].[Estados] ([IdEstado]),
    FOREIGN KEY ([IdPropiedadReportada]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    FOREIGN KEY ([IdReservaRelacionada]) REFERENCES [dbo].[Reservas] ([IdReserva]),
    FOREIGN KEY ([IdUsuarioReporta]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    FOREIGN KEY ([IdUsuarioReportado]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    FOREIGN KEY ([ResueltoPor]) REFERENCES [dbo].[Usuarios] ([IdUsuario])
);

