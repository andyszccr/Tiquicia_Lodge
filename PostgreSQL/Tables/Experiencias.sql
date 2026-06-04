CREATE TABLE Experiencias (
    IdExperiencia     SERIAL NOT NULL,
    IdCategoria       INT             NOT NULL,
    NombreExperiencia VARCHAR (200)   NOT NULL,
    Descripcion       VARCHAR (500)   NULL,
    DuracionHoras     INT             NULL,
    CostoAproximado   DECIMAL (18, 2) NULL,
    IdMoneda          INT             NULL,
    RecomendadoPor    BOOLEAN             DEFAULT TRUE NULL,
    Activo            BOOLEAN             DEFAULT TRUE NULL,
    PRIMARY KEY (IdExperiencia),
    FOREIGN KEY (IdCategoria) REFERENCES CategoriaExperiencia (IdCategoria),
    FOREIGN KEY (IdMoneda) REFERENCES Monedas (IdMoneda),
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



