/*
========================================
CONSULTAS DE DESAFIO
========================================
*/

-- Cantidad de libros por editorial
SELECT editorial,
       COUNT(*) AS cantidad_libros
FROM libros
GROUP BY  editorial
ORDER BY cantidad_libros DESC;

-- Cantidad de libros por autor
SELECT autor,
       COUNT(*) AS cantidad_libros
FROM libros
GROUP BY autor
ORDER BY cantidad_libros DESC;

-- Stock por editorial
SELECT editorial,
      SUN(cantidad) AS stock_total
FROM libros
GROUP BY editorial
ORDER BY stock_total DESC;

-- Precio promedio por editorial
SELECT editorial,
       AVG(promedio) AS precio_promedio
FROM libros 
GROUP BY editorial;

-- Cantidad de visitantes por ciudad 
SELECT ciudad, 
       COUNT(*) AS cantidad_visitantes
FROM visitantes
GROUP BY ciudad
ORDER BY cantidad_visitantes DESC;

-- Gasto total por ciudad
SELECT ciudad,
       SUM(montocompra) AS gasto_total
FROM visitantes 
GROUP BY ciudad
ORDER BY gasto_total DESC;

-- Cantidad de prestamos pr libros
SELECT titulo,
       COUNT(*) AS veces_prestado
FROM prestamos
GROUP BY titulo
ORDER BY veces_prestado DESC;

-- Libros prestdos más de una vez
SELECT titulo,
       COUNT(*) AS cantidad
FROM prestamos
GROUP BY titulo
HAVING COUNT(*) > 1;

-- Top 3 libros más caros
SELECT titulo,
       predcio
FROM libros 
ORDER BY precio DESC
LIMIT 3;

-- Contactos agrupados por apellido
SELECT apellido,
       COUNT(*) AS cantidad_personas
FROM agenda
GROUP BY apellido
ORDER BY cantidad_personas DESC;
