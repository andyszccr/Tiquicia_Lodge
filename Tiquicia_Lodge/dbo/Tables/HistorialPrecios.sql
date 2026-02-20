CREATE TABLE [dbo].[HistorialPrecios] (
    [IdHistorial]    INT             IDENTITY (1, 1) NOT NULL,
    [IdPropiedad]    INT             NOT NULL,
    [PrecioAnterior] DECIMAL (18, 2) NOT NULL,
    [PrecioNuevo]    DECIMAL (18, 2) NOT NULL,
    [FechaCambio]    DATETIME        DEFAULT (getdate()) NULL,
    [MotivoCambio]   VARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([IdHistorial] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad])
);

