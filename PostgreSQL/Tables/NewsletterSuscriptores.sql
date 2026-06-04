CREATE TABLE NewsletterSuscriptores (
    IdSuscriptor     SERIAL NOT NULL,
    Correo           VARCHAR (100) NOT NULL,
    Nombre           VARCHAR (100) NULL,
    FechaSuscripcion TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    Activo           BOOLEAN           DEFAULT TRUE NULL,
    TokenCancelacion VARCHAR (100) NULL,
    PRIMARY KEY (IdSuscriptor),
    UNIQUE (Correo)
);


