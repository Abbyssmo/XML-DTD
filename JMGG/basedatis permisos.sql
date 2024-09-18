#al usuario invitado  permiso *.*
grant all privileges on *.* 
to 'invitado'@'localhost';
select current_user(); #muestra el usuario que esta usando la BD
insert into  ventas.comercial
values( default, 'mar','fg','rt',922584796 ,4.2);
grant all privileges on ventas 
to 'invitado'@'localhost';
revoke all privileges ,
grant option from 'invitado'@'localhost';
grant all privileges on ventas.clientes
to 'invitado'@'localhost';
grant all privileges on ventas.comercial
to 'invitado'@'localhost';
revoke all privileges ,
grant option from 'invitado'@'localhost';
grant select (comision) on ventas.comercial
to 'invitado'@'localhost';
set password  for 'invitado'@'localhost'='Invitado'; 
grant select,insert (comision) on ventas.comercial 
to'invitado'@'localhost';
revoke all privileges ,
grant option from 'invitado'@'localhost';
grant select,update (comision) on ventas.comercial 
to'invitado'@'localhost';
grant select,insert (comision) on ventas.comercial 
to'invitado'@'localhost'; # no se puede hacer un insert a un solo dato pues todos estan relcionados con la PK
