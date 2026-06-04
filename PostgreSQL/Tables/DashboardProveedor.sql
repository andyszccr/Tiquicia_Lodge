CREATE TABLE DashboardProveedor (
    IdDashboard         SERIAL NOT NULL,
    IdProveedor         INT             NOT NULL,
    Fecha               DATE            NOT NULL,
    VistasPropiedades   INT             DEFAULT 0 NULL,
    ContactosRecibidos  INT             DEFAULT 0 NULL,
    ReservasConfirmadas INT             DEFAULT 0 NULL,
    Cancelaciones       INT             DEFAULT 0 NULL,
    IngresosGenerados   DECIMAL (18, 2) DEFAULT 0 NULL,
    RatingPromedio      DECIMAL (3, 2)  NULL,
    PRIMARY KEY (IdDashboard),
    FOREIGN KEY (IdProveedor) REFERENCES Usuarios (IdUsuario)
);


