-- MySQL Workbench Synchronization
-- Generated: 2024-06-05 16:54
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Alumnos

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `Tech_Solutions` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE IF NOT EXISTS `Tech_Solutions`.`Empleados` (
  `DNI` VARCHAR(10) NOT NULL,
  `Nombre` CHAR(50) NOT NULL,
  `Apellidos` CHAR(100) NOT NULL,
  `Telefono` INT(10) NOT NULL,
  `Seguridad_Social` INT(15) NOT NULL,
  `fecha_Nacimiento` DATE NOT NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `Tech_Solutions`.`departamento` (
  `id_Departamento` INT(5) NOT NULL,
  `Name_D` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Departamento`),
  UNIQUE INDEX `Name_D_UNIQUE` (`Name_D` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `Tech_Solutions`.`Puesto_Trabajo` (
  `id_Puesto_Trabajo` INT(11) NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Puesto_Trabajo`),
  UNIQUE INDEX `Cargo_UNIQUE` (`Cargo` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
