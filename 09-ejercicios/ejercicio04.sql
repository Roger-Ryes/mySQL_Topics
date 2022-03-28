/* 
   4. SACAR a todos los vendedores cuya fecha de alta sea
       posterios al 1 de julio de 2018
 */
SELECT CONCAT(nombre,' ',apellidos) FROM vendedores WHERE fecha_alta >= '2018-07-01';