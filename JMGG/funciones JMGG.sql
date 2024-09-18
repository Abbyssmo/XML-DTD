# CONCAT 
use sakila; 
SELECT CONCAT(first_name,' ', last_name) as 'Nombre y Apellidos'
from actor;
#Combina el primer nombre y el apellido de los actores.

 #CONCAT_WS 
SELECT CONCAT_ws( ',',  first_name,  ' ',last_name,' ',title) as 'nombre , apellido y pelicula'
from actor, film;
#Combina el primer nombre, el apellido y el nombre de la película, separados por una coma.

 #SUBSTRING
SELECT title as titulo_completo ,SUBSTRING(title,1,3) AS titulo_recortado
from film;
 
# Busca  los primeros 3 caracteres de los títulos de las películas.

 #TRIM

#SELECT TRIM (' '  first_name 
#from actor
insert into actor values ( default, '  Maria', '   Perez' , default);
select  * from actor;
select trim(first_name)  as nombre , trim(last_name) as apellido
from actor
where actor_id=202;

# Elimina los espacios en blanco alrededor de los nombres de las categorías.

#RIGHT
# Busca  los últimos 3 caracteres del apellido de los clientes. 
SELECT last_name as apellido, RIGHT(last_name, 3) AS finales
from customer;
select first_name as nombre, left(first_name,3) as iniciales
from customer;
 #LENGTH: 
SELECT title as titulo ,LENGTH(title)  AS Longitud_peliculas 
from film
order by length(title) desc;
# Calcula la longitud del título de las películas.

 #REVERSE 
SELECT first_name as nombre, REVERSE(first_name) as nombre_inverso
from actor;
#Invierte el orden de los caracteres en el nombre de los actores.