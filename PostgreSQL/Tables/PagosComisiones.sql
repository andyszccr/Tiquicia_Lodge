CREATE TABLE PagosComisiones (
    IdPagoComision SERIAL NOT NULL,
    IdProveedor    INT             NOT NULL,
    PeriodoInicio  DATE            NOT NULL,
    PeriodoFin     DATE            NOT NULL,
    MontoTotal     DECIMAL (18, 2) NOT NULL,
    FechaPago      TIMESTAMP        DEFAULT CURRENT_TIMESTAMP NULL,
    MetodoPago     VARCHAR (30)    NOT NULL,
    ComprobanteURL VARCHAR (500)   NULL,
    PRIMARY KEY (IdPagoComision),
    FOREIGN KEY (IdProveedor) REFERENCES Usuarios (IdUsuario),
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



