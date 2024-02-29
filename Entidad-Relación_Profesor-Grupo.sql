-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relación_Profesor-Grupo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relación_Profesor-Grupo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relación_Profesor-Grupo` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relación_Profesor-Grupo` ;

-- -----------------------------------------------------
-- Table `Entidad-Relación_Profesor-Grupo`.`P-G`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Profesor-Grupo`.`P-G` (
  `Grupos alumnos_Cod-grupo` INT NOT NULL,
  `Año academico` INT NOT NULL,
  PRIMARY KEY (`Grupos alumnos_Cod-grupo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Profesor-Grupo`.`Profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Profesor-Grupo`.`Profesor` (
  `Cod_profesor` INT NOT NULL,
  `Nif` VARCHAR(45) NOT NULL,
  `Primer nombre` VARCHAR(45) NOT NULL,
  `Segundo nombre` VARCHAR(45) NOT NULL,
  `Prmer apellido` VARCHAR(45) NOT NULL,
  `Segundo apellido` VARCHAR(45) NOT NULL,
  `P-G_Grupos alumnos_Cod-grupo` INT NOT NULL,
  PRIMARY KEY (`Cod_profesor`, `P-G_Grupos alumnos_Cod-grupo`),
  INDEX `fk_Profesor_P-G1_idx` (`P-G_Grupos alumnos_Cod-grupo` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Profesor-Grupo`.`Grupo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Profesor-Grupo`.`Grupo` (
  `Cod-grupo` INT NOT NULL,
  `Curso` INT NOT NULL,
  `P-G_Grupos alumnos_Cod-grupo` INT NOT NULL,
  PRIMARY KEY (`Cod-grupo`, `P-G_Grupos alumnos_Cod-grupo`),
  INDEX `fk_Grupo_P-G1_idx` (`P-G_Grupos alumnos_Cod-grupo` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
