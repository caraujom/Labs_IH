use sakila;
show tables;
drop table if exists films_2020;
CREATE TABLE `films_2020` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` int(6),
  `rental_rate` decimal(4,2),
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

show tables;
select * from films_2020;

show tables;
load data local infile 'D:\\Escritorio\\films_2020.csv'
into table films_2020
fields terminated by ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(film_id,title,description,release_year,language_id,original_language_id,rental_duration,rental_rate,length,replacement_cost,rating);

UPDATE FILMS_2020
SET rental_duration = '3';
show tables;
select * from films_2020;

UPDATE FILMS_2020
SET rental_rate = 2.99
WHERE rental_rate = '0.00' ;

UPDATE FILMS_2020
SET replacement_cost = 8.99
WHERE replacement_cost = '0.00' ;

#PARTE 2
#1
use sakila;

select * from actor
order by last_name;

select count(last_name), last_name from actor
group by last_name
having count(last_name) = 1
order by count(last_name) desc;

#2
select count(last_name), last_name from actor
group by last_name
having count(last_name) <> 1
order by count(last_name) desc;

#3
show tables;
select * from rental;
select count(rental_id), staff_id from rental
group by staff_id;

#4
select * from film;
select count(release_year) from film
group by release_year;

#5
select count(title), rating from film
group by rating;

#6
select round(avg(length),2), rating from film
group by rating;

#7
select round(avg(length),2), rating from film
group by rating
having avg(length) > 120;