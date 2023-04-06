USE sakila;
show tables;

#2.6-1
select * from film;
select distinct(release_year) from film;

#2.6-2
select * from film
where title like '%armageddon%';

#2.6-3
select * from film
where title regexp 'apollo$';

#2.6-4
SELECT * FROM film
ORDER BY length DESC
limit 10;

#2.6-5
select * from film
where special_features regexp 'behind the Scenes';

#2.6-6
select * from staff;
ALTER TABLE staff
DROP COLUMN picture;
SELECT * FROm staff;

#2.6-7
select * from customer
where last_name = 'sanders';

select * from staff;
insert into staff values (3,'Tammy','Sanders',79,'Tammy.Sanders@sakilastaff.com',2,1,'Tammy','pqrs','2006-02-15 03:57:16');

#2.6-8
select * from rental;
select * from inventory;
select * from film;
select * from customer;

select max(rental_id) from rental;

select customer_id from sakila.customer 
where first_name = 'charlotte' and last_name = 'hunter';

select film_id from sakila.film 
where title = 'academy dinosaur';

select *, inventory_id from sakila.inventory 
where film_id = 1;

select staff_id from staff
where first_name = 'mike' and last_name = 'hillyer';

insert into rental values (16050,curdate(),4,130,curdate()+1,1,'2006-02-15 03:57:16');

select * from rental
where rental_id = 16050;

select * from rental
order by rental_id desc;

#2.6-9
select * from customer;
select distinct(active) from customer;
select count(active=0) from customer;

set foreing_key_checks=0;

CREATE TABLE if not exists deleted_users (
  customer_id int UNIQUE NOT NULL,
  email char,
  date int DEFAULT NULL,
  CONSTRAINT PRIMARY KEY (customer_id)
) ;

insert into deleted_users #pendiente de incorporar 
values (customer(customer_id,'email'),curdate());


