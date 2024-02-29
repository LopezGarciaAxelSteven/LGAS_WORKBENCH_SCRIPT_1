-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Empleado-Vehiculo_Numero_Uno
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Empleado-Vehiculo_Numero_Uno
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relacion_Empleado-Vehiculo_Numero_Uno` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relacion_Empleado-Vehiculo_Numero_Uno` ;

-- -----------------------------------------------------
-- Table `Entidad-Relacion_Empleado-Vehiculo_Numero_Uno`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Empleado-Vehiculo_Numero_Uno`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido_1` VARCHAR(45) NULL,
  `apellido_2` VARCHAR(45) NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relacion_Empleado-Vehiculo_Numero_Uno`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Empleado-Vehiculo_Numero_Uno`.`VEHÍCULO` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  `fecha_inicio_dia` DATE NULL,
  `fecha_inicio_mes` DATE NULL,
  `fecha_inicio_año` DATE NULL,
  `codemp` INT NOT NULL,
  PRIMARY KEY (`matricula`),
  INDEX `codemp_idx` (`codemp` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
