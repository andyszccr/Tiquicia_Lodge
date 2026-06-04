CREATE TABLE ConfiguracionSistema (
    IdConfiguracion    SERIAL NOT NULL,
    IdModulo           INT           DEFAULT 1 NOT NULL,
    Clave              VARCHAR (100) NOT NULL,
    Valor              VARCHAR (500) NOT NULL,
    TipoDato           VARCHAR (20)  DEFAULT ('string') NULL,
    Descripcion        VARCHAR (200) NULL,
    FechaActualizacion TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    IdUsuarioModifico  INT           NULL,
    PRIMARY KEY (IdConfiguracion),
    FOREIGN KEY (IdModulo) REFERENCES ModulosSistema (IdModulo),
    FOREIGN KEY (IdUsuarioModifico) REFERENCES Usuarios (IdUsuario),
    UNIQUE (Clave)
);


