CREATE TABLE Nacionalidades (
    IdNacionalidad SERIAL NOT NULL,
    Nacionalidad   VARCHAR (100) NOT NULL,
    CodigoISO      CHAR (2)      NULL,
    Activo         BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdNacionalidad),
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



