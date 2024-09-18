#lenguaje dml

#alter add añade,alter drop borra, alter modify, modifica
# crear campo en clientes de la base de datos ventas, llamado provincia
use ventas;
alter table clientes
add provincia varchar(80);
select* from clientes;
alter table clientes
change provincia provincia varchar(80)after  ciudad;
select* from clientes;
alter table clientes 
modify provincia  varchar(80)after apellido2;
select* from clientes;
alter table clientes
change column provincia pro varchar(90);
select* from clientes;
alter table clietnes 
modify column 
apellido2 varchar(9);
alter table clientes 
drop pro;
alter table clientes 
drop prov;
alter table clientes 
drop apellido2;
select* from clientes;
#modificar tipo datos en columna apellido1
alter table clientes
modify apellido1 char(69);
select* from clientes;
#cambiar el nombre de appelli 1 a apellido
alter table clientes
rename  column apellido1 to apellido;
select* from clientes;
#agregar una restricion unique a una columna
alter table clientes 
add constraint tlf unique (tlf_c);

show create table clientes;