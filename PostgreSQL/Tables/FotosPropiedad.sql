CREATE TABLE FotosPropiedad (
    IdFoto      SERIAL NOT NULL,
    IdPropiedad INT           NOT NULL,
    UrlFoto     VARCHAR (500) NOT NULL,
    Titulo      VARCHAR (200) NULL,
    Descripcion VARCHAR (300) NULL,
    Orden       INT           DEFAULT 0 NULL,
    EsPrincipal BOOLEAN           DEFAULT FALSE NULL,
    FechaSubida TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    Activo      BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdFoto),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


