/* 
 18. Enlistar los clientes que han hecho algun encargo
    del coche 'Mercedes Ranchera' */
/*CON MULTITABLAS*/
SELECT e.id AS 'Encargo',cl.nombre, c.modelo FROM clientes cl 
INNER JOIN encargos e ON e.clientes_id = cl.id
INNER JOIN coches c ON e.coches_id = c.id AND modelo = 'Mercedes Ranchera';

/*CON SUBCONSULTAS*/
SELECT nombre FROM clientes WHERE id 
    IN(SELECT clientes_id FROM encargos WHERE coches_id 
        IN(SELECT id FROM coches WHERE modelo = 'Mercedes Ranchera'));