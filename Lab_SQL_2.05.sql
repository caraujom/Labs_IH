USE sakila;
SHOW TABLES;

#LAB 2.05 1
SELECT * FROM actor
WHERE first_name = "Scarlett";

#LAB 2.05 2
SHOW TABLES;
SELECT COUNT(title) FROM film;
select * FROM rental;

#LAB 2.05 3
SELECT MIN(length), MAX(length) FROM sakila.film;

#LAB 2.05 4
select AVG(length) from film;
select floor(AVG(LENGTH)/60) as Prom_h, AVG(length)-60 AS Prom_m FROM film;

#LAB 2.05 5
SELECT count(distinct(last_name)) FROM actor;

#LAB 2.05 6
SHOW TABLES;
SELECT datediff(max(rental_date), min(rental_date)) as DIAS FROM rental;

#LAB 2.05 7
select * from rental;
set lc_time_names = "es_ES";
select *, monthname(rental_date) as MES, date_format(rental_date, "%W") as DIA  from rental
limit 20;

#LAB 2.05 8
SELECT *,
monthname(rental_date) as MES,
date_format(rental_date, "%W") as DIA,
CASE
WHEN date_format(rental_date, "%W") = 'lunes' then  'día laboral'
WHEN date_format(rental_date, "%W") = 'martes' then  'día laboral'
WHEN date_format(rental_date, "%W") = 'miércoles' then  'día laboral'
WHEN date_format(rental_date, "%W") = 'jueves' then  'día laboral'
WHEN date_format(rental_date, "%W") = 'viernes' then  'día laboral'
WHEN date_format(rental_date, "%W") = 'domingo' then  'fin de semana'
when date_format(rental_date, "%W") = "sábado" then "fin de semana"
END AS 'tipo de dia'
FROM sakila.rental;


#LAB 2.05 9
SHOW TABLES;
SELECT * from rental;
SELECT max(rental_date) FROM rental;
SELECT count(rental_date) FROM rental;
select date(max(rental_date)) - INTERVAL 30 DAY, date(max(rental_date)) from rental;
select * from rental
where   date(rental_date) between (date(max(rental_date)) - INTERVAL 30 DAY) and (date(max(rental_date)));

