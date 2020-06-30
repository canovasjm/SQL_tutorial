# use database tiendita
USE tiendita;


#########################################################
# WORKING WITH TABLE productos

# select columns from table categorias with AND and OR operators
SELECT * FROM productos WHERE id_categoria = 1 AND precio = 12.60;
SELECT * FROM productos WHERE id_categoria = 1 OR precio = 6.00;

# select columns from table categorias with NULL and NOT NULL
SELECT * FROM productos WHERE precio IS NULL;
SELECT * FROM productos WHERE precio IS NOT NULL;

# select columns from table categorias with BETWEEN and NOT BETWEEN
SELECT * FROM productos WHERE precio BETWEEN 5 AND 13;
SELECT * FROM productos WHERE precio NOT BETWEEN 7 AND 10;
SELECT * FROM productos WHERE DATE(fecha_alta) BETWEEN '2019-01-01' AND '2021-01-01';

# select columns from table categorias with IN and NOT IN
SELECT * FROM productos WHERE precio IN (6, 7, 10);
SELECT * FROM productos WHERE precio NOT IN (6, 7, 10);

# select columns from table categorias with arithmetic operators
SELECT * FROM productos WHERE precio = 10 - 4;
SELECT * FROM productos WHERE precio = 2*3;

# select columns from table categorias with LIKE and NOT LIKE
SELECT * FROM productos WHERE nombre LIKE "Refrescos 1";
SELECT * FROM productos WHERE nombre LIKE "Refre%";
SELECT * FROM productos WHERE nombre LIKE "%tita";
SELECT * FROM productos WHERE nombre NOT LIKE "Paletita";