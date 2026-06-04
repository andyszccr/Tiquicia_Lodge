CREATE TABLE ExperienciasCercanas (
    IdPropiedad          INT            NOT NULL,
    IdExperiencia        INT            NOT NULL,
    DistanciaKM          DECIMAL (5, 2) NOT NULL,
    TiempoTraslado       INT            NULL,
    ProveedorExperiencia VARCHAR (100)  NULL,
    TelefonoContacto     VARCHAR (20)   NULL,
    PRIMARY KEY (IdPropiedad, IdExperiencia),
    FOREIGN KEY (IdExperiencia) REFERENCES Experiencias (IdExperiencia),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
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



