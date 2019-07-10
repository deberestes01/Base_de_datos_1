--Crear base de datos.
CREATE DATABASE dbSistemaAcademico
--Eliminar base de datos.
DROP DATABASE dbSistemaAcademico;
--Eliminar base de datos (No funciona).
DROP DATABASE IF EXISTS dbSistemaAcademico;
--Eliminar base de datos si existe.
IF EXISTS(select * from sys.databases where name='dbSistemaAcademico')
DROP DATABASE dbSistemaAcademico;

--Seleccionar base de datos.
USE dbSistemaAcademico;

--Crear una tabla.
CREATE TABLE tbm_ciudades(
	co_ciu TINYINT PRIMARY KEY,
	tx_nom VARCHAR(60),
	st_reg CHAR(1)
);

--Eliminar tabla.
DROP TABLE tbm_ciudades;

--Crear una tabla.
CREATE TABLE tbm_ciudades(
	co_ciu TINYINT PRIMARY KEY,
	tx_nom VARCHAR(60),
	st_reg CHAR(1) DEFAULT 'A'
);
