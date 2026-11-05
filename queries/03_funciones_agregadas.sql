/*
========================================
FUNCIONES AGREGADAS
========================================
*/

-- Cantidad total de libros 
SELECT COUNT(*) AS total_libros
FROM libros;

-- Cantidad de libros con precios cargados
SELECT COUNT(precio) AS libros_con_precio
FROM libros;

-- Precio promedio
SELECT AVG(precio) AS precio_promedio
FROM libros;

-- Libros más caros
SELECT MAX(precio) AS precio_maximo
FROM libros;

-- Libro más económico
SELECT MIN(PRECIO) AS precio_minimo
FROM libros;

-- Stock total disponible
SELECT SUM(cantidad) AS stock_total
FROM libros;

-- Cantidad de visitantes 
SELECT COUNT(*) AS total_visitantes
FROM visitantes;

-- Promedio de gastos de visitantes
SELECT  AVG(montocompra) AS gasto_promedio
FROM visitantes;

-- Cantidad de préstamos registrados
SELECT COUNT(*) AS total_prestamos
FROM prestamos;

-- Cantidad de libros devueltos
SELECT COUNT(fechadevuelto) AS libros_devueltos
FROM prestamos;
