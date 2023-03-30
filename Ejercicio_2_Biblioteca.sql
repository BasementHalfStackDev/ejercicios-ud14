create database ud14_ej_2;
use ud14_ej_2;

create table Editorial(
	ClaveEditorial smallint primary key,
    Nombre varchar(60),
    Dirección varchar(60),
    Teléfono varchar(15)
);
create table Libro(
	ClaveLibro int primary key,
    Título varchar(60),
    Idioma varchar(15),
    Formato varchar(15),
    ClaveEditiorial smallint references Editorial
);
create table Tema(
	ClaveTema smallint primary key, 
    Nombre varchar(40)
);
create table Autor(
	ClaveAutor int primary key, 
    Nombre varchar(60)
);
create table Ejemplar(
	ClaveEjemplar int primary key, 
    ClaveLibro int references Libro, 
    NúmeroOrden smallint, 
    Edición smallint, 
    Ubicación varchar(15),
    Categoría char
);
create table Socio(
	ClaveSocio int,
    Nombre varchar(60),
    Dirección varchar(60),
    Teléfono varchar(15),
    Categoría char
);
create table Préstamo(
	ClaveSocio int references Socio,
    ClaveEjemplar int references Ejemplar,
    NúmeroOrden smallint, 
    Fecha_préstamo date,
    Fecha_devolución date,
    Notas text
);
create table Trata_sobre(
	ClaveLibro int references Libro, 
    ClaveTema smallint references Tema
);
create table Escrito_por(
	ClaveLibro int references Libro,
    ClaveAutor int references Autor
);