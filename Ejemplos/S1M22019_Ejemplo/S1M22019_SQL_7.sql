--SENTENCIA UNION.

SELECT tx_nom
FROM tbm_paises
UNION
SELECT tx_nom
FROM tbm_ciudades;

SELECT tx_nom
FROM tbm_paises
UNION
SELECT tx_nom
FROM tbm_ciudades
ORDER BY tx_nom;

--ERROR: Sólo se puede ubicar el ORDER BY al final.
SELECT tx_nom
FROM tbm_paises
ORDER BY tx_nom
UNION
SELECT tx_nom
FROM tbm_ciudades
ORDER BY tx_nom;

SELECT * FROM tbm_estudiantes;

SELECT co_est, tx_nom, tx_ape
FROM tbm_estudiantes
UNION 
SELECT co_est, tx_nom, tx_ape
FROM tbm_estudiantes;

SELECT co_est, tx_nom, tx_ape
FROM tbm_estudiantes
UNION ALL
SELECT co_est, tx_nom, tx_ape
FROM tbm_estudiantes;

--Presentar primero los países y luego las ciudades.
SELECT (' ' + tx_nom) AS tx_nom
FROM tbm_paises
UNION
SELECT tx_nom
FROM tbm_ciudades
ORDER BY tx_nom;

--Presentar primero los países y luego las ciudades.
SELECT 'P' AS identificador, tx_nom
FROM tbm_paises
UNION
SELECT 'C' AS identificador, tx_nom
FROM tbm_ciudades
ORDER BY identificador DESC, tx_nom;

--Presentar el nombre y apellido de:
--1) Estudiantes de sexo masculino de guayaquil.
--2) Estudiantes de sexo femenino de quito. 
--Además deben haber nacido en el año 2000 incluido.
SELECT tx_nom, tx_ape
FROM tbm_estudiantes
WHERE (st_sex='M' AND co_ciu=1 AND fe_nac>='2000/01/01' AND fe_nac<='2000/12/31') --1=Guayaquil
OR (st_sex='F' AND co_ciu=2 AND fe_nac>='2000/01/01' AND fe_nac<='2000/12/31'); --2=Quito

--Presentar el nombre y apellido de:
--1) Estudiantes de sexo masculino de guayaquil.
--2) Estudiantes de sexo femenino de quito. 
--Además deben haber nacido en el año 2000 incluido.
SELECT tx_nom, tx_ape
FROM tbm_estudiantes
WHERE (st_sex='M' AND co_ciu=1 AND fe_nac>='2000/01/01' AND fe_nac<='2000/12/31') --1=Guayaquil
UNION
SELECT tx_nom, tx_ape
FROM tbm_estudiantes
WHERE (st_sex='F' AND co_ciu=2 AND fe_nac>='2000/01/01' AND fe_nac<='2000/12/31'); --2=Quito


--Uso de LIKE:
--Todos los estudiantes cuyo nombre empieza con la letra "A".
SELECT co_est, tx_nom, tx_ape
FROM tbm_estudiantes
WHERE tx_nom LIKE 'A%';

--Todos los estudiantes cuyo nombre termina con la letra "A".
SELECT co_est, tx_nom, tx_ape
FROM tbm_estudiantes
WHERE tx_nom LIKE '%A';

--Todos los estudiantes cuyo nombre termina en "na".
SELECT co_est, tx_nom, tx_ape
FROM tbm_estudiantes
WHERE tx_nom LIKE '%na';

--Todos los estudiantes cuyo nombre termina en "na".
SELECT co_est, tx_nom, tx_ape
FROM tbm_estudiantes
WHERE tx_nom LIKE '%A%';




--EJERCICIOS:
--1) Presentar el nombre y el apellido de los estudiantes
--   de sexo femenino que no tienen asignada ciudad.

--2) Presentar el nombre del país, el nombre y apellido de
--   los estudiantes que nacieron en el año 2000.

--3) Presentar los nombres, apellidos e identificación de
--   los estudiantes cuya identificación termina en 2.

--4) Presentar los nombres, apellidos e identificación de los
--   estudiantes cuya identificación termina en 2 que son de Manta.

--5) Presentar los nombres, apellidos de los estudiantes cuyo
--   nombre empiece con una vocal.

--6) Presentar los nombres de los estudiantes cuyo nombre
--   tenga más de 3 caracteres.

SELECT * FROM tbm_ciudades ORDER BY co_ciu
SELECT * FROM tbm_estudiantes;