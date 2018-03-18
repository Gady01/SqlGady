--ENTRAR A DIRECTORIOS EN WINDOW.
cd c\;
cd..

--ENTRAR A MYSQL
mysql -u nom_usuario -p

---VER USUARIOS
select user from mysql.user;

--crear base de datos
create databases nom_d_Bacdedato;
--usar base de dato
use nom_d_Bacdedato;

--crear tablas
create table nom_d_la_tabla (id integer auto_increment primary key, nombre varchar(20),telefonso integer);

--ver base de datos y tablas
show databases;
show tables;

---ALTER TABLE se utiliza para modificar una tabla ya existente.
alter table nom_d_la_tabla add(
	columna int(30),
	columna2 int(20));

--PARA AGREGAR ANTES-BEFORE Y DESPUES AFTER
alter table nom_d_la_tabla add columna int
After columna2;

--ver los datos de la tabla
describe nom_d_la_tabla;

--crear usuarios con acceso
create user 'nom_usuario'@'localHost' identified by 'contraseña';
grant all privileges on *.* to 'nom_usuario'@'localHost';
	flush privileges;
	
--ELIMINAR COLUMNA DE TABLA
alter table nom_d_la_tabla drop column materno;
alter table nom_d_la_tabla drop nom_columna;

--RENOMBRAR TABLAS
rename table nom_d_la_tabla to nuevo_nom_tabla;
alter table nom_d_la_tabla rename nuevo_nom_tabla;

--VER EN QUE BASE DE DATO ESTOY
select database();

--VER EN QUE USUARIOS ESTOY
select user();

--INSERTAR COLUMNA A UNA TABLA
insert into nom_d_la_tabla (id,nom_columna)values(5'escribe el dato a inserta');

--VER LO QUE HAY EN UNA TABLA
select *from nom_d_la_tabla;

--ACTUALIZAR DATO EN COLUMNA DE UNA TABLA
update nom_d_la_tabla set nom_columna='nuevo nom_columna' where id=nuevoID;

--BORRAR DATO EN COLUMNA DE UNA TABLA
delete from nom_d_la_tabla where id=5;

--PONER FECHA DE CREACION
alter table nom_d_la_tabla add fecha timestamp default now();

--agregar anter o depsues de la tabla
alter table nom_d_la_tabla add nom_columna varchar(30) after columna2;

-HACER CONSULTAS
select * from nom_d_la_tabla where nom_columna=nom_abuscar;
where nom_columna='nom_abuscar' where or nom_columna='nom_abuscar';
select * from nom_d_la_tabla where nom_columna  is null;

--ORDENAR DE MENOR A MAYOR
select * from nom_usuario ORDER BY ID ASC;

--AUTOINCREMENTO APARTIR DE UN NUMERO
alter table nom_d_la_tabla auto_increment numero_apartir_ de_un_incremento;

--RESPALDAR INFORMACION
MYSQLDUMP -U ROOT - P nom_d_Bacdedato>ruta de archivo;

--LLAVES FORANEAS
create table nom_d_la_tabla(id int primary key auto_increment,nombre varchar(30),modelo varchar(30)clave int, constraint fk_clave foreign key (nom_columna),references marcas (clave));

--RELACION DE TABLAS
select nom_d_la_tabla.columna, nom_d_la_tabla.columna2;
nom_d_la_tabla.columna from nom_d_la_tabla inner join tabla1 on nom_d_la_tabla.columna=nuevo_nom_tabla.columna2;

--RESTAURAR BASE DE DATO
mysql -u root -p [baseDdatoNuestra]<[ruta de la base de dato]

--GUARDA BASE DE DATO
MYSQL -U ROOT - P [baseDdatoNuestra]>[ruta] dump;		