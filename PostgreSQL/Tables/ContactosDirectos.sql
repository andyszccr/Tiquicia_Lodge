CREATE TABLE ContactosDirectos (
    IdContacto       SERIAL NOT NULL,
    IdCliente        INT           NOT NULL,
    IdPropiedad      INT           NOT NULL,
    FechaContacto    TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    TipoContacto     VARCHAR (20)  NULL,
    DuracionSegundos INT           NULL,
    Resumen          VARCHAR (200) NULL,
    PRIMARY KEY (IdContacto),
    CHECK (TipoContacto='Visita' OR TipoContacto='Correo' OR TipoContacto='SitioWeb' OR TipoContacto='Llamada' OR TipoContacto='WhatsApp'),
    FOREIGN KEY (IdCliente) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
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



