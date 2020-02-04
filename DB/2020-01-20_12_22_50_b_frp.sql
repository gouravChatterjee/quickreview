-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: b_frp
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
  `STUDENT_ID` varchar(20) NOT NULL,
  `DA101` int(10) DEFAULT '0',
  `DA102` int(10) DEFAULT '0',
  `DA103` int(10) DEFAULT '0',
  `DA104` int(10) DEFAULT '0',
  `DA105` int(10) DEFAULT '0',
  `DA106` int(10) DEFAULT '0',
  `DA107` int(10) DEFAULT '0',
  `DA108` int(10) DEFAULT '0',
  `TOTAL_ADVANCE_THEORY` int(10) DEFAULT NULL,
  PRIMARY KEY (`MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_ADVANCE_THEORY_MARKS`
--

LOCK TABLES `BS_ADVANCE_THEORY_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_ADVANCE_THEORY_MARKS` DISABLE KEYS */;
INSERT INTO `BS_ADVANCE_THEORY_MARKS` VALUES (1,'3ovNtsRz','8',30,0,30,0,34,0,0,0,94),(2,'3ovNtsRz','2019BasicBatch-1',45,0,0,0,0,0,0,0,NULL);
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
  `STUDENT_ID` varchar(20) NOT NULL,
  `DMA101` int(10) DEFAULT '0',
  `DMA102` int(10) DEFAULT '0',
  `DMA103` int(10) DEFAULT '0',
  `DMA104` int(10) DEFAULT '0',
  `DMA105` int(10) DEFAULT '0',
  `TOTAL_ALBUM_MARKS` int(10) DEFAULT NULL,
  PRIMARY KEY (`ALBUM_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_ALBUM_MARKS`
--

LOCK TABLES `BS_ALBUM_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_ALBUM_MARKS` DISABLE KEYS */;
INSERT INTO `BS_ALBUM_MARKS` VALUES (1,'3ovNtsRz','11',20,35,0,0,0,55),(2,'3ovNtsRz','8',30,50,47,0,0,127),(3,'3ovNtsRz','12',32,39,30,0,0,101),(4,'3oUPbmOZ','3oUTWbYj',0,44,0,0,0,44);
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
  `STUDENT_ID` varchar(20) NOT NULL,
  `DM101` int(10) DEFAULT NULL,
  `DM102` int(10) DEFAULT NULL,
  `DM103` int(10) DEFAULT NULL,
  `DM104` int(10) DEFAULT NULL,
  `DM105` int(10) DEFAULT NULL,
  `DM106` int(10) DEFAULT NULL,
  `DM107` int(10) DEFAULT NULL,
  `DM108` int(10) DEFAULT NULL,
  `TOTAL_BASIC_THEORY` int(10) DEFAULT NULL,
  PRIMARY KEY (`BASIC_THORY_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_BASIC_THEORY_MARKS`
--

LOCK TABLES `BS_BASIC_THEORY_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_BASIC_THEORY_MARKS` DISABLE KEYS */;
INSERT INTO `BS_BASIC_THEORY_MARKS` VALUES (3,'3ovNtsRz','6',50,0,0,0,0,0,0,0,50),(5,'3ovNtsRz','13',50,30,0,0,0,0,0,0,80),(6,'3ovNtsRz','12',50,18,30,30,0,0,0,0,128),(7,'3ovNtsRz','8',30,15,30,18,15,30,45,30,213),(8,'3ovNtsRz','16',21,15,0,0,0,0,0,0,21),(9,'3ovNtsRz','20',40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'3oUPbmOZ','2019BasicBatch-2',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'3ovNtsRz','2019BasicBatch-1',37,NULL,NULL,50,15,50,NULL,NULL,115);
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
  `TIME_STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`NOTIFICATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_NOTIFICATION`
--

LOCK TABLES `BS_NOTIFICATION` WRITE;
/*!40000 ALTER TABLE `BS_NOTIFICATION` DISABLE KEYS */;
INSERT INTO `BS_NOTIFICATION` VALUES (184,'3ovNtsRz','PENDING','deliverCharge','',NULL,'Delivery Charge Request',NULL),(185,'3ovNtsRz','PENDING','deliveryDone','',NULL,'New order from Beanstalk New',NULL);
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
  `STUDENT_ID` varchar(20) NOT NULL,
  `DMP101` int(10) DEFAULT '0',
  `DMP102` int(10) DEFAULT '0',
  `DMP103` int(10) DEFAULT '0',
  `DMP104` int(11) DEFAULT '0',
  `TOTAL_PRACTICAL_MARKS` int(10) DEFAULT NULL,
  PRIMARY KEY (`PRACTICAL_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_PRACTICAL_MARKS`
--

LOCK TABLES `BS_PRACTICAL_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_PRACTICAL_MARKS` DISABLE KEYS */;
INSERT INTO `BS_PRACTICAL_MARKS` VALUES (1,'3ovNtsRz','11',21,0,0,0,21),(2,'3ovNtsRz','8',24,23,25,15,87),(3,'3ovNtsRz','12',17,0,0,0,17),(4,'3ovNtsRz','40',23,25,0,0,48),(5,'3oUPbmOZ','2019BasicBatch-2',18,25,15,23,81),(6,'3ovNtsRz','2019BasicBatch-1',16,0,0,0,16);
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
  `STUDENT_ID` varchar(20) NOT NULL,
  `DMT101` int(10) DEFAULT '0',
  `DMT102` int(10) DEFAULT '0',
  `TOTAL_PRACTICE_TEACHING_MARKS` int(5) DEFAULT NULL,
  PRIMARY KEY (`PRACTICE_TEACHING_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_PRACTICE_TEACHING_MARKS`
--

LOCK TABLES `BS_PRACTICE_TEACHING_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_PRACTICE_TEACHING_MARKS` DISABLE KEYS */;
INSERT INTO `BS_PRACTICE_TEACHING_MARKS` VALUES (1,'3ovNtsRz','12',100,70,170),(2,'3ovNtsRz','8',90,40,130);
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
  `USER_JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `BS_USER_TYPE` varchar(50) DEFAULT NULL,
  `BS_USER_GROUP` varchar(50) DEFAULT NULL,
  `USER_FULL_NAME` varchar(100) DEFAULT NULL,
  `CENTER_NAME` varchar(200) DEFAULT NULL,
  `USER_PHONE` varchar(15) DEFAULT NULL,
  `USER_EMAIL` varchar(100) DEFAULT NULL,
  `USER_PASSWORD` varchar(100) DEFAULT NULL,
  `REGISTER_TIME` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `TRAINING_COUNTER` int(11) DEFAULT '0',
  `STATUS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BS_USER_AUTOID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_USER`
--

LOCK TABLES `BS_USER` WRITE;
/*!40000 ALTER TABLE `BS_USER` DISABLE KEYS */;
INSERT INTO `BS_USER` VALUES (1,'3ovNtLOg',NULL,'Developer','','Gourav Chatterjee',NULL,'8621071620','chatterjeegourav@gmail.com','670b14728ad9902aecba32e22fa4f6bd','2019-08-02 03:04:08.000000',0,NULL),(62,'3ovNtsRz','{\"Details\":{\"Programs\":\"IIMTT,YLE\"},\"ValidFr\":{\"ValidFrom\":\"2019-08-08\"},\"ValidTo\":{\"ValidTo\":\"2019-08-03\"},\"Address\":{\"FranName\":\"Beanstalk New\",\"Line1\":\"3, sadhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"Barbados\",\"State\":\"Saint Philip\",\"Agreement\":\"download.jpeg\"}}','FRANCHISE',NULL,'Beanstalk New',NULL,'8620993996','gourav@gmail.com','96e79218965eb72c92a549dd5a330112','2019-08-08 06:54:14.481455',14,'PASSWORD CHANGED'),(70,'3ovNeEe-','{\"Details\":{\"Programs\":\"3P\"},\"ValidFr\":{\"ValidFrom\":\"2019-09-20\"},\"ValidTo\":{\"ValidTo\":\"2019-09-19\"},\"Address\":{\"FranName\":\"new Fran\",\"Line1\":\"howrah\",\"City\":\"kolkata\",\"Pin\":\"700001\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"internalExamQues.php\"}}','FRANCHISE',NULL,'new Fran',NULL,'08620993996','hik@gmail.com',NULL,'2019-09-03 05:57:12.424631',0,NULL),(71,'3oUPbmOZ','{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-10-25\"},\"ValidTo\":{\"ValidTo\":\"2020-03-13\"},\"Address\":{\"FranName\":\"The Brand New Beanstalk\",\"Line1\":\"Roy  Pur road\",\"City\":\"Roy pur\",\"Pin\":\"3424244\",\"Country\":\"India\",\"State\":\"Bihar\",\"Agreement\":\"CORPORATE_CONTACT.sql\"}}','FRANCHISE',NULL,'The Brand New Beanstalk',NULL,'123456','franchise@gmail.com','670b14728ad9902aecba32e22fa4f6bd','2019-10-25 05:23:00.622108',0,NULL),(72,'3pfRwQob','{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-12-09\"},\"ValidTo\":{\"ValidTo\":\"2019-12-09\"},\"Address\":{\"FranName\":\"The Brand New Beanstalk\",\"Line1\":\"3, saddhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"ea5cc316-9cde-4fc7-9dc8-6d9206df54f2.jpg\"}}','FRANCHISE',NULL,'The Brand New Beanstalk',NULL,'45454545','chatterjee@gmail.com',NULL,'2019-12-09 11:32:16.850425',0,NULL),(74,'7dnz5dJk',NULL,'ADMIN',NULL,'Abhishek Banerjea',NULL,'7044154080','director@beanstalkedu.com','96e79218965eb72c92a549dd5a330112','2019-12-25 18:30:00.000000',0,'Admin'),(76,'3poK3zTD','{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-02-14\"},\"ValidTo\":{\"ValidTo\":\"2024-02-14\"},\"Address\":{\"FranName\":\"Falak Randerian\",\"Line1\":\"575,2ndmain , 10th cross,MICO Layout,BTM 2ND Stage.BANGALORE 560076 Near State Bank of India ATM (BTM 2nd stage)\",\"City\":\"Bangalore\",\"Pin\":\"560076\",\"Country\":\"India\",\"State\":\"Karnataka\",\"Agreement\":\"Bangalore MICO Layout.pdf\"}}','FRANCHISE',NULL,'Falak Randerian','Ayelet Montessori House of Children','9964495522','connect@ayeletmontessori.com','9ba079b10a54604b07c8714ccb233866','2019-12-27 07:03:29.054174',0,NULL),(77,'3poKbfup','{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-06-06\"},\"ValidTo\":{\"ValidTo\":\"2024-06-06\"},\"Address\":{\"FranName\":\"Yogeshwari devraj\",\"Line1\":\"Dayspring Montessori House of Children-F2-11, Skylark Arcadia, Phase 2 Kodigehalli Main Road Sadaramangala,kadugodi PO Bengaluru 560067 Landmark: Near Zonasha Retreat and opp to Shilpitha Royal Apartment\",\"City\":\"Bengaluru\",\"Pin\":\"560067\",\"Country\":\"India\",\"State\":\"Karnataka\",\"Agreement\":\"IIMTT Franchise Agreement Signup.pdf\"}}','FRANCHISE',NULL,'Yogeeswari Devaraj','Dayspring Academy Pvt Ltd.','8095095400','dayspringacademy.bangalore@gmail.com','4273d69ccde3b754806d76fe90205149','2019-12-27 07:10:54.884462',2,NULL),(79,'3poKkTyz','{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-05-25\"},\"ValidTo\":{\"ValidTo\":\"2024-05-25\"},\"Address\":{\"FranName\":\"Ashangla\",\"Line1\":\"Colours Montessori School, Near Public College of commerce,JK Dental clinic Building, Old Overbridge colony, Dimapur Nagaland \\u2013 797111\",\"City\":\"Dimapur\",\"Pin\":\"797111\",\"Country\":\"India\",\"State\":\"Nagaland\",\"Agreement\":\"IIMTT Franchise Agreement.pdf\"}}','FRANCHISE',NULL,'Ashangla','IIMTT Dimapur','7005258789','michelleochir@gmail.com','ea604a5c48b75a4ce677974bd00af7ec','2019-12-27 07:20:13.393475',0,NULL),(80,'3poKFkcT','{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-12-24\"},\"ValidTo\":{\"ValidTo\":\"2024-12-24\"},\"Address\":{\"FranName\":\"Rozalin Pramanik\",\"Line1\":\"J-13,baishnabghata Patuli township ward np.101. Near Patuli Police Station\",\"City\":\"kolkata\",\"Pin\":\"700094\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"IIMTT Franchise Agreement Draft.pdf\"}}','FRANCHISE',NULL,'Rozalin Pramanik','IIMTT Patuli','7603039220','iimttpatuli@gmail.com','4a34c73c1395493afdf9a0d9ea3d5370','2019-12-27 07:39:01.756930',0,NULL),(81,'3poMGF6H','{\"Details\":{\"Programs\":\"YLE,MAXBRAIN,WRITO,3P\"},\"ValidFr\":{\"ValidFrom\":\"2019-07-25\"},\"ValidTo\":{\"ValidTo\":\"2024-07-25\"},\"Address\":{\"FranName\":\"S.Sangeetha\",\"Line1\":\"Avadi,Poonamallee High roaf,near Adithanar Marriage Hall, J.B.Estate Chennai-600054\",\"City\":\"Avadi\",\"Pin\":\"600054\",\"Country\":\"India\",\"State\":\"Tamil Nadu\",\"Agreement\":\"Beanstalk Afterschool Agreement.pdf\"}}','FRANCHISE',NULL,'S.Sangeetha','Garden Gurus Young learning Centre','9940686581','gardengurusedu2@gmail.com','4e5f71e695b0ac87fb62e24059cb4cc5','2019-12-27 09:32:27.116858',0,NULL),(82,'3poMRU_0','{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-09-27\"},\"ValidTo\":{\"ValidTo\":\"2024-06-27\"},\"Address\":{\"FranName\":\"Alyana Manji\",\"Line1\":\"Eldama Ravine Cl, Nairobi, Kenya\",\"City\":\"Nairobi\",\"Pin\":\"NA\",\"Country\":\"Kenya\",\"State\":\"Nairobi Area\",\"Agreement\":\"IIMTT International Franchise Agreement Draft.pdf\"}}','FRANCHISE',NULL,'Alyana Manji','Oak House Training Academy','254780635635','alyana.manji@minigrp.com','b94014ab3b49f33bec842cd7ce9a37ed','2019-12-27 09:41:22.616679',0,NULL),(84,'3poQjLiw','{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2017-01-16\"},\"ValidTo\":{\"ValidTo\":\"2021-01-16\"},\"Address\":{\"FranName\":\"Anu Pareek\",\"Line1\":\"7D, N.G.Basak Road, Kolkata-700080 \",\"City\":\"Kolkata\",\"Pin\":\"700080\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"FRANCHISE AGREEMENT-Dum Dum, Mall Road (1).pdf\"}}','FRANCHISE',NULL,'Anu Pareek','IIMTT Dum Dum','8981763209','ashoke.parik@gmail.com','e8a0584eb8a5b468d030e07a7fc659d0','2019-12-27 11:59:28.910654',0,NULL),(85,'3pwmvAsU','{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2020-01-10\"},\"ValidTo\":{\"ValidTo\":\"2025-01-10\"},\"Address\":{\"FranName\":\"Amal Battacharya\",\"Line1\":\"A\\/143,Central Road. H.B.Town.Sodepur\",\"City\":\"Kolkata\",\"Pin\":\"700110\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"Sodepur - IIMTT Franchise Agreement.pdf\"}}','FRANCHISE',NULL,'Amal Battacharya','IIMTT Sodepur','6289000105','rainboweducare862@gmail.com','9040af35baeeb2d239da432f6bdcdcc9','2020-01-13 11:35:00.642133',0,NULL),(86,'3pxdUkQ3','{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-12-31\"},\"ValidTo\":{\"ValidTo\":\"2024-12-31\"},\"Address\":{\"FranName\":\"Papia Bhattacharjee\",\"Line1\":\"ARADHANA, Nabagram, Sukanta Sarani, P.O. Bhaktinagar,Dist. Jalpaiguri, Pin.734007, beside Splendid Bekary\",\"City\":\"Siliguri\",\"Pin\":\"734007\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"IIMTT Siliguri Prabir Papia Bhattacharya.pdf\"}}','FRANCHISE',NULL,'Papia Bhattacharjee','NABAGRAM, SILIGURI','9474092692','papia.bhat@gmail.com','1227a3edac783ad8a789c79720981a4b','2020-01-15 10:40:19.389806',4,'PASSWORD CHANGED');
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
  `STUDENT_ID` varchar(20) NOT NULL,
  `DMV101` int(10) DEFAULT '0',
  `TOTAL_VIVA_MARKS` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`VIVA_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_VIVA_MARKS`
--

LOCK TABLES `BS_VIVA_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_VIVA_MARKS` DISABLE KEYS */;
INSERT INTO `BS_VIVA_MARKS` VALUES (1,'62','11',50,50),(2,'3ovNtsRz','12',30,30),(3,'3ovNtsRz','8',30,0),(4,'3oUPbmOZ','2019BasicBatch-2',40,0);
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
  `SUB_ITEMS_DETAILS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `ITEM_PRICE` varchar(20) DEFAULT NULL,
  `DELIVERY_CHARGES` int(15) DEFAULT NULL,
  `ITEM_STATUS` text,
  `DETAILS` text,
  PRIMARY KEY (`INVENTORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRANCHISE_INVENTORY`
--

LOCK TABLES `FRANCHISE_INVENTORY` WRITE;
/*!40000 ALTER TABLE `FRANCHISE_INVENTORY` DISABLE KEYS */;
INSERT INTO `FRANCHISE_INVENTORY` VALUES (88,'3ovNtsRz',NULL,'IIMTT','TT1','Study Kit',10,'{\"Theory\":\"10\",\"Practical\":\"10\"}','4000',NULL,'AVAILABLE',NULL),(90,'3ovNtsRz','3potiEfw','IIMTT','TT1','Study Kit',10,NULL,'4000',45,'ORDERED',NULL),(93,'3ovNtsRz','3pyw5rsV','IIMTT','TT2','Study Kit',10,NULL,'2000',45,'ORDERED',NULL);
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
  `NOTIFICATION_JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `TIME` text,
  PRIMARY KEY (`NOTIFICATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRANCHISE_NOTIFICATION`
--

LOCK TABLES `FRANCHISE_NOTIFICATION` WRITE;
/*!40000 ALTER TABLE `FRANCHISE_NOTIFICATION` DISABLE KEYS */;
INSERT INTO `FRANCHISE_NOTIFICATION` VALUES (51,'3ovNtsRz','10 Item(s) with item id TT1 is dispatched','addItem','DISMISSED','{\"itemId\":\"TT1\",\"noOfItems\":\"10\"}','2019-11-11 06:50:52pm');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_BATCH`
--

LOCK TABLES `FRP_BATCH` WRITE;
/*!40000 ALTER TABLE `FRP_BATCH` DISABLE KEYS */;
INSERT INTO `FRP_BATCH` VALUES (20,'3ovNtsRz','20193ovNtsRz3p3A9j1Z',2019,'Basic Batch','2019-11-13','2020-02-21'),(23,'3poGLkX7','20193poGLkX73poGQYBZ',2019,'Basic Batch','2019-12-25','2019-12-24'),(24,'3poKbfup','20203poKbfup3py6WtFq',2020,'Jan 2020 Batch','2020-01-16','2020-09-16');
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
  `SUB_ITEMS_DETAILS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_EXAM_CONTROL`
--

LOCK TABLES `FRP_TB_EXAM_CONTROL` WRITE;
/*!40000 ALTER TABLE `FRP_TB_EXAM_CONTROL` DISABLE KEYS */;
INSERT INTO `FRP_TB_EXAM_CONTROL` VALUES (62,'3ovNtsRz','INTERNAL EXAM','2019___Basic_Batch','DM105',NULL,NULL),(63,'3ovNtsRz','FINAL EXAM','2019___Basic_Batch','All subject',NULL,'2019-12-12'),(64,'3ovNtsRz','INTERNAL EXAM','2019 - Basic Batch','DA101',NULL,NULL),(65,'3ovNtsRz','INTERNAL EXAM','2019___Basic_Batch','DM102',NULL,NULL),(66,'3ovNtsRz','FINAL EXAM','2019___Basic_Batch','All subject',NULL,'2020-04-03'),(67,'3poGLkX7','INTERNAL EXAM','2019 - Basic Batch','DA101',NULL,NULL),(68,'3ovNtsRz','INTERNAL EXAM','2019___Basic_Batch','DM103',NULL,NULL),(69,'3ovNtsRz','FINAL EXAM','2019___Basic_Batch','All subject',NULL,'2020-02-01');
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
-- Table structure for table `FRP_TB_STUDENT_ENQUIRY`
--

DROP TABLE IF EXISTS `FRP_TB_STUDENT_ENQUIRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRP_TB_STUDENT_ENQUIRY` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_TYPE` varchar(100) NOT NULL,
  `STUDENT_NAME` varchar(200) NOT NULL,
  `DOB` date NOT NULL,
  `FATHER_NAME` varchar(200) DEFAULT NULL,
  `MOTHER_NAME` varchar(200) DEFAULT NULL,
  `PHONE_NO` varchar(20) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(100) NOT NULL,
  `PROGRAM` varchar(100) NOT NULL,
  `SUB_PROGRAM` varchar(200) DEFAULT NULL,
  `DATE_OF_ENQUIRE` date NOT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  `REFFERED_BY` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_STUDENT_ENQUIRY`
--

LOCK TABLES `FRP_TB_STUDENT_ENQUIRY` WRITE;
/*!40000 ALTER TABLE `FRP_TB_STUDENT_ENQUIRY` DISABLE KEYS */;
INSERT INTO `FRP_TB_STUDENT_ENQUIRY` VALUES (26,'3ovNtsRz','IIMTT','Gourav Chatterjee','1991-03-27',NULL,NULL,'08620993996','chatterjeegouravking@gmail.com','IIMTT Advance',NULL,'2019-11-12','Admitted',NULL),(27,'3ovNtsRz','IIMTT','Raju Bhaiya','2019-11-19',NULL,NULL,'08621071620','helloraju@gmail.com','IIMTT Basic',NULL,'2019-11-20','Admitted',NULL),(28,'3ovNtsRz','IIMTT','Ghsisjhs sdjjcbj','2019-12-05',NULL,NULL,'457855','chatterjeegouravking@gmail.com','IIMTT Advance',NULL,'2019-12-05','Admitted',NULL),(29,'3ovNtsRz','IIMTT','Gourav Chatterjee','2019-12-11',NULL,NULL,'8621071620','chatterjeegouravking@gmail.com','IIMTT Basic',NULL,'2019-12-04','Admitted',NULL),(30,'3ovNtsRz','IIMTT','Suvankar Sarkar','1988-02-24',NULL,NULL,'123456','sarkar.suvankar@gmail.com','IIMTT Advance',NULL,'2019-12-26','Admitted',NULL),(31,'3ovNtsRz','NON-IIMTT','Suvankar Sarkar','2019-12-25','skjfbhj','jwbjfb','4787887','chatterjeegouravking@gmail.com','YLE','YLE2','2019-12-26','Admitted',NULL),(32,'3ovNtsRz','IIMTT','yikyi','2020-01-01',NULL,NULL,'85285','Sales.beanstalk@gmail.com','IIMTT Basic',NULL,'2020-01-02','Admitted',NULL),(33,'3poKbfup','IIMTT','Supriya Kakkar','1984-11-14',NULL,NULL,'9538980404','supriya14kay@gmail.com','IIMTT Basic',NULL,'2019-11-21','Admitted',NULL),(34,'3poKbfup','IIMTT','Shweta Yadu','1988-05-24',NULL,NULL,'9980767950','swastiky14@gmail.com','IIMTT Basic',NULL,'2020-01-04','Enquired',NULL);
/*!40000 ALTER TABLE `FRP_TB_STUDENT_ENQUIRY` ENABLE KEYS */;
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
  `STUDENT_UNI_ID` varchar(20) NOT NULL,
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
  `ISSUED_ITEMS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `TOTAL_MARKS` int(10) DEFAULT NULL,
  `DATE_OF_ENROLLMENT` date NOT NULL,
  PRIMARY KEY (`FRP_STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_STUDENT_REGISTER`
--

LOCK TABLES `FRP_TB_STUDENT_REGISTER` WRITE;
/*!40000 ALTER TABLE `FRP_TB_STUDENT_REGISTER` DISABLE KEYS */;
INSERT INTO `FRP_TB_STUDENT_REGISTER` VALUES (51,'3ovNtsRz','2019BasicBatch-1','IIMTT','Gourav Chatterjee','1998-06-26',NULL,NULL,'08620993996','chatterjeegouravking@gmail.com','IIMTT Advance',NULL,'2019 - Basic Batch',NULL,131,'2019-11-12'),(52,'3ovNtsRz','2019BasicBatch-2','IIMTT','Raju Bhaiya','2019-11-19',NULL,NULL,'08621071620','helloraju@gmail.com','IIMTT Basic',NULL,'2019 - Basic Batch',NULL,NULL,'2019-12-10'),(53,'3ovNtsRz','2019BasicBatch-3','IIMTT','Gourav Chatterjee','2019-12-11',NULL,NULL,'8621071620','chatterjeegouravking@gmail.com','IIMTT Basic',NULL,'2019 - Basic Batch',NULL,NULL,'2019-12-26'),(57,'3ovNtsRz','2019BasicBatch-4','IIMTT','yikyi','2020-01-01',NULL,NULL,'85285','Sales.beanstalk@gmail.com','IIMTT Basic',NULL,'2019 - Basic Batch',NULL,NULL,'2020-01-01'),(58,'3poKbfup','-1','IIMTT','Supriya Kakkar','1984-11-14',NULL,NULL,'9538980404','supriya14kay@gmail.com','IIMTT Basic',NULL,'2020 - Jan 2020 Batch',NULL,NULL,'2020-01-15');
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

-- Dump completed on 2020-01-20 12:22:50
