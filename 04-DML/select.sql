# MOSTRAR TODOS LOS REGISTROS / FILAS DE UNA TABLA #
SELECT email, nombre, apellidos FROM usuarios; 

# MOSTRAR TODOS LOS CAMPOS #
SELECT * FROM usuarios;
# ------------------------------------------------ #
# OPERADORES ARITMETICOS #
SELECT email, (4+7) AS 'OPERACION' FROM usuarios;
SELECT email, (7-7) AS 'OPERACION' FROM usuarios;
SELECT email, (24/6) AS 'OPERACION' FROM usuarios;
# ORDENAR POR ALGUNA SENTENCIA #
SELECT id, email, (4+7)AS 'OPERACION' FROM usuarios ORDER BY id;
SELECT id, email, (4+7)AS 'OPERACION' FROM usuarios ORDER BY id DESC;
SELECT id, email, (4+7)AS 'OPERACION' FROM usuarios ORDER BY id ASC;

SELECT id, email, (id+7)AS 'OPERACION' FROM usuarios;

# FUNCIONES MATEMATICAS #
SELECT ABS(7) AS 'OPERACION' FROM usuarios;
SELECT CEIL(7.34) AS 'OPERACION' FROM usuarios; # REDONDEO AL MAXIMO #
SELECT FLOOR(7.34) AS 'OPERACION' FROM usuarios; # REDONDEO AL MINIMO #
SELECT PI() AS 'OPERACION' FROM usuarios;
SELECT RAND() AS 'OPERACION' FROM usuarios; # RANDOM #
SELECT ROUND(7.5431, 2) AS 'OPERACION' FROM usuarios; # REDONDEAR A DOS DECIMALES O MAS #
SELECT ROUND(7.5431, 3) AS 'OPERACION' FROM usuarios;
SELECT SQRT(7.91) AS 'OPERACION' FROM usuarios; # RAIZ CUADRADA #
SELECT TRUNCATE(7.91, 2) AS 'OPERACION' FROM usuarios; # QUITA NUMEROS DECIMALES #
SELECT ROUND(id,2) AS 'OPERACION' FROM usuarios; # MUESTRA LOS VALORES DE ID REDONDEADOS #
# SQL funtions math -> Para buscar en la funcion (w3resource) # 

# FUNCIONES TEXTO #
SELECT nombre FROM usuarios;
SELECT UPPER(nombre) FROM usuarios;# MUESTRA EN MAYUSCULA #
SELECT LOWER(nombre) FROM usuarios;# MUESTRA EN MINUSCULAS #
SELECT CONCAT(nombre,' ',apellidos) FROM usuarios; # CONCATENA UN VALOR CON OTRO #
SELECT CONCAT(nombre,' ',apellidos) AS 'CONVERSION' FROM usuarios;
SELECT UPPER(CONCAT(nombre,' ',apellidos)) AS 'CONVERSION' FROM usuarios;
SELECT LENGTH(nombre) FROM usuarios; # LONGITUD DE UNA VARIABLE #
SELECT email, LENGTH(nombre) FROM usuarios; 
SELECT TRIM(CONCAT('  ',nombre,' ',apellidos,'  ')) FROM usuarios; # ELIMINA LOS ESPACION #

# FUNCION DE FECHA #
SELECT email, fecha FROM usuarios;
SELECT email, fecha, CURDATE() FROM usuarios; # MUESTRA LA FECHA ACTUAL #
SELECT email, fecha, CURDATE() AS 'fecha actual' FROM usuarios;
SELECT email, DATEDIFF(fecha, CURDATE()) AS 'Diferencia' FROM usuarios; # DIFERENCIA DE FECHAS #
SELECT email, DAYNAME(fecha) AS 'Fecha creada' FROM usuarios; # MUESTRA EL DIA EN LETRAS #
SELECT email, DAYOFMONTH(fecha) AS 'Fecha del mes' FROM usuarios; # MUESTRA ELDIA DEL MES QUE SE CREO #
SELECT email, DAYOFWEEK(fecha) AS 'Fecha actual' FROM usuarios; # DIA DE LA SEMANA #
SELECT email, DAYOFYEAR(fecha) AS 'Dia del año' FROM usuarios; # DIA DEL AÑO #
SELECT email, MONTH(fecha) AS 'Mes' FROM usuarios; # MUESTRA EL MES #
SELECT email, YEAR(fecha) AS 'Fecha actual' FROM usuarios; # MUESTRA EL AÑO #
SELECT email, DAY(fecha) AS 'Año' FROM usuarios; # MUESTRA EL DIA #
SELECT email, HOUR(fecha) AS 'Hora' FROM usuarios; # MUESTRA LA FECHA #
SELECT email, CURTIME() AS 'Hora' FROM usuarios; # MUESTRA LA HORA ACTUAL #
SELECT email, SYSDATE() AS 'Hora del sistema' FROM usuarios; # MUESTRA LA HORA DEL SISTEMA OPERATIVO #
SELECT email, DATE_FORMAT(fecha,'%d-%M-%y') FROM usuarios; # ESTABLESCO EL FORMATO #

# FUNCIONES GENERALES #
SELECT email, ISNULL(apellidos) FROM usuarios; # verifica si es nullo #
SELECT email, STRCMP('HOLA', 'HOLA') FROM usuarios; # CONPRUEBA SI LOS DOS CAMPOS SON IGUALES #
# FALSE = 0 || TRUE = 1 #
SELECT VERSION() FROM usuarios; # determino la version de mysql #
SELECT USER() FROM usuarios; # el usuario #
SELECT DISTINCT USER() FROM usuarios; # MUESTRA UN VALOR SIN QUE SE REPITA #
SELECT DISTINCT DATABASE() FROM usuarios; # MUESTRA LA BD QUE ESTOOY USANDO #
SELECT IFNULL(apellidos, 'ESTE CAMPO ESTA VACIO') FROM usuarios; # VERIFICA SI ES NULO #

