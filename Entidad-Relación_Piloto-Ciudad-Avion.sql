-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relación_Piloto-Ciudad-Avion
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relación_Piloto-Ciudad-Avion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relación_Piloto-Ciudad-Avion` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relación_Piloto-Ciudad-Avion` ;

-- -----------------------------------------------------
-- Table `Entidad-Relación_Piloto-Ciudad-Avion`.`P-C-A`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Piloto-Ciudad-Avion`.`P-C-A` (
  `Ciudad_Nombre-Ciudad` INT NOT NULL,
  `Avión_Cod-avión` INT NOT NULL,
  `Fecha` DATETIME NOT NULL,
  PRIMARY KEY (`Ciudad_Nombre-Ciudad`, `Avión_Cod-avión`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Piloto-Ciudad-Avion`.`Piloto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Piloto-Ciudad-Avion`.`Piloto` (
  `Nif` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `P-C-A_Ciudad_Nombre-Ciudad` INT NOT NULL,
  `P-C-A_Avión_Cod-avión` INT NOT NULL,
  PRIMARY KEY (`Nif`, `P-C-A_Ciudad_Nombre-Ciudad`, `P-C-A_Avión_Cod-avión`),
  INDEX `fk_Piloto_P-C-A1_idx` (`P-C-A_Ciudad_Nombre-Ciudad` ASC, `P-C-A_Avión_Cod-avión` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Piloto-Ciudad-Avion`.`Ciudad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Piloto-Ciudad-Avion`.`Ciudad` (
  `Nombre-Ciudad` INT NOT NULL,
  `País` VARCHAR(45) NOT NULL,
  `Número-habitantes` INT NOT NULL,
  `P-C-A_Ciudad_Nombre-Ciudad` INT NOT NULL,
  `P-C-A_Avión_Cod-avión` INT NOT NULL,
  PRIMARY KEY (`Nombre-Ciudad`, `P-C-A_Ciudad_Nombre-Ciudad`, `P-C-A_Avión_Cod-avión`),
  INDEX `fk_Ciudad_P-C-A1_idx` (`P-C-A_Ciudad_Nombre-Ciudad` ASC, `P-C-A_Avión_Cod-avión` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Piloto-Ciudad-Avion`.`Avión`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Piloto-Ciudad-Avion`.`Avión` (
  `Cod-avión` INT NOT NULL,
  `nombre-avión` VARCHAR(45) NOT NULL,
  `número-motores` INT NOT NULL,
  `P-C-A_Ciudad_Nombre-Ciudad` INT NOT NULL,
  `P-C-A_Avión_Cod-avión` INT NOT NULL,
  PRIMARY KEY (`Cod-avión`, `P-C-A_Ciudad_Nombre-Ciudad`, `P-C-A_Avión_Cod-avión`),
  INDEX `fk_Avión_P-C-A1_idx` (`P-C-A_Ciudad_Nombre-Ciudad` ASC, `P-C-A_Avión_Cod-avión` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
