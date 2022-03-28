/* 
 14. Visualizar las unidades totales vendidas de cada 
        coche a cada cliente. Mostrando el nombre del
        producto, el numero de cliente, y las suma de 
        unidades
 */
clientes | coches | encargos


SELECT e.clientes_id,cl.nombre, c.modelo, e.cantidad, c.precio, (e.cantidad*c.precio) AS 'Total' 
FROM encargos e 
INNER JOIN coches c ON c.id = e.coches_id
INNER JOIN clientes cl ON e.clientes_id = cl.id;

