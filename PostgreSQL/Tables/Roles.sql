CREATE TABLE Roles (
    IdRol       SERIAL NOT NULL,
    NombreRol   VARCHAR (50)  NOT NULL,
    Descripcion VARCHAR (200) NULL,
    PRIMARY KEY (IdRol),
    UNIQUE (NombreRol)
);


