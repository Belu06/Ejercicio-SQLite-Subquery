2. Mostrar los títulos de los discos de "Deep Purple"

SELECT name FROM tracks
WHERE AlbumId IN (SELECT AlbumId FROM albums WHERE Title like "%Deep Purple%")