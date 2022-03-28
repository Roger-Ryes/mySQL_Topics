/* 
  7. Obtener un listado con los encargos realizados por
     el cliente 'Fruteria Antonia Inc'
 */

/*CON SUBCONSULTAS*/
SELECT * FROM encargos WHERE clientes_id 
    IN (SELECT id FROM clientes WHERE nombre = 'Fruteria Antonia Inc');

/*CON MULTITABLAS*/
SELECT e.id AS 'N° Encargo',cl.nombre, e.cantidad, c.modelo FROM encargos e
    INNER JOIN clientes cl ON e.clientes_id = cl.id AND cl.nombre = 'Fruteria Antonia Inc' 
    INNER JOIN coches c ON e.coches_id = c.id;
    