# 📚 SQL-Learning-Project

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

## 📂 Conjunto de Datos

La carpeta `data/` contiene el archivo principal de la base de datos utilizado en este proyecto.

```text
data/
└── database.sql
```

Este script incluye:

- Creación de tablas.
- Inserción de datos de ejemplo.
- Registros relacionados con libros, préstamos, visitantes y contactos.

Su propósito es proporcionar un entorno listo para ejecutar todas las consultas incluidas en la carpeta `queries`.

### 🚀 Cómo utilizar

1. Descargar el archivo `database.sql`.
2. Abrir MySQL Workbench.
3. Ejecutar el script para crear las tablas y cargar los datos.
4. Ejecutar las consultas de la carpeta `queries`.

## 🗃️ Estructura de la Base de Datos

El proyecto contiene las siguientes tablas:

### 📚 Libros

Información sobre libros disponibles.

**Campos:**

- codigo
- titulo
- autor
- editorial
- precio
- cantidad

### 🔄 Prestamos

Registro de préstamos de libros.

**Campos:**

- titulo
- documento
- fechaprestamo
- fechadevuelto

### 👥 Visitantes

Información de visitantes de un stand comercial.

**Campos:**

- nombre
- edad
- sexo
- ciudad
- telefono
- montocompra

### 📒 Agenda

Información de contactos personales.

**Campos:**

- apellido
- nombre
- domicilio
- telefono
- mail

## 📈 Consultas Implementadas

### 📌 Conteo total de registros

```sql
SELECT COUNT(*) FROM libros;
```

### 📌 Libros de una editorial específica

```sql
SELECT COUNT(*)
FROM libros
WHERE editorial = 'Planeta';
```

### 📌 Libros cuyo autor contiene "Borges"

```sql
SELECT COUNT(*)
FROM libros
WHERE autor LIKE '%Borges%';
```

### 📌 Cantidad de préstamos realizados en agosto

```sql
SELECT COUNT(*)
FROM prestamos
WHERE MONTH(fechaprestamo) = 8;
```

## ⚙️ Tecnologías Utilizadas

- MySQL
- SQL
