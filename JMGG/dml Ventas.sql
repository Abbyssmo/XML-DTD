use ventas;
create  table productos
(
	id_prod int primary key,
    nomb_prod_ varchar(100) not null,
    precio_prod decimal (10,2) not null,
    descrip_id text,
    stock_id int not null
);
create table categorias
(
	id_cate int primary key auto_increment,
    nomb_cate varchar (50) not null
);
create table facturas
(
	id_fact int primary key,
    fech_fact date,
    id_pedido int unsigned,
    impor_fact decimal(10,2),
    foreign key  (id_pedido) 
    references pedido(id_pedido)
);
create table usuario
(
	id_usu int primary key,
    nomb_usu varchar (50) not null,
    email varchar (100) not null,
    contraseña varchar( 100) not null 
);

alter table productos
add column  categoria_id int; 
select*
from productos;
alter table productos
 modify descrip_id text not null;
alter table categorias
rename  column nombre to  Nomb_cate;
select * 
from Nomb_cate;
alter table Nomb_cate
rename categorias;
select *
from categorias;
alter table usuario
drop column contraseña;
alter table pedido
 modify fecha date null;
  
 alter table clientes 
 add constraint email_unico  unique (email);
 select * 
 from clientes;
 select *
 from pedido;
 insert into productos values( 1,'ps5', 200,'consola de juegos' ,1, 12 );
 select *
 from pedido;
  uPDATE productos
SET id_prod= 1, precio_prod = 299
 where  id_prod=1;

uPDATE productos
SET descrip_id='consola de videojuegos de ultima generacion'
 where  id_prod=1;
select*
from productos;
 uPDATE clientes 
SET nombre_c = 'Alberto'
 where id_cliente=3 ;
 uPDATE comercial
SET apellido1= 'Martinez'
 where id_comercial =4 ;
select *
from comercial
where id_comercial =4 ;
 delete from pedido
 where id_pedido=7;
 select* 
 from pedido;
 drop table facturas;
 drop table pedido;
 drop table categorias;
 drop table usuario;
 drop table productos;