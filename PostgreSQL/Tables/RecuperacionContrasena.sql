CREATE TABLE RecuperacionContrasena (
    IdSolicitud     SERIAL NOT NULL,
    IdUsuario       INT           NOT NULL,
    Token           VARCHAR (255) NOT NULL,
    FechaSolicitud  TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    FechaExpiracion TIMESTAMP      NOT NULL,
    Usada           BOOLEAN           DEFAULT FALSE NULL,
    PRIMARY KEY (IdSolicitud),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario),
    UNIQUE (Token)
);


