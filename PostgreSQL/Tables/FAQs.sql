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
    FOREIGN KEY (ModificadoPor) REFERENCES Usuarios (IdUsuario)
);


