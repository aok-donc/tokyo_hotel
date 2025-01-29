-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tokyohotel
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `start_at` date DEFAULT NULL,
  `end_at` date DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `room_id_idx` (`room_id`),
  CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'Noriti','basil',1,'basil@mail.com','00 00 00 00 00','2025-01-10','2025-02-18',NULL,NULL),(2,'Baker','zenica',2,'zenica@mail.com','00 00 00 00 01','2030-06-08','2031-06-08','2025-01-15 10:59:44','2025-01-15 10:59:44');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collaborators`
--

DROP TABLE IF EXISTS `collaborators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collaborators` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `function` varchar(45) DEFAULT NULL,
  `hotel_id` int DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `locholet_idx` (`hotel_id`),
  CONSTRAINT `locholet` FOREIGN KEY (`hotel_id`) REFERENCES `holets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collaborators`
--

LOCK TABLES `collaborators` WRITE;
/*!40000 ALTER TABLE `collaborators` DISABLE KEYS */;
INSERT INTO `collaborators` VALUES (1,'lombard','gwen','gwen@mail.com','00 00 00 00 02','belle de nuit',6,'2','1221','2025-01-15 11:35:15','2025-01-15 11:35:15'),(2,'benois','raphael','raphael@mail.com','00 00 00 00 03','consèrge',1,'2','2112','2025-01-15 11:37:20','2025-01-15 11:37:20');
/*!40000 ALTER TABLE `collaborators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holets`
--

DROP TABLE IF EXISTS `holets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `reference` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holets`
--

LOCK TABLES `holets` WRITE;
/*!40000 ALTER TABLE `holets` DISABLE KEYS */;
INSERT INTO `holets` VALUES (1,'75004','PARIS','Place de l\'Hôtel de Ville','HO-751','2025-01-15 10:02:22','2025-01-15 10:02:22'),(2,'01012','Bourg-en-Bresse','Place de l’Hôtel-de-Ville','HO-011','2025-01-15 10:02:22','2025-01-15 10:02:22'),(3,'13002','Marseille','Quai du Port','HO-133','2025-01-15 10:02:22','2025-01-15 10:02:22'),(4,'29000','Quimper','4 Place Saint-Corentin','HO-294','2025-01-15 10:02:22','2025-01-15 10:02:22'),(5,'60400','Noyon','Place de l’Hôtel de Ville','HO-605','2025-01-15 10:02:22','2025-01-15 10:02:22'),(6,'60021','Beauvais','1 Rue Desgroux','HO-606','2025-01-15 10:02:22','2025-01-15 10:02:22');
/*!40000 ALTER TABLE `holets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options_bookings`
--

DROP TABLE IF EXISTS `options_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options_bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_option_id` int DEFAULT NULL,
  `booking_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `room_option_id_idx` (`room_option_id`),
  KEY `booking_id_idx` (`booking_id`),
  CONSTRAINT `booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`),
  CONSTRAINT `room_option_id` FOREIGN KEY (`room_option_id`) REFERENCES `room_options` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options_bookings`
--

LOCK TABLES `options_bookings` WRITE;
/*!40000 ALTER TABLE `options_bookings` DISABLE KEYS */;
INSERT INTO `options_bookings` VALUES (1,1,1,NULL,'2025-01-15 11:01:02','2025-01-15 11:01:02'),(2,2,1,NULL,'2025-01-15 11:01:22','2025-01-15 11:01:22');
/*!40000 ALTER TABLE `options_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_options`
--

DROP TABLE IF EXISTS `room_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `holet_id` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `holet_id_idx` (`holet_id`),
  CONSTRAINT `holet_id` FOREIGN KEY (`holet_id`) REFERENCES `holets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_options`
--

LOCK TABLES `room_options` WRITE;
/*!40000 ALTER TABLE `room_options` DISABLE KEYS */;
INSERT INTO `room_options` VALUES (1,'petit déjeuner','petit déjeuner offert avec l\'option',NULL,1426,'2025-01-15 10:47:21','2025-01-15 10:47:21'),(2,'spa','accès au spa',NULL,1999.99,'2025-01-15 10:48:29','2025-01-15 10:48:29');
/*!40000 ALTER TABLE `room_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
INSERT INTO `room_types` VALUES (1,'lit simple',15.25,'c\'est une chambre simple','2025-01-15 10:45:11','2025-01-15 10:45:11'),(2,'lit double',29.99,'c\'est une chambre bouble','2025-01-15 10:46:03','2025-01-15 10:46:03');
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types_bookings`
--

DROP TABLE IF EXISTS `room_types_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_types_bookings` (
  `id` int NOT NULL,
  `room_option_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types_bookings`
--

LOCK TABLES `room_types_bookings` WRITE;
/*!40000 ALTER TABLE `room_types_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_types_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hotel_id` int DEFAULT NULL,
  `number` int DEFAULT NULL,
  `room_type_id` int DEFAULT NULL,
  `floor` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `room_type_id_idx` (`room_type_id`),
  KEY `holet_id_idx` (`hotel_id`),
  KEY `hotel_id_idx` (`hotel_id`),
  CONSTRAINT `hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `holets` (`id`),
  CONSTRAINT `roomtype` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,1,14,2,0,NULL,NULL),(2,3,10,2,2,'2025-01-15 10:43:06','2025-01-15 10:43:06');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-29  8:51:48
