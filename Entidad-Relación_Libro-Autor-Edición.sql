-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relación_Libro-Autor-Edición
-- -----------------------------------------------------
-- Ejemplo de Transformación al Esquema ER

-- -----------------------------------------------------
-- Schema Entidad-Relación_Libro-Autor-Edición
--
-- Ejemplo de Transformación al Esquema ER
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relación_Libro-Autor-Edición` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `Entidad-Relación_Libro-Autor-Edición` ;

-- -----------------------------------------------------
-- Table `Entidad-Relación_Libro-Autor-Edición`.`LIBRO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Libro-Autor-Edición`.`LIBRO` (
  `ISBN` INT NOT NULL,
  `Título_Principal` VARCHAR(45) NOT NULL,
  `Subtítulo` VARCHAR(45) NULL,
  `Editorial` VARCHAR(10) NULL,
  `Idioma` VARCHAR(15) NULL,
  PRIMARY KEY (`ISBN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Libro-Autor-Edición`.`AUTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Libro-Autor-Edición`.`AUTOR` (
  `Autor` VARCHAR(40) NOT NULL,
  `LIBRO_ISBN` INT NOT NULL,
  INDEX `fk_AUTOR_LIBRO1_idx` (`LIBRO_ISBN` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Libro-Autor-Edición`.`EDICION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Libro-Autor-Edición`.`EDICION` (
  `Número` INT NOT NULL,
  `Año` DATETIME NOT NULL,
  `LIBRO_ISBN` INT NOT NULL,
  INDEX `fk_EDICION_LIBRO_idx` (`LIBRO_ISBN` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
