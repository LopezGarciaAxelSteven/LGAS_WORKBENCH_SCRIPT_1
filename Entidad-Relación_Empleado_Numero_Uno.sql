-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Empleado_Numero_Uno
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relacion_Empleado_Numero_Uno
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relacion_Empleado_Numero_Uno` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relacion_Empleado_Numero_Uno` ;

-- -----------------------------------------------------
-- Table `Entidad-Relacion_Empleado_Numero_Uno`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relacion_Empleado_Numero_Uno`.`EMPLEADO` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NULL,
  `Apellido2` VARCHAR(45) NULL,
  `Departamento` VARCHAR(45) NULL,
  `Nif_esresponsable` INT NOT NULL,
  `Nif_tienereponsable` INT NOT NULL,
  PRIMARY KEY (`Nif_esresponsable`, `Nif_tienereponsable`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
