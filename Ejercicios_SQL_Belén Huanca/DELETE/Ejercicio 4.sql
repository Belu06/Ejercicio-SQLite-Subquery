2. Borrar la categoría “Horror”, pensar que cosas habría que hacer primero para poder borrarla.

DELETE FROM film_category
WHERE category_id = (SELECT category_id FROM category WHERE name LIKE "%Horror%");
DELETE FROM category WHERE name LIKE 'Horror';
SELECT name FROM category;