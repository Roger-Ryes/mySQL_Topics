/* 
25. Obtener una lista de los nombre de los clientes
    con el importe de sus encargos acumulados
 */

SELECT cl.nombre, SUM(c.precio*e.cantidad) 
AS 'APORTE' FROM encargos e
INNER JOIN clientes cl ON cl.id = e.clientes_id
INNER JOIN coches c ON c.id = e.coches_id 
GROUP BY cl.nombre ORDER BY SUM(c.precio*e.cantidad) DESC;