

/*Tablas de Nivel 4*/
DROP TABLE ERP.Incidente_Despacho;
DROP TABLE ERP.Incidente_Transporta;
DROP TABLE ERP.Premio_Producto;
DROP TABLE ERP.Distincion_Producto;


/*Tablas de Nivel 3*/
DROP TABLE ERP.Factura_producto;
DROP TABLE ERP.Vende;
DROP TABLE ERP.Compra;
DROP TABLE ERP.Despachos_Realizados;
DROP TABLE ERP.Transportes_Realizados;
DROP TABLE ERP.Elabora;
DROP TABLE ERP.Se_Usa;
DROP TABLE ERP.Tiene;
DROP TABLE ERP.Participa;


/*Tablas de Nivel 2*/
DROP TABLE ERP.Factura;
DROP TABLE ERP.Trabaja_en;
DROP TABLE ERP.ensena;
DROP TABLE ERP.Asiste;
DROP TABLE ERP.Despacha;
DROP TABLE ERP.Transporta;
DROP TABLE ERP.Ingrediente;
DROP TABLE ERP.Producto;
DROP TABLE ERP.Evento_Pais;
DROP TABLE ERP.Etapa_Componente;


/*Tablas de Nivel 1*/
DROP TABLE ERP.Empresa;
DROP TABLE ERP.Evento;
DROP TABLE ERP.Empleado;
DROP TABLE ERP.Cliente;
DROP TABLE ERP.Maquinaria;
DROP TABLE ERP.Etapa;
DROP TABLE ERP.Curso;




DROP DOMAIN ERP.sesenta_caracteres;
DROP DOMAIN ERP.decimal_mayor_cero;
DROP DOMAIN ERP.diez_caracteres;
DROP DOMAIN ERP.decimal_greater_equal_cero;
DROP DOMAIN ERP.integer_greater_equal_cero;
DROP DOMAIN ERP.control_Calidad;



/*
REVOKE ALL ON SCHEMA ERP FROM admin;
REVOKE ALL ON SCHEMA ERP FROM empleado;

DROP USER trabajador;
DROP USER administrador;

DROP ROLE admin;
DROP ROLE empleado;*/


DROP SCHEMA ERP;

\c postgres

DROP DATABASE choco_systems;
