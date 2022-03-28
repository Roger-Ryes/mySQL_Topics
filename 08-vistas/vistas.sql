/*
Vistas:
Se define como una consta almacenada en la base de 
datos que se utiliza como una tabla virtual.
No almacena datos sino que utiliza asociaciones y
los datos originales de las tablas, de forma que 
siemre se mantiene actualizada
*/
CREATE VIEW entradas_con_nombres AS 
SELECT c.nombre, COUNT(e.id) FROM entradas e INNER JOIN categorias c ON e.categoria_id = c.id GROUP BY e.categoria_id;

/* Para ver las vistas se utiliza el comando */
SHOW tables;
/* Debido a que estamos creando una tabla virtual y para
   llamarlo usamos el comando*/
SELECT * FROM entradas_con_nombres;
SELECT * FROM entradas_con_nombres WHERE nombre = 'paco';

# PARA BORRAR LA VISTA #
DROP VIEW entradas_con_nombres;
