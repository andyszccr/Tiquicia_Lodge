CREATE TABLE VerificacionesUsuario (
    IdVerificacion     SERIAL NOT NULL,
    IdUsuario          INT           NOT NULL,
    TipoVerificacion   VARCHAR (50)  NULL,
    Verificado         BOOLEAN           DEFAULT FALSE NULL,
    FechaVerificacion  TIMESTAMP      NULL,
    MetodoVerificacion VARCHAR (100) NULL,
    PRIMARY KEY (IdVerificacion),
    CHECK (TipoVerificacion='RedSocial' OR TipoVerificacion='Correo' OR TipoVerificacion='Telefono' OR TipoVerificacion='Identificacion'),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


