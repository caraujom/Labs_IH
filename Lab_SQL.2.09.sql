show databases;

use sakila;
show tables;
select * from rental;

select *  from rental
where (MONTH(rental_date) = 5);
select count(MONTH(rental_date) = 5) from rental;


select (rental_date) from rental
order by rental_date desc;
describe rental;

use sakila;

select * from rentals_may;

select * from rental;

SELECT rental_id AS RentalID, rental_date AS RentalDate, inventory_id AS InventoryID,
customer_id AS CustomerID, return_date AS ReturnDate, staff_id AS StaffID FROM sakila.rental
WHERE MONTH(rental_date)= 6;

select* from rentals_may;
select * from rentals_jun;

select count(rental_id), customer_id from sakila.rentals_may
group by customer_id
order by customer_id;

select count(m.rental_id) as RentMay, count(j.rental_id) as RentJun, m.customer_id
from sakila.rentals_may m
left join sakila.rentals_jun j
on m.rental_id = j.rental_id
group by m.customer_id
having (count(m.rental_id) > count(j.rental_id));

select count(m.rental_id) as RentMay, count(j.rental_id) as RentJun, j.customer_id
from sakila.rentals_may m
right join sakila.rentals_jun j
on m.rental_id = j.rental_id
group by j.customer_id
having (count(m.rental_id) < count(j.rental_id));