CREATE TABLE HorariosCheckInOut (
    IdHorario   SERIAL NOT NULL,
    IdPropiedad INT           NOT NULL,
    TipoHorario VARCHAR (10)  NULL,
    HoraDesde   TIME (7)      NOT NULL,
    HoraHasta   TIME (7)      NULL,
    Flexible    BOOLEAN           DEFAULT FALSE NULL,
    Notas       VARCHAR (200) NULL,
    PRIMARY KEY (IdHorario),
    CHECK (TipoHorario='CheckOut' OR TipoHorario='CheckIn'),
    FOREIGN KEY (IdPropiedad) REFERENCES Propiedades (IdPropiedad)
);


