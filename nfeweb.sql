-- MySQL Script generated by MySQL Workbench
-- 05/04/17 12:30:00
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

USE `vieir463_notafacil` ;

-- -----------------------------------------------------
-- Table `vieir463_notafacil`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vieir463_notafacil`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cpf` BIGINT(11) NOT NULL,
  `nome` VARCHAR(128) NULL,
  `login` VARCHAR(64) NOT NULL,
  `senha` VARCHAR(255) NULL,
  `email` VARCHAR(100) NOT NULL,
  `ativo` VARCHAR(1) NOT NULL DEFAULT 'N',
  `cadastro` DATETIME NULL,
  `chave` VARCHAR(255) NULL,
  `tipo` VARCHAR(16) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `login_UNIQUE` (`login` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vieir463_notafacil`.`empresas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vieir463_notafacil`.`empresas` (
  `cnpj` BIGINT(14) NOT NULL,
  `razao` VARCHAR(255) NOT NULL,
  `fantasia` VARCHAR(255) NULL,
  `cep` INT(8) NOT NULL,
  `telefone` BIGINT(14) NULL,
  `tipo` VARCHAR(1) NOT NULL DEFAULT 'S',
  `responsavel` INT NOT NULL,
  PRIMARY KEY (`cnpj`),
  INDEX `fk_empresas_usuarios_idx` (`responsavel` ASC),
  CONSTRAINT `fk_empresas_usuarios`
    FOREIGN KEY (`responsavel`)
    REFERENCES `vieir463_notafacil`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vieir463_notafacil`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vieir463_notafacil`.`clientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `proprietario` INT NULL,
  `documento` BIGINT(14) NULL,
  `tipodoc` VARCHAR(1) NULL,
  `nome` VARCHAR(255) NULL,
  `telefone` BIGINT(14) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_clientes_usuarios1_idx` (`proprietario` ASC),
  CONSTRAINT `fk_clientes_usuarios1`
    FOREIGN KEY (`proprietario`)
    REFERENCES `vieir463_notafacil`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vieir463_notafacil`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vieir463_notafacil`.`produtos` (
  `id` INT NOT NULL,
  `proprietario` INT NULL,
  `codproduto` VARCHAR(10) NOT NULL,
  `descricao` VARCHAR(255) NULL,
  `valorcompra` DOUBLE NULL,
  `valorvenda` DOUBLE NULL,
  `unidade` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `codproduto_UNIQUE` (`codproduto` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vieir463_notafacil`.`nota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vieir463_notafacil`.`nota` (
  `id` INT NOT NULL,
  `proprietario` INT NULL,
  `emissao` DATETIME NULL,
  `cliente` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_nota_usuarios1_idx` (`proprietario` ASC),
  CONSTRAINT `fk_nota_usuarios1`
    FOREIGN KEY (`proprietario`)
    REFERENCES `vieir463_notafacil`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vieir463_notafacil`.`nota_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vieir463_notafacil`.`nota_produtos` (
  `idnota` INT NOT NULL,
  `idproduto` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `valor_uni` DOUBLE NOT NULL,
  `valor_compra` DOUBLE NULL,
  INDEX `fk_nota_produtos_nota1_idx` (`idnota` ASC),
  INDEX `fk_nota_produtos_produtos1_idx` (`idproduto` ASC),
  CONSTRAINT `fk_nota_produtos_nota1`
    FOREIGN KEY (`idnota`)
    REFERENCES `vieir463_notafacil`.`nota` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota_produtos_produtos1`
    FOREIGN KEY (`idproduto`)
    REFERENCES `vieir463_notafacil`.`produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
