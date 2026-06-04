CREATE TABLE CorreosUsuario (
    IdCorreo    SERIAL NOT NULL,
    IdUsuario   INT           NOT NULL,
    Correo      VARCHAR (100) NOT NULL,
    EsPrincipal BOOLEAN           DEFAULT FALSE NULL,
    Activo      BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdCorreo),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


