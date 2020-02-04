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
-- Table structure for table `BS_ADVANCE_THEORY_MARKS`
--

DROP TABLE IF EXISTS `BS_ADVANCE_THEORY_MARKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_ADVANCE_THEORY_MARKS` (
  `MARKS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DA101` int(10) DEFAULT 0,
  `DA102` int(10) DEFAULT 0,
  `DA103` int(10) DEFAULT 0,
  `DA104` int(10) DEFAULT 0,
  `DA105` int(10) DEFAULT 0,
  `DA106` int(10) DEFAULT 0,
  `DA107` int(10) DEFAULT 0,
  `DA108` int(10) DEFAULT 0,
  `TOTAL_ADVANCE_THEORY` int(10) DEFAULT NULL,
  PRIMARY KEY (`MARKS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_ADVANCE_THEORY_MARKS`
--

LOCK TABLES `BS_ADVANCE_THEORY_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_ADVANCE_THEORY_MARKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BS_ADVANCE_THEORY_MARKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BS_ALBUM_MARKS`
--

DROP TABLE IF EXISTS `BS_ALBUM_MARKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_ALBUM_MARKS` (
  `ALBUM_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DMA101` int(10) DEFAULT 0,
  `DMA102` int(10) DEFAULT 0,
  `DMA103` int(10) DEFAULT 0,
  `DMA104` int(10) DEFAULT 0,
  `DMA105` int(10) DEFAULT 0,
  `TOTAL_ALBUM_MARKS` int(10) DEFAULT NULL,
  PRIMARY KEY (`ALBUM_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_ALBUM_MARKS`
--

LOCK TABLES `BS_ALBUM_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_ALBUM_MARKS` DISABLE KEYS */;
INSERT INTO `BS_ALBUM_MARKS` VALUES (1,'3ovNtsRz','11',20,35,0,0,0,55);
/*!40000 ALTER TABLE `BS_ALBUM_MARKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BS_BASIC_THEORY_MARKS`
--

DROP TABLE IF EXISTS `BS_BASIC_THEORY_MARKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_BASIC_THEORY_MARKS` (
  `BASIC_THORY_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DM101` int(10) DEFAULT 0,
  `DM102` int(10) DEFAULT 0,
  `DM103` int(10) DEFAULT 0,
  `DM104` int(10) DEFAULT 0,
  `DM105` int(10) DEFAULT 0,
  `DM106` int(10) DEFAULT 0,
  `DM107` int(10) DEFAULT 0,
  `DM108` int(10) DEFAULT 0,
  `TOTAL_BASIC_THEORY` int(10) DEFAULT NULL,
  PRIMARY KEY (`BASIC_THORY_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_BASIC_THEORY_MARKS`
--

LOCK TABLES `BS_BASIC_THEORY_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_BASIC_THEORY_MARKS` DISABLE KEYS */;
INSERT INTO `BS_BASIC_THEORY_MARKS` VALUES (3,'3ovNtsRz','6',50,0,0,0,0,0,0,0,50),(5,'3ovNtsRz','13',50,30,0,0,0,0,0,0,80);
/*!40000 ALTER TABLE `BS_BASIC_THEORY_MARKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BS_INVENTORY`
--

DROP TABLE IF EXISTS `BS_INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_INVENTORY` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TIME_STAMP` timestamp NOT NULL DEFAULT current_timestamp(),
  `PROGRAM_ID` varchar(50) DEFAULT NULL,
  `ITEM_ID` varchar(50) DEFAULT NULL,
  `ITEM_NAME` varchar(100) DEFAULT NULL,
  `ITEM_DESC` varchar(100) DEFAULT NULL,
  `NUMBER_OF_ITEMS` int(11) NOT NULL,
  `ITEM_STATUS` varchar(100) DEFAULT NULL,
  `ITEM_REQ_DATE` varchar(50) DEFAULT NULL,
  `ITEM_REC_DATE` varchar(50) DEFAULT NULL,
  `ITEM_ISU_DATE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_INVENTORY`
--

LOCK TABLES `BS_INVENTORY` WRITE;
/*!40000 ALTER TABLE `BS_INVENTORY` DISABLE KEYS */;
INSERT INTO `BS_INVENTORY` VALUES (3,'2019-07-27 07:55:29','Pre School',NULL,'Theory Book','Book For ik2',5,NULL,NULL,'2019-07-27',NULL),(6,'2019-07-27 08:51:48','Pre School',NULL,'Practical book','Its a pract book for IK1 students',10,NULL,NULL,'2019-07-28',NULL),(7,'2019-07-30 08:37:24','Afterschool Program',NULL,'Theory Book','xzzx',2,NULL,NULL,'2019-07-30',NULL),(8,'2019-07-30 08:38:13','Pre School',NULL,'fffffffff','ffffs',3,NULL,NULL,'2019-07-30',NULL);
/*!40000 ALTER TABLE `BS_INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BS_NOTIFICATION`
--

DROP TABLE IF EXISTS `BS_NOTIFICATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_NOTIFICATION` (
  `NOTIFICATION_ID` int(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(15) NOT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `LINK` varchar(50) DEFAULT NULL,
  `SUBJECT_DETAILS` varchar(100) DEFAULT NULL,
  `SESSION` varchar(100) DEFAULT NULL,
  `NOTIFICATION_DETAILS` varchar(100) DEFAULT NULL,
  `JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_NOTIFICATION`
--

LOCK TABLES `BS_NOTIFICATION` WRITE;
/*!40000 ALTER TABLE `BS_NOTIFICATION` DISABLE KEYS */;
INSERT INTO `BS_NOTIFICATION` VALUES (119,'3ovNtsRz','PENDING','deliverCharge','',NULL,'Delivery Charge Request',NULL),(120,'3ovNtsRz','PENDING','deliveryDone','',NULL,'New order from Beanstalk New',NULL),(121,'3ovNtsRz','PENDING','deliverCharge','',NULL,'Delivery Charge Request',NULL),(122,'3ovNtsRz','PENDING','deliveryDone','',NULL,'New order from Beanstalk New',NULL),(123,'3ovNtsRz','PENDING','deliverCharge','',NULL,'Delivery Charge Request',NULL),(124,'3ovNtsRz','DISMISSED','deliveryDone','',NULL,'New order from Beanstalk New',NULL),(125,'3ovNtsRz','PENDING','deliverCharge','',NULL,'Delivery Charge Request',NULL),(126,'3ovNtsRz','PENDING','deliveryDone','',NULL,'New order from Beanstalk New',NULL),(127,'3ovNtsRz','PENDING','#','',NULL,'Franchise has recieved 0 TT1 - Study Kit',NULL),(128,'3ovNtsRz','PENDING','#','',NULL,'Franchise has recieved 8 YLE2 - Movers',NULL),(129,'3ovNtsRz','PENDING','deliverCharge','',NULL,'Delivery Charge Request',NULL),(130,'3ovNtsRz','PENDING','deliveryDone','',NULL,'New order from Beanstalk New',NULL),(131,'3ovNtsRz','PENDING','#','',NULL,'Franchise has recieved 5 TT2 - Study Kit',NULL),(132,'3ovNtsRz','PENDING','deliverCharge','',NULL,'Delivery Charge Request',NULL),(133,'3ovNtsRz','PENDING','deliveryDone','',NULL,'New order from Beanstalk New',NULL),(134,'3ovNtsRz','PENDING','#','',NULL,'Franchise has recieved 0 TT1 - Study Kit',NULL),(135,'3ovNtsRz','PENDING','deliverCharge','',NULL,'Delivery Charge Request',NULL),(136,'3ovNtsRz','PENDING','deliveryDone','',NULL,'New order from Beanstalk New',NULL),(137,'3ovNtsRz','PENDING','#','',NULL,'Franchise has recieved 0 TT1 - Study Kit',NULL),(138,'3ovNtsRz','PENDING','deliverCharge','',NULL,'Delivery Charge Request',NULL),(139,'3ovNtsRz','PENDING','deliveryDone','',NULL,'New order from Beanstalk New',NULL),(140,'3ovNtsRz','PENDING','#','',NULL,'Franchise has recieved 0 TT1 - Study Kit',NULL),(141,'3ovNtsRz','PENDING','deliverCharge','',NULL,'Delivery Charge Request',NULL),(142,'3ovNtsRz','PENDING','deliveryDone','',NULL,'New order from Beanstalk New',NULL),(143,'3ovNtsRz','PENDING','#','',NULL,'Franchise has recieved 8 YLE2 - Movers',NULL);
/*!40000 ALTER TABLE `BS_NOTIFICATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BS_PRACTICAL_MARKS`
--

DROP TABLE IF EXISTS `BS_PRACTICAL_MARKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_PRACTICAL_MARKS` (
  `PRACTICAL_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DMP101` int(10) DEFAULT 0,
  `DMP102` int(10) DEFAULT 0,
  `DMP103` int(10) DEFAULT 0,
  `DMP104` int(11) DEFAULT 0,
  `TOTAL_PRACTICAL_MARKS` int(10) DEFAULT NULL,
  PRIMARY KEY (`PRACTICAL_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_PRACTICAL_MARKS`
--

LOCK TABLES `BS_PRACTICAL_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_PRACTICAL_MARKS` DISABLE KEYS */;
INSERT INTO `BS_PRACTICAL_MARKS` VALUES (1,'3ovNtsRz','11',21,0,0,0,21);
/*!40000 ALTER TABLE `BS_PRACTICAL_MARKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BS_PRACTICE_TEACHING_MARKS`
--

DROP TABLE IF EXISTS `BS_PRACTICE_TEACHING_MARKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_PRACTICE_TEACHING_MARKS` (
  `PRACTICE_TEACHING_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DMT101` int(10) DEFAULT 0,
  `DMT102` int(10) DEFAULT 0,
  `TOTAL_PRACTICE_TEACHING_MARKS` int(5) DEFAULT NULL,
  PRIMARY KEY (`PRACTICE_TEACHING_MARKS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_PRACTICE_TEACHING_MARKS`
--

LOCK TABLES `BS_PRACTICE_TEACHING_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_PRACTICE_TEACHING_MARKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BS_PRACTICE_TEACHING_MARKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BS_USER`
--

DROP TABLE IF EXISTS `BS_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_USER` (
  `BS_USER_AUTOID` int(11) NOT NULL AUTO_INCREMENT,
  `BS_USER_ID` varchar(10) DEFAULT NULL,
  `USER_JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `BS_USER_TYPE` varchar(50) DEFAULT NULL,
  `BS_USER_GROUP` varchar(50) DEFAULT NULL,
  `USER_FULL_NAME` varchar(100) DEFAULT NULL,
  `USER_PHONE` varchar(15) DEFAULT NULL,
  `USER_EMAIL` varchar(30) DEFAULT NULL,
  `USER_PASSWORD` varchar(100) DEFAULT NULL,
  `REGISTER_TIME` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `STATUS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BS_USER_AUTOID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_USER`
--

LOCK TABLES `BS_USER` WRITE;
/*!40000 ALTER TABLE `BS_USER` DISABLE KEYS */;
INSERT INTO `BS_USER` VALUES (1,'3ovNtLOg',NULL,'Developer','','Gourav Chatterjee','8621071620','chatterjeegouravking@gmail.com','670b14728ad9902aecba32e22fa4f6bd','2019-08-02 03:04:08.000000',NULL),(62,'3ovNtsRz','{\"Details\":{\"Programs\":\"IIMTT,YLE\"},\"ValidFr\":{\"ValidFrom\":\"2019-08-08\"},\"ValidTo\":{\"ValidTo\":\"2019-08-03\"},\"Address\":{\"FranName\":\"Beanstalk New\",\"Line1\":\"3, sadhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"Barbados\",\"State\":\"Saint Philip\",\"Agreement\":\"download.jpeg\"}}','FRANSCHISE',NULL,'Beanstalk New','8620993996','gourav@gmail.com','96e79218965eb72c92a549dd5a330112','2019-08-08 06:54:14.481455',NULL),(70,'3ovNeEe-','{\"Details\":{\"Programs\":\"3P\"},\"ValidFr\":{\"ValidFrom\":\"2019-09-20\"},\"ValidTo\":{\"ValidTo\":\"2019-09-19\"},\"Address\":{\"FranName\":\"new Fran\",\"Line1\":\"howrah\",\"City\":\"kolkata\",\"Pin\":\"700001\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"internalExamQues.php\"}}','FRANSCHISE',NULL,'new Fran','08620993996','hik@gmail.com',NULL,'2019-09-03 05:57:12.424631',NULL);
/*!40000 ALTER TABLE `BS_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BS_VIVA_MARKS`
--

DROP TABLE IF EXISTS `BS_VIVA_MARKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_VIVA_MARKS` (
  `VIVA_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DMV101` int(10) DEFAULT 0,
  `TOTAL_VIVA_MARKS` int(11) NOT NULL,
  PRIMARY KEY (`VIVA_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_VIVA_MARKS`
--

LOCK TABLES `BS_VIVA_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_VIVA_MARKS` DISABLE KEYS */;
INSERT INTO `BS_VIVA_MARKS` VALUES (1,'62','11',50,50);
/*!40000 ALTER TABLE `BS_VIVA_MARKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRANCHISE_INVENTORY`
--

DROP TABLE IF EXISTS `FRANCHISE_INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRANCHISE_INVENTORY` (
  `INVENTORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `CART_ID` varchar(10) DEFAULT NULL,
  `PROGRAM_NAME` varchar(30) DEFAULT NULL,
  `ITEM_ID` varchar(100) DEFAULT NULL,
  `ITEM_NAME` varchar(30) DEFAULT NULL,
  `NUMBER_OF_ITEM` int(11) DEFAULT NULL,
  `SUB_ITEMS_DETAILS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ITEM_PRICE` varchar(20) DEFAULT NULL,
  `DELIVERY_CHARGES` int(15) DEFAULT NULL,
  `ITEM_STATUS` text DEFAULT NULL,
  `DETAILS` text DEFAULT NULL,
  PRIMARY KEY (`INVENTORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRANCHISE_INVENTORY`
--

LOCK TABLES `FRANCHISE_INVENTORY` WRITE;
/*!40000 ALTER TABLE `FRANCHISE_INVENTORY` DISABLE KEYS */;
INSERT INTO `FRANCHISE_INVENTORY` VALUES (50,'3ovNtsRz',NULL,'IIMTT','TT2','Study Kit',45,NULL,'2000',NULL,'AVAILABLE',NULL),(54,'3ovNtsRz',NULL,'YLE','YLE1','Starters',12,'','750',NULL,'AVAILABLE',NULL),(58,'3ovNtsRz',NULL,'YLE','YLE2','Movers',41,'','750',NULL,'AVAILABLE',NULL),(71,'3ovNtsRz',NULL,'YLE','YLE3','Flyers',24,'','750',NULL,'AVAILABLE',NULL),(73,'3ovNtsRz',NULL,'IIMTT','TT1','Study Kit',44,'{\"Theory\":44,\"Practical\":44}','4000',NULL,'AVAILABLE',NULL);
/*!40000 ALTER TABLE `FRANCHISE_INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRANCHISE_NOTIFICATION`
--

DROP TABLE IF EXISTS `FRANCHISE_NOTIFICATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRANCHISE_NOTIFICATION` (
  `NOTIFICATION_ID` int(8) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `DETAILS` varchar(100) DEFAULT NULL,
  `LINK_TO_GO` varchar(50) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `NOTIFICATION_JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `TIME` text DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRANCHISE_NOTIFICATION`
--

LOCK TABLES `FRANCHISE_NOTIFICATION` WRITE;
/*!40000 ALTER TABLE `FRANCHISE_NOTIFICATION` DISABLE KEYS */;
INSERT INTO `FRANCHISE_NOTIFICATION` VALUES (18,'3ovNtsRz','10 Item(s) with item id TT1 is dispatched','addItem','PENDING','{\"itemId\":\"TT1\",\"noOfItems\":\"10\"}','2019-10-01 09:21:06am'),(19,'3ovNtsRz','10 Item(s) with item id YLE3 is dispatched','addItem','PENDING','{\"itemId\":\"YLE3\",\"noOfItems\":\"10\"}','2019-10-01 10:38:37am'),(20,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-05 06:46:41am'),(21,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-05 07:49:56am'),(22,'3ovNtsRz','10 Item(s) with item id YLE3 is dispatched','addItem','PENDING','{\"itemId\":\"YLE3\",\"noOfItems\":\"10\"}','2019-10-05 07:51:59am'),(23,'3ovNtsRz','10 Item(s) with item id YLE2 is dispatched','addItem','PENDING','{\"itemId\":\"YLE2\",\"noOfItems\":\"10\"}','2019-10-05 02:30:05pm'),(24,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-05 02:41:02pm'),(25,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-05 02:43:33pm'),(26,'3ovNtsRz','10 Item(s) with item id YLE2 is dispatched','addItem','PENDING','{\"itemId\":\"YLE2\",\"noOfItems\":\"10\"}','2019-10-05 02:50:41pm'),(27,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-05 02:51:28pm'),(28,'3ovNtsRz','10 Item(s) with item id YLE3 is dispatched','addItem','PENDING','{\"itemId\":\"YLE3\",\"noOfItems\":\"10\"}','2019-10-05 02:55:24pm'),(29,'3ovNtsRz','10 Item(s) with item id YLE2 is dispatched','addItem','PENDING','{\"itemId\":\"YLE2\",\"noOfItems\":\"10\"}','2019-10-07 04:10:04am'),(30,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-07 04:19:22am'),(31,'3ovNtsRz','10 Item(s) with item id YLE3 is dispatched','addItem','PENDING','{\"itemId\":\"YLE3\",\"noOfItems\":\"10\"}','2019-10-07 04:20:52am'),(32,'3ovNtsRz','10 Item(s) with item id YLE2 is dispatched','addItem','PENDING','{\"itemId\":\"YLE2\",\"noOfItems\":\"10\"}','2019-10-07 04:23:25am'),(33,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-08 05:35:06am'),(34,'3ovNtsRz','10 Item(s) with item id YLE3 is dispatched','addItem','PENDING','{\"itemId\":\"YLE3\",\"noOfItems\":\"10\"}','2019-10-08 05:38:10am'),(35,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-08 07:35:11am'),(36,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-08 08:00:46am'),(37,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-08 08:16:12am'),(38,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','PENDING','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-08 09:45:27am'),(39,'3ovNtsRz','10 Item(s) with item id TT2 is dispatched','addItem','DISMISSED','{\"itemId\":\"TT2\",\"noOfItems\":\"10\"}','2019-10-08 01:14:15pm'),(40,'3ovNtsRz','18 Item(s) with item id YLE3 is dispatched','addItem','DISMISSED','{\"itemId\":\"YLE3\",\"noOfItems\":\"18\"}','2019-10-08 02:33:21pm'),(41,'3ovNtsRz','55 Item(s) with item id TT1 is dispatched','addItem','DISMISSED','{\"itemId\":\"TT1\",\"noOfItems\":\"55\"}','2019-10-08 02:41:01pm'),(42,'3ovNtsRz','10 Item(s) with item id YLE3 is dispatched','addItem','DISMISSED','{\"itemId\":\"YLE3\",\"noOfItems\":\"10\"}','2019-10-08 02:44:08pm'),(43,'3ovNtsRz','55 Item(s) with item id TT1 is dispatched','addItem','DISMISSED','{\"itemId\":\"TT1\",\"noOfItems\":\"55\"}','2019-10-08 02:58:27pm'),(44,'3ovNtsRz','10 Item(s) with item id TT1 is dispatched','addItem','DISMISSED','{\"itemId\":\"TT1\",\"noOfItems\":\"10\"}','2019-10-08 03:08:17pm'),(45,'3ovNtsRz','10 Item(s) with item id YLE2 is dispatched','addItem','PENDING','{\"itemId\":\"YLE2\",\"noOfItems\":\"10\"}','2019-10-10 11:15:56am');
/*!40000 ALTER TABLE `FRANCHISE_NOTIFICATION` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_BATCH`
--

LOCK TABLES `FRP_BATCH` WRITE;
/*!40000 ALTER TABLE `FRP_BATCH` DISABLE KEYS */;
INSERT INTO `FRP_BATCH` VALUES (6,'3ovNtsRz','20193ovNtsRz3oyF8p_d',2019,'1st Batch','2019-09-10','2019-09-28'),(7,'3ovNtsRz','20203ovNtsRz3oyF9q9S',2020,'1st Batch','2019-11-15','2019-09-24'),(8,'3ovNtsRz','20193ovNtsRz3oyV8x9S',2019,'2ND BATCH','2019-09-11','2020-06-18');
/*!40000 ALTER TABLE `FRP_BATCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRP_TB_ANNEXURE_PROGRAM`
--

DROP TABLE IF EXISTS `FRP_TB_ANNEXURE_PROGRAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRP_TB_ANNEXURE_PROGRAM` (
  `FRP_AP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PROGRAM` varchar(50) NOT NULL,
  `PROGRAM_ID` varchar(10) NOT NULL,
  `ITEM_ID` varchar(10) NOT NULL,
  `ITEM_DESC` varchar(50) NOT NULL,
  `SUB_ITEMS_DETAILS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ITEM_PRICE` int(10) DEFAULT NULL,
  `ITEM_PIC` varchar(100) DEFAULT NULL,
  `LEVEL` varchar(20) NOT NULL,
  `TENURE` int(5) NOT NULL,
  `BUSINESS_VERTICAL` varchar(25) NOT NULL,
  `QR_CODE_ITEM` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`FRP_AP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_ANNEXURE_PROGRAM`
--

LOCK TABLES `FRP_TB_ANNEXURE_PROGRAM` WRITE;
/*!40000 ALTER TABLE `FRP_TB_ANNEXURE_PROGRAM` DISABLE KEYS */;
INSERT INTO `FRP_TB_ANNEXURE_PROGRAM` VALUES (1,'IIMTT Basic','TT1','TT1','Study Kit','{\"Theory\":{\"Number_of_item\":\"2\",\"price\":\"150\"},\"Practical\":{\"Number_of_item\":\"2\",\"price\":\"150\"}}',4000,'download.jpeg','NA',12,'Teacher Training',NULL),(2,'IIMTT Advance','TT2','TT2','Study Kit',NULL,2000,'','NA',12,'Teacher Training',NULL),(3,'YLE','YLE','YLE1','Starters',NULL,750,'','L1',3,'Afterschool',NULL),(4,'YLE','YLE','YLE2','Movers',NULL,750,'','L4',3,'Afterschool',NULL),(5,'YLE','YLE','YLE3','Flyers',NULL,750,'','L7',3,'Afterschool',NULL),(6,'Maxbrain','MAX','MAX1','Level 1 Books',NULL,250,'','L1',3,'Afterschool',NULL),(7,'Maxbrain','MAX','MAX2','Level 2 Books',NULL,250,'','L2',3,'Afterschool',NULL),(8,'Maxbrain','MAX','MAX3','Level 3 Books',NULL,250,'','L3',3,'Afterschool',NULL),(9,'Maxbrain','MAX','MAX4','Level 4 Books',NULL,250,'','L3',3,'Afterschool',NULL),(10,'Maxbrain','MAX','MAX5','Level 5 Books',NULL,250,'','L3',3,'Afterschool',NULL),(11,'Maxbrain','MAX','MAX6','Level 6 Books',NULL,250,'','L3',3,'Afterschool',NULL),(12,'3P','3P','3P1','3-4 Years','{\"Super Phonics\":{\"Item_Details\":\"Super Phonics 1\",\"Item_Id\":\"SP1\",\"Number_of_item\":\"2\",\"price\":\"150\"},\"Writo\":{\"Item_Details\":\"Writo for IK1\",\"Item_Id\":\"P-WR1\",\"Number_of_item\":\"2\",\"price\":\"15\"},\"Min-Max\":{\"Item_Details\":\"Min-max for IK1\",\"Item_Id\":\"MIN1\",\"Number_of_item\":\"2\",\"price\":\"150\"}}',1000,'','L1',12,'Afterschool',NULL),(13,'3P','3P','3P2','4-5 Years','{\"Super Phonics\":{\"Item_Details\":\"Super Phonics 2\",\"Item_Id\":\"SP2\",\"Number_of_item\":\"2\",\"price\":\"150\"},\"Writo\":{\"Item_Details\":\"Writo for IK2\",\"Item_Id\":\"P-WR2\",\"Number_of_item\":\"2\",\"price\":\"15\"},\"Min-Max\":{\"Item_Details\":\"Min-max for IK2\",\"Item_Id\":\"MIN2\",\"Number_of_item\":\"2\",\"price\":\"150\"}}',1000,'','L2',12,'Afterschool',NULL),(14,'3P','3P','3P3','5-6 Years','{\"Super Phonics\":{\"Item_Details\":\"Super Phonics 3\",\"Item_Id\":\"SP3\",\"Number_of_item\":\"2\",\"price\":\"150\"},\"Writo\":{\"Item_Details\":\"Writo for IK3\",\"Item_Id\":\"P-WR3\",\"Number_of_item\":\"2\",\"price\":\"15\"},\"Min-Max\":{\"Item_Details\":\"Min-max for IK3\",\"Item_Id\":\"MIN3\",\"Number_of_item\":\"2\",\"price\":\"150\"}}',1000,'','L3',12,'Afterschool',NULL),(15,'Writo','WRT','A-WR1','Cursive Road',NULL,650,'','L1',12,'Afterschool',NULL),(16,'Writo','WRT','A-WR2','Cursive Prime',NULL,650,'','L2',12,'Afterschool',NULL),(17,'Writo','WRT','A-WR3','Cursive Plus',NULL,650,'','L3',12,'Afterschool',NULL);
/*!40000 ALTER TABLE `FRP_TB_ANNEXURE_PROGRAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRP_TB_BOOK_COST`
--

DROP TABLE IF EXISTS `FRP_TB_BOOK_COST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRP_TB_BOOK_COST` (
  `FRP_BOOK_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PROGRAM_ID` varchar(20) NOT NULL,
  `PROGRAM_DESCR` varchar(20) NOT NULL,
  `ITEM_ID` varchar(20) NOT NULL,
  `ITEM_DESCR` varchar(20) NOT NULL,
  `IMAGE` varchar(100) DEFAULT NULL,
  `COST` varchar(10) NOT NULL,
  PRIMARY KEY (`FRP_BOOK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_BOOK_COST`
--

LOCK TABLES `FRP_TB_BOOK_COST` WRITE;
/*!40000 ALTER TABLE `FRP_TB_BOOK_COST` DISABLE KEYS */;
INSERT INTO `FRP_TB_BOOK_COST` VALUES (1,'TT1','IIMTT','TT1','THEORY BOOK','img.jpg','150.00'),(2,'YLE','IIMTT','TT1','Hello','passport.jpg','125'),(3,'YLE','IIMTT','TT1','Hello','passport.jpg','125'),(4,'YLE','IIMTT','TT1','Hello','passport.jpg','125'),(5,'TT1','IIMTT','TT1','','',''),(6,'TT1','IIMTT','TT1','sfdsfs','passport.jpg','12'),(7,'YLE','MAXBRAIN','A-WR3','bdfbdfbdf','passport.jpg','123'),(8,'TT1','IIMTT','TT1','','',''),(9,'TT1','IIMTT','TT1','','',''),(10,'MAX','YLE','A-WR2','aasa','iao_certificate.jpg','150'),(11,'YLE','YLE','A-WR3','dcsc','passport.jpg','345'),(12,'MAX','MAXBRAIN','A-WR1','New Book','passport.jpg','150'),(13,'MAX','IIMTT','A-WR3','sfdsfs','college-student-resume-format-pdf-listmachineprocom.jpg','520'),(14,'TT1','IIMTT','TT1','','','');
/*!40000 ALTER TABLE `FRP_TB_BOOK_COST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRP_TB_EXAM_CONTROL`
--

DROP TABLE IF EXISTS `FRP_TB_EXAM_CONTROL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRP_TB_EXAM_CONTROL` (
  `FRP_EXAM_ID` int(20) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) DEFAULT NULL,
  `EXAM_TYPE` varchar(100) DEFAULT NULL,
  `SESSION` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(50) DEFAULT NULL,
  `PROGRAM_ID` varchar(50) DEFAULT NULL,
  `EXAM_DATE` date DEFAULT NULL,
  PRIMARY KEY (`FRP_EXAM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_EXAM_CONTROL`
--

LOCK TABLES `FRP_TB_EXAM_CONTROL` WRITE;
/*!40000 ALTER TABLE `FRP_TB_EXAM_CONTROL` DISABLE KEYS */;
INSERT INTO `FRP_TB_EXAM_CONTROL` VALUES (30,'62','INTERNAL EXAM',NULL,'DM103',NULL,NULL),(31,'62','FINAL EXAM',NULL,'All subject',NULL,NULL),(32,'62','INTERNAL EXAM',NULL,'DM101',NULL,NULL),(33,'62','INTERNAL EXAM',NULL,'DM102',NULL,NULL),(34,'62','INTERNAL EXAM',NULL,'DM101',NULL,NULL),(35,'62','INTERNAL EXAM','2020_2021','DM103',NULL,NULL),(36,'62','INTERNAL EXAM','2020_2021','DM104',NULL,NULL),(37,'62','INTERNAL EXAM','2020_2021','DM105',NULL,NULL),(38,'62','INTERNAL EXAM','2020_2021','DM106',NULL,NULL),(39,'62','INTERNAL EXAM','2020_2021','DM107',NULL,NULL),(40,'62','INTERNAL EXAM','2020_2021','DA105',NULL,NULL),(41,'62','FINAL EXAM','2020_2021','All subject',NULL,'2019-09-19'),(42,'62','FINAL EXAM','2020_2021','All subject',NULL,'2019-09-20'),(43,'62','INTERNAL EXAM','2020_2021','DM106',NULL,NULL),(44,'62','INTERNAL EXAM','2020_2021','DM107',NULL,NULL),(45,'62','INTERNAL EXAM','2020_2021','DA102',NULL,NULL),(46,'62','FINAL EXAM','2020_2021','All subject',NULL,'2019-09-25'),(47,'62','INTERNAL EXAM','2019_Delta','DM101',NULL,NULL),(48,'62','INTERNAL EXAM','2019___B','DM101',NULL,NULL),(49,'3ovNtsRz','INTERNAL EXAM','2019___B','DM102',NULL,NULL),(50,'3ovNtsRz','INTERNAL EXAM','2020_2021','DM101',NULL,NULL),(51,'3ovNtsRz','INTERNAL EXAM','2019 Delta','DA101',NULL,NULL),(52,'3ovNtsRz','FINAL EXAM','2019___B','All subject',NULL,'2019-10-17'),(53,'3ovNtsRz','INTERNAL EXAM','2019___B','DM103',NULL,NULL),(54,'3ovNtsRz','INTERNAL EXAM','2019_Delta','DM101',NULL,NULL),(55,'3ovNtsRz','FINAL EXAM','2019_Delta','All subject',NULL,'2019-10-31');
/*!40000 ALTER TABLE `FRP_TB_EXAM_CONTROL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRP_TB_FRANCHISE_LIST`
--

DROP TABLE IF EXISTS `FRP_TB_FRANCHISE_LIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRP_TB_FRANCHISE_LIST` (
  `FRP_FRANCHISE_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRAN_NAME` varchar(100) NOT NULL,
  `COUNTRY` varchar(50) NOT NULL,
  `STATE` varchar(50) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `PROGRAM` varchar(20) NOT NULL,
  `VALID_FROM` date NOT NULL,
  `VALID_TO` date NOT NULL,
  `AGREEMENT_COPY` varchar(100) NOT NULL,
  `PHN_NO` varchar(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`FRP_FRANCHISE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_FRANCHISE_LIST`
--

LOCK TABLES `FRP_TB_FRANCHISE_LIST` WRITE;
/*!40000 ALTER TABLE `FRP_TB_FRANCHISE_LIST` DISABLE KEYS */;
INSERT INTO `FRP_TB_FRANCHISE_LIST` VALUES (1,'Beanstalk New','India','West Bengal','Barrackpore','IIMTT,IIMTTI','2019-06-12','2019-08-25','passport.jpg','08620171620','hello@gmail.com'),(2,'Beanstalk New','India','West Bengal','Barrackpore','IIMTT,IIMTTI','2019-06-12','2019-08-25','passport.jpg','08620171620','hello@gmail.com'),(3,'Beanstalk New','Afghanistan','Laghman','honululu','IIMTT,IIMTTI,MAXBRAI','2019-06-09','2019-06-30','my cv - Copy.docx','08620993996','hii@gmail.com'),(4,'Beanstalk New 2','USA','California','california','IIMTTI,YLE,MAXBRAIN','2019-06-10','2019-11-24','diploma-mechanical-engineering-resume-format-beautiful-download-site-engineer-sample-of-computer-res','8621071620','hyhy@gml.com');
/*!40000 ALTER TABLE `FRP_TB_FRANCHISE_LIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRP_TB_NON_STUDENT_REGISTER`
--

DROP TABLE IF EXISTS `FRP_TB_NON_STUDENT_REGISTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRP_TB_NON_STUDENT_REGISTER` (
  `FRP_NON_STUDENT_ID` int(20) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) DEFAULT NULL,
  `STUDENT_NAME` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `FATHER_NAME` varchar(50) NOT NULL,
  `MOTHER_NAME` varchar(50) NOT NULL,
  `PHONE_NO` varchar(50) NOT NULL,
  `EMAIL` varchar(70) NOT NULL,
  `PROGRAM` varchar(50) NOT NULL,
  `SUB_PROGRAM` varchar(50) DEFAULT NULL,
  `SESSION` varchar(100) DEFAULT NULL,
  `DATE_OF_ENROLLMENT` date NOT NULL,
  PRIMARY KEY (`FRP_NON_STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_NON_STUDENT_REGISTER`
--

LOCK TABLES `FRP_TB_NON_STUDENT_REGISTER` WRITE;
/*!40000 ALTER TABLE `FRP_TB_NON_STUDENT_REGISTER` DISABLE KEYS */;
INSERT INTO `FRP_TB_NON_STUDENT_REGISTER` VALUES (1,NULL,'Rakesh Sen','2006-02-10','Subrata Sen','Manisha Sen','256985658','hello@gmail.com','IIMTT',NULL,NULL,'2019-06-21'),(3,'1','Sudha Banerjee','2005-12-10','Amish Banerjee','radha banerjee','123655458','helo@gmail.com','YLE',NULL,'2020-2021','2019-02-10'),(5,'62','Candidate Name1','2013-08-30','Father Name1','Mother Name','777777777','email@kmail.com','MAXBRAIN',NULL,'2019 - C','2019-08-21'),(6,'62','Candidate Name2','2015-05-25','Father Name2','mother name2','4444444444','email@dmailc.com','MAXBRAIN',NULL,'2020 - B','2019-08-25'),(8,'3ovNtLOg','Ramu Adhikari','2016-02-10','Shamu Adhikari','Dhamu Adhikari','456789','HAHAHAH@gmail.com','YLEWRITO','MoverCursive Plus','','2019-09-08'),(9,'3ovNtLOg','Gourav Chatterjee','1998-06-26','Gourav Chatterjee','Gourav Chatterjee','08620993996','chatterjeegouravking@gmail.com','YLE,MAXBRAIN','Starter,Level 2','','2016-02-10');
/*!40000 ALTER TABLE `FRP_TB_NON_STUDENT_REGISTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FRP_TB_STUDENT_REGISTER`
--

DROP TABLE IF EXISTS `FRP_TB_STUDENT_REGISTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRP_TB_STUDENT_REGISTER` (
  `FRP_STUDENT_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) DEFAULT NULL,
  `STUDENT_TYPE` varchar(100) DEFAULT NULL,
  `STUDENT_NAME` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `FATHER_NAME` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `PHONE_NO` varchar(20) NOT NULL,
  `EMAIL_ADDRESS` varchar(50) DEFAULT NULL,
  `PROGRAM` varchar(50) NOT NULL,
  `SUB_PROGRAM` varchar(100) DEFAULT NULL,
  `SESSION` varchar(100) DEFAULT NULL,
  `ISSUED_ITEMS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `DATE_OF_ENROLLMENT` date NOT NULL,
  PRIMARY KEY (`FRP_STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_STUDENT_REGISTER`
--

LOCK TABLES `FRP_TB_STUDENT_REGISTER` WRITE;
/*!40000 ALTER TABLE `FRP_TB_STUDENT_REGISTER` DISABLE KEYS */;
INSERT INTO `FRP_TB_STUDENT_REGISTER` VALUES (8,'3ovNtsRz','IIMTT','Gourav Chatterjee','2019-08-10',NULL,NULL,'8620993996','chatterjeegouravking@gmail.com','IIMTT Basic,3P',NULL,'2019 Delta',NULL,'2019-08-20'),(12,'3ovNtsRz','IIMTT','Student Name2','1985-08-15',NULL,NULL,'6666666666','email@dmail.com','IIMTT Basic,YLE',NULL,'2019 - B','{\"TT1\":{\"Program\":\"IIMTT Basic\",\"Item Name\":\"Study Kit\",\"Date of Issue\":\"2019/10/10\"},\"YLE2\":{\"Program\":\"YLE\",\"Item Name\":\"Movers\",\"Date of Issue\":\"2019/10/10\"},\"YLE3\":{\"Program\":\"YLE\",\"Item Name\":\"Flyers\",\"Date of Issue\":\"2019/10/10\"}}','1985-08-30'),(16,'3ovNtsRz','IIMTT','M Lal','2011-12-12',NULL,NULL,'154544','hah@gmail.com','3P','3-4 years','2019 - 1st Batch',NULL,'2019-12-10'),(17,'3ovNtsRz','NON-IIMTT','rAJAT lAL','4222-04-04','JDJD','JDJD','68488484','JAJA@GMAIL.COM','YLE','Mover','',NULL,'2019-09-19'),(18,'3ovNtsRz','NON-IIMTT','Ajay Devgan','2000-12-10','Viaml','Panmasala','45454545','45@gmail.com','YLE,WRITO','Flyer,Cursive Plus','','Flyers','2019-09-19'),(19,'3ovNtsRz','NON-IIMTT','Raju Manna','2013-02-10','haha Manna','kaka Manna','54545454','gygy@gmail.com','MAXBRAIN,3P','MAX3,3P3','',NULL,'2019-09-24');
/*!40000 ALTER TABLE `FRP_TB_STUDENT_REGISTER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-10 12:12:39
