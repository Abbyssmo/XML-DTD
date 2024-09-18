use sakila;
## 1. CONSULTAR TODAS LAS PELÍCULAS 
select * 
from film;
 ## 2. CONSULTAR LOS TÍTULOS DE TODAS LAS PELÍCULAS (FILM)
 select Title  as titulo
 from film;
 ## 3. CONSULTAR NOMBRE Y APELLIDO DE LA TABLA ACTOR
 select first_name as Nombre , last_name as Apellido
 from actor;
 ## 4. CONSULTA STORE_ID, FIRST_NAME Y LAST_NAME DE LA TABLA CUSTOMER DE LA BASE DE DATOS SAKILA.
 Select store_id  as Codigo, first_name as Nombre, last_name as Apellidos
 from customer;
 # CAMBIA EL NOMBRE DE LAS COLUMNAS STORE_ID, FIRST_NAME Y LAST_NAME A TIENDA, NOMBRE Y APELLIDO RESPECTIVAMENTE.
 select store_id as Tienda, first_name as Nombre, last_name as Apellidos
 from customer;
  #6. ORDENA DE MANERA DESCENDENTE LA COLUMNA APELLIDO TABLA CUSTOMER
  select last_name,first_name
  from customer
  order by last_name desc;
   #7. CONSULTA LA TABLA PAYMENT DE LA BASE DE DATOS SAKILA.
   select * 
   from payment;
  # muestra ¿CUÁL ES LA CANTIDAD MÁS BAJA Y MÁS ALTA DE LA COLUMNA AMOUNT?
  select min(amount) as Pago_minimo, max(amount) as Pago_maximo
  from payment;
   # 9. CONSULTA DESCRIPTION, RELEASE_YEAR DE LA TABLA FILM DE LA BASE DE DATOS SAKILA  Y FILTRA LA INFORMACIÓN DÓNDE TITLE SEA IMPACT ALADDIN
   Select title, release_year,description 
   from film
   where title='IMPACT ALADDIN';
   # 10. CONSULTA LA TABLA PAYMENT DE LA BASE DE DATOS SAKILA MUESTRA LA INFORMACIÓN DONDE AMOUNT SEA MAYOR A 0.99.
   select *
   from payment
   where amount >0.99;
   ## 11. CONSULTA LA TABLA FILM_TEXT DE LA BASE DE DATOS SAKILA, FILTRA LA INFORMACIÓN DÓNDE TITLE  SEA ZORRO ARK, VIRGIN DAISY, UNITED PILOT
   select*
   from film_text 
   where title ='ZORRO ARK' or title='VIRGIN DAISY' or title=  'UNITED PILOT'
   order by title asc; 
   ##12.CONSULTA LA TABLA CITY DE LA BASE DE DATOS SAKILA FILTRA LA INFORMACIÓN DONDE CITY SEA CHIAYI, DONGYING, FUKUYAMA Y KILIS.
   select *
   from city 
   Where city='CHIAYI' or city ='DONGYING' or city ='FUKUYAMA' or city='KILIS';
   ## 13.CONSULTA LA TABLA CITY DE LA BASE DE DATOS SAKILA FILTRA LA INFORMACIÓN 
## DONDE CITY NO SEA CHIAYI, DONGYING, FUKUYAMA Y KILIS
select * 
from city 
where city<>'CHIAYI' and city<> 'DONGYING' and city<>'FUKUYAMA' and  city<>'KILIS'
order by city asc;
## 14. CONSULTA LA TABLA PAYMENT DE LA BASE DE DATOS SAKILA FILTRA LA INFORMACIÓN 
## DONDE AMOUNT ESTÉ ENTRE 2.99 Y 4.99,  STAFF_ID SEA IGUAL A 2 Y CUSTOMER_ID SEA 1 Y 2
select * 
from payment
where ( amount >2.98 and amount <5) 
and staff_id=2 
and( customer_id=1 or customer_id=2) 
order by amount;
# CONSULTAR LAS PELICULAS Y LOS ACTORES QUE TRABAJAN EN ELLA
select film.title as Titulo, actor.first_name as Nombre ,actor.last_name as Apellidos
from  actor,film_actor,film
Where actor.actor_id=film_actor.actor_id and
film.film_id=film_actor.film_id
order by film.title;
# CONSULTAR LAS PELICULAS EN LAS QUE TRABAJA PENELOPE GUINNESS
select film.title as Titulo, actor.first_name as Nombre ,actor.last_name as Apellidos
from  actor,film_actor,film
Where actor.actor_id=film_actor.actor_id and
film.film_id=film_actor.film_id
and actor.first_name='PENELOPE' and actor.last_name='GUINESS'
order by film.title;

