CREATE TABLE FAQs (
    IdFAQ             SERIAL NOT NULL,
    IdCategoriaFAQ    INT            NOT NULL,
    Pregunta          VARCHAR (300)  NOT NULL,
    Respuesta         VARCHAR (1000) NOT NULL,
    Orden             INT            DEFAULT 0 NULL,
    VecesVista        INT            DEFAULT 0 NULL,
    Activo            BOOLEAN            DEFAULT TRUE NULL,
    CreadoPor         INT            NOT NULL,
    FechaCreacion     TIMESTAMP       DEFAULT CURRENT_TIMESTAMP NULL,
    ModificadoPor     INT            NULL,
    FechaModificacion TIMESTAMP       NULL,
    PRIMARY KEY (IdFAQ),
    FOREIGN KEY (CreadoPor) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdCategoriaFAQ) REFERENCES CategoriasFAQ (IdCategoriaFAQ),
    FOREIGN KEY (ModificadoPor) REFERENCES Usuarios (IdUsuario),
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



