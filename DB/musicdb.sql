-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema musicdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `musicdb` ;

-- -----------------------------------------------------
-- Schema musicdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `musicdb` DEFAULT CHARACTER SET utf8 ;
USE `musicdb` ;

-- -----------------------------------------------------
-- Table `song`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `song` ;

CREATE TABLE IF NOT EXISTS `song` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `artist` VARCHAR(45) NULL,
  `album` VARCHAR(45) NULL,
  `is_single` TINYINT NULL,
  `featured_artist` VARCHAR(45) NULL,
  `remix_by` VARCHAR(45) NULL,
  `genre` VARCHAR(45) NULL,
  `length_seconds` INT NULL,
  `release_year` INT NULL,
  `video_url` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS musicuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'musicuser'@'localhost' IDENTIFIED BY 'musicuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'musicuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `song`
-- -----------------------------------------------------
START TRANSACTION;
USE `musicdb`;
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (1, 'Tadow', 'Masego', 'Lady Lady', 0, 'FKJ', NULL, 'Electronic/Jazz', 301, 2017, 'hC8CH0Z3L54');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (2, 'Another love', 'Tom Odell', NULL, 1, NULL, 'Zwette', 'House', 394, 2013, '4ZHwu0uut3k');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (3, 'Dancin', 'Aaron Smith', NULL, 1, NULL, 'Krono', 'Deep House', 256, 2013, '0XFudmaObLI');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (4, 'Blue Lagoon', 'LVSN & FIXL', NULL, 1, 'Finn Kleffmann', NULL, 'Tropical House', 188, 2021, 'MjCvkWEfgKc');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (5, 'Stolen Dance', 'Milky Chance', 'Sadnecessary', 1, NULL, NULL, 'Indie Pop', 313, 2013, 'iX-QaNzd-0Y');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (6, 'The Last Goodbye', 'ODESZA', 'The Last Goodbye', 1, 'Betty LaVette', NULL, 'Dance', 358, 2022, 'GpuUOl6ddVI');

COMMIT;

