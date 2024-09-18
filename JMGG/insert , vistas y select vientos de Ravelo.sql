use  northwing ;
select * 
from coste_producto;
select ProductoId,Precio
from productos;
insert into coste_producto values
(default,19,22,2),
(default,10,12,3),
(default,22,25,4),
(default,21,25,5),
(default,25,28,6),
(default,30,33,7),
(default,40,42,8),
(default,97,100,9),
(default,30,33,10),
(default,21,24,11),
(default,38,40,12),
(default,6,10,13),
(default,23,25,14),
(default,16,20,15),
(default,17,20,16),
(default,39,42,17),
(default,63,65,18),
(default,9,12,19),
(default,81,85,20),
(default,10,12,21),
(default,21,24,22),
(default,9,12,23),
(default,5,8,24),
(default,14,18,25),
(default,31,34,26),
(default,44,48,27),
(default,46,50,28),
(default,124,128,29),
(default,26,30,30),
(default,13,15,31),
(default,32,35,32),
(default,3,5,33),
(default,14,18,34),
(default,18,22,35),
(default,19,24,36),
(default,26,30,37),
(default,264,268,38),
(default,18,22,39),
(default,18,22,40),
(default,10,14,41),
(default,14,18,42),
(default,46,50,43),
(default,19,24,44),
(default,10,14,45),
(default,12,15,46),
(default,10,14,47),
(default,13,16,48),
(default,20, 24,49),
(default,16,20,50),
(default,53,56,51),
(default,7,10,52),
(default,33,36,53),
(default,7,10,54),
(default,24,28,55),
(default,38,42,56),
(default,20,24,57),
(default,13,16,58),
(default,55,58,59),
(default,34,38,60),
(default,29,32,61),
(default,49,52,62),
(default,44,48,64),
(default,21,24,65),
(default,17,20,66),
(default,14,18,67),
(default,13,16,68),
(default,36,40,69),
(default,15,18,70),
(default,22,25,71),
(default,35,38,72),
(Default,15,18,73),
(default,10,14,74),
(default,8,12,75),
(default,18,22,76),
(default,13,16,77);
select *
 from coste_producto;
CREATE  VIEW ganancia
AS 
select productos.ProductoNombre,productos.Precio,coste_producto.precio_venta , (coste_producto.precio_venta-productos.Precio ) as ganancia
from productos
join coste_producto
on coste_producto.id_precio=productos.ProductoId;


 