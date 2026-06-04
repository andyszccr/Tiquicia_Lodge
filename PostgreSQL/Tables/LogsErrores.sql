CREATE TABLE LogsErrores (
    IdError      SERIAL NOT NULL,
    Fecha        TIMESTAMP       DEFAULT CURRENT_TIMESTAMP NULL,
    Usuario      INT            NULL,
    Modulo       VARCHAR (100)  NULL,
    ErrorMensaje VARCHAR (1000) NOT NULL,
    ErrorDetalle TEXT           NULL,
    IPAddress    VARCHAR (45)   NULL,
    Resuelto     BOOLEAN            DEFAULT FALSE NULL,
    PRIMARY KEY (IdError),
    FOREIGN KEY (Usuario) REFERENCES Usuarios (IdUsuario)
);


