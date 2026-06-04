CREATE TABLE ServiciosPropiedad (
    IdServicio     SERIAL NOT NULL,
    IdCategoria    INT           NOT NULL,
    NombreServicio VARCHAR (100) NOT NULL,
    Descripcion    VARCHAR (200) NULL,
    Icono          VARCHAR (50)  NULL,
    Activo         BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdServicio),
    FOREIGN KEY (IdCategoria) REFERENCES CategoriaServicio (IdCategoria),
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



