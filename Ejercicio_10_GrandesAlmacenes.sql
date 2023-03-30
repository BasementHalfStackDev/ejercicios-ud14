create database ud14_ej_10;
use ud14_ej_10;

create table productos(
	codigo int primary key,
    nombre varchar(100) not null,
    precio int not null
);

create table cajeros(
	codigo int primary key,
    nom_apels varchar(255) not null
);

create table maquinas_registradoras(
	codigo int primary key,
    piso int not null
);

create table venta(
	cajero int references cajeros,
    maquina int references maquinas_registradoras,
    producto int references productos,
	primary key (cajero, maquina, producto)
);