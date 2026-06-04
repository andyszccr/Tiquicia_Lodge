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
    UNIQUE (NombrePlan),
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



