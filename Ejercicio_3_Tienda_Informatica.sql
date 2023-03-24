CREATE DATABASE ud14_ej_3;

use ud14_ej_3;

CREATE TABLE fabricante(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL
);

CREATE TABLE articulo (
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    precio DECIMAL(6, 2) NOT NULL, # 6 digits, 2 decimals 
    fabricante INT NOT NULL,
    FOREIGN KEY (fabricante) REFERENCES fabricante(codigo)
    ON UPDATE CASCADE
);