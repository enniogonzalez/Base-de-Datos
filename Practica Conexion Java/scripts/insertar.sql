
/* Nivel 1*/

INSERT INTO ERP.Empresa VALUES ('J-K4356HJ123', 'ChocoLight CA', 'Carabobo','valencia','Avenida 234','calle 1');
INSERT INTO ERP.Empresa VALUES ('J-LJM46684FH', 'Cimarron', 'Caracas','Chacao','Avenida 234','calle 2');
INSERT INTO ERP.Empresa VALUES ('J-567ASH46GJ', 'Oderi', 'Miranda','Valles del tuy','Avenida 986','calle 3');
INSERT INTO ERP.Empresa VALUES ('J-12987BNHFE', 'Chocolate Delis CA', 'Portuguesa','Flor amarillo','Avenida 86','calle 4');
INSERT INTO ERP.Empresa VALUES ('J-CJ89644RG7', 'Savoy', 'Miranda','Valles del tuy','Avenida 200','calle 6');
INSERT INTO ERP.Empresa VALUES ('J-KL234VCX60', 'Nestle', 'Lara','Valles del tuy','Avenida 200','calle 7');



/* Tabla Evento*/
INSERT INTO ERP.Evento
VALUES ('Premios anual de dulces edicion 1 ', '10-10-2014',
'venezuela','valencia','orinoco','avenida 103','Jose Perez');

INSERT INTO ERP.Evento
VALUES ('Premios anual del mejor chocolate del mundo ', '03-12-2010',
'venezuela','caracas','bicentenario','avenida 111','Maria Gonzalez');
INSERT INTO ERP.Evento
VALUES ('concuros internacional chocolate', '10-10-2000',
'venezuela','miranda','los cafes','avenida 203','Mario Sanches');
INSERT INTO ERP.Evento
VALUES ('Premios anual de dulces edicion 2 ', '10-10-2016',
'venezuela','valencia','orinoco','avenida 103','Jose Perez');

INSERT INTO ERP.Evento
VALUES ('concuros nacional chocolate', '10-12-1999',
'España','Madrid','los Toros','avenida 203','Pablo Diaz');
INSERT INTO ERP.Evento
VALUES ('Premios anual al mejor chocolate del mundo edicion 1  ', '12-02-2012',
'venezuela','valencia','orinoco','avenida 103','Jose Perez');
INSERT INTO ERP.Evento
VALUES ('Premios anual al mejor chocolate del mundo edicion 2', '10-10-2014',
'venezuela','miranda','los cafes','avenida 203','Mario Sanches');

INSERT INTO ERP.Evento
VALUES ('concurso del mejor chocolate venezolano ', '10-10-2006',
'venezuela','valencia','unversidad','avenida 103','Jose Perez');
INSERT INTO ERP.Evento
VALUES ('premios al chocolate mas vendido de Venezuela', '10-10-2000',
'venezuela','carabobo','los cafes','avenida 203','Mario Sanches');
INSERT INTO ERP.Evento
VALUES ('Premios anual de dulces edicion 3 ', '10-10-2017',
'venezuela','zulia','simon bolivar','avenida 103','Jose Perez');

/* Tabla cliente*/


INSERT INTO ERP.Cliente VALUES('J-E87UTU789O','Alcides Da Silva','0424-4168435');
INSERT INTO ERP.Cliente VALUES('J-3R7HNC7k6O','Marcos Petit','0424-4168435');
INSERT INTO ERP.Cliente VALUES('J-YU8ITU739O','Wilfredo Perez','0424-4168435');
INSERT INTO ERP.Cliente VALUES('J-E87UTUFG9O','Jose Malpica','04226-4144435');
INSERT INTO ERP.Cliente VALUES('J-6HKK9U7999','Karla Tovar','0424-4164765');
INSERT INTO ERP.Cliente VALUES('J-E87ff77599','Marisablel Petit ','0424-4168456');
INSERT INTO ERP.Cliente VALUES('J-E87UFGG89O','Damason Chacon','0412-4168435');
INSERT INTO ERP.Cliente VALUES('J-E87UTYTR7O','Francisco Hernadez','0424-4134435');
INSERT INTO ERP.Cliente VALUES('J-E87FFG7599','Andres Rey ','0424-4168400');
INSERT INTO ERP.Cliente VALUES('J-E878HGR7O7','Francisco  Perez','0416-4168605');
INSERT INTO ERP.Cliente VALUES('J-PE556GR7O7','Maria Perez','0416-416091234');


/* Tabla de etapa */

INSERT INTO ERP.etapa VALUES('Fermentación','A');
INSERT INTO ERP.etapa VALUES('Secado','B');
INSERT INTO ERP.etapa VALUES('Seleccionado','A');
INSERT INTO ERP.etapa VALUES('Torrefacción','C');
INSERT INTO ERP.etapa VALUES('Descascarillado','D');
INSERT INTO ERP.etapa VALUES('Producción ','A');
INSERT INTO ERP.etapa VALUES('Neutralizado','A');
INSERT INTO ERP.etapa VALUES('Prensado','B');
INSERT INTO ERP.etapa VALUES('Pulverizado','C');
INSERT INTO ERP.etapa VALUES(' Filtración','A');



/*Empleado*/
INSERT INTO ERP.Empleado VALUES (19345213, 'Paolo Santos', 'Productor', 45000.80);
INSERT INTO ERP.Empleado VALUES (21157890, 'Octavio Silva', 'Productor', 45000.80);
INSERT INTO ERP.Empleado VALUES (23431704, 'Alexander Betancourt', 'Despachador', 30000.50);
INSERT INTO ERP.Empleado VALUES (24918319, 'Ennio Gonzalez', 'Filtrador', 27000.34);
INSERT INTO ERP.Empleado VALUES (84438575, 'Andrea Da Silva', 'Transportista', 10000.50);
INSERT INTO ERP.Empleado VALUES (24327438, 'Mariangela Goncalvez', 'Cajero', 25000.50);
INSERT INTO ERP.Empleado VALUES (19204321, 'Elsa Tovar', 'Seleccionador', 35000.90);
INSERT INTO ERP.Empleado VALUES (24496622, 'Marianela Pinto', 'Fermentador', 40000.90);
INSERT INTO ERP.Empleado VALUES (24497543, 'Jhoan Castillo', 'Productor', 45000.80);
INSERT INTO ERP.Empleado VALUES (23123908, 'Ana Maria Caceres', 'Productor', 45000.80);

/* Maquinaria*/
INSERT INTO ERP.Maquinaria VALUES ('AE-365.140', 'Fermentadora', 'Caterpillar', 50000.52, '4', 'Estados Unidos', '2015-01-01');
INSERT INTO ERP.Maquinaria VALUES ('EX-402.915', 'Secadora', 'Komatsu', 70000.30, '3', 'Japon', '2015-04-03');
INSERT INTO ERP.Maquinaria VALUES ('LN-999.999', 'Seleccionadora', 'Terex', 30000.70, '5', 'Estados Unidos', '2014-04-13');
INSERT INTO ERP.Maquinaria VALUES ('WX-024.831', 'Torrefactora', 'Volvo', 40000.46, '4', 'Suecia', '2014-05-22');
INSERT INTO ERP.Maquinaria VALUES ('AR-102.502', 'Descascarilladora', ' Liebherr', 55000.90, '2', 'Suiza', '2016-02-01');
INSERT INTO ERP.Maquinaria VALUES ('ED-202.378', 'Productora de licor', ' Hitachi', 59000.89, '3', 'Japon', '2016-02-01');
INSERT INTO ERP.Maquinaria VALUES ('AL-896.891', 'Neutralizadora', 'John Deere', 90000.10, '3', 'Estados Unidos', '2015-11-18');
INSERT INTO ERP.Maquinaria VALUES ('FH-740.751', 'Prensadora', 'Sany', 34000.10, '5', 'China', '2016-03-01');
INSERT INTO ERP.Maquinaria VALUES ('ME-837.800', 'Pulverizadora', 'Zoomlion', 97000.10, '4', 'China', '2015-11-09');
INSERT INTO ERP.Maquinaria VALUES ('ED-232.774', 'Filtradora', 'Sandvik', 79000.88, '4', 'Suecia', '2015-11-08');
INSERT INTO ERP.Maquinaria VALUES ('AE-312.785', 'Fermentadora', 'Sandvik', 55000.88, '4', 'Suecia', '2016-04-09');

/*Curso*/
INSERT INTO ERP.Curso VALUES ('Elaboración de tabletas con y sin molde', 'Escuela Chocolateria Simarron-Oderi', '2016-01-15', '2016-02-15');
INSERT INTO ERP.Curso VALUES ('Taller chocolateria artesanal', 'Escuela Chocolateria Simarron-Oderi', '2016-04-09', '2016-05-09');
INSERT INTO ERP.Curso VALUES ('Introducción al manejo de chocolate y bombonería fina', 'Escuela Chocolateria Simarron-Oderi', '2016-06-09', '2016-07-09');
INSERT INTO ERP.Curso VALUES ('Introduccion al manejo de chocolate y bombonería fina', 'Escuela Chocolateria Simarron-Oderi', '2015-11-12', '2015-12-12');
INSERT INTO ERP.Curso VALUES ('Corte para cafe y refrigerios', 'Escuela Chocolateria Simarron-Oderi', '2015-11-03', '2016-02-03');
INSERT INTO ERP.Curso VALUES ('Tiramisu Bomboneria y dulces', 'Escuela Chocolateria Simarron-Oderi', '2016-02-15', '2016-04-15');
INSERT INTO ERP.Curso VALUES ('Curso Intensivo de Chocolateria y Bomboneria', 'Escuela Chocolateria Simarron-Oderi', '2015-02-15', '2016-02-15');
INSERT INTO ERP.Curso VALUES ('Tiramisu Reposteria & Bomboneria', 'Escuela Chocolateria Simarron-Oderi', '2015-02-15', '2016-02-15');
INSERT INTO ERP.Curso VALUES ('Chocolate Aplicado a la Pasteleria', 'Escuela Chocolateria Simarron-Oderi', '2015-01-15', '2016-01-15');



/*Nivel 2*/
/*Tabla Factura*/
INSERT INTO ERP.Factura VALUES ('#000','13-10-2015','10-10-2016','J-KL234VCX60','J-CJ89644RG7','34000.00');
INSERT INTO ERP.Factura VALUES ('#002','15-11-2016','11-12-2016','J-567ASH46GJ','J-567ASH46GJ','1400.00');
INSERT INTO ERP.Factura VALUES ('#003','10-10-2016','18-11-2016','J-567ASH46GJ','J-567ASH46GJ','4300.00');
INSERT INTO ERP.Factura VALUES ('#004','10-10-2016','10-11-2016','J-567ASH46GJ','J-12987BNHFE','3400.00');
INSERT INTO ERP.Factura VALUES ('#005','10-10-2016','10-12-2016','J-567ASH46GJ','J-567ASH46GJ','3400.00');
INSERT INTO ERP.Factura VALUES ('#006','10-10-2016','10-11-2016','J-567ASH46GJ','J-567ASH46GJ','77800.00');
INSERT INTO ERP.Factura VALUES ('#007','10-10-2016','10-12-2016','J-567ASH46GJ','J-567ASH46GJ','7700.00');
INSERT INTO ERP.Factura VALUES ('#008','10-10-2016','10-11-2016','J-567ASH46GJ','J-567ASH46GJ','7600.00');
INSERT INTO ERP.Factura VALUES ('#009','10-10-2016','10-12-2016','J-567ASH46GJ','J-567ASH46GJ','66000.00');


/*Tabla ensena*/

INSERT INTO ERP.ensena VALUES ('19345213','24496622');
INSERT INTO ERP.ensena VALUES ('24496622','23123908');
INSERT INTO ERP.ensena VALUES ('23123908','21157890');
INSERT INTO ERP.ensena VALUES ('21157890','24496622');
INSERT INTO ERP.ensena VALUES ('24496622','19345213');
INSERT INTO ERP.ensena VALUES ('23123908','23123908');
INSERT INTO ERP.ensena VALUES ('21157890','84438575');
INSERT INTO ERP.ensena VALUES ('23123908','24496622');
INSERT INTO ERP.ensena VALUES ('84438575','21157890');
INSERT INTO ERP.ensena VALUES ('19345213','23123908');
INSERT INTO ERP.ensena VALUES ('21157890','23123908');

/*Tabla Despacha*/
INSERT INTO ERP.Despacha  VALUES ('#000','23123908');
INSERT INTO ERP.Despacha  VALUES ('#002','19345213');
INSERT INTO ERP.Despacha  VALUES ('#003','19345213');
INSERT INTO ERP.Despacha  VALUES ('#004','21157890');
INSERT INTO ERP.Despacha  VALUES ('#005','23123908');
INSERT INTO ERP.Despacha  VALUES ('#006','21157890');
INSERT INTO ERP.Despacha  VALUES ('#007','19345213');
INSERT INTO ERP.Despacha  VALUES ('#008','23123908');
INSERT INTO ERP.Despacha  VALUES ('#009','19345213');


/*Tabla ingredientes*/
/*
INSERT INTO ERP.ingrediente  VALUES ('Cacaco','J-KL234VCX60','','','','');
INSERT INTO ERP.ingrediente  VALUES ('Azucar','J-12987BNHFE','','','','');
INSERT INTO ERP.ingrediente  VALUES ('mantequilla','J-12987BNHFE','','','','');
INSERT INTO ERP.ingrediente  VALUES ('colorante','J-KL234VCX60','','','','');
INSERT INTO ERP.ingrediente  VALUES ('nevazucar','J-12987BNHFE','','','','');
INSERT INTO ERP.ingrediente  VALUES ('Avellanas','J-CJ89644RG7','','','','');
INSERT INTO ERP.ingrediente  VALUES ('manteca','J-KL234VCX60','','','','');
INSERT INTO ERP.ingrediente  VALUES ('colorate negro','','','','','');
INSERT INTO ERP.ingrediente  VALUES ('mani','J-12987BNHFE','','','','');
INSERT INTO ERP.ingrediente  VALUES ('pasa','J-CJ89644RG7','','','','');
INSERT INTO ERP.ingrediente  VALUES ('leche','J-KL234VCX60','','','','');
*/
