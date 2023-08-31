1. Borrar al actor Matthew Johansson, pensar qué cosa habría que borrar primero para poder borrarlo.

DELETE FROM film_actor
WHERE actor_id = (SELECT actor_id FROM actor WHERE first_name = 'MATTHEW');
DELETE FROM actor WHERE first_name = 'MATTHEW';
SELECT first_name AS Nombre FROM actor;