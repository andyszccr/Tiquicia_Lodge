CREATE TABLE Pagos (
    IdPago            SERIAL NOT NULL,
    IdReserva         INT             NOT NULL,
    Monto_CRC         DECIMAL (18, 2) NOT NULL,
    MontoUSD          DECIMAL (18, 2) NULL,
    FechaPago         TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    MetodoPago        VARCHAR (30)    NOT NULL,
    EstadoPago        VARCHAR (20)    NULL,
    ComprobanteURL    VARCHAR (500)   NULL,
    TelefonoSINPE     VARCHAR (20)    NULL,
    ReferenciaBanco   VARCHAR (100)   NULL,
    IdUsuarioRegistra INT             NOT NULL,
    PRIMARY KEY (IdPago),
    CHECK (EstadoPago='Reembolsado' OR EstadoPago='Fallido' OR EstadoPago='Completado' OR EstadoPago='Pendiente'),
    CHECK (MetodoPago='PayPal' OR MetodoPago='Transferencia' OR MetodoPago='Efectivo' OR MetodoPago='Tarjeta' OR MetodoPago='SINPE Movil'),
    FOREIGN KEY (IdReserva) REFERENCES Reservas (IdReserva),
    FOREIGN KEY (IdUsuarioRegistra) REFERENCES Usuarios (IdUsuario),
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



