CREATE TABLE Notificaciones (
    IdNotificacion   SERIAL NOT NULL,
    IdUsuario        INT           NOT NULL,
    TipoNotificacion VARCHAR (50)  NOT NULL,
    Titulo           VARCHAR (200) NOT NULL,
    Mensaje          VARCHAR (500) NOT NULL,
    Leida            BOOLEAN           DEFAULT FALSE NULL,
    FechaEnvio       TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    FechaLectura     TIMESTAMP      NULL,
    PRIMARY KEY (IdNotificacion),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


