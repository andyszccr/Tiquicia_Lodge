CREATE TABLE ModulosSistema (
    IdModulo     SERIAL NOT NULL,
    NombreModulo VARCHAR (50)  NOT NULL,
    Descripcion  VARCHAR (200) NULL,
    Activo       BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdModulo),
    UNIQUE (NombreModulo)
);


