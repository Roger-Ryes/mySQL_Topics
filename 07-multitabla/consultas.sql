/*
CONSULTAS MULTITABLA:
    Son consultas que sirven para consultar varias tablas
    en una sola sentencia
*/

#MOSTRAR LAS ENTRADAS CON EL NOMBRE DEL USUARIOS Y EL
#NOMBRE DE LA CATEGORIA
SELECT e.titulo, u.nombre, c.nombre FROM entradas e, usuarios u, categorias c 
    WHERE e.usuario_id = u.id AND e.categoria_id = c.id;

#MOSTRAR EL NOMBRE DE LAS CATEGORIAS Y ALADO CUANTAS ENTRADAS TIENEN#
SELECT c.nombre, COUNT(e.id) FROM categorias c, entradas e WHERE c.id = e.categoria_id GROUP BY e.categoria_id;

#MOSTRAR EL EMAIL DE LOS USUARIOS Y ALADO CUANTAS ENTRADAS TIENEN#
SELECT u.email, COUNT(e.id) FROM usuarios u, entradas e WHERE u.id = e.usuario_id GROUP BY e.usuario_id;

##########################################################################################

#INNER JOIN#
# No saca toda la tabla solo las que cumplan con la condicion#
  # MOSTRAR LAS ENTRADAS CON EL NOMBRE DEL USUARIOS Y EL
  # NOMBRE DE LA CATEGORIA
    # SIN INNER JOIN#
    SELECT e.titulo, u.nombre, c.nombre FROM entradas e, usuarios u, categorias c 
        WHERE e.usuario_id = u.id AND e.categoria_id = c.id;
    # CON INNER JOIN#
    SELECT e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoria' 
        FROM entradas e
        INNER JOIN usuarios u ON e.usuario_id = u.id
        INNER JOIN categorias c ON e.categoria_id = c.id; 
  # MOSTRAR EL NOMBRE DE LAS CATEGORIAS Y ALADO CUANTAS ENTRADAS TIENEN#
    # SIN INNER JOIN #
    SELECT c.nombre, COUNT(e.id) FROM categorias c, entradas e WHERE c.id = e.categoria_id GROUP BY e.categoria_id;
    # CON INNER JOIN #
    SELECT c.nombre, COUNT(e.id) FROM categorias c INNER JOIN entradas e ON c.id = e.categoria_id GROUP BY e.categoria_id;
 
#LEFT JOIN#
# Mantiene toda la fila de la tabla de la izquierda y si hay alguna considencia con la tabla de la derecha mostrara
# un valor sino muestra nulo # 
SELECT c.nombre, COUNT(e.id) FROM categorias c LEFT JOIN entradas e ON e.categoria_id = c.id GROUP BY e.categoria_id;

#RIGHT JOIN#
# Es igual al LEFT JOIN pero a la derecha#
SELECT c.nombre, COUNT(e.id) FROM entradas e RIGHT JOIN categorias c ON e.categoria_id = c.id GROUP BY e.categoria_id;

