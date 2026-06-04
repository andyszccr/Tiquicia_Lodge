CREATE TABLE Reportes (
    IdReporte            SERIAL NOT NULL,
    IdUsuarioReporta     INT           NOT NULL,
    IdUsuarioReportado   INT           NULL,
    IdPropiedadReportada INT           NULL,
    IdReservaRelacionada INT           NULL,
    Motivo               VARCHAR (100) NOT NULL,
    Descripcion          VARCHAR (500) NOT NULL,
    FechaReporte         TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    IdEstado             INT           NOT NULL,
    Resolucion           VARCHAR (500) NULL,
    FechaResolucion      TIMESTAMP      NULL,
    ResueltoPor          INT           NULL,
    PRIMARY KEY (IdReporte),
    FOREIGN KEY (IdEstado) REFERENCES Estados (IdEstado),
    FOREIGN KEY (IdPropiedadReportada) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdReservaRelacionada) REFERENCES Reservas (IdReserva),
    FOREIGN KEY (IdUsuarioReporta) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdUsuarioReportado) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (ResueltoPor) REFERENCES Usuarios (IdUsuario),
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



