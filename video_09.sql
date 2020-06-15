# use database tiendita
USE tiendita;


#########################################################
# WORKING WITH TABLE categorias

# select all columns from table categorias
SELECT * FROM categorias;

# select nombre from table categorias
SELECT nombre FROM categorias;


# WORKING WITH TABLE productos
# select all columns from table productos
SELECT * FROM productos;

# select nombre, precio, existencias and id_categoria columns from table productos
SELECT nombre AS Nombre, precio AS Precio, existencias, id_categoria FROM productos WHERE id_categoria=1;

# select nombre, precio, existencias and id_categoria columns from table productos 
SELECT nombre AS Nombre, precio AS Precio, existencias, id_categoria FROM productos WHERE existencias>3;

# group by
SELECT COUNT(id_producto) AS Cantidad, id_categoria FROM productos GROUP BY id_categoria;

# select min and max
SELECT MIN(existencias) AS existencia_minima, MAX(existencias) AS existencia_maxima FROM productos;

# select all columns from table productos and limit to 5 results
SELECT * FROM productos LIMIT 5;

# select and show results ordered by 
SELECT * FROM productos ORDER BY nombre ASC, existencias ASC;