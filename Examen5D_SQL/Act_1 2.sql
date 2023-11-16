1. Importar la base de datos sakila de peliculas y actores en el Postgres.  El archivo que está junto a esta consigna incluye las tablas de dos bases de datos (chinook y sakila).  Eliminar las tablas que no son necesarias (Si no lo pueden hacer andar es posible hacer los siguientes puntos en el SqliteBrowser)
2. Crear una vista (VIEW) que muestre de cada alquiler su duración (rental duration), el nombre completo del cliente, el nombre de la película y la fecha de alquiler.


CREATE VIEW datos_alquiler AS
SELECT rental_duration AS duracion, rental_date AS fecha_alquiler, c.first_name AS cliente_nombre, c.last_name AS cliente_apellido, title AS Pelicula
	FROM rental r JOIN customer c USING (customer_id)
	JOIN staff s USING (staff_id)
	JOIN store st USING (store_id)
	JOIN inventory i USING(store_id)
	JOIN film f USING (film_id);