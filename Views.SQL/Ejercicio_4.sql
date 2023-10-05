4. ¿Cuántos ejemplares (inventory) en total hay en cada local?  Como no hay nombre del local, poner en su lugar la dirección incluyendo ciudad y país además de la cantidad

DROP VIEW direccion_completa;
CREATE VIEW direccion_completa AS
SELECT a.address, c.city, co.country
FROM address a JOIN city c
ON a.city_id = c.city_id
JOIN country co
ON c.country_id = co.country_id;

CREATE VIEW 
SELECT inventory_id, 