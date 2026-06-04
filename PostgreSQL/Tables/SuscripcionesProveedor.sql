CREATE TABLE SuscripcionesProveedor (
    IdSuscripcion     SERIAL NOT NULL,
    IdProveedor       INT           NOT NULL,
    IdPlan            INT           NOT NULL,
    FechaInicio       DATE          NOT NULL,
    FechaFin          DATE          NULL,
    Activa            BOOLEAN           DEFAULT TRUE NULL,
    MotivoCancelacion VARCHAR (200) NULL,
    PRIMARY KEY (IdSuscripcion),
    FOREIGN KEY (IdPlan) REFERENCES PlanesProveedor (IdPlan),
    FOREIGN KEY (IdProveedor) REFERENCES Usuarios (IdUsuario)
);


