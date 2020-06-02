# create database tiendita
CREATE DATABASE tiendita;

# use database tiendita
USE tiendita;

# create table productos
CREATE TABLE productos(
id_producto INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
precio DECIMAL(10, 2) NOT NULL,
fecha_alta DATE DEFAULT '2020-01-01'
);

# show columns from table productos
SHOW COLUMNS FROM productos;

# show how the table was created
SHOW CREATE TABLE productos;

# show which tables are in the database
SHOW TABLES;


#########################################################
# NOT NECESSARY FROM HERE ON


# rename table
RENAME TABLE productos TO producto;

# create a new column in existing table
ALTER TABLE producto ADD existencias INT NOT NULL;

# show columns from the table
SHOW COLUMNS FROM producto;

# delete existing column from a table
ALTER TABLE producto DROP COLUMN existencias;

# change existing column in a table
ALTER TABLE producto CHANGE precios precio DECIMAL(18, 2) NOT NULL;

# delete a table
DROP TABLE producto;