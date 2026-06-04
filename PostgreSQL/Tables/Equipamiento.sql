CREATE TABLE Equipamiento (
    IdEquipamiento     SERIAL NOT NULL,
    IdCategoria        INT           NOT NULL,
    NombreEquipamiento VARCHAR (100) NOT NULL,
    Descripcion        VARCHAR (200) NULL,
    Icono              VARCHAR (50)  NULL,
    Activo             BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdEquipamiento),
    FOREIGN KEY (IdCategoria) REFERENCES CategoriaEquipamiento (IdCategoria)
);


