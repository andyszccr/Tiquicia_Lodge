CREATE TABLE RequerimientosReserva (
    IdRequerimiento     SERIAL NOT NULL,
    NombreRequerimiento VARCHAR (100) NOT NULL,
    Descripcion         VARCHAR (300) NULL,
    EsObligatorio       BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdRequerimiento),
    UNIQUE (NombreRequerimiento)
);


