4. Por cuestiones de privacidad se decidió borrar todos los emails de los clientes, escriba una consulta en SQL para lograr esto.


DELETE FROM customer WHERE email IN (SELECT * FROM customer);

incompleto