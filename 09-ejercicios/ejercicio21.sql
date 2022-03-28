/* 
21. Obtener los nombre y las cuidades de los clientes 
con encargos de 3 unidades en adelante
 */

SELECT nombre, cuidad FROM clientes WHERE id 
IN(SELECT clientes_id FROM encargos WHERE cantidad >= 3);

