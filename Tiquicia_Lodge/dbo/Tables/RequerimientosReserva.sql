CREATE TABLE [dbo].[RequerimientosReserva] (
    [IdRequerimiento]     INT           IDENTITY (1, 1) NOT NULL,
    [NombreRequerimiento] VARCHAR (100) NOT NULL,
    [Descripcion]         VARCHAR (300) NULL,
    [EsObligatorio]       BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([IdRequerimiento] ASC),
    UNIQUE NONCLUSTERED ([NombreRequerimiento] ASC)
);

