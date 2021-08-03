-- Question1
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
-- 2

-- Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- 5607

-- Question 3
SELECT film_id, COUNT(film_id) 
FROM inventory
GROUP BY film_id
ORDER BY COUNT DESC;
-- 958


-- Question 4
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';
-- 0

-- Question 5
SELECT staff_id, SUM(rental_id)
FROM payment
GROUP by staff_id;
-- staff_id 2

-- Question 6
SELECT COUNT(DISTINCT district)
FROM address;
-- 378
-- OR
select district, COUNT(district)
from address
GROUP by district;
-- 378

-- Question 7
SELECT DISTINCT film_id AS filmID, COUNT(DISTINCT actor_id) AS actor
FROM film_actor
GROUP BY film_id
ORDER BY actor DESC;
-- film_id 508

-- Question 8
SELECT last_name, store_id
FROM customer
WHERE store_id ='1' AND last_name LIKE '%es';
-- 13

-- Question 9
SELECT DISTINCT(customer_id), SUM(amount), COUNT(amount) 
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id
HAVING SUM(amount)>250
ORDER BY SUM(amount) DESC;
--0

-- Question 10
SELECT DISTINCT(rating), COUNT(rating)
FROM film
GROUP by rating
ORDER by COUNT DESC;
-- 5 rating categories and PC-13 has the most movies



