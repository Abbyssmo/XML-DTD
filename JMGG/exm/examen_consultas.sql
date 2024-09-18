use testjoin;
SELECT e.nombre_e AS Empleado, d.nombred AS Departamento
FROM empleado e
INNER JOIN departamento d ON e.iddepartamento = d.iddepartamento;

select empleado.nombre_e as nombre ,edad.edad,departamento.nombred as departamento
from empleado
join edad 
on edad.empleado_idempleado=idempleado
join departamento
on departamento.iddepartamento=empleado.iddepartamento;