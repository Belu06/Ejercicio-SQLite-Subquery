3. Cuales son los 10 actores/actrices que más aparecen en las películas

CREATE VIEW actor_10_peliculas AS
SELECT ac.first_name AS Nombre, ac.last_name AS Apellido, 
count(f.title) AS peliculas
FROM film f JOIN film_actor fa
ON f.film_id = fa.film_id
JOIN actor ac ON fa.actor_id = ac.actor_id
GROUP BY ac.actor_id
ORDER BY Nombre, Apellido ASC
LIMIT 10;