CREATE TABLE BitacoraAcciones (
    IdBitacora       SERIAL NOT NULL,
    IdUsuario        INT           NULL,
    Accion           VARCHAR (100) NOT NULL,
    Descripcion      VARCHAR (500) NULL,
    IPAddress        VARCHAR (45)  NULL,
    Fecha            TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    TablaAfectada    VARCHAR (100) NULL,
    RegistroAfectado INT           NULL,
    PRIMARY KEY (IdBitacora),
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



