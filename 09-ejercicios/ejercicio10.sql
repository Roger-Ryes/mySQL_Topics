/* 
10. Visualizar los apellidos de los vendedores, su fecha
    y su numero de grupo ordenado por fecha descendente
     y mostrar los cuatro ultimos
 */

SELECT apellidos, grupo_id FROM vendedores ORDER BY fecha_alta DESC LIMIT 4;