/* 
   22.Mostrar listado de clientes (mostrando numero de
        clientes y el nombre) mostrar tambien el numero
        de vendedor y su nombre.
 */

SELECT cl.id AS 'ID CLIENTE', cl.nombre, v.id AS 'ID VENDEDOR', 
CONCAT(v.nombre,'',v.apellidos)AS'Vendedor'
FROM clientes cl INNER JOIN vendedores v 
ON cl.vendedor_id = v.id;
