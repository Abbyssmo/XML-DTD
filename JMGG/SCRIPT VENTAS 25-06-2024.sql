## CREAR BASE DE DATOS VENTA
##25-06-2024
DROP DATABASE IF EXISTS VENTAS; 
CREATE database VENTAS 
CHARACTER SET utf8mb4;
USE VENTAS;
CREATE TABLE CLIENTES(
id_cliente int unsigned auto_increment primary key, 
nombre_c varchar(60) not null,
apellido1 varchar(60) not null,
apellido2 varchar(60),
ciudad varchar(60) not null,
email varchar(50),
tlf_c int);

CREATE TABLE COMERCIAL (
id_comercial int unsigned auto_increment primary key, 
nombre_co varchar(60) not null,
apellido1 varchar(60) not null,
apellido2 varchar(60),
tlf_co int not null,
comision decimal(3,2));

CREATE TABLE PEDIDO(
id_pedido int unsigned auto_increment primary key,
importe decimal(10,2) not null,
fecha datetime not null,
id_cliente int unsigned not null,
id_comercial int unsigned not null,
foreign key (id_cliente)references CLIENTES(id_cliente),
foreign key (id_comercial)references COMERCIAL(id_comercial));














