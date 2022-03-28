/* 
29. Crear una vista llamada vendedores A que incluira
    todos los vendedores del grupo que se llame 
    "Vendedores A"
 */

CREATE VIEW vendedoresA AS
SELECT CONCAT(v.nombre,' ',v.apellidos)AS 'Vendedores A',
 g.cuidad FROM vendedores v
INNER JOIN grupos g ON g.id = v.grupo_id 
AND g.nombre = 'vendedores A';


