SELECT * FROM tbm_ciudades;

--Agregar un campo en una tabla.
ALTER TABLE tbm_ciudades
ADD co_pai SMALLINT;

--Eliminar un campo en una tabla.
ALTER TABLE tbm_ciudades
DROP COLUMN co_pai;

ALTER TABLE tbm_ciudades
DROP COLUMN co_ciu;

--Crear una tabla.
CREATE TABLE tbm_paises(
	co_pai SMALLINT,
	tx_nom VARCHAR(60),
	st_reg CHAR(1) DEFAULT 'A',
	CONSTRAINT PK_tbm_paises PRIMARY KEY (co_pai)
);

--Agregar clave foránea.
ALTER TABLE tbm_ciudades
ADD CONSTRAINT FK_tbm_ciudades_tbm_paises
FOREIGN KEY (co_pai) REFERENCES tbm_paises(co_pai);

--Insertar datos en la tabla paises.
INSERT INTO tbm_paises(co_pai, tx_nom, st_reg)
VALUES (1, 'Ecuador', 'A')
, (2, 'Colombia', 'A')
, (3, 'Argentina', 'A')
, (4, 'Brasil', 'A')
, (5, 'Uruguay', 'A')
, (6, 'Bolivia', 'A')
;

SELECT * FROM tbm_paises;
SELECT * FROM tbm_ciudades;

--Actualizar campos de una tabla.
UPDATE tbm_ciudades
SET co_pai=1;

UPDATE tbm_ciudades
SET co_pai=NULL;

UPDATE tbm_ciudades
SET co_pai=1
WHERE st_reg='A';

UPDATE tbm_ciudades
SET co_pai=2
WHERE st_reg='I';

UPDATE tbm_ciudades
SET co_pai=1
WHERE st_reg='I';


SELECT * FROM tbm_estudiantes;

--Insertar datos en la tabla estudiantes.
INSERT INTO tbm_estudiantes(co_est, tx_tipIde, tx_ide, tx_nom, tx_ape, fe_nac, co_ciu, st_sex, st_reg)
VALUES (1, 'C', '0911111111', 'Ana', 'Medina',  '2000/03/02', 1, 'F', 'A')
, (2, 'C', '0922222222', 'María', 'García',     '1999/04/04', 2, 'F', 'A')
, (3, 'C', '0933333333', 'Pedro', 'Mendieta',   '1998/05/06', 3, 'M', 'A')
, (4, 'C', '0944444444', 'Carlos', 'Lino',      '1997/06/08', 4, 'M', 'A')
, (5, 'C', '0955555555', 'Juan', 'Toala',       '1996/07/10', 5, 'M', 'A')
, (6, 'C', '0966666666', 'Sara', 'Duarte',      '1995/08/12', 6, 'F', 'A')
, (7, 'C', '0977777777', 'Ana', 'Montoya',      '1996/09/14', 7, 'F', 'A')
, (8, 'C', '0988888888', 'Kevin', 'Mantilla',   '1997/10/16', 8, 'M', 'A')
, (9, 'C', '0999999999', 'Bryan', 'Zambrano',   '1998/11/18', 9, 'M', 'A')
, (10, 'C', '0910101010', 'Claudia', 'Guzmán',  '1999/12/20', 8, 'F', 'A')
, (11, 'P', '0811111111', 'Consuelo', 'Pérez',  '2000/11/22', 7, 'F', 'A')
, (12, 'C', '0912121212', 'Diana', 'Pulido',    '2001/10/24', 6, 'F', 'A')
, (13, 'C', '0913131313', 'Ana', 'Vargas',      '2002/09/26', 5, 'F', 'A')
, (14, 'C', '0914141414', 'Ana', 'Ramirez',     '2003/08/28', 4, 'F', 'A')
, (15, 'C', '0915151515', 'Diego', 'Bautista',  '2004/07/30', 3, 'M', 'A')
, (16, 'C', '0916161616', 'Elizabeth', 'Navarrete', '2005/06/01', 2, 'F', 'A')
, (17, 'C', '0917171717', 'David', 'Lozada',    '2000/05/02', 1, 'M', 'A')
, (18, 'C', '0918181818', 'Fabiana', 'Vanegas', '2000/04/03', 3, 'F', 'A')
, (19, 'C', '0919191919', 'Jesús', 'Reyes',     '2002/03/04', 3, 'M', 'A')
, (20, 'C', '0920202020', 'Jorge', 'Medina',    '2002/02/05', 3, 'M', 'A')
, (21, 'C', '0921212121', 'Juan', 'Medina',     '2002/01/06', 4, 'M', 'A')
, (22, 'P', '0822222222', 'Karen', 'Cárdenas',  '2001/02/07', 4, 'F', 'A')
, (23, 'C', '0923232323', 'Laura', 'Medina',    '2001/03/08', 4, 'F', 'A')
, (24, 'C', '0924242424', 'Leonor', 'Iglesias', '2000/04/09', 1, 'F', 'A')
, (25, 'C', '0925252525', 'Lina', 'Torres',     '2000/05/10', 1, 'F', 'A')
;


SELECT * FROM tbm_estudiantes;

SELECT co_est, tx_ide, tx_nom, tx_ape FROM tbm_estudiantes;

SELECT st_reg, * FROM tbm_estudiantes;

SELECT *, co_est FROM tbm_estudiantes;

SELECT * FROM tbm_estudiantes ORDER BY fe_nac;

SELECT * FROM tbm_estudiantes ORDER BY st_sex;

SELECT * FROM tbm_estudiantes ORDER BY st_sex, fe_nac;

SELECT TOP 3 * FROM tbm_estudiantes ORDER BY st_sex, fe_nac;
