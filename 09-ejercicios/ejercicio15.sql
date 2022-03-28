/* 
15. Mostrar los clientes que mas pedidos han hecho y
    mostrar cuantos hicieron
 */
SELECT cl.nombre, e.cantidad FROM clientes cl
INNER JOIN encargos e ON cl.id = clientes_id
ORDER BY cantidad DESC;

SELECT cl.nombre,e.clientes_id, COUNT(e.id) FROM encargos e
INNER JOIN clientes cl ON cl.id = e.clientes_id
GROUP BY e.clientes_id ORDER BY COUNT(e.id) DESC LIMIT 1;
