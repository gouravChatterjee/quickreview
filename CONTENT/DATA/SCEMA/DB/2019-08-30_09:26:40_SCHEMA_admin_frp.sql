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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `BASIC_THEORY_TOTAL` int(10) DEFAULT NULL,
  PRIMARY KEY (`BASIC_THORY_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BS_USER`
--

DROP TABLE IF EXISTS `BS_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BS_USER` (
  `BS_USER_AUTOID` int(10) NOT NULL AUTO_INCREMENT,
  `BS_USER_ID` int(20) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `DMV101` int(10) DEFAULT NULL,
  PRIMARY KEY (`VIVA_MARKS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-30  9:26:40
