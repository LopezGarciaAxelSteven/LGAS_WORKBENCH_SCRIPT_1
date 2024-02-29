-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Persona-DNI
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Persona-DNI
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relacion_Persona-DNI` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relacion_Persona-DNI` ;

-- -----------------------------------------------------
-- Table `Entidad-Relacion_Persona-DNI`.`DNI`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Persona-DNI`.`DNI` (
  `Num-dni` INT NOT NULL,
  PRIMARY KEY (`Num-dni`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relacion_Persona-DNI`.`PERSONA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Persona-DNI`.`PERSONA` (
  `nombre` VARCHAR(20) NOT NULL,
  `apellido1` VARCHAR(15) NOT NULL,
  `apellido2` VARCHAR(15) NOT NULL,
  `DNI_Num-dni` INT NOT NULL,
  PRIMARY KEY (`DNI_Num-dni`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
