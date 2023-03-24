CREATE DATABASE ud14_ej_9;

use ud14_ej_9;

CREATE TABLE cientifico(
	DNI VARCHAR(8) PRIMARY KEY,
    nombre_apellidos VARCHAR(255) NOT NULL
);

CREATE TABLE proyecto(
	ID CHAR(4) PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    horas INT NOT NULL
);

CREATE TABLE asignacion(
	DNI_cientifico VARCHAR(8) NOT NULL,
    ID_proyecto CHAR(4) NOT NULL,
    PRIMARY KEY (DNI_cientifico, ID_proyecto),
    FOREIGN KEY (DNI_cientifico) REFERENCES cientifico(DNI),
    FOREIGN KEY (ID_proyecto) REFERENCES proyecto(ID)
    ON UPDATE CASCADE
);
