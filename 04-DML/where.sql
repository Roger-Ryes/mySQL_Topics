# CONSULTA CON UNA CONDICION #
SELECT * FROM usuarios WHERE email = 'victor@victor.com';
# OPERADORES DE COMPARACION #
/*
  =      IGUAL 
  !=     DISTINTO 
  <      MENOR QUE
  >      MAYOR QUE 
  <=     MENOR O IGUAL 
  >=     MAYOR O IGIAL 
  ENTRE     between A y B
  IN        en
  IS NULL   es nulo
  LIKE      como
  NOT LIKE  no es como
*/

#EJEMPLOS CON LOS COMPARADORES #
# 1. MOSTRAR NOMBRES Y APELLIDOS DE TODOS LOS USUARIOS
#    REGISTRADOS EN 2019
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = 2019;
# 2. MOSTRAR NOMBRES Y APELLIDOS DE TODOS LOS USUARIOS
#    QUE NO SE HAN REGISTRADO EN 2019
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != 2019 or ISNULL(fecha);

/*  OPERADORES LOGICOS
    O   OR
    Y   AND
    NO  NOT
*/
/*  COMODINES:
Cualquier cantidad de caracteres: % ejem: palabra -> %l%
Un caracter desconocido: _      ejem: palabra -> pa__bra

*/
#EJEMPLO#
# 3. CONSULTA CUYO APELLIDO INCLUYA LA LETRA A Y SU CONTRASEÑA
#     SEA 1234
SELECT email FROM usuarios WHERE apellidos LIKE '%a%' AND password = 123456;

#EJEMPLLO2#
# 4. Sacar todos los registros de la tabla usuarios cuyo año
#    sea PAR
SELECT * FROM usuarios WHERE YEAR(fecha)%2=0;
# 5. Sacar todos los registros de la tabla cuyo nombre tenga mas de 
#    5 letras y que se hayan registrado antes del 2020, y mostrar el 
#    el nombre en mayusculas
SELECT * FROM usuarios WHERE (LENGTH(nombre) > 5) AND (YEAR(fecha)>= 2020);   

# LIMIT Y ORDER BY #
SELECT * FROM usuarios ORDER BY(id) DESC;
SELECT * FROM usuarios ORDER BY(id) ASC;

# LIMIT #
# LIMITA A UN # DE RESGISTRO #
SELECT * FROM usuarios LIMIT 3,2;
SELECT * FROM usuarios LIMIT 0,2;
