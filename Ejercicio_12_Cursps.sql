create database ud14_ej_12;
use ud14_ej_12;

create table Profesores (
	dni varchar(9) primary key,
	nombre varchar(40),
	apellido1 varchar(40),
    apellido2 varchar(40),
	direccion varchar(80),
	titulo varchar(40),
	gana decimal(10, 2) not null,
	unique (nombre, apellido1, apellido2)
);

create table Cursos (
	codigo int primary key,
	nombre varchar(40) unique,
	dni_profesor char(9) not null references Profesores on update cascade,
	maximo_alumnos int,
	fecha_inicio date,
	fecha_fin date,
	num_horas int not null,
	check (fecha_inicio < fecha_fin)
);

create table Alumnos(
	dni varchar(9) primary key,
	nombre varchar(40),
	apellido1 varchar(40),
	apellido2 varchar(40),
	direccion varchar(80),
	sexo enum('M', 'H'),
	fecha_nacimiento date,
	curso int not null references Cursos on update cascade
);