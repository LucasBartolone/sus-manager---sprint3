/*-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SUS_Manager
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SUS_Manager
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SUS_Manager` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci ;
USE `SUS_Manager` ;

-- -----------------------------------------------------
-- Table `SUS_Manager`.`plataforma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SUS_Manager`.`plataforma` (
  `idplataforma` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `importe` DECIMAL(10,2) NOT NULL,
  `facturacion` VARCHAR(10) NOT NULL,
  `notificaciones` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idplataforma`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SUS_Manager`.`perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SUS_Manager`.`perfil` (
  `idperfil` INT NOT NULL AUTO_INCREMENT,
  `nombre_usuario` VARCHAR(45) NOT NULL,
  `contraseña` VARCHAR(45) NOT NULL,
  `plataforma_idplataforma` INT DEFAULT NULL,
  PRIMARY KEY (`idperfil`),
  INDEX `fk_perfil_plataforma1_idx` (`plataforma_idplataforma` ASC) VISIBLE,
  CONSTRAINT `fk_perfil_plataforma1`
    FOREIGN KEY (`plataforma_idplataforma`)
    REFERENCES `SUS_Manager`.`plataforma` (`idplataforma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SUS_Manager`.`contacto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SUS_Manager`.`contacto` (
  `idcontacto` INT NOT NULL AUTO_INCREMENT,
  `mensaje` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idcontacto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SUS_Manager`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SUS_Manager`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `fecha_nacimiento` DATE NOT NULL,
  `perfil_idperfil` INT DEFAULT NULL,
  `contacto_idcontacto` INT NULL,
  PRIMARY KEY (`idUsuario`),
  INDEX `fk_Usuario_perfil_idx` (`perfil_idperfil` ASC) VISIBLE,
  INDEX `fk_Usuario_contacto1_idx` (`contacto_idcontacto` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_perfil`
    FOREIGN KEY (`perfil_idperfil`)
    REFERENCES `SUS_Manager`.`perfil` (`idperfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_contacto1`
    FOREIGN KEY (`contacto_idcontacto`)
    REFERENCES `SUS_Manager`.`contacto` (`idcontacto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;*/


/*INSERT INTO `sus_manager`.`USUARIO` (`nombre`, `apellido`, `email`, `telefono`, `fecha_nacimiento`) 
VALUES ('Lucas', 'Bartolone', 'lucasbartolone@gmail.com', '154783741', '1999/01/05');
INSERT INTO `sus_manager`.`USUARIO` (`nombre`, `apellido`, `email`, `telefono`, `fecha_nacimiento`) 
VALUES ('Maria Jose', 'Hiramatsu', 'majitohiramatsu@gmail.com', '157737900', '1987-06-06');
INSERT INTO `sus_manager`.`USUARIO` (`nombre`, `apellido`, `email`, `telefono`, `fecha_nacimiento`) 
VALUES ('Juan', 'Alvarez', 'juanalvarez88@gmail.com', '156665500', '1988-11-05');*/

/*INSERT INTO `sus_manager`.`perfil` (`nombre_usuario`, `contraseña`) VALUES ('lucasb01', 'legendario');
INSERT INTO `sus_manager`.`perfil` (`nombre_usuario`, `contraseña`) VALUES ('majo88', 'got5x08');
INSERT INTO `sus_manager`.`perfil` (`nombre_usuario`, `contraseña`) VALUES ('juan', '123456');*/

/*UPDATE `sus_manager`.`usuario` SET `perfil_idperfil` = '1' WHERE (`idUsuario` = '1');
UPDATE `sus_manager`.`usuario` SET `perfil_idperfil` = '2' WHERE (`idUsuario` = '2');
UPDATE `sus_manager`.`usuario` SET `perfil_idperfil` = '3' WHERE (`idUsuario` = '3');*/

/*INSERT INTO `sus_manager`.`plataforma` (`nombre`, `importe`, `facturacion`, `notificaciones`) 
VALUES ('Netflix', '100.00', '20 dias', '1');
INSERT INTO `sus_manager`.`plataforma` (`nombre`, `importe`, `facturacion`, `notificaciones`) 
VALUES ('ParamountPlus', '150.00', '20 dias', '0');
INSERT INTO `sus_manager`.`plataforma` (`nombre`, `importe`, `facturacion`, `notificaciones`) 
VALUES ('HBOmax', '200.00', '30 dias', '1');
INSERT INTO `sus_manager`.`plataforma` (`nombre`, `importe`, `facturacion`, `notificaciones`) 
VALUES ('DisneytPlus', '250.00', '20 dias', '1');
INSERT INTO `sus_manager`.`plataforma` (`nombre`, `importe`, `facturacion`, `notificaciones`) 
VALUES ('Spotify', '240.00', '30 dias', '1');
INSERT INTO `sus_manager`.`plataforma` (`nombre`, `importe`, `facturacion`, `notificaciones`) 
VALUES ('YouTube', '175.00', '30 dias', '0');*/

/*UPDATE `sus_manager`.`perfil` SET `plataforma_idplataforma` = '5' WHERE (`idperfil` = '1');
UPDATE `sus_manager`.`perfil` SET `plataforma_idplataforma` = '4' WHERE (`idperfil` = '2');
UPDATE `sus_manager`.`perfil` SET `plataforma_idplataforma` = '1' WHERE (`idperfil` = '3');*/

/*select * from perfil
where nombre_usuario = 'juan' and contraseña = 123456;*/

/*UPDATE `sus_manager`.`plataforma` SET `nombre` = 'DisneyPlus' WHERE (`idplataforma` = '5');
DELETE FROM `sus_manager`.`plataforma` WHERE (`idplataforma` = '3');*/