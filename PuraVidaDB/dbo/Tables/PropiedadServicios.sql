CREATE TABLE [dbo].[PropiedadServicios] (
    [IdPropiedad]          INT           NOT NULL,
    [IdServicio]           INT           NOT NULL,
    [DescripcionAdicional] VARCHAR (200) NULL,
    [IncluidoEnPrecio]     BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdPropiedad] ASC, [IdServicio] ASC),
    FOREIGN KEY ([IdPropiedad]) REFERENCES [dbo].[Propiedades] ([IdPropiedad]),
    FOREIGN KEY ([IdServicio]) REFERENCES [dbo].[ServiciosPropiedad] ([IdServicio])
);

