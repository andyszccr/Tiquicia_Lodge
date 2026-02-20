CREATE TABLE [dbo].[Reservas] (
    [IdReserva]         INT             IDENTITY (1, 1) NOT NULL,
    [IdCliente]         INT             NOT NULL,
    [IdPropiedad]       INT             NOT NULL,
    [FechaEntrada]      DATE            NOT NULL,
    [FechaSalida]       DATE            NOT NULL,
    [CantidadPersonas]  INT             NOT NULL,
    [CantidadNoches]    INT             NOT NULL,
    [PrecioPorNoche]    DECIMAL (18, 2) NOT NULL,
    [Subtotal]          DECIMAL (18, 2) NOT NULL,
    [DescuentoAplicado] DECIMAL (18, 2) DEFAULT ((0)) NULL,
    [Comision]          DECIMAL (18, 2) NOT NULL,
    [Total]             DECIMAL (18, 2) NOT NULL,
    [IdEstado]          INT             NOT NULL,
    [FechaReserva]      DATETIME        DEFAULT (getdate()) NULL,
    [NotasCliente]      VARCHAR (500)   NULL,
    [NotasInternas]     VARCHAR (500)   NULL,
    PRIMARY KEY CLUSTERED ([IdReserva] ASC),
    CHECK ([CantidadPersonas]>(0)),
    FOREIGN KEY ([IdCliente]) REFERENCES [dbo].[Usuarios] ([IdUsuario]),
    FOREIGN KEY ([IdEstado]) REFERENCES [dbo].[Estados] ([IdEstado]),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

