/* 
13. Sacar la media de sueldos entre todos los vendedores
    por grupo y que se muestre el nombre del grupo
 */
SELECT g.nombre, v.grupo_id, AVG(v.sueldo) AS 'Sueldo por grupo' FROM vendedores v,grupos g GROUP BY v.grupo_id ORDER BY AVG(v.sueldo)DESC;

SELECT g.nombre, v.grupo_id, AVG(v.sueldo), g.cuidad FROM vendedores v
INNER JOIN grupos g ON g.id = v.grupo_id 
GROUP BY v.grupo_id;

