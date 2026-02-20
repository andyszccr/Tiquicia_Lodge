CREATE TABLE [dbo].[HorariosCheckInOut] (
    [IdHorario]   INT           IDENTITY (1, 1) NOT NULL,
    [IdPropiedad] INT           NOT NULL,
    [TipoHorario] VARCHAR (10)  NULL,
    [HoraDesde]   TIME (7)      NOT NULL,
    [HoraHasta]   TIME (7)      NULL,
    [Flexible]    BIT           DEFAULT ((0)) NULL,
    [Notas]       VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([IdHorario] ASC),
    CHECK ([TipoHorario]='CheckOut' OR [TipoHorario]='CheckIn'),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

