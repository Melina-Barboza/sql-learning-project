/* 
======================================
FILTROS WHERE
======================================
*/

-- Libros de la editorial Planeta
SELECT *
FROM libros
WHERE editorial = 'Planeta';

-- Libros cuyo autor contiene Borges 
SELECT *
FROM libros 
WHERE autor LIKE '%Borges%';

-- Libros entre 20 y 40
SELECT *
FROM libros
WHERE precio BETWEEN 20 AND 40;

-- Visitantes mayores de 30 años 
SELECT *
FROM visitantes 
WHERE > 30;

-- Mujeres mayores de 25 años
SELECT * 
FROM visitantes 
WHERE  sexo = 'F'
 AND edad > 25;

-- Visitantes que realizaron compras 
SELECT *
FROM visitantes 
WHERE montocompra > 0;

-- Visitantes que no son de Córdoba
SELECT * 
FROM visitantes 
WHERE ciudad <> 'Cordoba';

--Contactos cuyo apellidos es Pérez
SELECT *
FROM agenda
WHERE apellido = 'Perez';

-- Préstamos realizados en agosto
SELECT * 
FROM prestamos
WHERE MONTH(fechaprestamo) = 8;
