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
    FOREIGN KEY (IdMoneda) REFERENCES Monedas (IdMoneda)
);


