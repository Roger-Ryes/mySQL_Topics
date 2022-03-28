/* 
28. Mostrar todos los vendedores tengan o no clientes y
    mostrar  el numero de clientes.(Se debe mostrar
    tenga o no clientes)
 */

SELECT CONCAT(v.nombre,' ',v.apellidos), COUNT(cl.vendedor_id)
FROM vendedores v
LEFT JOIN clientes cl ON cl.vendedor_id = v.id
GROUP BY v.id;

