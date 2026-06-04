CREATE TABLE ExperienciasCercanas (
    IdPropiedad          INT            NOT NULL,
    IdExperiencia        INT            NOT NULL,
    DistanciaKM          DECIMAL (5, 2) NOT NULL,
    TiempoTraslado       INT            NULL,
    ProveedorExperiencia VARCHAR (100)  NULL,
    TelefonoContacto     VARCHAR (20)   NULL,
    PRIMARY KEY (IdPropiedad, IdExperiencia),
    FOREIGN KEY (IdExperiencia) REFERENCES Experiencias (IdExperiencia),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


