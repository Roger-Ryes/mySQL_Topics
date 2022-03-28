/* 
6. Visualizar el nombre u los apellidos de los vendedores
    en una misma columna , su fecha de registro y el dia
    de la semana que se registraron
 */

SELECT CONCAT(nombre,' ',apellidos) AS 'Vendedor',fecha_alta,DAYNAME(fecha_alta) AS 'Dia de Registro' FROM vendedores;
