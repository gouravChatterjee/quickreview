-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: admin_frp
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BS_USER`
--

DROP TABLE IF EXISTS `BS_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_USER` (
  `BS_USER_AUTOID` int(10) NOT NULL AUTO_INCREMENT,
  `BS_USER_ID` int(20) DEFAULT NULL,
  `USER_JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `BS_USER_TYPE` varchar(50) DEFAULT NULL,
  `BS_USER_GROUP` varchar(50) DEFAULT NULL,
  `USER_FULL_NAME` varchar(100) DEFAULT NULL,
  `USER_PHONE` varchar(15) DEFAULT NULL,
  `USER_EMAIL` varchar(30) DEFAULT NULL,
  `USER_PASSWORD` varchar(100) DEFAULT NULL,
  `REGISTER_TIME` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `STATUS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BS_USER_AUTOID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_USER`
--

LOCK TABLES `BS_USER` WRITE;
/*!40000 ALTER TABLE `BS_USER` DISABLE KEYS */;
INSERT INTO `BS_USER` VALUES (1,NULL,NULL,'Developer','','Gourav Chatterjee','8621071620','chatterjeegouravking@gmail.com','670b14728ad9902aecba32e22fa4f6bd','2019-08-02 03:04:08.000000',NULL),(62,NULL,'{\"Details\":{\"Programs\":\"IIMTT,YLE\"},\"ValidFr\":{\"ValidFrom\":\"2019-08-08\"},\"ValidTo\":{\"ValidTo\":\"2019-08-03\"},\"Address\":{\"FranName\":\"Beanstalk New\",\"Line1\":\"3, sadhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"Barbados\",\"State\":\"Saint Philip\",\"Agreement\":\"download.jpeg\"}}','FRANSCHISE',NULL,'Beanstalk New','8620993996','gourav@gmail.com','96e79218965eb72c92a549dd5a330112','2019-08-08 06:54:14.481455',NULL),(63,NULL,'{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"\"},\"ValidTo\":{\"ValidTo\":\"\"},\"Address\":{\"FranName\":\"hey Beanstalk\",\"Line1\":\"3, saddhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata\",\"City\":\"kolkata\",\"Pin\":\"700122\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"download.jpeg\"}}','FRANSCHISE',NULL,'hey Beanstalk','08621071620','hello@gmail.com','e3ceb5881a0a1fdaad01296d7554868d','2019-08-09 06:18:26.077371',NULL),(64,NULL,'{\"Details\":{\"Programs\":\"YLE,MAXBRAIN,WRITO,3P\"},\"ValidFr\":{\"ValidFrom\":\"2020-10-01\"},\"ValidTo\":{\"ValidTo\":\"2030-10-01\"},\"Address\":{\"FranName\":\"Beanstalk New\",\"Line1\":\"3, saddhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata\",\"City\":\"kolkata\",\"Pin\":\"700122\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"\"}}','FRANSCHISE',NULL,'Beanstalk New','08621071620','abhishekbanerjea@gmail.com',NULL,'2019-08-10 07:05:24.515733',NULL),(65,NULL,'{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-08-16\"},\"ValidTo\":{\"ValidTo\":\"2019-08-31\"},\"Address\":{\"FranName\":\"Beanstalk New 3\",\"Line1\":\"3, saddhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata\",\"City\":\"kolkata\",\"Pin\":\"700122\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"download3.jpeg\"}}','FRANSCHISE',NULL,'Beanstalk New 3','08621071620','sarkar.suvankar@gmail.com',NULL,'2019-08-16 10:38:20.171173',NULL);
/*!40000 ALTER TABLE `BS_USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-29 17:47:47
