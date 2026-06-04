CREATE TABLE TelefonosUsuario (
    IdTelefono   SERIAL NOT NULL,
    IdUsuario    INT          NOT NULL,
    Telefono     VARCHAR (20) NOT NULL,
    TipoTelefono VARCHAR (20) NULL,
    EsPrincipal  BOOLEAN          DEFAULT FALSE NULL,
    Activo       BOOLEAN          DEFAULT TRUE NULL,
    PRIMARY KEY (IdTelefono),
    CHECK (TipoTelefono='WhatsApp' OR TipoTelefono='Trabajo' OR TipoTelefono='Fijo' OR TipoTelefono='Celular'),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


