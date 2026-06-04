CREATE TABLE PropiedadEquipamiento (
    IdPropiedad          INT           NOT NULL,
    IdEquipamiento       INT           NOT NULL,
    Cantidad             INT           DEFAULT 1 NULL,
    DescripcionAdicional VARCHAR (200) NULL,
    PRIMARY KEY (IdPropiedad, IdEquipamiento),
    FOREIGN KEY (IdEquipamiento) REFERENCES Equipamiento (IdEquipamiento),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


