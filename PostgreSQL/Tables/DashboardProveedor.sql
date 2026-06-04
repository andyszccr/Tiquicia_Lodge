CREATE TABLE DashboardProveedor (
    IdDashboard         SERIAL NOT NULL,
    IdProveedor         INT             NOT NULL,
    Fecha               DATE            NOT NULL,
    VistasPropiedades   INT             DEFAULT 0 NULL,
    ContactosRecibidos  INT             DEFAULT 0 NULL,
    ReservasConfirmadas INT             DEFAULT 0 NULL,
    Cancelaciones       INT             DEFAULT 0 NULL,
    IngresosGenerados   DECIMAL (18, 2) DEFAULT 0 NULL,
    RatingPromedio      DECIMAL (3, 2)  NULL,
    PRIMARY KEY (IdDashboard),
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



