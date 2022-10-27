-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: avtosalon
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `prodazha`
--

DROP TABLE IF EXISTS `prodazha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodazha` (
  `id_sdel` int NOT NULL AUTO_INCREMENT,
  `data` text,
  `id_klient` int DEFAULT NULL,
  `id_avto` int DEFAULT NULL,
  `id_men` int DEFAULT NULL,
  `cost` text,
  `id_post` int DEFAULT NULL,
  PRIMARY KEY (`id_sdel`),
  KEY `id_post` (`id_post`),
  KEY `id_men` (`id_men`),
  KEY `id_klient` (`id_klient`),
  KEY `id_avto` (`id_avto`),
  CONSTRAINT `prodazha_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `postavshik` (`id_post`),
  CONSTRAINT `prodazha_ibfk_2` FOREIGN KEY (`id_men`) REFERENCES `menedger` (`id_men`),
  CONSTRAINT `prodazha_ibfk_3` FOREIGN KEY (`id_klient`) REFERENCES `klient` (`id_klient`),
  CONSTRAINT `prodazha_ibfk_4` FOREIGN KEY (`id_avto`) REFERENCES `spravka` (`id_avto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodazha`
--

LOCK TABLES `prodazha` WRITE;
/*!40000 ALTER TABLE `prodazha` DISABLE KEYS */;
INSERT INTO `prodazha` VALUES (1,'20.03.20',1,1,1,'1.200.000',1),(2,'11.06.22',2,2,2,'500.000',2);
/*!40000 ALTER TABLE `prodazha` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-28  0:07:33
