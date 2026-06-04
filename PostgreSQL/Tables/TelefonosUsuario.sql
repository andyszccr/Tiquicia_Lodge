CREATE TABLE TelefonosUsuario (
    IdTelefono   SERIAL NOT NULL,
    IdUsuario    INT          NOT NULL,
    Telefono     VARCHAR (20) NOT NULL,
    TipoTelefono VARCHAR (20) NULL,
    EsPrincipal  BOOLEAN          DEFAULT FALSE NULL,
    Activo       BOOLEAN          DEFAULT TRUE NULL,
    PRIMARY KEY (IdTelefono),
    CHECK (TipoTelefono='WhatsApp' OR TipoTelefono='Trabajo' OR TipoTelefono='Fijo' OR TipoTelefono='Celular'),
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



