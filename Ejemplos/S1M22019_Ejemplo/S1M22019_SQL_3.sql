--Consultar los datos de una tabla.
SELECT * FROM tbm_ciudades;

--Insertar registros.
INSERT INTO tbm_ciudades
VALUES (1, 'Guayaquil', 'A');

INSERT INTO tbm_ciudades
VALUES (2, 'Quito', 'I');

INSERT INTO tbm_ciudades(co_ciu, tx_nom, st_reg)
VALUES (3, 'Manta', 'A');

INSERT INTO tbm_ciudades(st_reg, co_ciu, tx_nom)
VALUES ('A', 4, 'Santo Domingo');

INSERT INTO tbm_ciudades(co_ciu, tx_nom)
VALUES (5, 'Esmeraldas');

INSERT INTO tbm_ciudades(co_ciu, tx_nom, st_reg)
VALUES (6, 'Machala', 'A')
, (7, 'Milagro', 'A')
, (8, 'Daule', 'A')
, (9, 'Durán', 'A');

INSERT INTO tbm_ciudades(co_ciu, tx_nom, st_reg)
VALUES (10, 'Cuenca', 'A')
, (11, 'Ambato', 'I')
, (12, 'Latacunga', 'A')
, (13, 'Azogues', 'I')
, (14, 'Jipijapa', 'I')
, (15, 'Riobamba', 'A')
;

--Eliminar registros.
DELETE FROM tbm_ciudades;

DELETE FROM tbm_ciudades WHERE co_ciu=5;

DELETE FROM tbm_ciudades WHERE co_ciu IN(2, 4, 6, 8);

DELETE FROM tbm_ciudades WHERE tx_nom='Guayaquil';

--Consultar los datos de una tabla.
SELECT * FROM tbm_ciudades;

SELECT * FROM tbm_ciudades ORDER BY co_ciu;

SELECT * FROM tbm_ciudades ORDER BY co_ciu DESC;

SELECT * FROM tbm_ciudades ORDER BY tx_nom ASC;

SELECT * FROM tbm_ciudades ORDER BY st_reg, tx_nom;

SELECT * FROM tbm_ciudades ORDER BY st_reg, tx_nom DESC;




