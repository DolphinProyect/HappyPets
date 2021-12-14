-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Table structure for table `persona`
--

CREATE SCHEMA IF NOT EXISTS `db_persona` DEFAULT CHARACTER SET utf8 ;
use db_persona;


CREATE TABLE IF NOT EXISTS `persona` (
  `id_persona` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL)  
  
ENGINE=InnoDB;



INSERT INTO db_persona.persona (nombre,direccion,telefono,ciudad)VALUES ('Karol','Cra 50','1234','Bogota');
INSERT INTO db_persona.persona (nombre,direccion,telefono,ciudad)VALUES ('Pedro','Cra 50','1234','Bogota');
INSERT INTO db_persona.persona (nombre,direccion,telefono,ciudad)VALUES ('Andrea','Cra 50','1234','Bogota');
INSERT INTO db_persona.persona (nombre,direccion,telefono,ciudad)VALUES ('Michel','Cra 50','1234','Bogota');

UNLOCK TABLES;


SELECT * FROM persona;

DROP TABLE persona;
