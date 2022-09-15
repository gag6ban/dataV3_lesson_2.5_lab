-- Q1: Select all the actors with the first name ‘Scarlett’.
SELECT * FROM sakila.actor;

SELECT first_name as Scarlett FROM sakila.actor;

-- Q2: How many films (movies) are available for rent and how many films have been rented?
SELECT COUNT(ISNULL(return_date)) FROM sakila.rental;

-- Q3: What are the shortest and longest movie duration?
SELECT MAX(length), title
FROM sakila.film;

SELECT title, MIN(length) 
FROM sakila.film;

-- Q4: What's the average movie duration expressed in format (hours, minutes)?
-- SELECT AVG(length) FROM sakila.film;

-- Q5: How many distinct (different) actors' last names are there?
SELECT COUNT(DISTINCT(last_name)) FROM sakila.actor;

-- Q6: Since how many days has the company been operating (check DATEDIFF() function)?
-- SELECT MAX(last_update)-MIN(rental_date) FROM sakila.rental

-- Q7: Show rental info with additional columns month and weekday. Get 20 results.
SELECT *, monthname(rental_date) as month, weekday(rental_date) as weekday FROM sakila.rental;

-- Q8: Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.


-- Q9: Get release years.
SELECT title, release_year FROM sakila.film;

-- Q10: Get all films with ARMAGEDDON in the title.
SELECT * FROM sakila.film
WHERE title = 'ARMAGEDDON'; 

-- Q11: Get all films which title ends with APOLLO.
SELECT * FROM sakila.film
WHERE title = 'APOLLO'; 

-- Q12: Get 10 the longest films.
SELECT * FROM sakila.film
ORDER BY (length) DESC
LIMIT 10; 

-- Q13: How many films include Behind the Scenes content?
SELECT DISTINCT special_features FROM sakila.film

