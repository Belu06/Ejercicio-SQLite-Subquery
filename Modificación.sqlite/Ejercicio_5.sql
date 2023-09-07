--5) Agregar un usuario nuevo con la contraseña de alguno de los usuarios
--ya creados (usando subquery buscando el usuario por nombre)

INSERT INTO user (username, password)
VALUES ("Veroo", (SELECT password FROM user WHERE username like "%guada_xv%"));