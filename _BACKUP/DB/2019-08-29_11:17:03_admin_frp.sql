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
-- Table structure for table `BS_ADVANCE_THEORY_MARKS`
--

DROP TABLE IF EXISTS `BS_ADVANCE_THEORY_MARKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_ADVANCE_THEORY_MARKS` (
  `MARKS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DM101` int(10) DEFAULT NULL,
  `DM102` int(10) DEFAULT NULL,
  `DM103` int(10) DEFAULT NULL,
  `DM104` int(10) DEFAULT NULL,
  `DM105` int(10) DEFAULT NULL,
  `DM106` int(10) DEFAULT NULL,
  `DM107` int(10) DEFAULT NULL,
  `DM108` int(10) DEFAULT NULL,
  `DA101` int(10) DEFAULT NULL,
  `DA102` int(10) DEFAULT NULL,
  `DA103` int(10) DEFAULT NULL,
  `DA104` int(10) DEFAULT NULL,
  `DA105` int(10) DEFAULT NULL,
  `DA106` int(10) DEFAULT NULL,
  `DA107` int(10) DEFAULT NULL,
  `DA108` int(10) DEFAULT NULL,
  `TOTAL_THEORY` int(10) DEFAULT NULL,
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
  `DMA101` int(10) DEFAULT NULL,
  `DMA102` int(10) DEFAULT NULL,
  `DMA103` int(10) DEFAULT NULL,
  `DMA104` int(10) DEFAULT NULL,
  `DMA105` int(10) DEFAULT NULL,
  PRIMARY KEY (`ALBUM_MARKS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_ALBUM_MARKS`
--

LOCK TABLES `BS_ALBUM_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_ALBUM_MARKS` DISABLE KEYS */;
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
  `DM101` int(10) DEFAULT NULL,
  `DM102` int(10) DEFAULT NULL,
  `DM103` int(10) DEFAULT NULL,
  `DM104` int(10) DEFAULT NULL,
  `DM105` int(10) DEFAULT NULL,
  `DM106` int(10) DEFAULT NULL,
  `DM107` int(10) DEFAULT NULL,
  `DM108` int(10) DEFAULT NULL,
  PRIMARY KEY (`BASIC_THORY_MARKS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_BASIC_THEORY_MARKS`
--

LOCK TABLES `BS_BASIC_THEORY_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_BASIC_THEORY_MARKS` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_NOTIFICATION`
--

LOCK TABLES `BS_NOTIFICATION` WRITE;
/*!40000 ALTER TABLE `BS_NOTIFICATION` DISABLE KEYS */;
INSERT INTO `BS_NOTIFICATION` VALUES (25,'62','PENDING','uploadFinalQuestion','All_16_chapters','2020_2021','Final Exam Question',NULL),(26,'62','PENDING','UploadQuestionPaper','DM101','2019_Delta','Internal Exam Question',NULL);
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
  `DMP101` int(10) DEFAULT NULL,
  `DMP102` int(10) DEFAULT NULL,
  `DMP103` int(10) DEFAULT NULL,
  `DMP104` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRACTICAL_MARKS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_PRACTICAL_MARKS`
--

LOCK TABLES `BS_PRACTICAL_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_PRACTICAL_MARKS` DISABLE KEYS */;
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
  `DMT101` int(10) DEFAULT NULL,
  `DMT102` int(10) DEFAULT NULL,
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

--
-- Table structure for table `BS_VIVA_VOICE_MARKS`
--

DROP TABLE IF EXISTS `BS_VIVA_VOICE_MARKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_VIVA_VOICE_MARKS` (
  `VIVA_VOICE_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DMV101` int(10) DEFAULT NULL,
  PRIMARY KEY (`VIVA_VOICE_MARKS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BS_VIVA_VOICE_MARKS`
--

LOCK TABLES `BS_VIVA_VOICE_MARKS` WRITE;
/*!40000 ALTER TABLE `BS_VIVA_VOICE_MARKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BS_VIVA_VOICE_MARKS` ENABLE KEYS */;
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
  `ITEM_PIC` varchar(100) DEFAULT NULL,
  `LEVEL` varchar(20) NOT NULL,
  `TENURE` int(5) NOT NULL,
  `BUSINESS_VERTICAL` varchar(25) NOT NULL,
  `QR_CODE_ITEM` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`FRP_AP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_ANNEXURE_PROGRAM`
--

LOCK TABLES `FRP_TB_ANNEXURE_PROGRAM` WRITE;
/*!40000 ALTER TABLE `FRP_TB_ANNEXURE_PROGRAM` DISABLE KEYS */;
INSERT INTO `FRP_TB_ANNEXURE_PROGRAM` VALUES (5,'IIMTT','TT1','TT1','Theory Book','download.jpeg','NA',12,'Teacher Training',NULL),(6,'IIMTT','TT1','TT1','Practical Book','','NA',12,'Teacher Training',NULL),(7,'YLE','YLE','YLE1','Starters L1','','L1',3,'Afterschool',NULL),(8,'YLE','YLE','YLE2','Starters L2','','L2',3,'Afterschool',NULL),(9,'YLE','YLE','YLE3','Starters L3','','L3',3,'Afterschool',NULL),(10,'YLE','YLE','YLE4','MoversL1','','L4',3,'Afterschool',NULL),(11,'YLE','YLE','YLE5','MoversL2','','L5',3,'Afterschool',NULL),(12,'YLE','YLE','YLE6','MoversL3','','L6',3,'Afterschool',NULL),(13,'YLE','YLE','YLE7','FlyersL1','','L7',3,'Afterschool',NULL),(14,'YLE','YLE','YLE8','FlyersL2','','L8',3,'Afterschool',NULL),(15,'YLE','YLE','YLE9','FlyersL3','','L9',3,'Afterschool',NULL),(16,'Maxbrain','MAX','MAX1','Level 1 Books','','L1',3,'Afterschool',NULL),(17,'Maxbrain','MAX','MAX2','Level 2 Books','','L2',3,'Afterschool',NULL),(18,'Maxbrain','MAX','MAX3','Level 3 Books','','L3',3,'Afterschool',NULL),(19,'Writo','WRT','A-WR1','Cursive Road','','L1',4,'Afterschool',NULL),(20,'Writo','WRT','A-WR2','Cursive Prime','','L2',4,'Afterschool',NULL),(21,'Writo','WRT','A-WR3','Cursive Plus','','L3',4,'Afterschool',NULL),(22,'Writo','WRT','A-WR4','Cursive Plus Ad','','L4',4,'Afterschool',NULL),(23,'3P','3P','SP1','Super Phonics 1','','L1',12,'Afterschool',NULL),(24,'3P','3P','SP1','Super Phonics 1','','L1',12,'Afterschool',NULL),(25,'3P','3P','SP2','Super Phonics 2','','L2',12,'Afterschool',NULL),(26,'3P','3P','SP3','Super Phonics 3','','L3',12,'Afterschool',NULL),(27,'3P','3P','P-WR1','Writo for IK1','','L1',12,'Afterschool',NULL),(28,'3P','3P','P-WR2','Writo for IK2','','L2',12,'Afterschool',NULL),(29,'3P','3P','P-WR3','Writo for IK3','','L3',12,'Afterschool',NULL),(30,'3P','3P','MIN1','Writo for IK1','','L1',12,'Afterschool',NULL),(31,'3P','3P','MIN2','Writo for IK2','','L2',12,'Afterschool',NULL),(32,'3P','3P','MIN3','Writo for IK3','','L3',12,'Afterschool',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_EXAM_CONTROL`
--

LOCK TABLES `FRP_TB_EXAM_CONTROL` WRITE;
/*!40000 ALTER TABLE `FRP_TB_EXAM_CONTROL` DISABLE KEYS */;
INSERT INTO `FRP_TB_EXAM_CONTROL` VALUES (30,'62','INTERNAL EXAM',NULL,'DM103',NULL,NULL),(31,'62','FINAL EXAM',NULL,'All subject',NULL,NULL),(32,'62','INTERNAL EXAM',NULL,'DM101',NULL,NULL),(33,'62','INTERNAL EXAM',NULL,'DM102',NULL,NULL),(34,'62','INTERNAL EXAM',NULL,'DM101',NULL,NULL),(35,'62','INTERNAL EXAM','2020_2021','DM103',NULL,NULL),(36,'62','INTERNAL EXAM','2020_2021','DM104',NULL,NULL),(37,'62','INTERNAL EXAM','2020_2021','DM105',NULL,NULL),(38,'62','INTERNAL EXAM','2020_2021','DM106',NULL,NULL),(39,'62','INTERNAL EXAM','2020_2021','DM107',NULL,NULL),(40,'62','INTERNAL EXAM','2020_2021','DA105',NULL,NULL),(41,'62','FINAL EXAM','2020_2021','All subject',NULL,'2019-09-19'),(42,'62','FINAL EXAM','2020_2021','All subject',NULL,'2019-09-20'),(43,'62','INTERNAL EXAM','2020_2021','DM106',NULL,NULL),(44,'62','INTERNAL EXAM','2020_2021','DM107',NULL,NULL),(45,'62','INTERNAL EXAM','2020_2021','DA102',NULL,NULL),(46,'62','FINAL EXAM','2020_2021','All subject',NULL,'2019-09-25'),(47,'62','INTERNAL EXAM','2019_Delta','DM101',NULL,NULL);
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
  `SESSION` varchar(100) DEFAULT NULL,
  `DATE_OF_ENROLLMENT` date NOT NULL,
  PRIMARY KEY (`FRP_NON_STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_NON_STUDENT_REGISTER`
--

LOCK TABLES `FRP_TB_NON_STUDENT_REGISTER` WRITE;
/*!40000 ALTER TABLE `FRP_TB_NON_STUDENT_REGISTER` DISABLE KEYS */;
INSERT INTO `FRP_TB_NON_STUDENT_REGISTER` VALUES (1,NULL,'Rakesh Sen','2006-02-10','Subrata Sen','Manisha Sen','256985658','hello@gmail.com','IIMTT',NULL,'2019-06-21'),(3,'1','Sudha Banerjee','2005-12-10','Amish Banerjee','radha banerjee','123655458','helo@gmail.com','YLE','2020-2021','2019-02-10');
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
  `STUDENT_NAME` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `PHONE_NO` varchar(20) NOT NULL,
  `EMAIL_ADDRESS` varchar(50) DEFAULT NULL,
  `PROGRAM` varchar(50) NOT NULL,
  `SESSION` varchar(100) DEFAULT NULL,
  `DATE_OF_ENROLLMENT` date NOT NULL,
  PRIMARY KEY (`FRP_STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FRP_TB_STUDENT_REGISTER`
--

LOCK TABLES `FRP_TB_STUDENT_REGISTER` WRITE;
/*!40000 ALTER TABLE `FRP_TB_STUDENT_REGISTER` DISABLE KEYS */;
INSERT INTO `FRP_TB_STUDENT_REGISTER` VALUES (6,'62','Gourav Chatterjee','1998-06-26','5943093','chatterjeegouravking@gmail.com','IIMTT Basic,IIMTT Advance','2020-2021','2019-08-24'),(8,'62','Gourav Chatterjee','2019-08-10','8620993996','chatterjeegouravking@gmail.com','IIMTT Basic','2019 Delta','2019-08-20');
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

-- Dump completed on 2019-08-29 11:17:03
