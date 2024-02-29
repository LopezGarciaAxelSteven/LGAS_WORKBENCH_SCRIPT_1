-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Persona-Piso
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Persona-Piso
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relacion_Persona-Piso` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relacion_Persona-Piso` ;

-- -----------------------------------------------------
-- Table `Entidad-Relacion_Persona-Piso`.`P-P`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Persona-Piso`.`P-P` (
  `Piso_Cod-Piso` INT NOT NULL,
  `Precio_Alquiler` VARCHAR(45) NULL,
  PRIMARY KEY (`Piso_Cod-Piso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relacion_Persona-Piso`.`Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Persona-Piso`.`Persona` (
  `Nif` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `P-P_Piso_Cod-Piso` INT NOT NULL,
  PRIMARY KEY (`Nif`, `P-P_Piso_Cod-Piso`),
  INDEX `fk_Persona_P-P1_idx` (`P-P_Piso_Cod-Piso` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relacion_Persona-Piso`.`Piso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Persona-Piso`.`Piso` (
  `Cod-Piso` INT NOT NULL,
  `Calle` VARCHAR(45) NOT NULL,
  `Número` VARCHAR(45) NULL,
  `Planta` VARCHAR(45) NULL,
  `Puerta` VARCHAR(45) NULL,
  `P-P_Piso_Cod-Piso` INT NOT NULL,
  PRIMARY KEY (`Cod-Piso`, `P-P_Piso_Cod-Piso`),
  INDEX `fk_Piso_P-P1_idx` (`P-P_Piso_Cod-Piso` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
