# 📚 SQL-lerning-project

Proyecto de práctica SQL basado en una base de datos de biblioteca y gestión de visitantes.

## 🎯 Objetivo

Aplicar consultas SQL fundamentales utilizando:

- SELECT
- WHERE
- COUNT()
- LIKE
- NULL
- Funciones de fecha
- Operadores lógicos (AND / OR)

## 🗃️ Estructura de la Base de Datos

El proyecto contiene las siguientes tablas:

### Libros

Información sobre libros disponibles.

Campos:

- codigo
- titulo
- autor
- editorial
- precio
- cantidad

### Prestamos

Registro de préstamos de libros.

Campos:

- titulo
- documento
- fechaprestamo
- fechadevuelto

### Visitantes

Información de visitantes de un stand comercial.

Campos:

- nombre
- edad
- sexo
- ciudad
- telefono
- montocompra

### Agenda

Información de contactos personales.

Campos:

- apellido
- nombre
- domicilio
- telefono
- mail

## 📈 Consultas Implementadas

### Conteo total de registros

```sql
SELECT COUNT(*) FROM libros;
```

### Libros de una editorial específica

```sql
SELECT COUNT(*)
FROM libros
WHERE editorial='Planeta';
```

### Libros cuyo autor contiene "Borges"

```sql
SELECT COUNT(*)
FROM libros
WHERE autor LIKE '%Borges%';
```

### Cantidad de préstamos realizados en agosto

```sql
SELECT COUNT(*)
FROM prestamos
WHERE MONTH(fechaprestamo)=8;
```

## ⚙️ Tecnologías Utilizadas

- MySQL
- SQL
