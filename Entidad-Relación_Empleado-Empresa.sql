-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Entidad-Relación_Empleado-Empresa
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Entidad-Relación_Empleado-Empresa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Entidad-Relación_Empleado-Empresa` DEFAULT CHARACTER SET utf8 ;
USE `Entidad-Relación_Empleado-Empresa` ;

-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`E-E`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`E-E` (
  `Empresa_Cod-Empresa` INT NOT NULL,
  `Fecha_inicio_dia` DATE NOT NULL,
  `Fecha_inicio_mes` DATE NULL,
  `Fecha_inicio_año` DATE NULL,
  `Fecha_fin_dia` DATE NULL,
  `Fecha_fin_mes` DATE NULL,
  `Fecha_fin_año` DATE NULL,
  PRIMARY KEY (`Empresa_Cod-Empresa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`Empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`Empresa` (
  `Cod-Empresa` INT NOT NULL,
  `Dirección` VARCHAR(45) NOT NULL,
  `E-E_Empresa_Cod-Empresa` INT NOT NULL,
  PRIMARY KEY (`Cod-Empresa`, `E-E_Empresa_Cod-Empresa`),
  INDEX `fk_Empresa_E-E1_idx` (`E-E_Empresa_Cod-Empresa` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`D-P`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`D-P` (
  `País_Cod_país` INT NOT NULL,
  PRIMARY KEY (`País_Cod_país`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`Director`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`Director` (
  `D-P_País_Cod_país` INT NOT NULL,
  PRIMARY KEY (`D-P_País_Cod_país`),
  INDEX `fk_Director_D-P1_idx` (`D-P_País_Cod_país` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`H-A`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`H-A` (
  `Paquete Ofimatico_Cod_Paquete` INT NOT NULL,
  PRIMARY KEY (`Paquete Ofimatico_Cod_Paquete`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`Auxiliar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`Auxiliar` (
  `Num_Pulsaciones` INT NOT NULL,
  `H-A_Paquete Ofimatico_Cod_Paquete` INT NOT NULL,
  PRIMARY KEY (`H-A_Paquete Ofimatico_Cod_Paquete`),
  INDEX `fk_Auxiliar_H-A1_idx` (`H-A_Paquete Ofimatico_Cod_Paquete` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`P-LP`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`P-LP` (
  `Lenguaje de Programación_Cod_Lenguaje` INT NOT NULL,
  PRIMARY KEY (`Lenguaje de Programación_Cod_Lenguaje`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`Programador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`Programador` (
  `P-LP_Lenguaje de Programación_Cod_Lenguaje` INT NOT NULL,
  PRIMARY KEY (`P-LP_Lenguaje de Programación_Cod_Lenguaje`),
  INDEX `fk_Programador_P-LP1_idx` (`P-LP_Lenguaje de Programación_Cod_Lenguaje` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`Empleado` (
  `Cod Empleado` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido P` VARCHAR(45) NOT NULL,
  `Apellido M` VARCHAR(45) NOT NULL,
  `Dirección` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `E-E_Empresa_Cod-Empresa` INT NOT NULL,
  `Director_D-P_País_Cod_país` INT NOT NULL,
  `Auxiliar_H-A_Paquete Ofimatico_Cod_Paquete` INT NOT NULL,
  `Programador_P-LP_Lenguaje de Programación_Cod_Lenguaje` INT NOT NULL,
  PRIMARY KEY (`Cod Empleado`, `E-E_Empresa_Cod-Empresa`, `Director_D-P_País_Cod_país`, `Auxiliar_H-A_Paquete Ofimatico_Cod_Paquete`, `Programador_P-LP_Lenguaje de Programación_Cod_Lenguaje`),
  INDEX `fk_Empleado_E-E1_idx` (`E-E_Empresa_Cod-Empresa` ASC) VISIBLE,
  INDEX `fk_Empleado_Director1_idx` (`Director_D-P_País_Cod_país` ASC) VISIBLE,
  INDEX `fk_Empleado_Auxiliar1_idx` (`Auxiliar_H-A_Paquete Ofimatico_Cod_Paquete` ASC) VISIBLE,
  INDEX `fk_Empleado_Programador1_idx` (`Programador_P-LP_Lenguaje de Programación_Cod_Lenguaje` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`País`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`País` (
  `Cod_país` INT NOT NULL,
  `Nombre_país` VARCHAR(45) NOT NULL,
  `D-P_País_Cod_país` INT NOT NULL,
  PRIMARY KEY (`Cod_país`, `D-P_País_Cod_país`),
  INDEX `fk_País_D-P1_idx` (`D-P_País_Cod_país` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`Lenguaje de Programación`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`Lenguaje de Programación` (
  `Cod_Lenguaje` INT NOT NULL,
  `Nombre_lenguaje` VARCHAR(45) NOT NULL,
  `P-LP_Lenguaje de Programación_Cod_Lenguaje` INT NOT NULL,
  PRIMARY KEY (`Cod_Lenguaje`, `P-LP_Lenguaje de Programación_Cod_Lenguaje`),
  INDEX `fk_Lenguaje de Programación_P-LP1_idx` (`P-LP_Lenguaje de Programación_Cod_Lenguaje` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Entidad-Relación_Empleado-Empresa`.`Paquete Ofimatico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Entidad-Relación_Empleado-Empresa`.`Paquete Ofimatico` (
  `Cod_Paquete` INT NOT NULL,
  `Nombre_paquete` VARCHAR(45) NOT NULL,
  `H-A_Paquete Ofimatico_Cod_Paquete` INT NOT NULL,
  PRIMARY KEY (`Cod_Paquete`, `H-A_Paquete Ofimatico_Cod_Paquete`),
  INDEX `fk_Paquete Ofimatico_H-A1_idx` (`H-A_Paquete Ofimatico_Cod_Paquete` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
