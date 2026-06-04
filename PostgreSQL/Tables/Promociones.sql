CREATE TABLE Promociones (
    IdPromocion         SERIAL NOT NULL,
    NombrePromo         VARCHAR (100)  NOT NULL,
    Descripcion         VARCHAR (300)  NULL,
    TipoPromo           VARCHAR (30)   NULL,
    PorcentajeDescuento DECIMAL (5, 2) NULL,
    FechaInicio         DATE           NOT NULL,
    FechaFin            DATE           NOT NULL,
    Activo              BOOLEAN            DEFAULT TRUE NULL,
    PRIMARY KEY (IdPromocion),
    CHECK (TipoPromo='Lanzamiento' OR TipoPromo='TemporadaBaja' OR TipoPromo='Feriado' OR TipoPromo='FindeSemana'),
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



