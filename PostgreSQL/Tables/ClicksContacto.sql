CREATE TABLE ClicksContacto (
    IdClick      SERIAL NOT NULL,
    IdPropiedad  INT          NOT NULL,
    IdUsuario    INT          NULL,
    TipoContacto VARCHAR (20) NOT NULL,
    FechaClick   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP NULL,
    PRIMARY KEY (IdClick),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


