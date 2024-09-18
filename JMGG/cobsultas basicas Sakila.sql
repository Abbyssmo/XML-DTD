#comentario##
#17/06/24
#consultas basicas
#consultar todas la peliculas de Film
select* from sakila.film;
use sakila;
select* from language;
#Consultar  titulo y duracion
select title, length from film;
#consultar las peliculas y su duracion mostrando nombre y duracion
select title as "Nombre peli", length as duracion from film;
#consulta todos los actores tabla actor
select * from actor;
#consulta  el nombre y apellidos  ,visualizando 'Nombre' first name y 'apellidos' last name y ordena  decente
select actor_id as codigo, first_name as Nombre , last_name as Apellido  from actor  ;
SELECT actor_id,first_name as Nombre , last_name as Apellido  
FROM actor
ORDER BY last_name DESC;
#visualiza en la tabla contry todos los paises  y orenarlos decendente
select * from country ;
select country  as pais from country order by country desc ;
select* from actor ;
select first_name as nombre,last_name as apeliidos  
from actor where last_name= "neeson" 
order by first_name desc;
#consultar clientes
select * from customer as cliente ;
#clientes pertenecen a una tienda
select first_name as cliente, last_name as apellido , email 
from customer where store_id = 1;  
#consultar los clientes  inactivos 
select first_name as cliente, last_name as apellido , email as correo 
from customer where active =0
order by last_name desc;  
 #consultar peliculas duracion <60 min
 select title as peli, special_features as 'extras', length as duracion
 from film where length <60
 order by  length desc;
select title as peli ,length as duracion
from film where length = 60
order by  title asc;
#consulta cuantas peliculas latabla film
select count(*) cantidad
from film;
select count(*) hora
from film
 where length= 60 ;
 SELECT COUNT(film_id) pelicula 
 FROM film 
 WHERE length=120 ; 
 select avg(length)'media de duracion'
 from film ;
 select city
 from city;
 select film.title,category.name
from film.category,film_category
where film. film_id=film_category.film_id and film_category.category_id=category.category_id;
select country.country as Pais ,city.city  as Ciudad
 from city ,country 
where city.country_id=country.country_id and country='Spain';
 
 
 
 