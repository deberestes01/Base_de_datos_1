--Funciones de agregado.

SELECT COUNT(*)
FROM tbm_ciudades;

--¿Cuántos estudiantes por ciudad hay?
SELECT co_ciu, COUNT(*) AS ne_canTotEstPorCiu
FROM tbm_estudiantes
GROUP BY co_ciu
ORDER BY co_ciu;

--¿Cuántos estudiantes por ciudad hay?
SELECT a2.tx_nom, COUNT(*) AS ne_canTotEstPorCiu
FROM tbm_estudiantes AS a1
INNER JOIN tbm_ciudades AS a2 ON (a1.co_ciu=a2.co_ciu)
GROUP BY a2.tx_nom
ORDER BY a2.tx_nom;

--¿Cuántos estudiantes por ciudad hay?
SELECT a2.tx_nom, COUNT(a1.co_est) AS ne_canTotEstPorCiu
FROM tbm_estudiantes AS a1
INNER JOIN tbm_ciudades AS a2 ON (a1.co_ciu=a2.co_ciu)
GROUP BY a2.tx_nom
ORDER BY a2.tx_nom;

SELECT * FROM tbm_estudiantes

--Obtener el menor de los códigos de estudiante.
SELECT MIN(co_est)
FROM tbm_estudiantes;

--Obtener el mayor de los códigos de estudiante.
SELECT MAX(co_est)
FROM tbm_estudiantes;

--Obtener el mayor de los códigos de estudiantes de Quito.
SELECT MAX(co_est)
FROM tbm_estudiantes
WHERE co_ciu=2; --2=Quito
--Pruebas de verificación:
SELECT * FROM tbm_ciudades
SELECT * FROM tbm_estudiantes WHERE co_ciu=2

--¿Cuál es el mayor código de estudiante por ciudad?
SELECT a2.tx_nom, MAX(a1.co_est) AS ne_mayCodEstPorCiu
FROM tbm_estudiantes AS a1
INNER JOIN tbm_ciudades AS a2 ON (a1.co_ciu=a2.co_ciu)
GROUP BY a2.tx_nom
ORDER BY a2.tx_nom;

--Obtener la fecha de nacimiento del mayor de los estudiantes.
SELECT MIN(fe_nac)
FROM tbm_estudiantes;

--Obtener la fecha de nacimiento del mayor de los estudiantes.
SELECT 'El mayor de los estudiantes nació el ' + CAST(MIN(fe_nac) AS VARCHAR)
FROM tbm_estudiantes;


--Obtener el estudiante que tiene la mayor edad.
SELECT a1.co_est, a1.tx_nom, a1.tx_ape, a1.fe_nac
FROM tbm_estudiantes AS a1
WHERE a1.fe_nac=(SELECT MIN(fe_nac) FROM tbm_estudiantes)
ORDER BY a1.co_est;

--Obtener las veces que se repite el nombre del estudiante
--ordenado  por las veces que se repite descendentemente.
SELECT tx_nom, COUNT(tx_nom)
FROM tbm_estudiantes
GROUP BY tx_nom
ORDER BY COUNT(tx_nom) DESC;

--Obtener las veces que se repite el nombre del estudiante
--ordenado  por las veces que se repite descendentemente
--Sólo presentar los que se repiten (>=2 veces).
SELECT tx_nom, COUNT(tx_nom)
FROM tbm_estudiantes
GROUP BY tx_nom
HAVING COUNT(tx_nom)>=2
ORDER BY COUNT(tx_nom) DESC;






