# use database tiendita
USE tiendita;


#########################################################
# WORKING WITH TABLE productos

# select all columns from table productos
SELECT * FROM productos;

# delete row
DELETE FROM productos WHERE id=20;

# select all columns from table categorias
SELECT * FROM categorias;

# to empty and reset table productos
SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE productos;
SET FOREIGN_KEY_CHECKS=1;

