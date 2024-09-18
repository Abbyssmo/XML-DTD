DROP database IF EXISTS  cocinas;
create database cocinas;
use cocinas;
create table clientes
(
	id_cl int unsigned auto_increment primary key,
    dni_cl int unsigned not null,
    nomb_cl varchar (50) not null,
    ape1_cl  varchar (100) not null,
    ape2_cl varchar (100),
    dir_cl varchar(150),
    tlf_cl int unsigned not null
    );
  Create table instaladores
  (
	id_ins int unsigned auto_increment primary key,
    dni_ins int unsigned not null,
	nomb_ins varchar (50) not null,
	ape1_ins  varchar (100) not null,
	ape2_ins varchar (100),
	tlf_ins int unsigned not null
  );
  create table modelo
  (
		id_mod  int unsigned auto_increment primary key,
		nomb_mod varchar (10) not null,
        precio_mod float not null
    );
    create table montaje
    (  
		id_mon int unsigned primary key,
		id_mod  int unsigned not null,
        id_ins int unsigned not null,
        direcion_ins varchar(150) not null,
		fecha_prevista date,
		fecha_mont date not null,
        estado enum('Pendiente', 'montando','finalizado, instalacion no requerida') not null,
        foreign key (id_mod) references modelo(id_mod),
        foreign key (id_ins) references instaladores(id_ins)
  );
 
create table ventas
(
	id_ven  int unsigned primary key,
	id_cl int unsigned not null,
    id_mod  int unsigned not null ,
	id_mon int unsigned not null,
    fecha_ven date not null,
    cantidad int unsigned not null,
    foreign key(id_cl) references clientes (id_cl),
    foreign key(id_mod) references modelo (id_mod),
    foreign key(id_mon) references montaje(id_mon)
    );
    

  
  
    