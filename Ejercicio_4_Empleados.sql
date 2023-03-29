create database ud14_ej_4;
use ud14_ej_4;

create table departamentos (
	Codigo int primary key, 
    Nombre varchar(100) not null,
    Presupuesto int not null
);

create table empleados (
	DNI varchar(8) primary key, 
    Nombre varchar(100) not null,
    Apellidos varchar(255) not null,
    Departamento int not null references departamentos
);


