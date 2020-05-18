# use database tiendita
USE tiendita;

# create table categorias
CREATE TABLE categorias(
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL
);

# show tables in the database tiendita
SHOW TABLES;

# add foreign key to productos table
ALTER TABLE productos ADD id_categoria INT NOT NULL;
ALTER TABLE productos ADD CONSTRAINT fk_cat_pro FOREIGN KEY (id_categoria) REFERENCES categorias (id) ON DELETE CASCADE ON UPDATE CASCADE;

# show colums
SHOW COLUMNS FROM productos;

# delete restrictions
# ALTER TABLE producto DROP FOREIGN KEY fk_cat_pro;

# delete column
# ALTER TABLE producto DROP COLUMN id_categoria;

# create table proveedores
CREATE TABLE proveedores(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL
);


# create table detalle_producto_proveedor
CREATE TABLE detalle_producto_proveedor(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_producto INT NOT NULL,
id_proveedor INT NOT NULL 
);

ALTER TABLE detalle_producto_proveedor ADD CONSTRAINT fk_prod FOREIGN KEY (id_producto) REFERENCES productos (id_producto) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE detalle_producto_proveedor ADD CONSTRAINT fk_prov FOREIGN KEY (id_proveedor) REFERENCES proveedores (id) ON DELETE CASCADE ON UPDATE CASCADE;
