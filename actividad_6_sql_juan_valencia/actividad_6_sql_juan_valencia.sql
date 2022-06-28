-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for los_animales
DROP DATABASE IF EXISTS `los_animales`;
CREATE DATABASE IF NOT EXISTS `los_animales` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `los_animales`;

-- Dumping structure for table los_animales.animals_species
DROP TABLE IF EXISTS `animals_species`;
CREATE TABLE IF NOT EXISTS `animals_species` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `population` int(11) NOT NULL,
  `conservation_state_id` smallint(6) unsigned NOT NULL,
  `moving_way_id` smallint(6) unsigned NOT NULL,
  `growth_embryonic_id` smallint(6) unsigned NOT NULL,
  `types_food_id` smallint(6) unsigned NOT NULL,
  `type_specie_id` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.animals_species: ~10 rows (approximately)
DELETE FROM `animals_species`;
INSERT INTO `animals_species` (`id`, `name`, `population`, `conservation_state_id`, `moving_way_id`, `growth_embryonic_id`, `types_food_id`, `type_specie_id`) VALUES
	(1, 'leon', 4200000, 3, 2, 2, 1, 1),
	(2, 'velociraptor', 0, 1, 2, 1, 1, 2),
	(3, 'conejo', 620000000, 2, 2, 2, 2, 1),
	(4, 'gato', 780000000, 2, 2, 2, 3, 1),
	(5, 'perro', 520000000, 2, 2, 2, 3, 1),
	(6, 'pollo', 23000000, 5, 1, 1, 2, 2),
	(7, 'delfin', 2700000, 3, 3, 2, 1, 3),
	(8, 'koala', 63500, 4, 2, 2, 2, 1),
	(9, 'dodo', 0, 1, 1, 1, 2, 2),
	(10, 'lobo_de_tasmania', 0, 1, 2, 2, 1, 1);

-- Dumping structure for table los_animales.conservation_states
DROP TABLE IF EXISTS `conservation_states`;
CREATE TABLE IF NOT EXISTS `conservation_states` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.conservation_states: ~5 rows (approximately)
DELETE FROM `conservation_states`;
INSERT INTO `conservation_states` (`id`, `name`) VALUES
	(1, 'extinto'),
	(2, 'sobrepoblacion'),
	(3, 'bajo_riesgo'),
	(4, 'amenazado'),
	(5, 'sin_riesgo');

-- Dumping structure for table los_animales.growths_embryonic
DROP TABLE IF EXISTS `growths_embryonic`;
CREATE TABLE IF NOT EXISTS `growths_embryonic` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.growths_embryonic: ~2 rows (approximately)
DELETE FROM `growths_embryonic`;
INSERT INTO `growths_embryonic` (`id`, `name`) VALUES
	(1, 'oviparo'),
	(2, 'viviparo');

-- Dumping structure for table los_animales.habitats
DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.habitats: ~3 rows (approximately)
DELETE FROM `habitats`;
INSERT INTO `habitats` (`id`, `name`) VALUES
	(1, 'aereo'),
	(2, 'terrestre'),
	(3, 'acuatico');

-- Dumping structure for table los_animales.habitats_species_animals
DROP TABLE IF EXISTS `habitats_species_animals`;
CREATE TABLE IF NOT EXISTS `habitats_species_animals` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `animal_specie_id` smallint(5) unsigned NOT NULL,
  `habitats_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.habitats_species_animals: ~10 rows (approximately)
DELETE FROM `habitats_species_animals`;
INSERT INTO `habitats_species_animals` (`id`, `animal_specie_id`, `habitats_id`) VALUES
	(1, 1, 2),
	(2, 2, 2),
	(3, 3, 2),
	(4, 4, 2),
	(5, 5, 2),
	(6, 6, 2),
	(7, 7, 3),
	(8, 8, 2),
	(9, 9, 2),
	(10, 10, 2);

-- Dumping structure for table los_animales.moving_ways
DROP TABLE IF EXISTS `moving_ways`;
CREATE TABLE IF NOT EXISTS `moving_ways` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.moving_ways: ~3 rows (approximately)
DELETE FROM `moving_ways`;
INSERT INTO `moving_ways` (`id`, `name`) VALUES
	(1, 'bipedo'),
	(2, 'cuadrupedo'),
	(3, 'apodo');

-- Dumping structure for table los_animales.type_foods
DROP TABLE IF EXISTS `type_foods`;
CREATE TABLE IF NOT EXISTS `type_foods` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.type_foods: ~3 rows (approximately)
DELETE FROM `type_foods`;
INSERT INTO `type_foods` (`id`, `name`) VALUES
	(1, 'carnivoro'),
	(2, 'hervivoro'),
	(3, 'omnivoro');

-- Dumping structure for table los_animales.type_species
DROP TABLE IF EXISTS `type_species`;
CREATE TABLE IF NOT EXISTS `type_species` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table los_animales.type_species: ~3 rows (approximately)
DELETE FROM `type_species`;
INSERT INTO `type_species` (`id`, `name`) VALUES
	(1, 'mamifero'),
	(2, 'reptil'),
	(3, 'anfibio');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
