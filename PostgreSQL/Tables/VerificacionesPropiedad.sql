CREATE TABLE VerificacionesPropiedad (
    IdVerificacion     SERIAL NOT NULL,
    IdPropiedad        INT           NOT NULL,
    FechaVerificacion  DATE          NOT NULL,
    VerificadoPor      VARCHAR (100) NULL,
    MetodoVerificacion VARCHAR (50)  NULL,
    EstadoVerificacion VARCHAR (20)  NULL,
    Comentarios        VARCHAR (500) NULL,
    FechaExpiracion    DATE          NULL,
    PRIMARY KEY (IdVerificacion),
    CHECK (EstadoVerificacion='Expirado' OR EstadoVerificacion='Rechazado' OR EstadoVerificacion='Pendiente' OR EstadoVerificacion='Verificado'),
    CHECK (MetodoVerificacion='Fotos georreferenciadas' OR MetodoVerificacion='Documentos' OR MetodoVerificacion='Video llamada' OR MetodoVerificacion='Visita presencial'),
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



