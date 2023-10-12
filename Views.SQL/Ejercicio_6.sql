6. Título de la película, dirección, ciudad y país del local de todos los ejemplares que están sin devolver.

SELECT title AS pelicula, return_date
FROM film f JOIN inventory i
ON f.film_id = i.film_id
JOIN rental r
ON i.inventory_id = r.inventory_id
GROUP BY 