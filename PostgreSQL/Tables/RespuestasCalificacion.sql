CREATE TABLE RespuestasCalificacion (
    IdRespuesta    SERIAL NOT NULL,
    IdCalificacion INT           NOT NULL,
    IdUsuario      INT           NOT NULL,
    Respuesta      VARCHAR (500) NOT NULL,
    Fecha          TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    PRIMARY KEY (IdRespuesta),
    FOREIGN KEY (IdCalificacion) REFERENCES CalificacionesPropiedad (IdCalificacion),
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



