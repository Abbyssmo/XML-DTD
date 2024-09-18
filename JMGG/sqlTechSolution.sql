#Carrgar la base de datos en memoria:
use tech_solutions;
#consultar contenido tabla Empleados:
select *from  empleados;
#insertar datos en empleados mod 1
insert into empleados (DNI,Nombre,Apellidos,Telefono,Seguridad_Social,fecha_Nacimiento)
VALUES ('12345678A', 'Pepe','Perez ','999666666','123456789','1994-10-22') ;
select *from  empleados;
INSERT INTO empleados
VALUES ('987654321C','Julia','Lopez Lopez','666999999',012345678,'1989-9-25' ) ;
select * from empleados; 
