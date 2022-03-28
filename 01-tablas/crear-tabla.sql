/*ENTEROS MAS GRANDE
 MEDIUMINT
BIGINT 
 */
/*
CREAR TABLA
*/

USE db_new;
drop table usuarios; 
CREATE TABLE usuarios(
    id int(11) auto_increment not null,
    nombre varchar(100) not null,
    apellidos varchar(100) default "Hola mundo",
    email varchar(100) not null,
    CONSTRAINT pk_usuarios PRIMARY KEY(id)
);

