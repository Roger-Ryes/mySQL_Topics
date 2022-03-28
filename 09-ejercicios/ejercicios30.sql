/* 
30. Mostrar los datos del vendedore con mas antiguedad
    en el concesionario
 */

SELECT CONCAT(nombre,' ',apellidos)AS 'Trabajador mas Antiguo', 
fecha_alta as 'Fecha' FROM vendedores
ORDER BY fecha_alta ASC LIMIT 1;

/*
30 plus. Obtener los coches con mas unidades vendidas
*/
SELECT c.modelo, SUM(e.cantidad) AS 'Total' FROM coches c
INNER JOIN encargos e ON e.coches_id = c.id
GROUP BY c.id ORDER BY SUM(cantidad) DESC;

