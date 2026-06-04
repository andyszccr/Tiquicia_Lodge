CREATE TABLE Comisiones (
    IdComision         SERIAL NOT NULL,
    IdReserva          INT             NOT NULL,
    IdProveedor        INT             NOT NULL,
    PorcentajeAplicado DECIMAL (5, 2)  NOT NULL,
    MontoComision      DECIMAL (18, 2) NOT NULL,
    FechaCalculo       TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    Pagada             BOOLEAN             DEFAULT FALSE NULL,
    FechaPago          TIMESTAMP        NULL,
    PRIMARY KEY (IdComision),
    FOREIGN KEY (IdProveedor) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    UNIQUE (IdReserva),
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



