CREATE DATABASE choco_systems TEMPLATE template1;

\c choco_systems

CREATE SCHEMA ERP;

CREATE DOMAIN ERP.sesenta_caracteres VARCHAR(60);
CREATE DOMAIN ERP.decimal_mayor_cero NUMERIC(20,4)
			CHECK(VALUE > 0.0000);
CREATE DOMAIN ERP.diez_caracteres VARCHAR(10);
CREATE DOMAIN ERP.decimal_greater_equal_cero NUMERIC(20,4)
			CHECK(VALUE >= 0.0000);
CREATE DOMAIN ERP.integer_greater_equal_cero INT
			CHECK(VALUE >= 0);
CREATE DOMAIN ERP.control_Calidad VARCHAR(1)
			CHECK(VALUE IN ('A','B','C','D','E','F'));


CREATE TABLE ERP.Empresa(
	rif ERP.sesenta_caracteres PRIMARY KEY,
	nombre ERP.sesenta_caracteres NOT NULL,
	estado ERP.sesenta_caracteres NOT NULL,
	ciudad ERP.sesenta_caracteres NOT NULL,
	avenida ERP.sesenta_caracteres NOT NULL,
	calle ERP.sesenta_caracteres NOT NULL
);

CREATE TABLE ERP.Empleado(
	ci int PRIMARY KEY,
	nombre ERP.sesenta_caracteres  NOT NULL,
	cargo ERP.sesenta_caracteres  NOT NULL,
	sueldo ERP.decimal_greater_equal_cero  NOT NULL
);

CREATE TABLE ERP.Ingrediente(
	nombre 	ERP.sesenta_caracteres,
	rif 	ERP.sesenta_caracteres,
	unidad 	ERP.diez_caracteres  NOT NULL,
	stock  	ERP.decimal_greater_equal_cero  NOT NULL,
	precio 	ERP.decimal_mayor_cero NOT NULL,
	PRIMARY KEY (nombre,rif),
	FOREIGN KEY (rif) REFERENCES ERP.Empresa
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Producto(
	nombre ERP.sesenta_caracteres,
	rif ERP.sesenta_caracteres,
	unidad ERP.diez_caracteres  NOT NULL,
	stock  ERP.decimal_greater_equal_cero  NOT NULL,
	precio ERP.decimal_mayor_cero  NOT NULL,
	PRIMARY KEY (nombre,rif),
	FOREIGN KEY (rif) REFERENCES ERP.Empresa
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Cliente(
	ci_rif ERP.sesenta_caracteres PRIMARY KEY,
	nombre ERP.sesenta_caracteres,
	telefono ERP.sesenta_caracteres
);

CREATE TABLE ERP.Maquinaria(
	serial_maquina ERP.sesenta_caracteres PRIMARY KEY,
	nombre ERP.sesenta_caracteres  NOT NULL,
	marca ERP.sesenta_caracteres  NOT NULL,
	costo_hora ERP.decimal_greater_equal_cero  NOT NULL,
	vida_util int  NOT NULL,
	origen ERP.sesenta_caracteres  NOT NULL,
	fecha_adq timestamp  NOT NULL
);

CREATE TABLE ERP.Etapa(
	nombre ERP.sesenta_caracteres PRIMARY KEY,
	control ERP.control_Calidad NOT NULL
);

CREATE TABLE ERP.Factura(
	numero 		ERP.sesenta_caracteres PRIMARY KEY,
	emision 	date  NOT NULL,
	vencimiento date  NOT NULL,
	comprador 	ERP.sesenta_caracteres  NOT NULL,
	vendedor 	ERP.sesenta_caracteres  NOT NULL,
	monto 		ERP.decimal_mayor_cero  NOT NULL,
	FOREIGN KEY (comprador) REFERENCES ERP.Empresa
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (vendedor) REFERENCES ERP.Empresa
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Vende(
	factura 		ERP.sesenta_caracteres PRIMARY KEY,
	rif_comprador 	ERP.sesenta_caracteres  NOT NULL,
	rif_vendedor 	ERP.sesenta_caracteres  NOT NULL,
	FOREIGN KEY (factura) REFERENCES ERP.Factura
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (rif_comprador) REFERENCES ERP.Empresa
		ON UPDATE CASCADE,
	FOREIGN KEY (rif_vendedor) REFERENCES ERP.Empresa
		ON UPDATE CASCADE
);

CREATE TABLE ERP.Compra(
	factura 	ERP.sesenta_caracteres PRIMARY KEY,
	rif 		ERP.sesenta_caracteres NOT NULL,
	nombre_ing 	ERP.sesenta_caracteres NOT NULL,
	FOREIGN KEY (factura) REFERENCES ERP.Factura
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (rif) REFERENCES ERP.Empresa
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (nombre_ing,rif) REFERENCES ERP.Ingrediente
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Factura_producto(
	numero 		ERP.sesenta_caracteres,
	producto 	ERP.sesenta_caracteres,
	rif 		ERP.sesenta_caracteres,
	cantidad 	ERP.decimal_greater_equal_cero NOT NULL,
	PRIMARY KEY(numero,producto,rif),
	FOREIGN KEY (numero) REFERENCES ERP.Factura
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (producto,rif) REFERENCES ERP.Producto
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Trabaja_en(
	ci 		int,
	rif 	ERP.sesenta_caracteres,
	PRIMARY KEY (ci,rif),
	FOREIGN KEY (ci) REFERENCES ERP.Empleado
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (rif) REFERENCES ERP.Empresa
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.ensena(
	ci_estudiante 	int,
	ci_maestro 		int,
	PRIMARY KEY(ci_estudiante,ci_maestro),
	FOREIGN KEY (ci_estudiante) REFERENCES ERP.Empleado
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (ci_maestro) REFERENCES ERP.Empleado
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Curso(
	nombre 			ERP.sesenta_caracteres,
	escuela 		ERP.sesenta_caracteres,
	fecha_inicio 	date,
	fecha_fin 		date,
	PRIMARY KEY (nombre,escuela,fecha_inicio,fecha_fin)
);

CREATE TABLE ERP.Asiste(
	nombre 			ERP.sesenta_caracteres,
	escuela 		ERP.sesenta_caracteres,
	fecha_inicio 	date,
	fecha_fin 		date,
	ci 				int,
	PRIMARY KEY (nombre,escuela,fecha_inicio,fecha_fin,ci),
	FOREIGN KEY (ci) REFERENCES ERP.Empleado
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (nombre,escuela,fecha_inicio,fecha_fin) REFERENCES ERP.Curso
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Despacha(
	factura ERP.sesenta_caracteres PRIMARY KEY,
	ci 		int,
	FOREIGN KEY (ci) REFERENCES ERP.Empleado
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Despachos_Realizados(
	factura 	ERP.sesenta_caracteres,
	producto 	ERP.sesenta_caracteres,
	rif 		ERP.sesenta_caracteres,
	fed_desp 	date NOT NULL,
	PRIMARY KEY (factura,producto,rif),
	FOREIGN KEY (producto,rif) REFERENCES ERP.Producto
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Incidente_Despacho(
	factura 	ERP.sesenta_caracteres,
	producto 	ERP.sesenta_caracteres,
	rif 		ERP.sesenta_caracteres,
	incidente 	ERP.sesenta_caracteres,
	PRIMARY KEY (factura,producto,rif,incidente),
	FOREIGN KEY (factura,producto,rif) REFERENCES ERP.Despachos_Realizados
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Transporta(
	factura ERP.sesenta_caracteres PRIMARY KEY,
	ci 		int,
	FOREIGN KEY (ci) REFERENCES ERP.Empleado
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Transportes_Realizados(
	factura 	ERP.sesenta_caracteres,
	producto 	ERP.sesenta_caracteres,
	rif 		ERP.sesenta_caracteres,
	fec_trans 	date NOT NULL,
	ruta 		ERP.sesenta_caracteres NOT NULL,
	PRIMARY KEY (factura,producto,rif),
	FOREIGN KEY (factura) REFERENCES ERP.Transporta
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (producto,rif) REFERENCES ERP.Producto
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Incidente_Transporta(
	factura 	ERP.sesenta_caracteres,
	producto 	ERP.sesenta_caracteres,
	rif 		ERP.sesenta_caracteres,
	incidente 	ERP.sesenta_caracteres,
	PRIMARY KEY (factura,producto,rif,incidente),
	FOREIGN KEY (factura,producto,rif) REFERENCES ERP.Transportes_Realizados
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Etapa_Componente(
	nombre_etapa 	ERP.sesenta_caracteres,
	componente 		ERP.sesenta_caracteres,
	PRIMARY KEY (nombre_etapa,componente),
	FOREIGN KEY (nombre_etapa) REFERENCES ERP.Etapa
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Elabora(
	producto 	ERP.sesenta_caracteres,
	rif 		ERP.sesenta_caracteres,
	etapa 		ERP.sesenta_caracteres,
	ci 			int,
	PRIMARY KEY (producto,rif,etapa,ci),
	FOREIGN KEY (producto,rif) REFERENCES ERP.Producto
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (ci) REFERENCES ERP.Empleado
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (etapa) REFERENCES ERP.Etapa
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Se_Usa(
	etapa 			ERP.sesenta_caracteres,
	serial_maquina 	ERP.sesenta_caracteres,
	fecha_inicio 	date,
	fecha_final		date,
	PRIMARY KEY (etapa,serial_maquina,fecha_inicio,fecha_final),
	FOREIGN KEY (etapa) REFERENCES ERP.Etapa
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (serial_maquina) REFERENCES ERP.Maquinaria
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Tiene(
	producto ERP.sesenta_caracteres,
	ingrediente ERP.sesenta_caracteres,
	rif 		ERP.sesenta_caracteres,
	cantidad	ERP.decimal_mayor_cero NOT NULL,
	PRIMARY KEY (producto,ingrediente,rif),
	FOREIGN KEY (producto,rif) REFERENCES ERP.Producto
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (ingrediente,rif) REFERENCES ERP.Ingrediente
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Evento(
	nombre 			ERP.sesenta_caracteres,
	fecha 			date,
	pais 			ERP.sesenta_caracteres,
	ciudad 			ERP.sesenta_caracteres,
	avenida 		ERP.sesenta_caracteres,
	calle 			ERP.sesenta_caracteres,
	del_venezolano	ERP.sesenta_caracteres,
	PRIMARY KEY	(nombre,fecha,pais,ciudad,avenida,calle)
);

--Corregir en la documentacion
CREATE TABLE ERP.Evento_Pais(
	nombre_evento	ERP.sesenta_caracteres,
	fecha_evento	date,
	pais_evento		ERP.sesenta_caracteres,
	ciudad 			ERP.sesenta_caracteres,
	avenida 		ERP.sesenta_caracteres,
	calle 			ERP.sesenta_caracteres,
	pais 			ERP.sesenta_caracteres,
	PRIMARY KEY (nombre_evento,fecha_evento,pais_evento,ciudad,avenida,calle,pais),
	FOREIGN KEY (nombre_evento,fecha_evento,pais_evento,ciudad,avenida,calle) REFERENCES ERP.Evento
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Participa(
	producto 	ERP.sesenta_caracteres,
	rif 		ERP.sesenta_caracteres,
	evento 		ERP.sesenta_caracteres,
	fecha 		date,
	pais 		ERP.sesenta_caracteres,
	ciudad 		ERP.sesenta_caracteres,
	avenida 	ERP.sesenta_caracteres,
	calle 		ERP.sesenta_caracteres,
	PRIMARY KEY	(producto,rif,evento,fecha,pais,ciudad,avenida,calle),
	FOREIGN KEY (evento,fecha,pais,ciudad,avenida,calle) REFERENCES ERP.Evento
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (producto,rif) REFERENCES ERP.Producto
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Premio_Producto(
	producto 		ERP.sesenta_caracteres,
	rif 			ERP.sesenta_caracteres,
	nombre_evento	ERP.sesenta_caracteres,
	fecha_evento	date,
	pais_evento		ERP.sesenta_caracteres,
	ciudad 			ERP.sesenta_caracteres,
	avenida 		ERP.sesenta_caracteres,
	calle 			ERP.sesenta_caracteres,
	premio 			ERP.sesenta_caracteres,
	PRIMARY KEY (producto,rif,nombre_evento,fecha_evento,pais_evento,ciudad,avenida,calle,premio),
	FOREIGN KEY (producto,rif,nombre_evento,fecha_evento,pais_evento,ciudad,avenida,calle) REFERENCES ERP.Participa
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE ERP.Distincion_Producto(
	producto 		ERP.sesenta_caracteres,
	rif 			ERP.sesenta_caracteres,
	nombre_evento	ERP.sesenta_caracteres,
	fecha_evento	date,
	pais_evento		ERP.sesenta_caracteres,
	ciudad 			ERP.sesenta_caracteres,
	avenida 		ERP.sesenta_caracteres,
	calle 			ERP.sesenta_caracteres,
	distincion 		ERP.sesenta_caracteres,
	PRIMARY KEY (producto,rif,nombre_evento,fecha_evento,pais_evento,ciudad,avenida,calle,distincion),
	FOREIGN KEY (producto,rif,nombre_evento,fecha_evento,pais_evento,ciudad,avenida,calle) REFERENCES ERP.Participa
		ON UPDATE CASCADE
		ON DELETE CASCADE
);
/*
CREATE ROLE admin NOSUPERUSER LOGIN CREATEROLE CREATEDB;
CREATE ROLE empleado NOSUPERUSER LOGIN NOCREATEROLE NOCREATEDB;



GRANT INSERT, UPDATE, DELETE, SELECT on TABLE ERP.Empresa,ERP.Producto,ERP.Maquinaria, ERP.Factura,ERP.Curso, ERP.Cliente TO admin;
GRANT ALL ON SCHEMA ERP TO admin;

GRANT SELECT on TABLE ERP.Empresa,ERP.Producto,ERP.Maquinaria,ERP.Curso TO empleado;
GRANT USAGE  on SCHEMA ERP TO empleado;

CREATE USER trabajador NOSUPERUSER IN ROLE empleado PASSWORD '12345';
CREATE USER administrador NOSUPERUSER IN ROLE admin PASSWORD '12345';*/
