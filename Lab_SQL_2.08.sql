USE sakila;
SHOW TABLES;

### Lab 2.08 - 1
select * from film;
select title, length, rank () over (order by length desc) as 'rank_length'
from film
where length is not null;    

### Lab 2.08 - 2
SELECT title, length, rating, RANK() OVER (PARTITION BY rating order by length desc ) as 'Ranking'
from film
where length <> " ";

### Lab 2.08 - 3
show tables;
select * from category c;
select * from film_category f;

select count(f.film_id), c.name from category c
join film_category f on c.category_id = f.category_id
group by c.category_id;

### Lab 2.08 - 4
show tables;
select * from actor a;
select * from film_actor f;

select a.first_name, a.last_name, count(f.film_id) from actor a
join film_actor f on a.actor_id = f.actor_id
group by f.actor_id;

### Lab 2.08 - 5
show tables;
select * from customer;
select * from rental;

select c.first_name, c.last_name, count(r.rental_id) as Num_Rentas from customer c
join rental r on c.customer_id = r.customer_id
group by r.customer_id
order by Num_Rentas desc;

### Lab 2.08 - bonus

