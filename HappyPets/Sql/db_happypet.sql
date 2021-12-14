CREATE SCHEMA IF NOT EXISTS `db_happypet` DEFAULT CHARACTER SET utf8 ;
USE `db_happypet` ;

-- -----------------------------------------------------
-- Table `happypet`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_happypet`.`categoria` (	
  `id_categoria` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `descripcion` VARCHAR(20) NOT NULL)  
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `happypet`.`tipo_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_happypet`.`tipo_items` (
  `id_tipo` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `descripcion` VARCHAR(20) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `happypet`.`Items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_happypet`.`items` (
  `fecha_creacion` DATE  COMMENT 'fecha de creación del item', 
  `hora_creacion` TIME  COMMENT  'hora de creación del item',
  `id_articulo` INT AUTO_INCREMENT PRIMARY KEY,
  `nombre_articulo` VARCHAR(80)  COMMENT 'Descripcion corta del item',
  `cantidad_articulos` INT(10)  COMMENT 'cantidad item',		
  `descripcion_item` VARCHAR(150)  COMMENT 'descripcion detallada del item',
 
 `categoria_id_categoria` INT NOT NULL   COMMENT 'cod categoria de mascota',
  `tipo_items_id_tipo` INT NOT NULL COMMENT 'codi tipo item',
 
   
  CONSTRAINT `fk_items_categoria_id_categoria`
    FOREIGN KEY (`categoria_id_categoria`)
    REFERENCES `db_happypet`.`categoria` (`id_categoria`)
    ON DELETE NO ACTION  ON UPDATE NO ACTION,
   CONSTRAINT `fk_items_tipo_items_id_tipo`
    FOREIGN KEY (`tipo_items_id_tipo`)
    REFERENCES `db_happypet`.`tipo_items` (`id_tipo`)
    ON DELETE NO ACTION  ON UPDATE NO ACTION)	

ENGINE = InnoDB;

INSERT INTO db_happypet.categoria(descripcion)VALUES  ('Perro');
INSERT INTO db_happypet.categoria(descripcion)VALUES  ('Gato');
INSERT INTO db_happypet.categoria(descripcion)VALUES  ('Hamster');
INSERT INTO db_happypet.categoria(descripcion)VALUES  ('Conejo');

INSERT INTO db_happypet.tipo_items(descripcion)VALUES  ('Aseo');
INSERT INTO db_happypet.tipo_items(descripcion)VALUES  ('Comida');
INSERT INTO db_happypet.tipo_items(descripcion)VALUES  ('Accesorios');
INSERT INTO db_happypet.tipo_items(descripcion)VALUES  ('Otro');

INSERT INTO db_happypet.items(fecha_creacion,hora_creacion,
nombre_articulo,cantidad_articulos,categoria_id_categoria,tipo_items_id_tipo,descripcion_item)
VALUES  ('2021-10-18','01:25:00', 'Collar',1,1,3,'Collar para perro raza pequeña');


SELECT * FROM db_happypet.categoria;
SELECT * FROM db_happypet.tipo_items;
SELECT * FROM db_happypet.items;