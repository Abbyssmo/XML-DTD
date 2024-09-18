use cocinas_schmitd;
select instaladores.nomb_ins as instalador,
instaladores.tlf_ins as telefono_instalador,
montaje.direcion_mon as lugar_instalacion,
montaje.estado as estado_de_la_instalacion,
montaje.horario_mon as horario_de_la_instalacion
from montaje
Join instaladores
on montaje.id_ins=instaladores.id_ins;
select * 
from clientes;
