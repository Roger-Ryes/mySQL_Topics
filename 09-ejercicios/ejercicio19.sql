/* 
19. Obtener los vendedores con dos o mas clientes
 */

SELECT CONCAT(nombre,' ',apellidos) AS 'MAS VENTAS POR' FROM vendedores 
WHERE id IN(SELECT vendedor_id FROM clientes 
    GROUP BY vendedor_id HAVING COUNT(id)>=2);


