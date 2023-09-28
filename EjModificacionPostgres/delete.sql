--4) Delete de usuario y/o post
--POST

DELETE FROM "post" WHERE title = '3333';

--POST
DELETE FROM "user" WHERE username = 'VeroP';


--5) Agregar un usuario nuevo con la contraseña de alguno de los usuarios
--ya creados (usando subquery buscando el usuario por nombre)

INSERT INTO "user" (username, password)
VALUES ('Veroo', (SELECT password FROM "user" WHERE username like '%guada_xv%'));

--6) Actualizar todos los posts de un usuario (seleccionado con subquery
--por nombre) y poner el cuerpo del post en texto vacío ("").

UPDATE "post"
SET body = ''
WHERE author_id = (SELECT id FROM "user" WHERE username like 'adrii%')

--7) Borrar un usuario que tenga posts, haciendo primero un DELETE con
--subquery que borre todos los post de ese usuario.

DELETE FROM "post"
WHERE author_id = (SELECT id FROM "user" WHERE username ilike 'adrii')

DELETE FROM "user" WHERE username ilike 'adrii%';
