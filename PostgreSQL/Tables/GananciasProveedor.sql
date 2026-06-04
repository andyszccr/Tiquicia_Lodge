CREATE TABLE GananciasProveedor (
    IdGanancia     SERIAL NOT NULL,
    IdPagoComision INT             NOT NULL,
    IdReserva      INT             NOT NULL,
    MontoProveedor DECIMAL (18, 2) NOT NULL,
    PRIMARY KEY (IdGanancia),
    FOREIGN KEY (IdPagoComision) REFERENCES PagosComisiones (IdPagoComision),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
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



