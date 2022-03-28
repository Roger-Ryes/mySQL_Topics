# Renombrar una tabla #
# Altera la tabla #    
ALTER TABLE usuarios RENAME TO usuarios_renom; 

# Cambiar el nombre de una columna #
ALTER TABLE usuarios_renom CHANGE apellidos apellido varchar(100) null;

# Comando para seleccionar algun usuario #
select x from usuarios_renom;

# Modificar columna sin cambiar nombre #
ALTER TABLE usuarios_renom MODIFY apellido char(50) not null;



# Añadir columna #
ALTER TABLE usuarios_renom ADD website varchar(100) not null;

# Añadir restriccion a columna, agrego rstriccion mas grande #
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email);
# uq_(unique) #

# Borrar una clumna #
ALTER TABLE usuarios_renom DROP website; 