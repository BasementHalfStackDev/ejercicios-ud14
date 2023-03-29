create database ud14_ej_6;
use ud14_ej_6;

create table peliculas(
	codigo int primary key,
    nombre varchar(100) not null,
    calificacion_edad int not null
);

create table salas(
	codigo int primary key,
    nombre varchar(100),
    pelicula int references peliculas
);