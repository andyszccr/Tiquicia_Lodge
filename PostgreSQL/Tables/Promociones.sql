CREATE TABLE Promociones (
    IdPromocion         SERIAL NOT NULL,
    NombrePromo         VARCHAR (100)  NOT NULL,
    Descripcion         VARCHAR (300)  NULL,
    TipoPromo           VARCHAR (30)   NULL,
    PorcentajeDescuento DECIMAL (5, 2) NULL,
    FechaInicio         DATE           NOT NULL,
    FechaFin            DATE           NOT NULL,
    Activo              BOOLEAN            DEFAULT TRUE NULL,
    PRIMARY KEY (IdPromocion),
    CHECK (TipoPromo='Lanzamiento' OR TipoPromo='TemporadaBaja' OR TipoPromo='Feriado' OR TipoPromo='FindeSemana')
);


