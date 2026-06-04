CREATE TABLE Temporadas (
    IdTemporada         SERIAL NOT NULL,
    NombreTemporada     VARCHAR (50)   NOT NULL,
    Descripcion         VARCHAR (200)  NULL,
    FechaInicio         DATE           NOT NULL,
    FechaFin            DATE           NOT NULL,
    FactorMultiplicador DECIMAL (3, 2) DEFAULT ((1.0)) NULL,
    Activo              BOOLEAN            DEFAULT TRUE NULL,
    PRIMARY KEY (IdTemporada),
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



