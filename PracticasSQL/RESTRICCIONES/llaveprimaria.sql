/* UGM MINATITLAN
  Ing.Sistemas Computacionales   --- Dominical----
  Gady Alfonso Cortes
	unsigned se utiliza para evitar datos erroenes
  */


drop database if exists libreriaugm;
create database if not exists libreriaugm;
	
use libreriaugm;


create table if not exists autores
	(
	autor_Id int unsigned primary key auto_increment,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	seudonimo varchar(50) unique,
	genero enum('M','F'),
	fecha_nac date not null,
	pais_origen varchar(50) not null,
	fecha_creada datetime default current_timestamp
	);

	insert into autores (nombre,apellido,seudonimo,genero,fecha_nac,pais_origen)
	 values ('Soledad','Torres','Sol','F','1975-04-16','Mx'),
	 		('Pedro','Alfonso','Negro','M','1984-05-27','Nig'),
	 		('Gady','Cortes','Men','M','1974-03-02','En'),
	 		('Antonio','Tornel','Toño','M','1964-09-07','Es'),
	 		('Hortencias','Sanchez','Otty','F','1976-03-08','Sa'),
	 		('Danna','Coto','Paloma','F','1956-03-08','Sa');


	 select * from autores;