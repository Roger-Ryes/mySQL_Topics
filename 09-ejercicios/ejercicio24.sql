/* 
24. Listar los encargos con el nombre del coches el 
    nombre del cliente y el nombre de la cuidad, pero
    unicamente cuando sea de Barcelona
 */


SELECT e.id, c.modelo, cl.nombre, cl.cuidad FROM encargos e
INNER JOIN coches c ON e.coches_id = c.id
INNER JOIN clientes cl ON e.clientes_id = cl.id 
AND cl.cuidad = 'Barcelona';
