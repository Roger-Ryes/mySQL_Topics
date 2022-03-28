/* 
27. Visualizar los nombre de los clientes y la cantidad
    de encargos realizados incluyendo los que no hayan
    realizado encargos.
 */

SELECT cl.nombre, COUNT(e.clientes_id) FROM clientes cl 
LEFT JOIN encargos e ON cl.id = e.clientes_id
GROUP BY e.clientes_id;

INSERT INTO clientes VALUES (null,4,'Tienda Comestible Inc','El prat',0,CURDATE());
