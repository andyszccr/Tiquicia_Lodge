CREATE TABLE BitacoraAcciones (
    IdBitacora       SERIAL NOT NULL,
    IdUsuario        INT           NULL,
    Accion           VARCHAR (100) NOT NULL,
    Descripcion      VARCHAR (500) NULL,
    IPAddress        VARCHAR (45)  NULL,
    Fecha            TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    TablaAfectada    VARCHAR (100) NULL,
    RegistroAfectado INT           NULL,
    PRIMARY KEY (IdBitacora),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


