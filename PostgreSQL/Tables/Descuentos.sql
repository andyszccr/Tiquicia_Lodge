CREATE TABLE Descuentos (
    IdDescuento     SERIAL NOT NULL,
    NombreDescuento VARCHAR (100)   NOT NULL,
    TipoDescuento   VARCHAR (30)    NULL,
    ValorDescuento  DECIMAL (10, 2) NOT NULL,
    Condiciones     VARCHAR (300)   NULL,
    FechaInicio     DATE            NULL,
    FechaFin        DATE            NULL,
    Activo          BOOLEAN             DEFAULT TRUE NULL,
    PRIMARY KEY (IdDescuento),
    CHECK (TipoDescuento='MontoFijo' OR TipoDescuento='Porcentaje')
);


