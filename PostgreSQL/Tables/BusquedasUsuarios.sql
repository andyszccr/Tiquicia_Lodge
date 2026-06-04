CREATE TABLE BusquedasUsuarios (
    IdBusqueda       SERIAL NOT NULL,
    IdUsuario        INT           NULL,
    TerminosBusqueda VARCHAR (500) NULL,
    FiltrosAplicados VARCHAR (500) NULL,
    FechaBusqueda    TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    ResultadosCount  INT           NULL,
    PRIMARY KEY (IdBusqueda),
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



