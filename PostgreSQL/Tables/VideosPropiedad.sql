CREATE TABLE VideosPropiedad (
    IdVideo     SERIAL NOT NULL,
    IdPropiedad INT           NOT NULL,
    UrlVideo    VARCHAR (500) NOT NULL,
    TipoVideo   VARCHAR (20)  NULL,
    Titulo      VARCHAR (200) NULL,
    Descripcion VARCHAR (300) NULL,
    Orden       INT           DEFAULT 0 NULL,
    Activo      BOOLEAN           DEFAULT TRUE NULL,
    PRIMARY KEY (IdVideo),
    CHECK (TipoVideo='Local' OR TipoVideo='Vimeo' OR TipoVideo='YouTube'),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


