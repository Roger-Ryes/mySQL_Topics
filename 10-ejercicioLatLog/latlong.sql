CREATE DATABASE posbici;
USE posbici;
CREATE TABLE poslatlog(
    id integer(255) auto_increment not null,
    latitud float not null,
    longitud float not null,
    fecha DATE not null,
    hora TIME not null,
    CONSTRAINT pk_poslatlog PRIMARY KEY(id)
);

INSERT INTO poslatlog (latitud, longitud, fecha, hora) VALUES (
 12.554, 345.65, SYSDATE(), SYSDATE()
);
DROP TABLE poslatlog;

CREATE TABLE usuarios (
    id int(255) auto_increment not null,
    nombre varchar(255),
    apellido varchar(255),
    email varchar(255),
    password int(255),
    fecha date,
    CONSTRAINT pk_categorias PRIMARY KEY(id))ENGINE="InnoDb";

