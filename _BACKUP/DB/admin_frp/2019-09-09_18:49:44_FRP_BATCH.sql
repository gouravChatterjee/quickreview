-- MySQL dump 10.16  Distrib 10.2.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: admin_frp
-- ------------------------------------------------------
-- Server version	10.2.25-MariaDB-10.2.25+maria~xenial

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
-- Table structure for table `FRP_BATCH`
--

DROP TABLE IF EXISTS `FRP_BATCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRP_BATCH` (
  `BATCH_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `BATCH_UNI_ID` varchar(20) NOT NULL,
  `BATCH_YEAR` year(4) DEFAULT NULL,
  `BATCH_NAME` varchar(50) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`BATCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_BATCH`
--

LOCK TABLES `FRP_BATCH` WRITE;
/*!40000 ALTER TABLE `FRP_BATCH` DISABLE KEYS */;
INSERT INTO `FRP_BATCH` VALUES (6,'3ovNtsRz','20193ovNtsRz3oyF8p_d',2019,'1st Batch','2019-09-10','2019-09-28'),(7,'3ovNtsRz','20203ovNtsRz3oyF9q9S',2020,'1st Batch','2019-11-15','2019-09-24');
/*!40000 ALTER TABLE `FRP_BATCH` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-09 18:49:44
