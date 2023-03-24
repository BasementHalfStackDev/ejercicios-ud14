CREATE DATABASE ud14_ej_7;

use ud14_ej_7;

CREATE TABLE despachos(
	numero INT AUTO_INCREMENT PRIMARY KEY,
    capacidad INT NOT NULL
);

CREATE TABLE director(
	DNI VARCHAR(8) PRIMARY KEY,
    nombre_apellidos VARCHAR(255) NOT NULL,
    despacho INT NOT NULL,
    DNI_jefe VARCHAR(8) NULL,
    FOREIGN KEY (despacho) REFERENCES despachos(numero),
    FOREIGN KEY (DNI_jefe) REFERENCES director(DNI)
    ON UPDATE CASCADE
);
