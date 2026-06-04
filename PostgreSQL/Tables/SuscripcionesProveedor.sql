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
    FOREIGN KEY (IdProveedor) REFERENCES Usuarios (IdUsuario),
    -- Columnas de Auditoría (DB Senior Audit Standard)
    CreadoPor           VARCHAR(100)      DEFAULT CURRENT_USER,
    FechaCreacion       TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    ModificadoPor       VARCHAR(100)      NULL,
    FechaModificacion   TIMESTAMP         NULL,
    IpOrigen            VARCHAR(45)       NULL,
    Dispositivo         VARCHAR(255)      NULL,
    EsEliminado         BOOLEAN           DEFAULT FALSE,
    FechaEliminacion    TIMESTAMP         NULL,
    UsuarioElimino      VARCHAR(100)      NULL
);



