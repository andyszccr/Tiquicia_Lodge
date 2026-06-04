CREATE TABLE ComerciosCercanos (
    IdComercio           SERIAL NOT NULL,
    NombreComercio       VARCHAR (200)     NOT NULL,
    TipoComercio         VARCHAR (50)      NOT NULL,
    Telefono             VARCHAR (20)      NULL,
    Direccion            VARCHAR (300)     NULL,
    HorarioAtencion      VARCHAR (200)     NULL,
    UbicacionCoordenadas GEOGRAPHY(POINT, 4326) NULL,
    Activo               BOOLEAN               DEFAULT TRUE NULL,
    PRIMARY KEY (IdComercio),
    CHECK (TipoComercio='Otro' OR TipoComercio='Taller' OR TipoComercio='Gasolinera' OR TipoComercio='Clínica' OR TipoComercio='Banco' OR TipoComercio='Restaurante' OR TipoComercio='Farmacia' OR TipoComercio='Supermercado')
);


