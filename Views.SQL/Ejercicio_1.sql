1. ¿Cuántas películas hay en cada tipo de "rating" (g, pg, pg13, r, nc17)

CREATE VIEW peliculas_por_rating AS
SELECT COUNT(title) AS peliculas, rating
	FROM "film"
	GROUP BY rating;