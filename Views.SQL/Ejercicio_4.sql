4. ¿Cuántos ejemplares (inventory) en total hay en cada local?  Como no hay nombre del local, poner en su lugar la dirección incluyendo ciudad y país además de la cantidad

DROP VIEW direccion_completa;
CREATE VIEW direccion_completa AS           
SELECT address_id,a.address AS direccion, c.city AS ciudad, co.country AS pais
FROM address a JOIN city c
ON a.city_id = c.city_id
JOIN country co
ON c.country_id = co.country_id;

SELECT COUNT(film_id), dc.direccion, dc.ciudad, dc.pais
FROM inventory i JOIN store s
ON i.store_id = s.store_id
JOIN direccion_completa dc
ON s.address_id = dc.address_id
GROUP BY dc.direccion, dc.ciudad, dc.pais