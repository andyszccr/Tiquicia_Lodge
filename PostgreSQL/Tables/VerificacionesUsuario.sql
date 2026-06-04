CREATE TABLE VerificacionesUsuario (
    IdVerificacion     SERIAL NOT NULL,
    IdUsuario          INT           NOT NULL,
    TipoVerificacion   VARCHAR (50)  NULL,
    Verificado         BOOLEAN           DEFAULT FALSE NULL,
    FechaVerificacion  TIMESTAMP      NULL,
    MetodoVerificacion VARCHAR (100) NULL,
    PRIMARY KEY (IdVerificacion),
    CHECK (TipoVerificacion='RedSocial' OR TipoVerificacion='Correo' OR TipoVerificacion='Telefono' OR TipoVerificacion='Identificacion'),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario),
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



