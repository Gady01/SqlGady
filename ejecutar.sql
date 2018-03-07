
/* UGM MINATITLAN
  Ing.Sistemas Computacionales   --- Dominical----
  Gady Alfonso Cortes*/


drop database if exists liberiaugm;
create database if not exists libreriaugm;
	use libreriaugm;


create table if not exists autores
	(
	autor_Id int,
	nombre varchar(50),
	apellido varchar(50),
	genero char(1),
	fecha_nac date,
	pais_orgn varchar(50)
	);

	insert into autores(autor_Id,nombre,apellido,genero,fecha_nac,pais_orgn)
			values	(1,'Gady','Alfonso','M','2018-04-05','Mx'),
					(2,'Ivan','Alfonso','M','2018-04-05','Mx'),
					(3,'Heber','Alfonso','M','2018-04-05','Mx'),
					(4,'Mora','Alfonso','M','2018-04-05','Mx'),
					(5,'Ena','Alfonso','F','2018-04-05','Mx'),
					(6,'Ana','Soto','F','2018-04-05','Mx'),
					(7,'Laura','Ramires','F','2018-04-05','Mx'),
					(8,'Paloma','Tornel','F','2018-04-05','Mx'),
					(9,'Yoselin','Sanez','F','2018-04-05','Mx'),
					(10,'Karla','Moreno','F','2018-04-05','Mx');
select * from autores;