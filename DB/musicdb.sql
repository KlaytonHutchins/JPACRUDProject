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
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (7, 'Devil Eyes', 'Hippie Sabotage', 'Providence', 0, NULL, NULL, 'Dance', 231, 2016, 'Ywq6FMLbWH4');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (8, 'I Took a Pill in Ibiza', 'Mike Posner', 'At Night, Alone', 1, NULL, NULL, 'Dance', 236, 2015, 'foE1mO2yM04');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (9, 'Come With Me', 'Nora En Pure', 'Come With Me', 1, NULL, NULL, 'Deep House', 203, 2013, 'Xdx0KC5fRG8');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (10, 'Girl At Cochella', 'Matoma, MAGIC!', NULL, 1, 'DRAM', NULL, 'Dance', 202, 2017, 'F6BmauHQAOk');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (11, 'Set the World (On Fire)', 'Flatdisk', NULL, 1, 'Bitter\'s Kiss', NULL, 'Dance', 179, 2016, '8QoeYt7hFOU');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (12, 'As the World Caves In', 'Sarah Cothran', NULL, 1, NULL, 'Wuki', 'Deep House', 181, 2021, 'aTAvUyUHTMk');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (13, 'Fires', 'Tim Arisu', NULL, 1, 'Scarlett Quinn', NULL, 'Dance', 203, 2016, 'XqSjXn02pV8');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (14, 'Start A Riot', 'BANNERS', NULL, 1, NULL, 'Thundatraxx', 'Tropical House', 188, 2016, 'OweuXyn15AM');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (15, 'Cry', 'Alison Wonderland', 'Awake', 0, 'Buddy', NULL, 'Dance', 199, 2018, 'w8uTJqLWFbA');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (16, 'Let You Know', 'Flume', NULL, 1, 'London Grammar', NULL, 'Dance', 199, 2019, 'SaDWXi8x0Vc');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (17, 'Holdin On', 'Flume', 'Flume', 1, NULL, NULL, 'Dance', 155, 2012, 'X_H3cIsenBQ');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (18, 'Insane', 'Flume', 'Flume', 0, 'Moon Holiday', NULL, 'Dance', 214, 2012, 'peRS3KGNxoY');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (19, 'Ezra', 'Flume', 'Flume', 0, NULL, NULL, 'Dance', 217, 2012, 'MGtKETJIcZs');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (20, 'Medicine', 'Daughter', 'The Wild Youth', 0, NULL, 'Sound Remedy', 'Dance', 431, 2013, 'cSPfeTwl8Kw');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (21, 'Hold On', 'MOGUAI', NULL, 1, 'Cheat Codes', NULL, 'Dance', 177, 2015, 'rSbN3rREOM8');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (22, 'Never Be Like You', 'Flume', 'Skin', 1, 'Kai', NULL, 'Dance', 233, 2016, 'Ly7uj0JwgKg');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (23, 'The Difference', 'Flume', NULL, 1, 'Toro y Moi', NULL, 'Dance', 139, 2020, 'MCRiUi28UpA');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (24, 'Rushing Back', 'Flume', NULL, 1, 'Vera Blue', NULL, 'Dance', 231, 2019, 'oEJ6eMBrDqY');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (25, 'Prayer In C', 'Lilly Wood & The Prick', 'Prayer', 1, NULL, 'Robin Schulz', 'Dance', 201, 2014, 'HF45J4PFWy0');
INSERT INTO `song` (`id`, `title`, `artist`, `album`, `is_single`, `featured_artist`, `remix_by`, `genre`, `length_seconds`, `release_year`, `video_url`) VALUES (26, 'Heart So Big', 'Matoma', NULL, 1, 'Arizona', NULL, 'Dance', 219, 2022, 'ZjLwSpSQTxk');

COMMIT;

