-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Medico-Paciente
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Medico-Paciente
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relacion_Medico-Paciente` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relacion_Medico-Paciente` ;

-- -----------------------------------------------------
-- Table `Entidad-Relacion_Medico-Paciente`.`CITA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Medico-Paciente`.`CITA` (
  `PACIENTE_codpac` INT NOT NULL,
  `fecha_cita` DATETIME NOT NULL,
  `hora_cita` DATETIME NOT NULL,
  PRIMARY KEY (`PACIENTE_codpac`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relacion_Medico-Paciente`.`MEDICO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Medico-Paciente`.`MEDICO` (
  `codmed` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `CITA_PACIENTE_codpac` INT NOT NULL,
  PRIMARY KEY (`codmed`, `CITA_PACIENTE_codpac`),
  INDEX `fk_MEDICO_CITA1_idx` (`CITA_PACIENTE_codpac` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relacion_Medico-Paciente`.`PACIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Medico-Paciente`.`PACIENTE` (
  `codpac` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `CITA_PACIENTE_codpac` INT NOT NULL,
  PRIMARY KEY (`codpac`, `CITA_PACIENTE_codpac`),
  INDEX `fk_PACIENTE_CITA1_idx` (`CITA_PACIENTE_codpac` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
