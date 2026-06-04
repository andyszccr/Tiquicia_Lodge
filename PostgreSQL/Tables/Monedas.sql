CREATE TABLE Monedas (
    IdMoneda     SERIAL NOT NULL,
    NombreMoneda VARCHAR (50) NOT NULL,
    CodigoISO    CHAR (3)     NOT NULL,
    Simbolo      CHAR (3)     NOT NULL,
    PRIMARY KEY (IdMoneda),
    UNIQUE (CodigoISO),
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



