-- CREACION DE LA TABLA CLIENTE --

CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INTEGER NOT NULL AUTO_INCREMENT 
    COMMENT 'Identificador del cliente',
    nombre VARCHAR(30) NOT NULL
    COMMENT 'Nombre del cliente',
    direccion VARCHAR(40) NOT NULL
    COMMENT 'Direccion para entregra de mercancia',
    ciudad VARCHAR(20) NOT NULL
    COMMENT 'Ciudad de residencia del cliente',
    telefono VARCHAR(15) NOT NULL 
    COMMENT 'Numero telefonico de contacto',

    PRIMARY KEY (id_cliente) 
    COMMENT 'El identificador del cliente debe ser unico'
);


-- CREACION DE LA TABLA FACTURA --

CREATE TABLE IF NOT EXISTS factura (
    id_factura INTEGER NOT NULL 
    COMMENT 'Identificador unico de factura',
    id_cliente INTEGER NOT NULL
    COMMENT 'Identificador del cliente',
    fecha_factura DATE NOT NULL
    DEFAULT (CURRENT_DATE)
    COMMENT 'Fecha de transaccion',
    valor_total MEDIUMINT UNSIGNED NOT NULL
    COMMENT 'Valor total de transaccion',

    PRIMARY KEY (id_factura)
    COMMENT 'El identificador de la factura debe ser unico',
    KEY (id_cliente)
    COMMENT 'Indice de busqueda por identificador del cliente'
);


-- CREACION DE LA TABLA DETERMINADA_FACTURA --

CREATE TABLE IF NOT EXISTS det_factura (
    id_factura INTEGER NOT NULL
    COMMENT 'Identificador unico de la factura',
    cod_producto INTEGER UNSIGNED NOT NULL 
    COMMENT 'Numero de identificacion del producto',
    cant_vendida TINYINT UNSIGNED NOT NULL 
    COMMENT 'Cantidad total de unidades adquiridas del producto',
    valor_unitario INTEGER UNSIGNED NOT NULL
    COMMENT 'Valor unitario de compra del producto',

    PRIMARY KEY (id_factura, cod_producto)
    COMMENT 'Solo un producto igual en cada documento',
    KEY (cod_producto)
    COMMENT 'Indice de busqueda por codigo de producto'
);


-- CREACION DE LA TABLA PRODUCTOS --

CREATE TABLE IF NOT EXISTS productos (
    cod_producto INTEGER UNSIGNED NOT NULL
    COMMENT 'Numero de identificacion del producto',
    descripcion VARCHAR(60) NOT NULL
    COMMENT 'Descripcion completa del producto',
    precio_venta INTEGER UNSIGNED NOT NULL
    COMMENT 'Valor unitario de venta de este producto a la fecha',

    PRIMARY KEY (cod_producto)
    COMMENT 'Cada producto tiene un codigo unico',
    KEY (descripcion)
    COMMENT 'Indice de busqueda por descripcion del producto'
);


-- INSERCION DE DATOS EN TABLA CLIENTE --

INSERT INTO cliente (nombre, direccion, ciudad, telefono)
VALUES('Pascal', 'Calle 9 # 34-21', 'Bogota', '3124546612'),
    ('Maria Fernanda', 'Av Americas 78-90', 'Bogota', '3014567890'),
    ('Helena Cardona', 'Comuna 13', 'Medellin', '3117651234');

INSERT INTO cliente (nombre, direccion, ciudad, telefono)
VALUES ('Juan', 'Naranjo 151', 'CDM', '+55 5547-2920');


-- INSERCION DE DATOS EN TABLA FACTURA -- 

INSERT INTO factura (id_factura, id_cliente, valor_total)
VALUES(2543, 3, 12500),
    (2544, 1, 50000);
INSERT INTO factura (id_factura, id_cliente, valor_total)
VALUES(2545, 1, 1500000);



-- INSERCION DE DATOS EN TABLA PRODUCTOS --

INSERT INTO productos (cod_producto, descripcion, precio_venta)
VALUES(52342, 'TV 4K 65 pulg', 1500000),
    (81453, 'Mesa de noche', 230000);
INSERT INTO productos (cod_producto, descripcion, precio_venta)
VALUES(773819, 'Nintendo Switch', 1500000);
INSERT INTO productos (cod_producto, descripcion, precio_venta)
VALUES(775627384, 'Consola play station 5', 2500000);


-- INSERCION DE DATOS EN TABLA DETERMINADA_FACTURA --

INSERT INTO det_factura (id_factura, cod_producto, cant_vendida, valor_unitario)
VALUES(2544, 81453, 1, 250000),
    (2544, 52342, 1, 500000),
    (2543, 31453, 1, 250000);
INSERT INTO det_factura (id_factura, cod_producto, cant_vendida, valor_unitario)
VALUES(2545, 773819, 1, 1500000);



-- CONSULTAS --

SELECT nombre, id_factura, valor_total 
    FROM cliente, factura 
    WHERE factura.id_cliente = cliente.id_cliente;


SELECT count(id_factura) AS Documentos, sum(valor_total) AS Venta_total
    FROM factura;

SELECT nombre, count(*), sum(valor_total)
    FROM cliente, factura
    WHERE cliente.id_cliente = factura.id_cliente
    GROUP BY nombre
    ORDER BY nombre;


SELECT nombre AS Cliente, fecha_factura AS Fecha, 
    valor_unitario AS Valor, descripcion AS Producto
    FROM cliente, factura, det_factura, productos
    WHERE cliente.id_cliente = factura.id_cliente
        AND factura.id_factura = det_factura.id_factura
        AND det_factura.cod_producto = productos.cod_producto
        AND productos.cod_producto = 773819;


-- ACTUALIZACION DE DATOS --
 
UPDATE cliente SET nombre = 'Pedro Pascal'
    WHERE id_cliente = 1;

UPDATE cliente SET nombre = 'Helena Diaz'
    WHERE id_cliente = 3;

UPDATE cliente SET nombre = 'Juan Fernandez'
    WHERE id_cliente = 4;

UPDATE productos SET cod_producto = '773821'
    WHERE cod_producto = '775627384';


UPDATE factura, det_factura 
    SET det_factura.valor_unitario = det_factura.valor_unitario - 500,
        factura.valor_total = factura.valor_total - 500
    WHERE det_factura.id_factura = factura.id_factura
        AND factura.id_factura = 2545
        AND det_factura.id_factura = 2545;



-- BORRADO DE DATOS --

DELETE FROM cliente
    WHERE id_cliente = 4;


-- SELECCION DE DATOS NO EXACTOS --

SELECT * FROM productos 
    WHERE descripcion LIKE '%Mesa%';

SELECT * FROM productos 
    WHERE descripcion NOT LIKE '%Mesa%';

SELECT * FROM productos 
    WHERE descripcion LIKE '%4k%';