CREATE TABLE Descuentos (
    IdDescuento     SERIAL NOT NULL,
    NombreDescuento VARCHAR (100)   NOT NULL,
    TipoDescuento   VARCHAR (30)    NULL,
    ValorDescuento  DECIMAL (10, 2) NOT NULL,
    Condiciones     VARCHAR (300)   NULL,
    FechaInicio     DATE            NULL,
    FechaFin        DATE            NULL,
    Activo          BOOLEAN             DEFAULT TRUE NULL,
    PRIMARY KEY (IdDescuento),
    CHECK (TipoDescuento='MontoFijo' OR TipoDescuento='Porcentaje'),
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



