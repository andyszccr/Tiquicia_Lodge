CREATE TABLE Sesiones (
    IdSesion        SERIAL NOT NULL,
    IdUsuario       INT           NOT NULL,
    Token           VARCHAR (500) NOT NULL,
    FechaInicio     TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    FechaExpiracion TIMESTAMP      NOT NULL,
    IPAddress       VARCHAR (45)  NULL,
    UserAgent       VARCHAR (500) NULL,
    Activa          BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdSesion),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario),
    UNIQUE (Token)
);


