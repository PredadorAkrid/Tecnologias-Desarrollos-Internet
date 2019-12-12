drop table if exists cines, sala, pelicula, sala_pelicula;
create table  cines(
	id_cine int auto_increment Primary Key, 
	estado varchar(64) not null, 
    ciudad varchar(64) not null
);

create table sala(
	id_sala int auto_increment Primary Key, 
    num_asientos int default 0, 
    id_cine int not null, 
    FOREIGN KEY (id_cine) REFERENCES cines(id_cine)
);
create table pelicula(
	id_pelicula int auto_increment Primary Key,
    titulo varchar(100) not null,
    clasificacion varchar(10) not null
    
);


create table sala_pelicula(
	id_pelicula int not null, 
    id_sala int not null, 
    horario varchar(50) not null,
    dia varchar(50) not null,
	FOREIGN KEY (id_sala) REFERENCES sala(id_sala),
    FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
    PRIMARY KEY(id_pelicula, id_sala, horario)

);

