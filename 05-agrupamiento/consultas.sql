#CONSULTAS AGRUPADAS#
SELECT titulo FROM entradas GROUP BY categoria_id; # AGRUPA UNO POR CATEGORIA #

#SACAR CUANTAS ENTRADAS TIENE CATEGORIA#
SELECT COUNT(titulo) AS 'numero de entradas',categoria_id FROM entradas GROUP BY categoria_id;

#PARA HACER UNA CONDICION DENTRO DE UNA CONSULTA DE AGRUPAMINETO
#NO SE UTILIZA WHERE SINO HAVING

#COSULTAS AGRUPAMIENTO CON CONDICIONES#
SELECT COUNT(titulo), categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(titulo)>=4;

#FUNCIONES DE AGRUPAMIENTO#
AVG # Sacar la media
COUNT # Cuenta el numero de elementos
MAX   # Valor maximo del grupo
MIN   # Valor minimo del grupo
SUM   # Sumar todo el contenido del grupo

SELECT AVG(id) AS 'PROMEDIO' FROM entradas;
SELECT MAX(id) AS 'Valor MAX' FROM entradas;
SELECT MIN(id) AS 'Valor MIN' FROM entradas;
SELECT MIN(id) AS 'Valor MIN' FROM entradas; 
SELECT COUNT(id) AS 'Valor MIN' FROM entradas; 
