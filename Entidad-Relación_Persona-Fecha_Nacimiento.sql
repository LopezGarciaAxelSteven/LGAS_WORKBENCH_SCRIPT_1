-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relación_Persona-Fecha_Nacimiento
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relación_Persona-Fecha_Nacimiento
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relación_Persona-Fecha_Nacimiento` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relación_Persona-Fecha_Nacimiento` ;

-- -----------------------------------------------------
-- Table `Entidad-Relación_Persona-Fecha_Nacimiento`.`FECHA DE NACIMIENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Persona-Fecha_Nacimiento`.`FECHA DE NACIMIENTO` (
  `dia_nacimiento` INT NOT NULL,
  `mes_nacimiento` VARCHAR(45) NULL,
  `año_nacimiento` VARCHAR(45) NULL,
  PRIMARY KEY (`dia_nacimiento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Persona-Fecha_Nacimiento`.`PERSONA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Persona-Fecha_Nacimiento`.`PERSONA` (
  `nombre` INT NOT NULL,
  `apellido_1` VARCHAR(45) NULL,
  `apellido_2` VARCHAR(45) NULL,
  `dni` INT NOT NULL,
  `edad` VARCHAR(45) NULL,
  `FECHA DE NACIMIENTO_dia_nacimiento` INT NOT NULL,
  PRIMARY KEY (`nombre`, `dni`),
  INDEX `fk_PERSONA_FECHA DE NACIMIENTO_idx` (`FECHA DE NACIMIENTO_dia_nacimiento` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
