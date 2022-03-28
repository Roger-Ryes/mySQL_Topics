/* 
16. Obtener listado de clientes atendidos por el
    vendedor 'David Lopez'
 */
/* CON MULTICONSULTA*/
SELECT c.nombre, v.nombre FROM clientes c 
    INNER JOIN vendedores v ON c.vendedor_id = v.id 
    AND v.nombre = 'David' AND v.apellidos = 'Lopez';

/* CON SUBCONSULTAS*/
SELECT * FROM clientes WHERE vendedor_id IN(SELECT id FROM vendedores WHERE nombre = 'David' AND apellidos='Lopez');

UPDATE clientes SET vendedor_id = 4 WHERE id = 5;
UPDATE clientes SET vendedor_id = 2 WHERE id = 6;