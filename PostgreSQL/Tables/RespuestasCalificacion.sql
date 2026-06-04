CREATE TABLE RespuestasCalificacion (
    IdRespuesta    SERIAL NOT NULL,
    IdCalificacion INT           NOT NULL,
    IdUsuario      INT           NOT NULL,
    Respuesta      VARCHAR (500) NOT NULL,
    Fecha          TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NULL,
    PRIMARY KEY (IdRespuesta),
    FOREIGN KEY (IdCalificacion) REFERENCES CalificacionesPropiedad (IdCalificacion),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario)
);


