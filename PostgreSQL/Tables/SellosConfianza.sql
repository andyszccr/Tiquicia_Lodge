CREATE TABLE SellosConfianza (
    IdSello     SERIAL NOT NULL,
    NombreSello VARCHAR (50)  NOT NULL,
    Descripcion VARCHAR (200) NULL,
    Icono       VARCHAR (50)  NULL,
    Activo      BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdSello),
    UNIQUE (NombreSello)
);


