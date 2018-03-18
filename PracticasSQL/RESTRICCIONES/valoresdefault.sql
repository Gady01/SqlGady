/* UGM MINATITLAN
  Ing.Sistemas Computacionales   --- Dominical----
  Gady Alfonso Cortes*/


drop database if exists libreriaugm;
create database if not exists libreriaugm;
	
use libreriaugm;


create table if not exists autores
	(
	autor_Id int,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	seudonimo varchar(50) unique,
	genero char(1) not null,
	fecha_nac date not null,
	pais_origen varchar(50) not null,
	fecha_creada datetime default current_timestamp
	);

	insert into autores (autor_id,nombre,apellido,seudonimo,genero,fecha_nac,pais_origen)
	 values (1,'Soledad','Torres','Sol','F','1975-04-16','Mx'),
	 		(2,'Pedro','Alfonso','Negro','M','1984-05-27','Nig'),
	 		(3,'Hortencias','Sanchez','Otty','F','1976-03-08','En');

	 select * from autores;