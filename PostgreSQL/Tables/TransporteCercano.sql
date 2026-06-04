CREATE TABLE TransporteCercano (
    IdTransporte         SERIAL NOT NULL,
    TipoTransporte       VARCHAR (50)      NOT NULL,
    Nombre               VARCHAR (200)     NOT NULL,
    DistanciaReferencia  VARCHAR (100)     NULL,
    Telefono             VARCHAR (20)      NULL,
    UbicacionCoordenadas GEOGRAPHY(POINT, 4326) NULL,
    PRIMARY KEY (IdTransporte),
    CHECK (TipoTransporte='Terminal' OR TipoTransporte='Alquiler de Carros' OR TipoTransporte='Estación de Tren' OR TipoTransporte='Taxi' OR TipoTransporte='Parada de Bus')
);


