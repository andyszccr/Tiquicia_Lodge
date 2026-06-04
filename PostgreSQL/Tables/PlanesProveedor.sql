CREATE TABLE PlanesProveedor (
    IdPlan               SERIAL NOT NULL,
    NombrePlan           VARCHAR (50)    NOT NULL,
    Descripcion          VARCHAR (200)   NULL,
    PorcentajeComision   DECIMAL (5, 2)  NOT NULL,
    CostoMensual_CRC     DECIMAL (18, 2) NULL,
    MaximoPropiedades    INT             NULL,
    SoportePrioritario   BOOLEAN             DEFAULT FALSE NULL,
    VerificacionGratuita BOOLEAN             DEFAULT FALSE NULL,
    Activo               BOOLEAN             DEFAULT TRUE NULL,
    PRIMARY KEY (IdPlan),
    UNIQUE (NombrePlan)
);


