#CREAR BASE DE DATOS
DROP database IF EXISTS VENTAS;
CREATE database VENTAS
 character SET utf8mb4;
 USE VENTAS;
 
 CREATE TABLE CLIENTES
 (
	ID_Cliente int  unsigned auto_increment primary key,
    Nombre_CL VARCHAR(60) NOT NULL,
    Apellido1_CL VARCHAR(60) NOT NULL,
    APellido2_CL varchar(60),
    Ciudad_CL varchar(60) not null,
    email varchar (50) ,
    TLF_CL int 
);
INSERT INTO clienteS VALUES(1, 'Aarón', 'Rivero', 'Gómez', 'Almería', 'aaronrivero@gmail.com', 922531020);
INSERT INTO clientes VALUES(2, 'Adela', 'Salas', 'Díaz', 'Granada', 'adelasalasdiaz@yahoo.com',922584700);
INSERT INTO clientes VALUES(3, 'Adolfo', 'Rubio', 'Flores', 'Sevilla', 'adolfito@gmail.com', NULL);
INSERT INTO clientes VALUES(4, 'Adrián', 'Suárez', NULL, 'Jaén', 'adrisuarez@yahoo.es', 928526300);
INSERT INTO clientes VALUES(5, 'Marcos', 'Loyola', 'Méndez', 'Tenerife', 'marcosloyo@cipcampus.com', 92822200);
INSERT INTO clientes VALUES(6, 'María', 'Santana', 'Moreno', 'Las palmas', NULL, NULL);
INSERT INTO clientes VALUES(7, 'Pilar', 'Ruiz', NULL, 'Las palmas', NULL, 9227853 );
INSERT INTO clientes VALUES(8, 'Pepe', 'Ruiz', 'Santana', 'Tenerife', 'pepe@hotmail.com', NULL);
INSERT INTO clientes VALUES(9, 'Guillermo', 'López', 'Gómez', 'Granada', 'guille@hotmail.com', 92222225);
INSERT INTO clientes VALUES(10, 'Daniel', 'Santana', 'Loyola', 'Sevilla', 'danielsantana@gmail.com',9282125);
    select* 
    from clientes;

CREATE TABLE  COMERCIALES
	(
		ID_Comercial int  unsigned auto_increment primary key,
         Nombre_CO VARCHAR(60) NOT NULL,
		Apellido1_CO VARCHAR(60) NOT NULL,
		APellido2_CO varchar(60),
		Comision decimal(3,2) ,
		TLF_CO int not null
	);
INSERT INTO comerciales VALUES(1, 'Daniel', 'Sáez', 'Vega', 0.15,922584769);
INSERT INTO comerciales VALUES(2, 'Juan', 'Gómez', 'López', 0.13,928235689 );
INSERT INTO comerciales VALUES(3, 'Diego','Flores', 'Salas', 0.11,91657489);
INSERT INTO comerciales VALUES(4, 'Marta','Herrera', 'Gil', 0.14, 928718293);
INSERT INTO comerciales VALUES(5, 'Antonio','Carretero', 'Ortega', 0.12,928639874);
INSERT INTO comerciales VALUES(6, 'Manuel','Domínguez', 'Hernández', 0.13, 600789641);
INSERT INTO comerciales VALUES(7, 'Antonio','Vega', 'Hernández', 0.11618739182);
INSERT INTO comerciales VALUES(8, 'Alfredo','Ruiz', 'Flores', 0.05,633451263);
select* 
from comerciales;
CREATE TABLE PEDIDOS
	(
		id_pedido int unsigned auto_increment primary key,
        importe  decimal (10,2) not null,
        fecha datetime not null,
		ID_Cliente int  unsigned  not null,
        ID_Comercial int  unsigned not null,
        foreign key(ID_Cliente) references CLIENTES(ID_Cliente) ,
        foreign key(ID_Comercial) references COMERCIALES (ID_Comercial)
	);
 
INSERT INTO pedidos VALUES(1, 150.5, '2017-10-05', 5, 2);
INSERT INTO pedidos VALUES(2, 270.65, '2016-09-10', 1, 5);
INSERT INTO pedidos VALUES(3, 65.26, '2017-10-05', 2, 1);
INSERT INTO pedidos VALUES(4, 110.5, '2016-08-17', 8, 3);
INSERT INTO pedidos VALUES(5, 948.5, '2017-09-10', 5, 2);
INSERT INTO pedidos VALUES(6, 2400.6, '2016-07-27', 7, 1);
INSERT INTO pedidos VALUES(7, 5760, '2015-09-10', 2, 1);
INSERT INTO pedidos VALUES(8, 1983.43, '2017-10-10', 4, 6);
INSERT INTO pedidos VALUES(9, 2480.4, '2016-10-10', 8, 3);
INSERT INTO pedidos VALUES(10, 250.45, '2015-06-27', 8, 2);
INSERT INTO pedidos VALUES(11, 75.29, '2016-08-17', 3, 7);
INSERT INTO pedidos VALUES(12, 3045.6, '2017-04-25', 2, 1);
INSERT INTO pedidos VALUES(13, 545.75, '2019-01-25', 6, 1);
INSERT INTO pedidos VALUES(14, 145.82, '2017-02-02', 6, 1);
INSERT INTO pedidos VALUES(15, 370.85, '2019-03-11', 1, 5);
INSERT INTO pedidos VALUES(16, 2389.23, '2019-03-11', 1, 5);
  select * 
  from pedidos;
  select
    