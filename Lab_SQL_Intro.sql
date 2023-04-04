#Llama la Base de datos a usar
USE sakila;

#Muestra todas las tablas de la base de datos
SHOW TABLES;

#Datos de la tabla actor
SELECT * FROM sakila.actor;

#Datos de la tabla film
SELECT * FROM film;

#Datos de la tabla customer
SELECT * FROM customer;

#Títulos de las películas
SELECT title FROM film;

#Selecciona los diferentes idiomas de las películas bajo el alias "language"
SELECT name AS "language" FROM language;

# Número de Tiendas son 2
SELECT * FROM sales_by_store;
SELECT * FROM store;

#Número de empleados son 2 
SELECT * FROM staff;

#entrega solamente lista con mombres de los empleados
SELECT name FROM staff_list