# use database tiendita
USE tiendita;


#########################################################
# WORKING WITH TABLE categorias
UPDATE categorias SET nombre='Modificado' WHERE id=1;

# check changes in table categorias
SELECT * FROM categorias;

#########################################################
# WORKING WITH TABLE productos
UPDATE productos SET nombre='Refrescos 1', precio='12.60' WHERE id_producto=1;

# check changes in table productos
SELECT * FROM productos;

# add a new column called existencias
ALTER TABLE productos ADD COLUMN existencias INT NOT NULL;

# check changes in table productos
SELECT * FROM productos;

# use functions to make updates
UPDATE productos SET existencias = existencias + 5 WHERE id_producto=1;

# check changes in table productos
SELECT * FROM productos;

# update a record
UPDATE productos SET precio = REPLACE(precio, 5, 6);

# check changes in table productos
SELECT * FROM productos;

# replace characters
UPDATE productos SET nombre = REPLACE(nombre, "leta", "letita");

# check changes in table productos
SELECT * FROM productos;