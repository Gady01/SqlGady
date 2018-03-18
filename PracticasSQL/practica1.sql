/* UGM MINATITLAN
  Ing.Sistemas Computacionales   --- Dominical----
  Gady Alfonso Cortes*/


-- practica Uno
autor_id
nombre
apellido
genero
fecha de nacimiento
pais de origen
--normalizar es ver como queremos hacer la tabla.
autor_Id int
nombre varchar(50)
apellido varchar(50)
genero char(1)
fecha_nac date
pais_orgn varchar(50)

create table autores
	(
	autor_Id int,
	nombre varchar(50),
	apellido varchar(50),
	genero char(1),
	fecha_nac date,
	pais_orgn varchar(50)
	);