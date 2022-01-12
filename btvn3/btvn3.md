**CÂU 1** 
```SQL 
SELECT title, description, length, special_features, rating
FROM `film`
WHERE rating = 'PG'
AND special_features = 'DELETED SCENES'
AND rental_rate < 2.99
```
---

**CÂU 2**  
   
```SQL
SELECT title, description, length, special_features, rating
FROM `film`
WHERE rating = 'G'
AND rental_rate > (SELECT AVG(rental_rate) FROM `film`)
```

---

**CÂU 3**
```SQL
SELECT *
FROM `film`
WHERE special_features NOT LIKE '%DELETED SCENE%'
```


