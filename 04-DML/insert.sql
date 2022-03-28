# INSERTAR NUEVOS REGISTROS  #
INSERT INTO usuarios VALUES (null,'victor','paco','victor@victor.com','123456','2020-06-21');
INSERT INTO usuarios VALUES (null,'marco','perez','marco@perez.com','345678','2020-06-21');
INSERT INTO usuarios VALUES (null,'paco','jaramillo','paco@jaramillo.com','876543','2020-06-21');

# PARA MOSTRAR LO QUE CONTIENE LA TABLA SE USA#
SELECT * FROM usuarios;

# INSERTAR FILAS SOLO CON CIERTAS COLUMNAS #
INSERT INTO usuarios(email, password) VALUES ('admin@admin.com','admin');
