CREATE TABLE VistasPropiedad (
    IdVista         SERIAL NOT NULL,
    IdPropiedad     INT          NOT NULL,
    IdUsuario       INT          NULL,
    FechaVista      TIMESTAMP     DEFAULT CURRENT_TIMESTAMP NULL,
    IPAddress       VARCHAR (45) NULL,
    TipoDispositivo VARCHAR (20) NULL,
    PRIMARY KEY (IdVista),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


