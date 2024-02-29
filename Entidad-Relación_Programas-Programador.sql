-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relación_Programas-Programador
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relación_Programas-Programador
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relación_Programas-Programador` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relación_Programas-Programador` ;

-- -----------------------------------------------------
-- Table `Entidad-Relación_Programas-Programador`.`PROGRAMA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Programas-Programador`.`PROGRAMA` (
  `cod_programa` INT NOT NULL,
  `lenguaje` VARCHAR(20) NULL,
  `sistema-operativo` VARCHAR(15) NULL,
  `fecha-terminacion` DATETIME NULL,
  PRIMARY KEY (`cod_programa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Programas-Programador`.`PROGRAMADOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Programas-Programador`.`PROGRAMADOR` (
  `nombre_programador` VARCHAR(30) NOT NULL,
  `nombre_2` VARCHAR(15) NULL,
  `apellido_1` VARCHAR(15) NULL,
  `apellido_2` VARCHAR(15) NULL,
  `PROGRAMA_cod_programa` INT NOT NULL,
  PRIMARY KEY (`nombre_programador`),
  INDEX `fk_PROGRAMADOR_PROGRAMA_idx` (`PROGRAMA_cod_programa` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
