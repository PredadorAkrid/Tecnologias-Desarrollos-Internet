create table contactos(
	id int(11) AUTO_INCREMENT NOT NULL AUTO_INCREMENT  PRIMARY KEY, 
	nombre varchar(64) not null,
	apellido varchar(64) not null, 
	email varchar(64) not null, 
	celular varchar(10) not null, 
	genero varchar(1) not null, 
	pais varchar(64) not null


);