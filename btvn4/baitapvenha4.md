**Câu 1**
```sql
SELECT actor.* 
FROM actor 
INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id 
INNER JOIN film ON film.film_id = film_actor.film_id 
WHERE film.title LIKE '%ACADEMY DINOSAUR%'
```
---
**Câu 2**
```sql
SELECT title, description, release_year, length, rating, COUNT(actor.actor_id) AS 'Diễn viên tham gia'
FROM film 
LEFT JOIN film_actor ON film.film_id = film_actor.film_id 
LEFT JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE rating ='G'
GROUP BY title, description , release_year , `length` , rating
```
---
**Câu 3**  
**Cách 1**
```sql
SELECT AVG(film.rental_rate) AS 'Trung bình cộng rental_rate'
FROM film 
INNER JOIN film_actor ON film.film_id = film_actor.film_id 
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'CHRISTIAN'
AND actor.last_name = 'GABLE'
```
**Cách 2**
```sql
SELECT AVG(film.rental_rate) AS 'Trung bình cộng rental_rate'
FROM film 
INNER JOIN film_actor ON film.film_id = film_actor.film_id 
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.actor_id = 10
```