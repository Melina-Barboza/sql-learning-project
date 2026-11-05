-- Contar registros (count). 

DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
 codigo int unsigned auto_increment, 
 titulo varchar(40) not null,
 autor varchar(30),
 editorial varchar(15),
 precio decimal(5,2) unsigned,
 cantidad mediumint unsigned,
 primary Key(codigo)
);
DESCRIBE libros;

INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
 VALUES ('El aleph','Borges','Planeta',15,100);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
 VALUES ('Martin Fierro','Jose Hernandez','Emece',22.20,200);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
 VALUES ('Antologia poetica','J.L Borges','Planeta',40.00,150);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
 VALUES ('Aprenda PHP','Mario Molina','Emece',18.20,200);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
 VALUES ('Cervantes y el quijote','Bioy Casares- J.L Borges','Paidos',36.40,100);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
 VALUES ('Manual de PHP','J.C Paez','Paidos',30.80,120);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
 VALUES ('Harry Potter y la piedra','J.K. Rowling','Paidos',45.00,50);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
 VALUES ('Harry Potter y la camara','J.K. Rowling','Paidos',46.00,100);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
 VALUES ('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',NULL,200);

SELECT * FROM lIBROS;

-- Para averiguar la cantidad sin necesidad de contarlos manualmente usamos la función 'count'. 

SELECT COUNT(*) FROM libros;

-- Para saber la cantidad de libros de la editorial 'Planeta' tipeamos:

SELECT COUNT(*) FROM libros
 WHERE editorial='Planeta';

-- Para una consulta mas específica usamos 'where' por ejemplo, solicitamos la cantidad de libros que contienen la cadena 'Borges'. 

SELECT COUNT(*) FROM libros
 WHERE autor LIKE '%Borges%';
 
-- Para contar los registros que tienen precio (sin tener en cuanta los que tienen el valor 'NULL'), usamos la función 'Count()' y en los paréntesis colocamos el nombre del campo que necesitamos contar.

SELECT COUNT(precio) FROM libros;
 

-- Un comercio que tiene un Stand en uan feria registra en una tabla llamada 'Visitantes' algunos datos de las personas que visitan o compran en su Stand para luego enviarles publicidad de sus producto

DROP TABLE IF EXISTS visitantes;

CREATE TABLE visitantes(
nombre varchar(30),
edad tinyint unsigned,
sexo char(1),
domicilio varchar(30),
ciudad varchar(20),
telefono varchar(11),
montocompra decimal(6,2) unsigned
);
DESCRIBE visitantes;

INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Susana Molina','28','f','Colon 123','Cordoba',NULL,45.50);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Marcela Mercado','36','f','Avellaneda 345','Cordoba','4545454',0);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Alberto Garcia','35','m','Gral. Paz 123','Alta Gracia','03547123456',25.00);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Teresa Garcia','33','f','Gral. Paz 123','Alta Gracia','03547123456',0);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Roberto Perez','45','m','Urquiza 335','Cordoba','4123456',33.20);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Marina Torres','22','f','Colon 222','Villa Dolores','03544112233',25.00);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Julieta Gomez','24','f','San Martin 333','Alta Gracia','03547121212',53.50);
 INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Roxana Lopez','20','f','Triunvirato 345','Alta Gracia',NULL,0);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Liliana Garcia','50','f','Paso 999','Cordoba','4588778',48.00);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Juan Torres','43','m','Sarmiento 876','Cordoba','4988778',15.30);

SELECT * FROM visitantes;

-- Solicite la cantidad de visitas al Stand (10 registros). 

SELECT COUNT(*) FROM visitantes;

-- Solicite la cantidad de visitas que tienen teléfono (valor nulo) (8 registros). *Recuerde que no es lo mismo contar con todos los registros que contar los que tienen teléfono
-- porque en el segundo caso no considera los registros con valor NULO en el campo 'Teléfono'. 

SELECT COUNT(TELEFONO) FROM visitantes;

-- Muestre la cantidad de visitantesde sexo masculinos que acudieron al stand (3). 

SELECT COUNT(*) FROM visitantes
 WHERE sexo='m';
 
-- Muestre la cantidad de mujeres mayor de 25 años que acudieron al stand(4). 

SELECT COUNT(*) FROM visitantes
 WHERE sexo='f' AND edad>25;
 
-- Muestre la cantidad de visitantes que no son de 'Cordoba'(5). 

SELECT COUNT(*) FROM visitantes
 WHERE ciudad<>'Cordoba';
 
-- Muestre la cantidad de visitantes que realizaron alguna compra(7). 

SELECT COUNT(*) FROM visitantes
 WHERE montocompra<>0;
 
-- Muestre la cantidad de visitantes que no realizaron compras(3). 

SELECT COUNT(*) FROM visitantes
 WHERE montocompra=0;
 
 

-- Una pequeña biblioteca de barrio registra los préstamos de sus libros en una tabla llamada ''Prestamos''. 
-- La tabla registra el documento del socio a quien se le presta el libro, el título del libro prestado, la fecha de préstamo y la fecha en que se devuelve. 

DROP TABLE IF EXISTS prestamos;

CREATE TABLE prestamos(
 titulo VARCHAR(40) NOT NULL,
 documento CHAR(8) NOT NULL,
 fechaprestamo DATE NOT NULL,
 fechadevuelto DATE
);
DESCRIBE prestamos;

INSERT INTO prestamos (titulo, documento, fechaprestamo, fechadevuelto)
 VALUES ('Manual de 1 grado','23456789','2006-07-10','2006-07-12');
INSERT INTO prestamos (titulo, documento, fechaprestamo, fechadevuelto)
 VALUES ('El aleph','22245679','2006-07-15',NULL);
INSERT INTO prestamos (titulo, documento, fechaprestamo, fechadevuelto)
 VALUES ('Alicia en el pais de las maravillas','24456789','2006-07-20','2006-07-22');
INSERT INTO prestamos (titulo, documento, fechaprestamo, fechadevuelto)
 VALUES ('Manual de biologia','25456789','2006-08-14',NULL);
INSERT INTO prestamos (titulo, documento, fechaprestamo, fechadevuelto)
 VALUES ('Manual de geografia 5 grado','27456789','2006-08-21','2006-08-25');
INSERT INTO prestamos (titulo, documento, fechaprestamo, fechadevuelto)
 VALUES ('Antologia Poetica','28456789','2006-08-26','2006-08-27');
INSERT INTO prestamos (titulo, documento, fechaprestamo, fechadevuelto)
 VALUES ('Manual de 1 grado','23456789','2006-08-26','2006-08-28');
INSERT INTO prestamos (titulo, documento, fechaprestamo, fechadevuelto)
 VALUES ('Manual de 1 grado','30456789','2006-09-01','2006-09-03');
 
SELECT * FROM prestamos;

-- Cuente la cantidad de veces que se prest'o el libro 'Manual de 1 grado'. 

SELECT COUNT(*) FROM prestamos
 WHERE titulo='Manual de 1 grado';
 
-- Cuente la cantidad de libros devueltos (contando por fechadevuelto). 

SELECT COUNT(fechadevuelto) FROM prestamos;

-- Cuente la cantidad de veces que se prestaron libros a la persona con ducumento '23456789'. 

SELECT COUNT(*) FROM prestamos
 WHERE documento='23456789';
 
-- Cuente la cantidad de libros prestados en el mes de agosto. 

SELECT COUNT(*) FROM prestamos
 WHERE MONTH(fechaprestamo)=8;


-- Trabaje con la tabla 'Agenda' que registra la información referente a sus amigos. 

DROP TABLE IF EXISTS agenda;

CREATE TABLE agenda(
 apellido varchar(30),
 nombre varchar(20) not null,
 domicilio varchar(30),
 telefono varchar(11),
 mail varchar(30)
);
DESCRIBE agenda;

INSERT INTO agenda (apellido, nombre, domicilio, telefono, mail)
 VALUES ('Perez','Juan','Sarmiento 345','4334455','juancito@gmail.com');
INSERT INTO agenda (apellido, nombre, domicilio, telefono, mail)
 VALUES ('Garcia','Ana','Urquiza 367','4226677','anamariagarcia@hotmail.com');
INSERT INTO agenda (apellido, nombre, domicilio, telefono, mail)
 VALUES ('Lopez','Juan','Avellaneda 900',null,'juancitoLopez@gmail.com');
INSERT INTO agenda (apellido, nombre, domicilio, telefono, mail)
 VALUES ('Juarez','Marianela','Sucre 123','0525657687','marianelaJuarez2@gmail.com');
INSERT INTO agenda (apellido, nombre, domicilio, telefono, mail)
 VALUES ('Molinari','Lucia','Peru 1254','4590987','molinarilucia@hotmai.com');
INSERT INTO agenda (apellido, nombre, domicilio, telefono, mail)
 VALUES ('Ferryra','Patricia','Colon 1534','4585858',NULL);
INSERT INTO agenda (apellido, nombre, domicilio, telefono, mail)
 VALUES ('Perez','Susana','Sana Martin 333',NULL,NULL);
INSERT INTO agenda (apellido, nombre, domicilio, telefono, mail)
 VALUES ('Perez','Luis','Urquiza 444','0354545256','perezluisalberto@hotmail.com');
INSERT INTO agenda (apellido, nombre, domicilio, telefono, mail)
 VALUES ('Lopez','Maria','Salta 314',NULL,'lopezmariayo@gmail.com');

SELECT * FROM agenda;

-- Cuente cuántos de sus amigos tienen mail. 

SELECT COUNT(mail)
 FROM agenda;
 
-- cuente cuántos de sus amigos tiene teléfono. 

SELECT COUNT(telefono)
 FROM agenda;
 
-- Cuente cuántos se apellidan 'Perez'. 

SELECT COUNT(*) FROM agenda
 WHERE apellido LIKE'%Perez%';
 


-- Un comercio que tiene un stand en una feria registra una tabla llamada 'visitantes', algunos datos de las personas que visitan o compran en su stand para luego enviarle publicidad de sus productos.

DROP TABLE IF EXISTS visitantes;

CREATE TABLE visitantes(
 nombre VARCHAR(30),
 edad TINYINT UNSIGNED,
 sexo CHAR(1),
 domicilio VARCHAR(30), 
 ciudad VARCHAR(20),
 telefono VARCHAR(11),
 montocompra DECIMAL(6,2)
);
DESCRIBE visitantes;

INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Susana Molina','28','F','Colon 123','Cordoba',NULL,45.50);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Marcela Mercado','36','F','Avellaneda 345','Cordoba','455454',0);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Alberto Garcia','35','M','Gral. Paz 123','Alta Gracia','03547123456',25.00);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Teresa Garcia','33','F','Gral. Paz 123','Alta Gracia','03547123456',0);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Roberto Perez','45','M','Urquiza 335','Cordoba','4123456',33.20);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Marina Torres','22','F','Colon 222','Villa Dolores','03544112233',25.00);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Julieta Gomez','24','F','San Martin 333','Alta Gracia','3547121212',53.50);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Roxana Lopez','20','F','Triunvirato345','Alta Gracia',NULL,0);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Liliana Garcia','50','F','Paso 999','Cordoba','4588778',48.00);
INSERT INTO visitantes (nombre, edad, sexo, domicilio, ciudad, telefono, montocompra)
 VALUES ('Juan Torres','43','M','Sarmiento 876','Cordoba','4988778',15.30);
 
 SELECT * FROM visitantes; 
 
-- Solicite la cantidad de visitantes al Stand (10 registros). 

SELECT COUNT(*) FROM visitantes;

-- Solicite la cantidad de vistantes que tienen teléfono (valor no nulo) 8 registros. (Recuerde que no es lo mismo contar todos los registros que contar los que tienen teléfono
-- por que en el 2°caso no considera los registrso con valor nulo en el campo ''Telefono''). 

SELECT COUNT(telefono) FROM visitantes;
 
-- Muestre la cantidad de visitantes de sexo masculino que acudieron al Stand (3).
 
SELECT COUNT(*) FROM visitantes
 WHERE sexo='m';
 
-- Muestre la cantidad de mujeres mayores de 25 años que acudieron al Stand (4).

SELECT COUNT(*) FROM visitantes
 WHERE sexo='f' AND 
 edad>25;
-- Muestre la cantidad de visitantes que no son de Cordoba (5). 

SELECT COUNT(*) FROM visitantes
 WHERE ciudad<>'Cordoba';
 
-- Muestre la cantidad de visitantes que realizaron alguna compra (7). 

SELECT COUNT(*) FROM visitantes
 WHERE montocompra<>0;
 
-- Muestre la cantidad de vistantes que no realizaron compras (3). 

SELECT COUNT(*) FROM visitantes
 WHERE montocompra=0;
 
