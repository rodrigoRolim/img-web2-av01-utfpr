/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Magno
 * Created: 10/04/2018
 */

-- MySQL Script generated by MySQL Workbench
-- Tue Apr 10 19:55:59 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema avaliacao_bd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema avaliacao_bd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `avaliacao_bd` DEFAULT CHARACTER SET utf8 ;
USE `avaliacao_bd` ;

-- -----------------------------------------------------
-- Table `avaliacao_bd`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `avaliacao_bd`.`cliente` (
  `id` INT NOT NULL,
  `nome` VARCHAR(85) NULL,
  `email` VARCHAR(105) NULL,
  `senha` VARCHAR(50) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `avaliacao_bd`.`Galeria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `avaliacao_bd`.`Galeria` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `idcliente` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_galeia_cliente_idx` (`idcliente` ASC),
  CONSTRAINT `fk_galeia_cliente`
    FOREIGN KEY (`idcliente`)
    REFERENCES `avaliacao_bd`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `avaliacao_bd`.`foto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `avaliacao_bd`.`foto` (
  `id` INT NOT NULL,
  `localdafoto` VARCHAR(255) NULL,
  `idgaleria` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_galeria_idx` (`idgaleria` ASC),
  CONSTRAINT `fk_galeria`
    FOREIGN KEY (`idgaleria`)
    REFERENCES `avaliacao_bd`.`Galeria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

