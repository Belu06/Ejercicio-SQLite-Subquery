2. Borrar los lenguajes que no aparecen en ninguna película.

DELETE FROM language
WHERE name NOT LIKE 'English';
SELECT name FROM language;