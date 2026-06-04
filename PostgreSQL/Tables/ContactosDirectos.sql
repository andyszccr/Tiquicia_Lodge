CREATE TABLE ContactosDirectos (
    IdContacto       SERIAL NOT NULL,
    IdCliente        INT           NOT NULL,
    IdPropiedad      INT           NOT NULL,
    FechaContacto    TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    TipoContacto     VARCHAR (20)  NULL,
    DuracionSegundos INT           NULL,
    Resumen          VARCHAR (200) NULL,
    PRIMARY KEY (IdContacto),
    CHECK (TipoContacto='Visita' OR TipoContacto='Correo' OR TipoContacto='SitioWeb' OR TipoContacto='Llamada' OR TipoContacto='WhatsApp'),
    FOREIGN KEY (IdCliente) REFERENCES Usuarios (IdUsuario),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


