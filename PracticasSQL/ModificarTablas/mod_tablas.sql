--AGREGAR UNA COLUMNA A LA TABLAS LIBROS PERO CON NUMEROS POSITIVOS
alter table libros add ventas int unsigned not null;
--AGREGAR UNA COLUMNA A LA TABLAS LIBROS PERO CON NUMEROS POSITIVOS
alter table libros add stock int unsigned not null default 10;
--ELIMINAR COLUMNA DE TABLA LIBROS
alter table libros drop column stock;