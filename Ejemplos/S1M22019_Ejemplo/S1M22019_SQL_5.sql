SELECT * FROM tbm_estudiantes ORDER BY co_est;

UPDATE tbm_estudiantes SET co_ciu=NULL
WHERE co_est=5 OR co_est=10 OR co_est=15;

--¿Por qué no se lo hace con AND?
--UPDATE tbm_estudiantes SET co_ciu=NULL
--WHERE co_est=5 AND co_est=10 AND co_est=15;

--Otra forma de hacerlo en lugar de utilizar OR.
UPDATE tbm_estudiantes SET co_ciu=NULL
WHERE co_est IN (5, 10, 15);

--INNER JOIN implícito.
--Forma 1:
SELECT tbm_ciudades.tx_nom, tbm_estudiantes.co_est
, tbm_estudiantes.tx_nom, tbm_estudiantes.tx_ape
FROM tbm_ciudades, tbm_estudiantes
WHERE tbm_ciudades.co_ciu=tbm_estudiantes.co_ciu
ORDER BY tbm_ciudades.tx_nom, tbm_estudiantes.co_est;

--Forma 2:
SELECT tbm_ciudades.tx_nom, co_est
, tbm_estudiantes.tx_nom, tx_ape
FROM tbm_ciudades, tbm_estudiantes
WHERE tbm_ciudades.co_ciu=tbm_estudiantes.co_ciu
ORDER BY tbm_ciudades.tx_nom, co_est;

--Forma 3:
SELECT c.tx_nom, e.co_est
, e.tx_nom, e.tx_ape
FROM tbm_ciudades AS c, tbm_estudiantes AS e
WHERE c.co_ciu=e.co_ciu
ORDER BY c.tx_nom, e.co_est;

--Forma 4:
SELECT c.tx_nom, e.co_est
, e.tx_nom, e.tx_ape
FROM tbm_ciudades c, tbm_estudiantes e
WHERE c.co_ciu=e.co_ciu
ORDER BY c.tx_nom, e.co_est;

--Forma 5:
SELECT a1.tx_nom, a2.co_est
, a2.tx_nom, a2.tx_ape
FROM tbm_ciudades AS a1, tbm_estudiantes AS a2
WHERE a1.co_ciu=a2.co_ciu
ORDER BY a1.tx_nom, a2.co_est;

--Alias en campos:
SELECT a1.tx_nom AS tx_nomCiu, a2.co_est
, a2.tx_nom, a2.tx_ape
FROM tbm_ciudades AS a1, tbm_estudiantes AS a2
WHERE a1.co_ciu=a2.co_ciu
ORDER BY a1.tx_nom, a2.co_est;

--Intercambiar el orden de las tablas relacionadas.
SELECT a2.tx_nom AS tx_nomCiu, a1.co_est
, a1.tx_nom, a1.tx_ape
FROM tbm_estudiantes AS a1, tbm_ciudades AS a2
WHERE a1.co_ciu=a2.co_ciu
ORDER BY a2.tx_nom, a1.co_est;

--INNER JOIN explícito.
--Forma 1:
SELECT a1.tx_nom AS tx_nomCiu, a2.co_est
, a2.tx_nom, a2.tx_ape
FROM tbm_ciudades AS a1
INNER JOIN tbm_estudiantes AS a2 ON a1.co_ciu=a2.co_ciu
ORDER BY a1.tx_nom, a2.co_est;

--Forma 2:
SELECT a1.tx_nom AS tx_nomCiu, a2.co_est
, a2.tx_nom, a2.tx_ape
FROM tbm_ciudades AS a1
INNER JOIN tbm_estudiantes AS a2 ON (a1.co_ciu=a2.co_ciu)
ORDER BY a1.tx_nom, a2.co_est;

--LEFT OUTER JOIN.
SELECT a1.tx_nom AS tx_nomCiu, a2.co_est
, a2.tx_nom, a2.tx_ape
FROM tbm_ciudades AS a1
LEFT OUTER JOIN tbm_estudiantes AS a2 ON (a1.co_ciu=a2.co_ciu)
ORDER BY a1.tx_nom, a2.co_est;

--LEFT JOIN.
SELECT a1.tx_nom AS tx_nomCiu, a2.co_est
, a2.tx_nom, a2.tx_ape
FROM tbm_ciudades AS a1
LEFT JOIN tbm_estudiantes AS a2 ON (a1.co_ciu=a2.co_ciu)
ORDER BY a1.tx_nom, a2.co_est;

--RIGHT OUTER JOIN.
SELECT a1.tx_nom AS tx_nomCiu, a2.co_est
, a2.tx_nom, a2.tx_ape
FROM tbm_ciudades AS a1
RIGHT OUTER JOIN tbm_estudiantes AS a2 ON (a1.co_ciu=a2.co_ciu)
ORDER BY a1.tx_nom, a2.co_est;

--FULL OUTER JOIN.
SELECT a1.tx_nom AS tx_nomCiu, a2.co_est
, a2.tx_nom, a2.tx_ape
FROM tbm_ciudades AS a1
FULL OUTER JOIN tbm_estudiantes AS a2 ON (a1.co_ciu=a2.co_ciu)
ORDER BY a1.tx_nom, a2.co_est;

--INNER JOIN con 3 tablas.
SELECT a3.tx_nom AS tx_nomPai
, a1.tx_nom AS tx_nomCiu, a2.co_est
, a2.tx_nom, a2.tx_ape
FROM tbm_ciudades AS a1
INNER JOIN tbm_estudiantes AS a2 ON (a1.co_ciu=a2.co_ciu)
INNER JOIN tbm_paises AS a3 ON (a1.co_pai=a3.co_pai)
ORDER BY a3.tx_nom, a1.tx_nom, a2.co_est;

--INNER JOIN con 3 tablas.
SELECT a3.tx_nom AS tx_nomPai
, a1.tx_nom AS tx_nomCiu, a2.co_est
, a2.tx_nom + ' ' + a2.tx_ape
FROM tbm_ciudades AS a1
INNER JOIN tbm_estudiantes AS a2 ON (a1.co_ciu=a2.co_ciu)
INNER JOIN tbm_paises AS a3 ON (a1.co_pai=a3.co_pai)
ORDER BY a3.tx_nom, a1.tx_nom, a2.co_est;


