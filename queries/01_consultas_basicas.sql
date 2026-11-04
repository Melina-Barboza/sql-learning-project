/* 
=======================================
CONSULTAS BASICAS
=======================================
*/

-- Mostrar todos los libros
SELECT *
FROM libros;

-- Mostrar todos los visitantes
SELECT * 
FROM visitantes;

-- Mostrar todos los préstamos
SELECT * 
FROM prestamos;

-- Mostrar todos los registros de agenda
SELECT * 
FROM agenda;

-- Mostrar título, autor y precio de los libros
SELECT titulo, autor, precio
FROM libros;

-- Mostrar visitantes de Córdoba
SELECT * 
FROM visitantes
WHERE ciudad = 'Cordoba';

-- Mostrar libros con precio mayor a 30
SELECT * 
FROM libros
WHERE > 30;

-- Mostrar préstamos pendientes de devolución
SELECT *
FROM prestamos
WHERE fechadevuelto IS NULL;

-- Mostrar contactos que teienen correos electrónico
SELECT * 
FROM agenda 
WHERE mail IS NOT NULL;
