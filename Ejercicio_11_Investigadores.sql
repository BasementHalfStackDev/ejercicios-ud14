CREATE DATABASE ud14_ej_11;

use ud14_ej_11;

CREATE TABLE facultad(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE investigador(
	DNI VARCHAR(8) PRIMARY KEY,
    nombre_apellidos VARCHAR(255) NOT NULL,
    facultad INT NOT NULL,
    FOREIGN KEY (facultad) REFERENCES facultad(codigo)
    ON UPDATE CASCADE
);

CREATE TABLE equipo(
	num_serie CHAR(4) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    facultad INT NOT NULL,
    FOREIGN KEY (facultad) REFERENCES facultad(codigo)
    ON UPDATE CASCADE
);

CREATE TABLE reserva(
	DNI_investigador VARCHAR(8) NOT NULL,
    num_equipo CHAR(4) NOT NULL,
    comienzo DATETIME NOT NULL,
    fin DATETIME NOT NULL,
    PRIMARY KEY (DNI_investigador, num_equipo),
    FOREIGN KEY (DNI_investigador) REFERENCES investigador(DNI),
    FOREIGN KEY (num_equipo) REFERENCES equipo(num_serie)
    ON UPDATE CASCADE
);