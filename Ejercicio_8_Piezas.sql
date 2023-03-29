create database ud14_ej_8;
use ud14_ej_8;

create table piezas(
	codigo int primary key,
    nombre varchar(100) not null
);

create table proveedores(
	id char(4) primary key,
    nombre varchar(100) not null
);

create table suministra(
	codigo_pieza int references pieza,
    id_proveedor char(4) references proveedores,
    precio int not null,
    primary key (codigo_pieza, id_proveedor)
);