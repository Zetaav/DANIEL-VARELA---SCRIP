CREACION DE TABLAS

CREATE SCHEMA `EQUIPOS_ESPORTS`;

USE EQUIPOS_ESPORTS;


-- TABLA ANALISTAS --

CREATE TABLE `ANALISTAS`(
`id_nick_A` VARCHAR(30) NOT NULL UNIQUE,
`nombre` VARCHAR(30) NOT NULL,
`edad` INT NOT NULL,
`nacion` VARCHAR(30) NOT NULL,
`fecha_nacimiento` DATETIME NOT NULL,
`fecha_entrada` DATETIME,
`fecha_salida` DATETIME,
`activo` BOOLEAN NOT NULL,
PRIMARY KEY (`id_nick_A`)
);

-- TABLA COACHES --

CREATE TABLE `COACHES`(
`id_nick_C` VARCHAR(30) NOT NULL UNIQUE, 
`nombre` VARCHAR(30) NOT NULL,
`edad` INT NOT NULL,
`nacion` VARCHAR(30) NOT NULL,
`fecha_nacimiento` DATETIME NOT NULL,
`fecha_entrada` DATETIME,
`fecha_salida` DATETIME,
`activo` BOOLEAN NOT NULL,
PRIMARY KEY (`id_nick_C`)
);

-- TABLA MANAGERS --

CREATE TABLE `MANAGERS`(
`id_nick_M` VARCHAR(30) NOT NULL UNIQUE,
`nombre` VARCHAR(30) NOT NULL,
`edad` INT NOT NULL,
`nacion` VARCHAR(30) NOT NULL,
`fecha_nacimiento` DATETIME NOT NULL,
`fecha_entrada` DATETIME,
`fecha_salida` DATETIME,
`activo` BOOLEAN NOT NULL,
PRIMARY KEY (`id_nick_M`)
);

-- TABLA FUNDADORES -- 

CREATE TABLE `FUNDADORES`(
`id_nick_F` VARCHAR(30) NOT NULL UNIQUE,
`nombre` VARCHAR(30) NOT NULL,
`edad` INT NOT NULL,
`nacion` VARCHAR(30) NOT NULL,
`fecha_nacimiento` DATETIME NOT NULL,
`fecha_entrada` DATETIME,
`fecha_salida` DATETIME,
`activo` BOOLEAN NOT NULL,
PRIMARY KEY (`id_nick_F`)
);

-- TABLA JUGADORES --

CREATE TABLE `JUGADORES` (
`id_nick_P` VARCHAR(30) NOT NULL UNIQUE,
`id_nick_manager` VARCHAR(30) UNIQUE,
`id_nick_coach` VARCHAR(30) UNIQUE,
`nombre_torneo` VARCHAR(30) NOT NULL,
`nombre` VARCHAR(30) NOT NULL,
`edad` INT NOT NULL,
`nacion` VARCHAR(30) NOT NULL,
`ingreso` INT(20),
`rol` VARCHAR(39) NOT NULL,
`fecha_nacimiento` DATETIME NOT NULL,
`fecha_entrada` DATETIME,
`fecha_salida` DATETIME,
`activo` BOOLEAN NOT NULL,
PRIMARY KEY (`id_nick_P`),
FOREIGN KEY (`id_nick_manager`) REFERENCES Managers(`id_nick_M`),
FOREIGN KEY (`id_nick_coach`) REFERENCES Coaches(`id_nick_C`)
);

-- TABLA TORNEOS --

CREATE TABLE `TORNEOS` (
`id_tournament` VARCHAR(30) NOT NULL UNIQUE,
`tier` VARCHAR(30) NOT NULL,
`tipo` VARCHAR(30) NOT NULL,
`fecha` DATETIME NOT NULL,
`resultado` VARCHAR(30) NOT NULL,
`premio` INT(30),
`sede` VARCHAR(30),
PRIMARY KEY (`id_tournament`)
);

-- TABLA EQUIPOS --

CREATE TABLE `EQUIPOS` (
`id_nombre_oficial` VARCHAR(30) NOT NULL UNIQUE,
`id_nick_fundador` VARCHAR(30) NOT NULL UNIQUE,
`fecha_fundacion` DATETIME NOT NULL,
`sede` VARCHAR(30) NOT NULL,
`region` VARCHAR(30) NOT NULL,
`ingresos` INT(30) NOT NULL,
`activo` BOOLEAN NOT NULL,
PRIMARY KEY (`id_nombre_oficial`),
FOREIGN KEY (`id_nick_fundador`) REFERENCES Fundadores(`id_nick_F`)
);

