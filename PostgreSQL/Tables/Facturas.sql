CREATE TABLE Facturas (
    IdFactura     SERIAL NOT NULL,
    IdReserva     INT             NOT NULL,
    NumeroFactura VARCHAR (50)    NOT NULL,
    FechaEmision  TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    MontoTotal    DECIMAL (18, 2) NOT NULL,
    PdfURL        VARCHAR (500)   NULL,
    Enviada       BOOLEAN             DEFAULT FALSE NULL,
    PRIMARY KEY (IdFactura),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    UNIQUE (NumeroFactura),
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



