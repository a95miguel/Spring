CREATE DATABASE pizza_proyect;
use pizza_proyect;

CREATE TABLE categorias(
	id int primary key auto_increment,
	nombre varchar(100)
);

CREATE TABLE producto(
	productoId int primary key auto_increment,
	categoriaId int,
	nombre varchar(100),
	ingredientes varchar(100),
	tamano varchar(100),
	precio decimal(6,2)
);

CREATE TABLE roles(
	id int primary key auto_increment,
	nombre varchar(100)
);

insert into roles (nombre)values("ROLE_USER"),("ROLE_ADMIN");


CREATE TABLE usuarios(
	id int primary key auto_increment,
	username varchar(100),
	email varchar(100),
	telefono varchar(20),
	password varchar(100),
	ubicacion varchar(200)
);

insert into usuarios (username, email,telefono,password,ubicacion)values("Miguel","miguel@gmail.com","2825552112","$2a$10$cCnB6PggKfzBlZiceisNde.22dEBzisSGP8hAW9oekciXyVa5mobm","chilchotla"),
	("Noe","ten@gmail.com","21454209370","$2a$10$cCnB6PggKfzBlZiceisNde.22dEBzisSGP8hAW9oekciXyVa5mobm","chilchotla");

	CREATE TABLE usuario_roles(
	usuario_id int,
	rol_id int
);

insert into usuario_roles(usuario_id,rol_id)values(1,1),(2,2);