/* 
23. Listar todos los encargos realizados con la marca 
    del coche y el nombre del cliente
 */
SELECT e.id, cl.nombre, c.marca FROM encargos e
INNER JOIN coches c ON e.coches_id = c.id
INNER JOIN clientes cl ON e.clientes_id = cl.id;


