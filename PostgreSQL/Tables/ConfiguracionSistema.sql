CREATE TABLE ConfiguracionSistema (
    IdConfiguracion    SERIAL NOT NULL,
    IdModulo           INT           DEFAULT 1 NOT NULL,
    Clave              VARCHAR (100) NOT NULL,
    Valor              VARCHAR (500) NOT NULL,
    TipoDato           VARCHAR (20)  DEFAULT ('string') NULL,
    Descripcion        VARCHAR (200) NULL,
    FechaActualizacion TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    IdUsuarioModifico  INT           NULL,
    PRIMARY KEY (IdConfiguracion),
    FOREIGN KEY (IdModulo) REFERENCES ModulosSistema (IdModulo),
    FOREIGN KEY (IdUsuarioModifico) REFERENCES Usuarios (IdUsuario),
    UNIQUE (Clave),
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



