CREATE DATABASE IF NOT EXISTS ProcedimientosYFunciones;

USE ProcedimientosYFunciones;

-- CREACION TABLA DE CLIENTES --

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INTEGER NOT NULL AUTO_INCREMENT 
    COMMENT 'Identificador del cliente',
    nombre VARCHAR(30) NOT NULL
    COMMENT 'Nombre del cliente',
    pais CHAR(3) NOT NULL
    COMMENT 'Pais del cliente con identificador de tres letras',

    PRIMARY KEY (id_cliente) 
    COMMENT 'El identificador del cliente debe ser unico'
);

-- INSERCION DE DATOS --

INSERT INTO clientes(nombre, pais)
VALUES('Nicolas Alexander Amaya Rico', 'MEX'),
    ('Stiven David Correa Celedon', 'COL'),
    ('Mileidy Cuenut', 'PER'),
    ('Yeisson Garcia', 'PER'),
    ('Yercin Gonzalez Rodriguez', 'VEN'),
    ('Dorian Felipe Marin Quintero', 'ARG'),
    ('Camilo Olarte Betancourt', 'MEX'),
    ('Carlos Daniel Morales Isaza', 'PAN'),
    ('David Perez Alvarado', 'PAR'),
    ('Sebastian Rangel Lemus', 'ARG'),
    ('Yamid Arciniegas', 'VEN'),
    ('Valentina Bonilla', 'VEN'),
    ('Andres Cordoba Aguirre', 'ARG'),
    ('Guillermo Duque Montoya', 'URU'),
    ('Juan Pablo Gonzalez Trejos', 'PER'),
    ('Camilo Hidalgo', 'CHL'),
    ('Maria Paula Ortiz Gomez', 'ARG'),
    ('Luisa Maria Taborda Ordoñez', 'COL'),
    ('Cristhian Alzate Gomez', 'PAR'),
    ('Zhara Cano Ibarra', 'MEX'),
    ('Sofia Cardona Arenas', 'PAN'),
    ('Juan David Castillo Marin', 'PER'),
    ('Juan Alberto Cotacio Castro', 'ECU'),
    ('Santiago Escobar Romero', 'ECU'),
    ('Jose Miguel Gañan', 'VEN'),
    ('Victor Andres Gomez Parra', 'PAR'),
    ('Valentina Molina Rodriguez', 'URU'),
    ('Kevin Ossa Varela', 'ARG'),
    ('Mateo Pacheco Hoyos', 'CHL'),
    ('Isaac Pachon Zuleta', 'PER'),
    ('Alejandro Pena Cardona', 'URU'),
    ('Camilo Rendon Ocampo,', 'COL'),
    ('Andrés Arias Tascón', 'PAN'),
    ('Emmanuel Beltran Gomez', 'PAR'),
    ('Camilo Castro Grisales', 'MEX'),
    ('Santiago Duque Robledo', 'COL'),
    ('Luisa Fajardo', 'ARG'),
    ('Stiven Gutierrez Carvajal', 'PER'),
    ('Camilo Hidalgo', 'PER'),
    ('Miguel Montealegre', 'ARG'),
    ('Jhoan Raigoza', 'ARG'),
    ('Gustavo Andres Ramirez Lopez', 'CHL'),
    ('Bryan Ramirez Valencia', 'CHL'),
    ('Ximena Bedoya Posada', 'MEX'),
    ('Esteban Cardona Blandon', 'MEX'),
    ('Hugo Humberto Morales Peña', 'URU'),
    ('Emerson Andrey Chiquito Calvo', 'PAR'),
    ('Erick Steven Chiquito Rojas', 'VEN'),
    ('Jose Aroldo De Assis Pinedo', 'VEN'),
    ('Jaime Andres Mejia Osorio', 'COL'),
    ('Camilo Lopez Usma', 'ECU'),
    ('Esteban Montoya Molina', 'URU'),
    ('Asly Melina Morales Pava', 'PAR'),
    ('Andres Obando Davila', 'URU'),
    ('Eliana Orozco Duque', 'VEN'),
    ('Camila Orozco Salazar', 'PER'),
    ('Andres Perez Arcila', 'MEX'),
    ('Esteban Quesada Pascuas', 'MEX'),
    ('Daniel Toro Soto', 'MEX'),
    ('Paulina Benjumea Mejia', 'MEX'),
    ('Valentina Rosas Coral', 'COL'),
    ('Catalina Londoño Perez', 'COL'),
    ('Diana Diaz Quintero', 'COL'),
    ('Isabela Montes Ramirez', 'COL'),
    ('Natalia Duque Ospina', 'COL'),
    ('Sofia Gomez Mosquera', 'COL'),
    ('Daniela Lopez Arias', 'ARG'),
    ('Dahiana Jaramillo Torres', 'VEN'),
    ('Mateo Mons', 'COL');




