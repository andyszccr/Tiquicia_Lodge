CREATE TABLE PoliticasCancelacion (
    IdPolitica          SERIAL NOT NULL,
    NombrePolitica      VARCHAR (50)   NOT NULL,
    Descripcion         VARCHAR (300)  NULL,
    ReembolsoPorcentaje DECIMAL (5, 2) NOT NULL,
    DiasAntelacion      INT            NULL,
    Activo              BOOLEAN            DEFAULT TRUE NULL,
    PRIMARY KEY (IdPolitica),
    UNIQUE (NombrePolitica),
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



