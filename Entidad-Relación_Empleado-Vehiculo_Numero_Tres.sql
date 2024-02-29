-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Empleado-Vehiculo_Numero_Tres
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Empleado-Vehiculo_Numero_Tres
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relacion_Empleado-Vehiculo_Numero_Tres` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relacion_Empleado-Vehiculo_Numero_Tres` ;

-- -----------------------------------------------------
-- Table `Entidad-Relacion_Empleado-Vehiculo_Numero_Tres`.`CONDUCE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Empleado-Vehiculo_Numero_Tres`.`CONDUCE` (
  `fecha_inicio_dia` DATE NULL,
  `fecha_inicio_mes` DATE NULL,
  `fecha_inicio_año` DATE NULL,
  `EMPLEADO_codemp` INT NOT NULL,
  PRIMARY KEY (`EMPLEADO_codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relacion_Empleado-Vehiculo_Numero_Tres`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Empleado-Vehiculo_Numero_Tres`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido_1` VARCHAR(45) NULL,
  `apellido_2` VARCHAR(45) NULL,
  `CONDUCE_EMPLEADO_codemp` INT NOT NULL,
  PRIMARY KEY (`codemp`, `CONDUCE_EMPLEADO_codemp`),
  INDEX `fk_EMPLEADO_CONDUCE1_idx` (`CONDUCE_EMPLEADO_codemp` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relacion_Empleado-Vehiculo_Numero_Tres`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Empleado-Vehiculo_Numero_Tres`.`VEHÍCULO` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  `CONDUCE_EMPLEADO_codemp` INT NOT NULL,
  PRIMARY KEY (`matricula`, `CONDUCE_EMPLEADO_codemp`),
  INDEX `fk_VEHÍCULO_CONDUCE1_idx` (`CONDUCE_EMPLEADO_codemp` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
