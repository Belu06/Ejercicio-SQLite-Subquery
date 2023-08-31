4. Calcular el promedio de lo que gastan los usuarios en el sistema

SELECT AVG(suma) AS promedio
FROM (SELECT SUM(total) AS suma FROM invoices
GROUP BY CustomerId);