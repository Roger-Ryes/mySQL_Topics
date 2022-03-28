/*
SUBCONSULTAS:
    - Son consultas que se ejecutan dentro de otras.
    - Consiste en utilizar los resultados de la subconsulta
      para operar en la consulta principal.
    - Jugando con las claves ajenas/ foraneas
*/

SELECT * FROM usuarios;
INSERT INTO usuarios VALUES(null,'Admin','Admin','admin@admin.com','admin',CURDATE());

SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entrada);
# Escojo el id SI EXISTE en la tabla 'entrada' 
SELECT usuario_id FROM entradas;
SELECT * FROM usuarios WHERE id NOT IN (SELECT usuario_id FROM entrada);
# Escojo el id SI NO EXISTE en 'entrada' 

INSERT INTO entrada VALUES (null,3,1,'Guia de GTA Vice City','GTA','2019-04-09'); 

#CONSULTA SACAR LOS USUARIOS QUE TENGAN ALGUNA ENTRADA
#QUE EN US TITULO HABLE DE GTA
SELECT * FROM usuarios WHERE id IN(SELECT usuarios_id FROM entradas WHERE titulo LIKE "%GTA%");

#SACAR TODAS LAS ENTRADAS DE LA CATEGORIA ACCION UTILIZANDO SU NOMBRE#
SELECT * FROM entradas WHERE categoria_id IN(SELECT id FROM categorias WHERE nombre = "action");

#MOSTRAR LAS CATEGORIAS CON MAS DE 3 ENTRADAS#
SELECT nombre FROM categorias WHERE id IN(SELECT categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(categoria_id)>=4);

#MOSTAR LOS USUARIOS QUE CREARON UNA ENTRADA UN MARTES#
SELECT nombre FROM usuarios WHERE id IN(SELECT usuario_id FROM entradas WHERE DAYNAME(fecha) = 'Tuesday');

#MOSTAR EL NOMBRE DEL USUARIO QUE TENGA MAS ENTRADAS#
SELECT nombre FROM usuarios WHERE id IN(SELECT AVG(usuario_id) FROM entradas);
SELECT CONCAT(nombre,' ',apellidos) AS 'USUARIO CON MAS ENTRADAS' FROM usuarios WHERE id = (SELECT COUNT(id), usuario_id FROM entradas GROUP BY usuario_id ORDER BY COUNT(id) DESC LIMIT 1);
SELECT CONCAT(nombre,' ',apellidos) AS 'USUARIO CON MAS ENTRADAS' FROM usuarios WHERE id = (SELECT usuario_id FROM entradas GROUP BY usuario_id ORDER BY COUNT(id) DESC LIMIT 1);

#MOSTRAR LAS CATEGORIAS SIN ENTRADAS#
SELECT * FROM categorias WHERE id NOT IN(SELECT categoria_id FROM entradas);



