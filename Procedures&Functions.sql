CREATE DATABASE IF NOT EXISTS ProcedimientosYFunciones;

USE ProcedimientosYFunciones;

-- CREACION TABLA DE CLIENTES --

CREATE TABLE IF NOT EXISTS clientes(
    id_cliente INTEGER NOT NULL AUTO_INCREMENT 
    COMMENT 'Identificador del cliente',
    nombre VARCHAR(30) NOT NULL
    COMMENT 'Nombre del cliente',
    pais CHAR(3) NOT NULL
    COMMENT 'Pais del cliente con identificador de tres letras',

    PRIMARY KEY(id_cliente) 
    COMMENT 'El identificador del cliente debe ser unico'
);

-- CREACION TABLA PRODUCTOS --

CREATE TABLE IF NOT EXISTS productos(
    cod_producto INT NOT NULL AUTO_INCREMENT
    COMMENT 'Identificador de producto',
    descripcion VARCHAR(60) NOT NULL
    COMMENT 'Describe el producto',
    costo INT NOT NULL
    COMMENT 'Valor del producto',
    precio_venta INT NOT NULL
    COMMENT 'valor de venta al cliente',

    PRIMARY KEY(cod_producto)
);

-- CREACION TABLA ESTADISTICAS --

CREATE TABLE IF NOT EXISTS estadisticas(
    codigo smallint not null PRIMARY KEY 
    COMMENT 'Identificación de la persona',
    alias varchar(20) not null 
    COMMENT 'Como le gusta que lo llamen sus amigos',
    apellidos varchar(40) not null 
    COMMENT 'Apellido(s) de la persona',
    nombre varchar(40) not null 
    COMMENT 'Nombre(s) de la persona',
    direccion varchar(60) not null 
    COMMENT 'Direccion de ubicación de la vivienda',
    ciudad varchar(15) not null 
    COMMENT 'Ciudad de ubicación de la vivienda',
    telefono integer not null 
    COMMENT 'Numero de telefono en la vivienda',
    movil integer 
    COMMENT 'Numero de movil o numero de linea celular',
    email varchar(60) 
    COMMENT 'Correo electrónico personal',
    sexo char(1) 
    COMMENT 'M=Masculino, F=Femenino',
    nacimiento date not null 
    COMMENT 'Fecha de nacimiento de la persona',
    estadoCivil varchar(12) 
    COMMENT 'Separado, Soltero, Casado, Divorciados, otros',
    hijos smallint not null 
    COMMENT 'Numero de hijos de la persona',
    desempleado boolean not null 
    COMMENT 'Esta desempleado? False o True',
    peso smallint not null 
    COMMENT 'Peso en kilogramos de la persona',
    estatura decimal(5,2) not null 
    COMMENT 'Estatura en metros de la persona',
    cabello varchar(15) not null 
    COMMENT 'Color de cabello de la persona',
    ojos varchar(15) not null 
    COMMENT 'Color de ojos de la persona',
    aficion varchar(20) not null 
    COMMENT 'Afición o Hobby principal de la personal'
);

-- CREACION TABLA CUENTAS --

CREATE TABLE IF NOT EXISTS cuentas(
    documento INTEGER PRIMARY KEY COMMENT 'Numero de cliente',
    inicial INTEGER COMMENT 'Valor inicial de la cuenta',
    ingresos INTEGER COMMENT 'Total de ingresos reportados',
    egresos INTEGER COMMENT 'Total de egresos realizados',
    saldo INTEGER COMMENT 'Balance actual del cliente'
);

-- CREACION TABLA TRANSACCIONES --

CREATE TABLE IF NOT EXISTS transacciones(
    tipo CHAR(1) NOT NULL 
    COMMENT 'I=Ingreso, R=Retiro, T=Transferencia',
    cuenta_origen INTEGER NOT NULL 
    COMMENT 'Cuenta que realiza la transaccion',
    valor INTEGER NOT NULL 
    COMMENT 'Valor de la transaccion',
    cuenta_destino INTEGER
    COMMENT 'Cuenta destino si es una transferencia'
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
---------------------------------------------------

INSERT INTO productos(descripcion, costo, precio_venta)
VALUES('Consola PlayStation 4', 850, 1050),
    ('Consola XBOX ONE', 840, 1100),
    ('Nintendo Switch', 950, 1350);
-----------------------------------------------------

INSERT INTO estadisticas(codigo, alias, apellidos, nombre, direccion, ciudad, telefono, movil, email, sexo, nacimiento, estadoCivil, hijos, desempleado, peso, estatura, cabello, ojos, aficion)
VALUES (1001,'Africa','AROCAS PASADAS','ESTEFANIA','PADRÓ , 109','Zaragoza',938205580,546212121,'africa@altecom.es','F','1964/3/20','Otros',1,false,73,1.62,'Castaño','Marrones','Cine'),
    (1002,'Agata','VISO GILABERT','QUERALT','CASA CORDELLAS , ','Barcelona',936545115,625215452,'agata@hotmail.com','F','1965/12/13','Otros',0,true,98,1.55,'Negro','Marrones','Caminar'),
    (1003,'Aguador','AYALA FERRERAS','JOAN','DOCTOR FLEMING , 11','Zaragoza',938202768,649212123,'','M','1969/7/20','Otros',0,false,61,1.6,'Negro','Otro','Música'),
    (1004,'Albatros','BAEZ TEJADO','JOAN','BERTRAND I SERRA , 11, 3R.','Zaragoza',938727844,0,'albatros@wandoo.es','M','1965/7/23','Separados',1,false,70,1.8,'Otros','Marrones','Caminar'),
    (1005,'Albert','BASTARDES SOTO','MARC','CARRIÓ , 12, 5È A','Tarragona',938350521,0,'albert@intercom.es','M','1964/10/16','Solteros',3,false,91,1.81,'Negro','Azules','Deporte'),
    (1006,'Alien','ANGUERA VILAFRANCA','JOSEP','PIRINEUS , 10','Valencia',938755645,0,'alien@intercom.es','M','1958/11/16','Casados',1,false,53,1.57,'Negro','Verdes','Cine'),
    (1007,'amores','PASCUAL ALOY','ESTHER','JACINT VERDAGUER , 43','Girona',936520547,0,'amores@hotmail.com','F','1967/3/20','Divorciados',0,false,60,1.57,'Calvo','Otro','TV'),
    (1008,'Anabel','VALLÉS GIRVENT','LAURA','NOU , 9, 2N.','Tarragona',936565656,645121212,'anabel@altecom.es','F','1966/9/17','Casados',1,true,70,1.72,'Pelirrojo','Verdes','Cine'),
    (1009,'Antiga','RAYA GARCIA','RAQUEL','JACINT VERDAGUER , 52, 3R, 1A.','Barcelona',936752156,0,'antiga@minorisa.es','F','1967/10/10','Casados',1,false,65,1.81,'Rubio','Azules','Deporte'),
    (1010,'ballador','ANDREU CRUZ','JOAN','JOAN MIRÓ , 10','Tarragona',938300025,648221111,'ballador@hotmail.com','M','1960/5/29','Otros',1,true,99,1.62,'Castaño','Otro','Cine'),
    (1011,'balladora','BARALDÉS COMAS','MARIA ISABEL','JAUME GALOBART , 12','Lleida',938385567,658444412,'balladora@altecom.es','F','1968/3/11','Divorciados',0,true,87,1.56,'Otros','Otro','Cine'),
    (1012,'Barbilla','BERENGUERAS CULLERÉS','ADRIÀ','PINTOR SERT , 12, 1R., 1A.','Valencia',937809812,654899994,'barbilla@hotmail.com','M','1964/9/23','Solteros',0,true,92,1.6,'Calvo','Marrones','Música'),
    (1013,'Besugo','LÓPEZ DE PABLO GARCIA UCEDA','GERARD','BELLAVISTA , 30','Zaragoza',936520741,0,'besugo@minorisa.es','M','1966/1/13','Divorciados',0,false,66,1.87,'Negro','Otro','Caminar'),
    (1014,'Bogart','ARNAU MORENO','ELIOT','MONTURIOL , 10, 1R.','Girona',938202456,0,'bogart@terra.es','M','1957/9/2','Solteros',2,false,53,1.82,'Negro','Negros','Lectura'),
    (1015,'Bond','RAYA GAVILAN','JORDI','JACINT VERDAGUER , 52, 2N., 4A.','Lleida',938754554,0,'bond@terra.es','M','1969/7/18','Casados',1,false,101,1.6,'Castaño','Otro','TV'),
    (1016,'Borreguero','ZAMBUDIO FIGULS','LLUÍS','CASA NOVA , ','Lleida',936875544,625411320,'','M','1969/1/30','Solteros',1,true,104,1.67,'Rubio','Verdes','Cine'),
    (1017,'Cabeza larga','BIDAULT CULLERÉS','LAURA','DE LA CAÇA , 12, 1R., C','Valencia',935880712,690522200,'cabeza larga@cataloniamail.com','F','1967/4/2','Casados',0,true,74,1.87,'Pelirrojo','Negros','Lectura'),
    (1018,'Caga-novias','BIOSCA FONTANET','JORDI','PINTOR SERT , 12, 2N., 1A.','Zaragoza',936875255,647821111,'','M','1958/9/3','Otros',3,false,107,1.75,'Calvo','Azules','Cine'),
    (1019,'Calandria','ZAFRA FIGULS','DOUNYA','CASA SARA , ','Tarragona',936542775,0,'','F','1966/5/31','Separados',1,true,107,1.73,'Otros','Marrones','Música'),
    (1020,'Cangur','ALEU ICART','JULIO','ARTÈS , 1, 1R, 1A.','Barcelona',938773545,0,'cangur@intercom.es','M','1967/9/21','Otros',0,true,79,1.86,'Castaño','Azules','Música'),
    (1021,'Cantinflas','BADIA TORNÉ','ANDREU','GENERAL PRIM , 11, 2N.','Valencia',938200022,0,'','M','1963/2/23','Separados',1,false,106,1.79,'Rubio','Verdes','Lectura'),
    (1022,'Canto','MORALES GESE','RAMON','CAU DE LA GUINEU , 4','Tarragona',936512545,0,'','M','1958/1/26','Casados',0,false,70,1.81,'Calvo','Verdes','Lectura'),
    (1023,'Caparranas','BLANCO FONTANET','DAVID-JESE','JOAN SANMARTÍ , 12, 2N., 2A.','Lleida',937785655,632548744,'caparranas@altecom.es','M','1960/9/23','Otros',1,false,61,1.57,'Negro','Azules','Deporte'),
    (1024,'Cara corta','ALVAREZ FERNÁNDEZ','ARAN','PROL. PADRÓ , 1, 3R. 1A.','Madrid',938300385,632986321,'','M','1964/9/27','Solteros',2,false,85,1.64,'Castaño','Marrones','Deporte'),
    (1025,'cariñosa','GARCIA ALMOGUERA','GEMMA','SALLENT , 22, 2N.','Barcelona',936520471,647111021,'','F','1962/3/22','Solteros',0,false,75,1.69,'Pelirrojo','Azules','TV'),
    (1026,'Carretero','LIBORI FIGUERAS','IVAN','JOAN MIRÓ , 3','Girona',936012445,625481111,'carretero@intercom.es','M','1965/7/23','Divorciados',0,false,88,1.56,'Otros','Otro','Caminar')
    (1027,'Cela','BIDAULT PUEYO','DAVID','LLUÍS CASTELLS , 12, 2N.','Barcelona',934500611,0,'cela@altecom.es','M','1969/5/13','Divorciados',0,true,102,1.57,'Rubio','Otro','Caminar'),
    (1028,'Coco','BENITEZ JOSE','XAVIER','SANT VALENTÍ , 12, 1R.','Girona',937885544,0,'coco@hotmail.com','M','1966/5/17','Divorciados',2,false,69,1.73,'Rubio','Azules','Deporte'),
    (1029,'Conejo','PASCUAL FLORES','MARIO','ÀNGEL GUIMERÀ , 43, 2N','Girona',936512105,0,'conejo@minorisa.es','M','1959/8/2','Separados',1,false,73,1.75,'Castaño','Verdes','Música'),
    (1030,'Corcel','AYALA TORNÉ','JESUS','JAUME GALOBART , 11','Girona',938202200,0,'corcel@altecom.es','M','1959/1/4','Separados',1,false,71,1.82,'Negro','Marrones','TV'),
    (1031,'Cuca','LISTAN FIGUERAS','GEMMA','AVINGUDA TRES , 3, 1R., 1A.','Madrid',939965585,0,'','F','1968/11/29','Divorciados',0,false,77,1.81,'Negro','Negros','TV'),
    (1032,'Curie','RASERO GAVILAN','SILVIA','JACINT VERDAGUER , 52, 2N., 1A.','Barcelona',936541235,648555214,'curie@minorisa.es','F','1964/6/14','Solteros',1,false,104,1.62,'Negro','Marrones','Deporte'),
    (1033,'Dalí','ARNALOT PUIG','ALBERT','DIPUTACIÓ , 10','Lleida',938204054,621114452,'dalí@wandoo.es','M','1969/6/20','Solteros',0,false,59,1.71,'Pelirrojo','Verdes','Lectura'),
    (1034,'Diamant','MOLINER GARRIDO','MARIA','VIC , 39, 1R., 2A.','Tarragona',936584541,0,'','F','1966/11/21','Casados',1,true,106,1.73,'Pelirrojo','Azules','Deporte'),
    (1035,'Dolça','GALOBART GARCIA','BERTA','GERMAN DURAN , 21','Zaragoza',934111475,0,'dolça@cidet.com','F','1959/5/17','Separados',0,false,58,1.71,'Pelirrojo','Negros','Deporte'),
    (1036,'Dorada','LÓPEZ GARRIGASSAIT','BERTA','BELLAVISTA , 30','Zaragoza',935687444,0,'dorada@intercom.es','F','1965/7/11','Otros',0,false,80,1.9,'Otros','Verdes','TV'),
    (1037,'Elisa','SÁNCHEZ GÓMEZ','MIREIA','NOU , 7, 2N.','Lleida',936658711,645874112,'elisa@altecom.es','F','1962/12/9','Solteros',0,false,66,1.87,'Rubio','Otro','Deporte'),
    (1038,'Encarna','ALAVEDRA SUNYÉ','GEMMA','MANELIC , 1','Barcelona',938773941,632125482,'encarna@hotmail.com','F','1966/3/22','Casados',1,false,66,1.89,'Otros','Negros','Lectura'),
    (1039,'entesa','ALIGUÉ BONVEHÍ','MARIA ISABEL','DE LA PESCA , 1, 1R., 1A.','Lleida',938305295,0,'entesa@altecom.es','F','1967/2/22','Casados',0,true,68,1.83,'Pelirrojo','Otro','Lectura'),
    (1040,'Entierravivos','MAS FRANCH','TONI','PIRINEUS , 34','Lleida',936524446,621445221,'','M','1969/7/24','Divorciados',1,true,54,1.59,'Otros','Marrones','TV'),
    (1041,'Esportista','ALOY COMPTE','ALEJANDRO','PROL. JACINT VERDAGUER , 1, 2N., 2A.','Madrid',938305551,0,'','M','1958/8/23','Divorciados',0,false,78,1.78,'Negro','Otro','Cine'),
    (1042,'ET','ASENSIO VEGA','JOAN MARTÍ','MALLORCA , 11','Zaragoza',938206097,0,'et@altecom.es','M','1957/12/16','Otros',2,false,91,1.72,'Rubio','Negros','Música'),
    (1043,'Europa','BIDAULT PÉREZ','INGRID','SANT BENET , 12, 2N.','Lleida',934500644,0,'','F','1967/3/20','Casados',0,false,53,1.89,'Castaño','Marrones','Caminar'),
    (1044,'expert','ALOY CODINACHS','OLIVER','PROL. PADRÓ , 1, 2N., 2A.','Lleida',938305594,0,'','M','1959/4/13','Otros',1,false,79,1.66,'Castaño','Negros','Deporte'),
    (1045,'experta','ALTIMIRAS ARMENTEROS','SANDRA','ARTÈS , 1, 2N., 2A.','Barcelona',938300422,0,'experta@wandoo.es','F','1960/1/23','Separados',1,false,110,1.6,'Calvo','Verdes','Deporte'),
    (1046,'F50','BELMONTE SÁNCHEZ','JORDI','JOAN XXIII , 12, 1R, 2A.','Madrid',938350511,621455662,'f5@wandoo.es','M','1966/7/16','Otros',1,false,105,1.74,'Castaño','Azules','Música'),
    (1047,'Faja Ancha','BAJONA GARCIA','MARC','BERTRAND I SERRA , 11, 3R.','Zaragoza',938727589,0,'','M','1968/2/25','Otros',2,false,60,1.7,'Rubio','Verdes','Música'),
    (1048,'Fara','AGUILAR RODRIGUEZ','JORDINA','LA SARDANA , 1','Barcelona',938208488,0,'','F','1962/8/17','Casados',0,false,87,1.59,'Calvo','Marrones','TV'),
    (1049,'Fina','BARRIGA SOTO','MARIA JOSÉ','GALILEU , 12','Tarragona',938320587,0,'fina@hotmail.com','F','1961/7/16','Otros',2,false,70,1.87,'Otros','Negros','Música'),
    (1050,'Fuego','AVILA MASJUAN','RAQUEL','SANT VALENTÍ , 11','Girona',938203095,658954422,'fuego@altecom.es','F','1964/1/23','Separados',0,false,70,1.78,'Negro','Otro','Lectura'),
    (1051,'Galgo','PARRAMON FLORES','ENRIC','JOAN XXIII , 43','Barcelona',934555455,0,'','M','1963/8/29','Otros',0,false,78,1.86,'Castaño','Otro','Lectura'),
    (1052,'Garota','AGUILAR RAMOS','MARTA','DE LA PAU , 1','Tarragona',938208502,0,'garota@hotmail.com','F','1961/2/19','Separados',2,false,62,1.65,'Otros','Otro','Caminar'),
    (1053,'gata','AYALA ALSINA','CARLA','SANT ANTONI MARIA CLARET , 11','Zaragoza',938205245,0,'','F','1959/4/20','Casados',0,false,103,1.73,'Otros','Verdes','TV'),
    (1054,'Gateta','ALVAREZ TROYANO','MARIA NOELIA','AVINGUDA TRES , 1, 3R., 1A.','Tarragona',938300374,0,'gateta@cataloniamail.com','F','1964/10/20','Divorciados',0,false,66,1.56,'Rubio','Azules','Caminar'),
    (1055,'Gioconda','ALINS GONZÁLEZ','CRISTINA','PROL. PADRÓ , 1, 2N., 1A.','Barcelona',938305576,652148555,'','F','1960/3/27','Solteros',1,false,102,1.67,'Negro','Azules','Caminar'),
    (1056,'Groucho','ACUÑA TORT','CARLOS','SANT JOAN , 0, C, 3R. A','Valencia',938208614,0,'groucho@intercom.es','M','1960/9/9','Divorciados',1,false,79,1.82,'Rubio','Negros','Cine'),
    (1057,'Harpo','ALGUÉ TRANCHO','DAVID','PROL. JACINT VERDAGUER , 1, 1R., 1A.','Madrid',938770077,0,'harpo@hotmail.com','M','1966/11/3','Solteros',1,true,82,1.7,'Castaño','Marrones','Lectura'),
    (1058,'Hispa','BADIA CASTILLO','CRISTIAN','JOAN XXIII , 11, 1R., 1A.','Girona',938200713,0,'hispa@cataloniamail.com','M','1960/2/23','Solteros',1,false,103,1.7,'Rubio','Marrones','Música'),
    (1059,'Hojalatero','BENITEZ FLORES','JULIO ALBERTO','LLUÍS CASTELLS , 12, 1R.','Barcelona',938270685,625477881,'','M','1962/10/20','Solteros',0,false,54,1.65,'Negro','Negros','Caminar'),
    (1060,'Huevo','TORRUELLA GARCIA','SERGI','PADRÓ , 83','Zaragoza',936021048,0,'huevo@terra.es','M','1969/5/26','Casados',0,false,66,1.79,'Negro','Verdes','Lectura'),
    (1061,'James Dean','ALBERICH RODRIGUEZ','ALEIX','SANT ISCLE , 1','Tarragona',938773933,648555552,'james dean@intercom.es','M','1966/5/12','Divorciados',2,false,64,1.7,'Calvo','Negros','Caminar'),
    (1062,'Jéssica','ARMENCOT PUIG','VERÒNICA','MONTSERRAT , 10','Zaragoza',938206766,690254111,'jéssica@hotmail.com','F','1960/8/30','Solteros',1,false,104,1.84,'Calvo','Azules','Caminar'),
    (1063,'Julia','ALIGUÉ RIVERA','MARIONA','PROL. JACINT VERDAGUER , 1, 1R., 2A.','Zaragoza',938305223,0,'','F','1962/6/2','Solteros',0,false,48,1.81,'Calvo','Azules','Cine'),
    (1064,'Julio','BARRIGA RIU','MARC','TRABUCAIRES , 12','Zaragoza',938325565,0,'','M','1959/8/2','Divorciados',1,false,89,1.81,'Rubio','Negros','Deporte'),
    (1065,'Lali','PORTELLA GISPETS','GEMMA','JACINT VERDAGUER , 49, 4T., 2A.','Girona',936565448,632587441,'','F','1966/9/6','Solteros',1,true,98,1.56,'Otros','Marrones','Lectura'),
    (1066,'libero','AGUILERA BAENA','RICARD','MANELIC , 1','Madrid',938208360,0,'','M','1963/2/20','Otros',0,false,82,1.74,'Negro','Verdes','Caminar'),
    (1067,'Llus','RODRIGUEZ GARCÍA','JUAN','VERGE DE FÀTIMA , 6, BX., 2A.','Madrid',936549889,602412052,'llus@hotmail.com','M','1962/7/20','Otros',0,false,94,1.6,'Calvo','Otro','Caminar'),
    (1068,'Loli','AGUILAR SUNYÉ','MARTA','SANT JOAN , 0, D, 3R. A','Tarragona',938208677,0,'','F','1960/11/27','Casados',0,false,91,1.73,'Calvo','Verdes','Cine'),
    (1069,'Madonna','BARRIGA TARDÀ','NATÀLIA','GALILEU , 12','Madrid',938325558,0,'madonna@wandoo.es','F','1959/11/18','Otros',1,false,95,1.86,'Calvo','Otro','TV'),
    (1070,'Mata Hari','BARCONS LARA','MARTA','ESPORTS , 12','Barcelona',938360281,0,'mata hari@intercom.es','F','1968/10/25','Otros',0,false,110,1.88,'Otros','Otro','Música'),
    (1071,'Melanie','AGUILERA TATJÉ','LAURA','JOSEP BOIXADERAS , 1','Valencia',938208380,625411014,'melanie@minorisa.es','F','1963/2/10','Otros',1,false,96,1.89,'Castaño','Azules','Caminar'),
    (1072,'Melquíades','ALEU PRAT','JOAN','CERVANTES , 1, 1R.','Girona',938770878,0,'melquíades@hotmail.com','M','1969/2/2','Otros',2,false,93,1.83,'Calvo','Azules','Cine'),
    (1073,'Merche','VALLÉS GIRVENT','ALEXIA','CERVANTES , 9, 1R.','Valencia',936874511,654822414,'merche@terra.es','F','1964/3/16','Solteros',0,true,53,1.67,'Calvo','Azules','Música'),
    (1074,'Midas','MOLINA GARRIDO','FERRAN','JOAN XXIII , 39','Girona',936548745,698774444,'midas@cataloniamail.com','M','1964/6/21','Solteros',0,true,59,1.81,'Calvo','Otro','Música'),
    (1075,'Mona lisa','ARISSA HERMOSO','CRISTINA','DOCTOR BARNARD , 10','Tarragona',938755512,602111254,'mona lisa@minorisa.es','F','1957/11/19','Solteros',0,false,75,1.74,'Castaño','Azules','Deporte'),
    (1076,'Moro','BARALDÉS PARDO','JOSÉ ANTONIO','ESPORTS , 12','Barcelona',938722096,0,'moro@minorisa.es','M','1966/11/30','Separados',0,false,97,1.59,'Calvo','Otro','Música'),
    (1077,'Mozart','SUAREZ GARZÓN','JORDI','DE LA PAU , 8','Valencia',934512544,0,'mozart@wandoo.es','M','1960/9/3','Solteros',1,false,108,1.85,'Castaño','Negros','Lectura'),
    (1078,'Nadadora','ARPA MORENO','BEGONYA','SANT VALENTÍ , 11','Lleida',938205011,0,'','F','1964/10/28','Otros',1,false,106,1.8,'Castaño','Verdes','Música'),
    (1079,'Nalga','ALOY FARRANDO','INGRID','PROL. PADRÓ , 1, 2N., 2A.','Barcelona',938300864,0,'','F','1959/4/14','Separados',1,false,93,1.82,'Pelirrojo','Otro','TV'),
    (1080,'Napoleon','LUQUE GARRIGASAIT','MIQUEL','VIC , 30 (TORROELLA)','Lleida',933256844,625401445,'napoleon@cidet.com','M','1967/9/20','Divorciados',0,false,93,1.64,'Rubio','Azules','Caminar'),
    (1081,'Orondo','RIDÓ GÓMEZ','AGUSTÍ','SANT ISCLE , 6','Tarragona',936528779,0,'orondo@altecom.es','M','1966/5/24','Casados',2,false,79,1.59,'Pelirrojo','Negros','Cine'),
    (1082,'Papagayo','SANTAMARIA FLOTATS','ANTONI','JAUME BALMES , 70, 3R, 1A.','Girona',931021886,0,'papagayo@altecom.es','M','1967/5/31','Solteros',0,true,89,1.84,'Otros','Otro','Caminar'),
    (1083,'Paseante','HERMS GÓMEZ','JOAN','GERMAN DURAN , 27, 3R., 1A.','Zaragoza',936201457,658955442,'','M','1958/10/21','Divorciados',1,false,81,1.71,'Pelirrojo','Otro','Música'),
    (1084,'Pasión','ARTIGAS MATURANO','MÒNICA','SANT JOAN , 11','Lleida',938207515,0,'pasión@altecom.es','F','1959/10/3','Separados',3,false,100,1.86,'Otros','Otro','Cine'),
    (1085,'Pato','AGUILAR MASANA','GERARD','PUIG , 1','Madrid',938208558,0,'','M','1961/5/23','Casados',2,false,83,1.84,'Rubio','Marrones','Música'),
    (1086,'Pelusa','ALTIMIRAS SERAROLS','GEMMA','PROL. JACINT VERDAGUER , 1, 2N., 2A.','Valencia',938300496,0,'pelusa@hotmail.com','F','1961/1/16','Casados',4,false,89,1.76,'Calvo','Azules','Caminar'),
    (1087,'Perla','TORRESCASANA GARCIA','MARIA','RAMON I CAJAL , 81, 2N.','Lleida',930120545,625458445,'perla@cataloniamail.com','F','1957/10/29','Divorciados',0,false,63,1.77,'Pelirrojo','Negros','Caminar'),
    (1088,'Picasso','ARIZA PUIGBÓ','ORIOL','MORAGUES , 10','Girona',938207095,0,'','M','1967/12/5','Casados',1,true,79,1.7,'Negro','Negros','Cine'),
    (1089,'poma','ALVAREZ ARMENTEROS','VIRGINIA','PROL. PADRÓ , 1, 3R., 2A.','Barcelona',938300214,0,'','F','1965/10/30','Separados',0,false,66,1.82,'Negro','Marrones','Deporte'),
    (1090,'Psicosis','BARALDÉS TARRAGÓ','DAMIÀ','FRANCESC DE VITÒRIA , 11, 4T 2A','Tarragona',938727244,625410101,'psicosis@intercom.es','M','1969/5/19','Divorciados',0,true,101,1.64,'Castaño','Negros','TV'),
    (1091,'Quince centimos','GARCIA GARCÍA','VALENTÍ','ALBÉNIZ , 22, 2N.','Barcelona',936565874,0,'','M','1964/7/14','Separados',1,false,108,1.65,'Otros','Azules','Deporte'),
    (1092,'Rebeca','AROCA GÓMEZ','AINA','TRES ROURES , 10, 4T 2A','Tarragona',938205782,632514125,'rebeca@cataloniamail.com','F','1964/1/29','Separados',0,false,95,1.75,'Pelirrojo','Otro','Deporte'),
    (1093,'Rebelde','ALONSO RODRIGUEZ','DAVID','PROL. PADRÓ , 1, 2N., 1A.','Girona',938305551,0,'rebelde@intercom.es','M','1958/3/23','Divorciados',2,false,83,1.73,'Calvo','Verdes','Lectura'),
    (1094,'Recio','CANO GÓMEZ','GERARD','ALBÉNIZ , 13, 2N., 1A.','Zaragoza',936577225,0,'','M','1966/11/4','Otros',1,false,69,1.72,'Otros','Verdes','Caminar'),
    (1095,'Recital','ALCAIDE MOLINA','MARTA','FONT DEL GAT , 1','Lleida',938773647,632544145,'','F','1967/7/17','Separados',0,false,73,1.72,'Castaño','Marrones','Deporte'),
    (1096,'Rene','AGUILERA PRAT','MIREIA','MONTCAU , 1','Lleida',938208054,0,'rene@intercom.es','F','1966/2/16','Solteros',1,true,90,1.57,'Negro','Marrones','Deporte'),
    (1097,'Repicó','ALAPONT ICART','ELOI','MONTURIOL , 1','Lleida',938208054,658789875,'','M','1966/3/9','Solteros',1,true,58,1.61,'Rubio','Marrones','Cine'),
    (1098,'Rica','RIVERO FLORIDO','ANNA','VILATORRADA , 6','Valencia',930712563,654112144,'rica@terra.es','F','1969/3/23','Casados',0,false,102,1.84,'Otros','Marrones','Música'),
    (1099,'Rockera','AVILA MASJUAN','ALBA','JAUME GALOBART , 11','Valencia',938204078,0,'rockera@terra.es','F','1957/9/22','Otros',2,false,76,1.57,'Otros','Negros','Lectura'),
    (1100,'Roma','GRANADOS ANDRÉS','SANDRA','SANT GENÍS , 25','Barcelona',936871045,0,'','F','1961/11/15','Divorciados',1,false,51,1.61,'Calvo','Marrones','Caminar'),
    (1101,'Roman','FERRER GASSET','ERIC','VERGE DE FÀTIMA , 2, 3R., 1A.','Valencia',938745211,0,'roman@wandoo.es','M','1960/4/15','Otros',0,false,62,1.68,'Castaño','Negros','Deporte'),
    (1102,'Romario','AMIGO MODREGO','LLUÍS','JAUME I , 10','Zaragoza',938300065,654401401,'','M','1965/11/18','Divorciados',1,false,98,1.75,'Rubio','Azules','TV'),
    (1103,'Romeo','ABDIN TATJÈ','CRISTIAN','SANT JOAN , 0, C, 1R., B','Girona',938208674,0,'romeo@intercom.es','M','1959/12/8','Casados',0,false,76,1.63,'Calvo','Marrones','Lectura'),
    (1104,'Romesco','CANELLAS GOMEZ','GUILLEM','JACINT VERDAGUER , 13','Zaragoza',930214054,0,'','M','1967/3/30','Separados',0,false,68,1.87,'Calvo','Verdes','Música'),
    (1105,'RONC','HIDALGO ALTIMIRAS','DIMAS','SANT BENET , 28, 2N., 2A.','Barcelona',936521404,602120214,'ronc@cataloniamail.com','M','1964/7/14','Otros',0,true,89,1.61,'Rubio','Marrones','Deporte'),
    (1106,'Sabrosa','BASTARDAS FRANCH','ANA INÉS','FONERIA , 12','Zaragoza',938350593,0,'sabrosa@hotmail.com','F','1962/1/3','Casados',0,false,96,1.82,'Negro','Marrones','TV'),
    (1107,'Salsa','ABADIAS MASANA','IVET','ALFONS XII , 9, 4T 1A','Zaragoza',939962045,622101451,'salsa@cataloniamail.com','F','1959/5/22','Casados',0,false,105,1.55,'Castaño','Azules','Lectura'),
    (1108,'sandra','AREVALO SANCHEZ','JÚLIA','JAUME I , 10','Valencia',938755603,654874412,'','F','1968/9/17','Casados',0,false,99,1.59,'Castaño','Marrones','Lectura'),
    (1109,'Sha','ALINS MULET','DANIEL','DE LA PESCA , 1, 1R., 2A.','Barcelona',938305524,610025001,'','M','1958/3/2','Casados',2,false,86,1.6,'Rubio','Verdes','Deporte'),
    (1110,'Sincer','GARCIA GONZÁLEZ','ABEL','PIRINEUS , 22','Valencia',936571974,0,'sincer@altecom.es','M','1967/7/30','Solteros',0,true,83,1.89,'Pelirrojo','Azules','Cine'),
    (1111,'Sincera','ALVAREZ PARCERISA','IRENE','PROL. JACINT VERDAGUER , 1, 3R., 2A.','Girona',938300036,0,'sincera@hotmail.com','F','1965/7/20','Divorciados',1,true,98,1.66,'Otros','Azules','Caminar'),
    (1112,'suau','CASAS ANDRÉS','ADRIÀ','JAUME GALOBART , 14','Madrid',936505455,0,'suau@hotmail.com','M','1959/9/1','Separados',1,false,100,1.84,'Castaño','Negros','TV'),
    (1113,'Superman','MORALES GESE','JAIRO','SANT JOAN, EDIFICI D , 3R A','Barcelona',936587454,600541125,'superman@altecom.es','M','1963/5/15','Separados',0,false,85,1.78,'Pelirrojo','Negros','TV'),
    (1114,'Superwoman','BARALDÉS MARTORELL','CRISTINA','VIC , 119, 3R., 2A.','Valencia',938725845,0,'superwoman@wandoo.es','F','1963/10/30','Solteros',0,false,101,1.86,'Calvo','Azules','TV'),
    (1115,'Tablon','AROCA GÓMEZ','DAVID','CARLES BUÏGAS , 10, 1R., 1A.','Barcelona',938205730,0,'tablon@hotmail.com','M','1957/10/23','Casados',0,false,58,1.83,'Otros','Negros','Música'),
    (1116,'tendre','RUEDA ALVAREZ','ADRIÀ','JAUME BALMES , 67, 2N.','Madrid',936828258,0,'tendre@terra.es','M','1961/12/25','Otros',1,false,76,1.71,'Pelirrojo','Verdes','Cine'),
    (1117,'Teta','ALVAREZ DOMENECH','LUCIA','PROL. PADRÓ , 1, 3R., 2A.','Valencia',938300045,0,'teta@intercom.es','F','1968/11/13','Casados',0,false,62,1.58,'Otros','Otro','Deporte'),
    (1118,'Tomasa','BOIX GONZÁLEZ','CARLA','DE LA CAÇA , 12, 2N., C','Tarragona',936521452,624487554,'tomasa@hotmail.com','F','1963/5/29','Casados',0,false,49,1.55,'Castaño','Marrones','TV'),
    (1119,'Tranquil','BARALDÉS MONRÓS','ADRIÀ','VIC , 119, 2N., 1A.','Valencia',938725885,0,'','M','1968/1/12','Divorciados',0,true,62,1.58,'Calvo','Marrones','Caminar'),
    (1120,'Tremenda','AGUILERA MERINO','MARTA','MORAGUES , 1','Valencia',938208303,621145584,'tremenda@altecom.es','F','1964/9/27','Separados',1,false,75,1.77,'Pelirrojo','Otro','TV'),
    (1121,'Tripa','BAREA D-HAENE','MARC','TRABUCAIRES , 12','Valencia',938360213,0,'tripa@intercom.es','M','1958/5/7','Casados',0,false,74,1.58,'Pelirrojo','Marrones','Caminar'),
    (1122,'Verruga','BARROSO D-HAENE','ALEX','FONERIA , 12','Valencia',938320537,0,'verruga@hotmail.com','M','1961/9/13','Divorciados',0,false,76,1.65,'Calvo','Verdes','TV');
-----------------------------------------------------------------------------------

INSERT INTO cuentas(documento, inicial, ingresos, egresos, saldo)
VALUES(10, 35000, 0, 0, 35000),
    (20, 23000, 0, 0, 23000),
    (30, 1500, 0, 0, 1500);
--------------------------------------------------------------------

INSERT INTO transacciones(tipo, cuenta_origen, valor, cuenta_destino)
VALUES('I', 10, 5000, NULL);
INSERT INTO transacciones(tipo, cuenta_origen, valor, cuenta_destino)
VALUES('R', 20, 10000, NULL);
INSERT INTO transacciones(tipo, cuenta_origen, valor, cuenta_destino)
VALUES('T', 10, 15000, 30);


-- PROCEDIMIENTOS --
-- VnameVar = Variable(V)

DELIMITER //

CREATE PROCEDURE cuenta_clientes
        (IN Vpais CHAR(3), OUT cuantos_clientes INT)
    BEGIN
        SELECT COUNT(*)
            INTO cuantos_clientes
            FROM clientes
            WHERE pais = Vpais;
    END //
    
DELIMITER ;

CALL cuenta_clientes
    ('COL', @resultado_clientes);
SELECT @resultado_clientes;


''' Crear un procedimiento que muestre el estado 
    civil de las personas
'''

DELIMITER //

CREATE PROCEDURE mostrar_estadoCivil 
        (IN Vestado CHAR(20), OUT cantidad SMALLINT)
    BEGIN
        SELECT COUNT(*)
        INTO cantidad
        FROM estadisticas
        WHERE estadoCivil = Vestado;
    END //

DELIMITER ;

CALL mostrar_estadoCivil
    ('Divorciados', @cantidad);
SELECT @cantidad AS estado;

''' Crear un procedimiento que muestre la cantidad de 
    hombres y mujeres que se encuentran en la tabla   
    estadisticas
'''

DELIMITER //

CREATE PROCEDURE mostrar_sexo
        (IN Vsexo CHAR(1), OUT cantidadS SMALLINT)
    BEGIN
        SELECT COUNT(*)
        INTO cantidadS
        FROM estadisticas
        WHERE sexo = Vsexo;
    END //

DELIMITER ;

CALL mostrar_sexo
    ('F', @cantidadS);
SELECT @cantidadS AS Femenino;

CALL mostrar_sexo
    ('M', @cantidadS);
SELECT @cantidadS AS Masculino;

''' Crear un procedimiento que muestre la cantidad
    que se encuentren empleadas o desempleadas 
    en la tabla estadisticas
'''

DELIMITER //

CREATE PROCEDURE mostrar_desempleado
        (IN Vdesempleado BOOLEAN, OUT cantidadD SMALLINT)
    BEGIN  
        SELECT COUNT(*)
        INTO cantidadD
        FROM estadisticas
        WHERE desempleado = Vdesempleado;
    END //

DELIMITER ;

CALL mostrar_desempleado
    (TRUE, @cantidadD);
SELECT @cantidadD AS Desempleado;

CALL mostrar_desempleado
    (FALSE, @cantidadD);
SELECT @cantidadD AS Empleado;

''' Crear un procedimiento que muestre la cantidad 
    de personas solteras sin hijos, mayores de 30  
    años que se encuentran en la tabla estadisticas
'''

DELIMITER //

CREATE PROCEDURE mostrar_disponibles
        (IN VestadoCivil VARCHAR(12),
         IN Vhijos SMALLINT,
         IN Vnacimiento DATE,
         OUT cantidadDis SMALLINT)
    BEGIN
        SELECT COUNT(*)
        INTO cantidadDis
        FROM estadisticas
        WHERE VestadoCivil = estadoCivil
            AND Vhijos = hijos
            AND Vnacimiento = DATEDIFF(YEAR, nacimiento, GETDATE());
    END //

DELIMITER ;

CALL mostrar_disponibles
    ('Solteros', 0, 30, @cantidadDis);
SELECT @cantidadDis AS Disponibles;

''' PROCEDIMIENTO A CORREGIR!!!! '''


-- FUNCIONES --

DELIMITER //

CREATE FUNCTION calcularBeneficio
            (Vcosto INTEGER, Vventa INTEGER)
        RETURNS INTEGER
    NO SQL  -- caracteristica
    BEGIN   
        DECLARE Vutilidad INTEGER;
        SET Vutilidad = Vventa - Vcosto;
        RETURN Vutilidad;
    END //

DELIMITER ;

SELECT descripcion, calcularBeneficio(costo, precio_venta) AS UtilidadNeta
    FROM productos;


''' Crear una funcion que retorne el calculo de la edad
    en años, meses y dias para las personas registradas en la tabla
    estadisticas
'''
DELIMITER //

CREATE FUNCTION edad
            (Vnacimiento DATE)
        RETURNS VARCHAR(50)
    NO SQL
    BEGIN
        DECLARE Vresultado VARCHAR(50);
        DECLARE Vaños SMALLINT;
        DECLARE Vmeses SMALLINT;
        DECLARE Vdias SMALLINT;
        DECLARE Vtotal_dias INTEGER;

        SET Vtotal_dias = to_days(NOW()) - 
                        to_days(Vnacimiento) + 
                        to_days(str_to_date('1600-01-01', '%Y-%m-%d'));
        
        SET Vaños = extract(year FROM from_days(Vtotal_dias)) - 1600;
        SET Vmeses = extract(month FROM from_days(Vtotal_dias)) - 1;
        SET Vdias = extract(day FROM from_days(Vtotal_dias)) - 1;

        SET Vresultado = concat(
            convert(Vaños, CHAR), ' años, ',
            convert(Vmeses, CHAR), ' meses, ',
            convert(Vdias, CHAR), ' dias'
        );

        RETURN Vresultado;
    END //

DELIMITER ;

SELECT nombre, apellidos, edad(nacimiento)
    FROM estadisticas;


''' Crear una funcion que retorne una cadena que indique
    en palabras, el sexo, estadoCivil, peso, estatura,
    color de cabello, color de ojos y aficion
'''

DELIMITER //

CREATE FUNCTION datospersonales 
            (Vsexo char(1), 
            Vestadocivil varchar(12), 
            Vpeso smallint, 
            Vestatura decimal(5,2), 
            Vcabello varchar(15),
            Vojos varchar(15),
            Vaficion varchar(20)) 
        RETURNS varchar(300)
    NO SQL
    BEGIN
        DECLARE Vresultado VARCHAR(300);
        DECLARE Vgenero VARCHAR(10);

        IF(Vsexo = 'M') then
            SET Vgenero = "Masculino";
        ELSE
            SET Vgenero = "Femenino";
        END IF;

        SET Vresultado = concat(
            ' Sexo: ', convert(Vgenero, CHAR), 
            ' - Estado Civil: ', convert(Vestadocivil, CHAR), 
            ' - Peso: ', convert(Vpeso, CHAR), 
            ' - Cabello: ', convert(Vcabello, CHAR), 
            ' - Ojos: ', convert(Vojos,CHAR));
        RETURN Vresultado;
    
    END //

DELIMITER ;

SELECT nombre, apellidos, datospersonales(sexo, estadocivil, peso, estatura,
                        cabello, ojos, aficion) AS caracteristicas
  FROM estadisticas; 



-- TRIGGERS --  

DELIMITER //

CREATE TRIGGER insertar_transaccion 
    AFTER INSERT ON transacciones
    FOR EACH ROW
        BEGIN  
            IF NEW.tipo = 'I' THEN
                UPDATE cuentas SET ingresos = ingresos + NEW.valor,
                    saldo = inicial + ingresos + egresos 
                WHERE documento = NEW.cuenta_origen;
            END IF;
        
            IF NEW.tipo = 'R' THEN 
                UPDATE cuentas SET egresos = egresos + NEW.valor,
                    saldo = inicial + ingresos - egresos
                WHERE documento = NEW.cuenta_origen;
            END IF;

            IF NEW.tipo = 'T' THEN 
                UPDATE cuentas SET egresos = egresos + NEW.valor,
                    saldo = inicial + ingresos - egresos
                WHERE documento = NEW.cuenta_origen;

                UPDATE cuentas SET ingresos = ingresos + NEW.valor,
                    saldo = inicial + ingresos -egresos
                WHERE documento = NEW.cuenta_destino;
            END IF;
        END; //

DELIMITER ; 

INSERT INTO transacciones()