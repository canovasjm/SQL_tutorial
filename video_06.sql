# use database tiendita
USE tiendita;


#########################################################
# WORKING WITH TABLE categorias

# show columns from table categorias 
SHOW COLUMNS FROM categorias;

# insert new row in table categorias
INSERT INTO categorias VALUES (NULL, "Bebidas");

# select all columns from table categorias
SELECT * FROM categorias;

# another form to insert rows into table categorias
INSERT INTO categorias (nombre) VALUES ("Aceites");

# insert many rows at once
INSERT INTO categorias (nombre) VALUES ("Detergentes"), ("Dulces"), ("Frituras");

INSERT INTO categorias SET nombre="Frutas";


#########################################################
# WORKING WITH TABLE productos

# insert into table productos
SHOW COLUMNS FROM productos;

INSERT INTO productos (nombre, precio, id_categoria) VALUES ("Refresco", 8.5, 1);

# select all columns from table productos
SELECT * FROM productos;

INSERT INTO productos (nombre, precio, fecha_alta, id_categoria)
VALUES ("Paleta", 5, "2020-04-16", 1);

# CURDATE() gives current date