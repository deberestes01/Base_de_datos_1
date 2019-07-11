--Eliminar tabla.
DROP TABLE tbm_ciudades;

--Crear una tabla.
CREATE TABLE tbm_ciudades(
	co_ciu SMALLINT,
	tx_nom VARCHAR(60),
	st_reg CHAR(1) DEFAULT 'A',
	CONSTRAINT PK_tbm_ciudades PRIMARY KEY (co_ciu)
);

--Eliminar constraint.
ALTER TABLE tbm_ciudades DROP CONSTRAINT PK_tbm_ciudades;

--Agregar constraint.
ALTER TABLE tbm_ciudades ADD PRIMARY KEY (co_ciu);

--Agregar constraint.
ALTER TABLE tbm_ciudades DROP CONSTRAINT PK__tbm_ciud__9226867062255C1E;

ALTER TABLE tbm_ciudades
ADD CONSTRAINT PK_tbm_ciudades PRIMARY KEY (co_ciu);



--Crear una tabla.
CREATE TABLE tbm_estudiantes(
	co_est SMALLINT,
	tx_tipIde CHAR(1),
	tx_ide CHAR(13) NOT NULL,
	tx_nom VARCHAR(60) NOT NULL,
	tx_ape VARCHAR(60) NOT NULL,
	fe_nac DATE,
	co_ciu SMALLINT,
	st_sex CHAR(1) DEFAULT 'M',
	st_reg CHAR(1) DEFAULT 'A',
	CONSTRAINT PK_tbm_estudiantes PRIMARY KEY (co_est)
);

--Agregar clave foránea.
ALTER TABLE tbm_estudiantes
ADD FOREIGN KEY (co_ciu) REFERENCES tbm_ciudades(co_ciu);

--Eliminar clave foránea.
ALTER TABLE tbm_estudiantes
DROP CONSTRAINT FK__tbm_estud__co_ci__2E1BDC42;

--Agregar clave foránea.
ALTER TABLE tbm_estudiantes
ADD CONSTRAINT FK_tbm_estudiantes_tbm_ciudades
FOREIGN KEY (co_ciu) REFERENCES tbm_ciudades(co_ciu);








