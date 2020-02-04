-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 172.16.1.52
-- Generation Time: Dec 12, 2019 at 06:41 AM
-- Server version: 10.3.18-MariaDB-1:10.3.18+maria~bionic
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_frp`
--

-- --------------------------------------------------------

--
-- Table structure for table `BS_ADVANCE_THEORY_MARKS`
--

CREATE TABLE `BS_ADVANCE_THEORY_MARKS` (
  `MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(20) NOT NULL,
  `DA101` int(10) DEFAULT 0,
  `DA102` int(10) DEFAULT 0,
  `DA103` int(10) DEFAULT 0,
  `DA104` int(10) DEFAULT 0,
  `DA105` int(10) DEFAULT 0,
  `DA106` int(10) DEFAULT 0,
  `DA107` int(10) DEFAULT 0,
  `DA108` int(10) DEFAULT 0,
  `TOTAL_ADVANCE_THEORY` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_ADVANCE_THEORY_MARKS`
--

INSERT INTO `BS_ADVANCE_THEORY_MARKS` (`MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DA101`, `DA102`, `DA103`, `DA104`, `DA105`, `DA106`, `DA107`, `DA108`, `TOTAL_ADVANCE_THEORY`) VALUES
(1, '3ovNtsRz', '8', 30, 0, 30, 0, 34, 0, 0, 0, 94),
(2, '3ovNtsRz', '2019BasicBatch-1', 45, 0, 0, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_ALBUM_MARKS`
--

CREATE TABLE `BS_ALBUM_MARKS` (
  `ALBUM_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(20) NOT NULL,
  `DMA101` int(10) DEFAULT 0,
  `DMA102` int(10) DEFAULT 0,
  `DMA103` int(10) DEFAULT 0,
  `DMA104` int(10) DEFAULT 0,
  `DMA105` int(10) DEFAULT 0,
  `TOTAL_ALBUM_MARKS` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_ALBUM_MARKS`
--

INSERT INTO `BS_ALBUM_MARKS` (`ALBUM_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMA101`, `DMA102`, `DMA103`, `DMA104`, `DMA105`, `TOTAL_ALBUM_MARKS`) VALUES
(1, '3ovNtsRz', '11', 20, 35, 0, 0, 0, 55),
(2, '3ovNtsRz', '8', 30, 50, 47, 0, 0, 127),
(3, '3ovNtsRz', '12', 32, 39, 30, 0, 0, 101),
(4, '3oUPbmOZ', '3oUTWbYj', 0, 44, 0, 0, 0, 44);

-- --------------------------------------------------------

--
-- Table structure for table `BS_BASIC_THEORY_MARKS`
--

CREATE TABLE `BS_BASIC_THEORY_MARKS` (
  `BASIC_THORY_MARKS_ID` int(10) NOT NULL,
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
  `TOTAL_BASIC_THEORY` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_BASIC_THEORY_MARKS`
--

INSERT INTO `BS_BASIC_THEORY_MARKS` (`BASIC_THORY_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DM101`, `DM102`, `DM103`, `DM104`, `DM105`, `DM106`, `DM107`, `DM108`, `TOTAL_BASIC_THEORY`) VALUES
(3, '3ovNtsRz', '6', 50, 0, 0, 0, 0, 0, 0, 0, 50),
(5, '3ovNtsRz', '13', 50, 30, 0, 0, 0, 0, 0, 0, 80),
(6, '3ovNtsRz', '12', 50, 18, 30, 30, 0, 0, 0, 0, 128),
(7, '3ovNtsRz', '8', 30, 15, 30, 18, 15, 30, 45, 30, 213),
(8, '3ovNtsRz', '16', 21, 15, 0, 0, 0, 0, 0, 0, 21),
(9, '3ovNtsRz', '20', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '3oUPbmOZ', '2019BasicBatch-2', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '3ovNtsRz', '2019BasicBatch-1', NULL, NULL, NULL, 50, 15, 50, NULL, NULL, 115);

-- --------------------------------------------------------

--
-- Table structure for table `BS_INVENTORY`
--

CREATE TABLE `BS_INVENTORY` (
  `ID` int(10) NOT NULL,
  `TIME_STAMP` timestamp NOT NULL DEFAULT current_timestamp(),
  `PROGRAM_ID` varchar(50) DEFAULT NULL,
  `ITEM_ID` varchar(50) DEFAULT NULL,
  `ITEM_NAME` varchar(100) DEFAULT NULL,
  `ITEM_DESC` varchar(100) DEFAULT NULL,
  `NUMBER_OF_ITEMS` int(11) NOT NULL,
  `ITEM_STATUS` varchar(100) DEFAULT NULL,
  `ITEM_REQ_DATE` varchar(50) DEFAULT NULL,
  `ITEM_REC_DATE` varchar(50) DEFAULT NULL,
  `ITEM_ISU_DATE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_INVENTORY`
--

INSERT INTO `BS_INVENTORY` (`ID`, `TIME_STAMP`, `PROGRAM_ID`, `ITEM_ID`, `ITEM_NAME`, `ITEM_DESC`, `NUMBER_OF_ITEMS`, `ITEM_STATUS`, `ITEM_REQ_DATE`, `ITEM_REC_DATE`, `ITEM_ISU_DATE`) VALUES
(3, '2019-07-27 07:55:29', 'Pre School', NULL, 'Theory Book', 'Book For ik2', 5, NULL, NULL, '2019-07-27', NULL),
(6, '2019-07-27 08:51:48', 'Pre School', NULL, 'Practical book', 'Its a pract book for IK1 students', 10, NULL, NULL, '2019-07-28', NULL),
(7, '2019-07-30 08:37:24', 'Afterschool Program', NULL, 'Theory Book', 'xzzx', 2, NULL, NULL, '2019-07-30', NULL),
(8, '2019-07-30 08:38:13', 'Pre School', NULL, 'fffffffff', 'ffffs', 3, NULL, NULL, '2019-07-30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_NOTIFICATION`
--

CREATE TABLE `BS_NOTIFICATION` (
  `NOTIFICATION_ID` int(10) NOT NULL,
  `USER_ID` varchar(15) NOT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `LINK` varchar(50) DEFAULT NULL,
  `SUBJECT_DETAILS` varchar(100) DEFAULT NULL,
  `SESSION` varchar(100) DEFAULT NULL,
  `NOTIFICATION_DETAILS` varchar(100) DEFAULT NULL,
  `JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_NOTIFICATION`
--

INSERT INTO `BS_NOTIFICATION` (`NOTIFICATION_ID`, `USER_ID`, `STATUS`, `LINK`, `SUBJECT_DETAILS`, `SESSION`, `NOTIFICATION_DETAILS`, `JSOND`) VALUES
(165, '3ovNtsRz', 'PENDING', 'deliverCharge', '', NULL, 'Delivery Charge Request', NULL),
(166, '3ovNtsRz', 'PENDING', 'deliveryDone', '', NULL, 'New order from Beanstalk New', NULL),
(167, '3ovNtsRz', 'PENDING', '#', '', NULL, 'Franchise has recieved 0 TT1 - Study Kit', NULL),
(168, '3ovNtsRz', 'PENDING', 'UploadQuestionPaper', 'DM101', '2019___Basic_Batch', 'Internal Exam Question', NULL),
(169, '3ovNtsRz', 'PENDING', 'uploadFinalQuestion', 'All_16_chapters', '2019___Basic_Batch', 'Final Exam Question', NULL),
(170, '3ovNtsRz', 'PENDING', 'deliverCharge', '', NULL, 'Delivery Charge Request', NULL),
(171, '3ovNtsRz', 'PENDING', 'deliveryDone', '', NULL, 'New order from Beanstalk New', NULL),
(172, '3ovNtsRz', 'PENDING', '#', '', NULL, 'Franchise has recieved 0 TT1 - Study Kit', NULL),
(173, '3ovNtsRz', 'PENDING', 'UploadQuestionPaper', 'DM105', '2019___Basic_Batch', 'Internal Exam Question', NULL),
(174, '3ovNtsRz', 'PENDING', 'uploadFinalQuestion', 'All_16_chapters', '2019___Basic_Batch', 'Final Exam Question', NULL),
(175, '3ovNtsRz', 'PENDING', 'UploadQuestionPaper', 'DA101', '2019 - Basic Batch', 'Internal Exam Question', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_PRACTICAL_MARKS`
--

CREATE TABLE `BS_PRACTICAL_MARKS` (
  `PRACTICAL_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(20) NOT NULL,
  `DMP101` int(10) DEFAULT 0,
  `DMP102` int(10) DEFAULT 0,
  `DMP103` int(10) DEFAULT 0,
  `DMP104` int(11) DEFAULT 0,
  `TOTAL_PRACTICAL_MARKS` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_PRACTICAL_MARKS`
--

INSERT INTO `BS_PRACTICAL_MARKS` (`PRACTICAL_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMP101`, `DMP102`, `DMP103`, `DMP104`, `TOTAL_PRACTICAL_MARKS`) VALUES
(1, '3ovNtsRz', '11', 21, 0, 0, 0, 21),
(2, '3ovNtsRz', '8', 24, 23, 25, 15, 87),
(3, '3ovNtsRz', '12', 17, 0, 0, 0, 17),
(4, '3ovNtsRz', '40', 23, 25, 0, 0, 48),
(5, '3oUPbmOZ', '2019BasicBatch-2', 18, 25, 15, 23, 81),
(6, '3ovNtsRz', '2019BasicBatch-1', 16, 0, 0, 0, 16);

-- --------------------------------------------------------

--
-- Table structure for table `BS_PRACTICE_TEACHING_MARKS`
--

CREATE TABLE `BS_PRACTICE_TEACHING_MARKS` (
  `PRACTICE_TEACHING_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(20) NOT NULL,
  `DMT101` int(10) DEFAULT 0,
  `DMT102` int(10) DEFAULT 0,
  `TOTAL_PRACTICE_TEACHING_MARKS` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_PRACTICE_TEACHING_MARKS`
--

INSERT INTO `BS_PRACTICE_TEACHING_MARKS` (`PRACTICE_TEACHING_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMT101`, `DMT102`, `TOTAL_PRACTICE_TEACHING_MARKS`) VALUES
(1, '3ovNtsRz', '12', 100, 70, 170),
(2, '3ovNtsRz', '8', 90, 40, 130);

-- --------------------------------------------------------

--
-- Table structure for table `BS_USER`
--

CREATE TABLE `BS_USER` (
  `BS_USER_AUTOID` int(11) NOT NULL,
  `BS_USER_ID` varchar(10) DEFAULT NULL,
  `USER_JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `BS_USER_TYPE` varchar(50) DEFAULT NULL,
  `BS_USER_GROUP` varchar(50) DEFAULT NULL,
  `USER_FULL_NAME` varchar(100) DEFAULT NULL,
  `USER_PHONE` varchar(15) DEFAULT NULL,
  `USER_EMAIL` varchar(30) DEFAULT NULL,
  `USER_PASSWORD` varchar(100) DEFAULT NULL,
  `REGISTER_TIME` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `STATUS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_USER`
--

INSERT INTO `BS_USER` (`BS_USER_AUTOID`, `BS_USER_ID`, `USER_JSOND`, `BS_USER_TYPE`, `BS_USER_GROUP`, `USER_FULL_NAME`, `USER_PHONE`, `USER_EMAIL`, `USER_PASSWORD`, `REGISTER_TIME`, `STATUS`) VALUES
(1, '3ovNtLOg', NULL, 'Developer', '', 'Gourav Chatterjee', '8621071620', 'chatterjeegouravking@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', '2019-08-02 03:04:08.000000', NULL),
(62, '3ovNtsRz', '{\"Details\":{\"Programs\":\"IIMTT,YLE\"},\"ValidFr\":{\"ValidFrom\":\"2019-08-08\"},\"ValidTo\":{\"ValidTo\":\"2019-08-03\"},\"Address\":{\"FranName\":\"Beanstalk New\",\"Line1\":\"3, sadhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"Barbados\",\"State\":\"Saint Philip\",\"Agreement\":\"download.jpeg\"}}', 'FRANCHISE', NULL, 'Beanstalk New', '8620993996', 'gourav@gmail.com', '96e79218965eb72c92a549dd5a330112', '2019-08-08 06:54:14.481455', NULL),
(70, '3ovNeEe-', '{\"Details\":{\"Programs\":\"3P\"},\"ValidFr\":{\"ValidFrom\":\"2019-09-20\"},\"ValidTo\":{\"ValidTo\":\"2019-09-19\"},\"Address\":{\"FranName\":\"new Fran\",\"Line1\":\"howrah\",\"City\":\"kolkata\",\"Pin\":\"700001\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"internalExamQues.php\"}}', 'FRANCHISE', NULL, 'new Fran', '08620993996', 'hik@gmail.com', NULL, '2019-09-03 05:57:12.424631', NULL),
(71, '3oUPbmOZ', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-10-25\"},\"ValidTo\":{\"ValidTo\":\"2020-03-13\"},\"Address\":{\"FranName\":\"The Brand New Beanstalk\",\"Line1\":\"Roy  Pur road\",\"City\":\"Roy pur\",\"Pin\":\"3424244\",\"Country\":\"India\",\"State\":\"Bihar\",\"Agreement\":\"CORPORATE_CONTACT.sql\"}}', 'FRANCHISE', NULL, 'The Brand New Beanstalk', '123456', 'franchise@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', '2019-10-25 05:23:00.622108', NULL),
(72, '3pfRwQob', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-12-09\"},\"ValidTo\":{\"ValidTo\":\"2019-12-09\"},\"Address\":{\"FranName\":\"The Brand New Beanstalk\",\"Line1\":\"3, saddhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"ea5cc316-9cde-4fc7-9dc8-6d9206df54f2.jpg\"}}', 'FRANCHISE', NULL, 'The Brand New Beanstalk', '45454545', 'chatterjee@gmail.com', NULL, '2019-12-09 11:32:16.850425', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_VIVA_MARKS`
--

CREATE TABLE `BS_VIVA_MARKS` (
  `VIVA_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(20) NOT NULL,
  `DMV101` int(10) DEFAULT 0,
  `TOTAL_VIVA_MARKS` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_VIVA_MARKS`
--

INSERT INTO `BS_VIVA_MARKS` (`VIVA_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMV101`, `TOTAL_VIVA_MARKS`) VALUES
(1, '62', '11', 50, 50),
(2, '3ovNtsRz', '12', 30, 30),
(3, '3ovNtsRz', '8', 30, 0),
(4, '3oUPbmOZ', '2019BasicBatch-2', 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `FRANCHISE_INVENTORY`
--

CREATE TABLE `FRANCHISE_INVENTORY` (
  `INVENTORY_ID` int(11) NOT NULL,
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
  `DETAILS` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FRANCHISE_INVENTORY`
--

INSERT INTO `FRANCHISE_INVENTORY` (`INVENTORY_ID`, `FRANCHISE_ID`, `CART_ID`, `PROGRAM_NAME`, `ITEM_ID`, `ITEM_NAME`, `NUMBER_OF_ITEM`, `SUB_ITEMS_DETAILS`, `ITEM_PRICE`, `DELIVERY_CHARGES`, `ITEM_STATUS`, `DETAILS`) VALUES
(88, '3ovNtsRz', NULL, 'IIMTT', 'TT1', 'Study Kit', 10, '{\"Theory\":\"10\",\"Practical\":\"10\"}', '4000', NULL, 'AVAILABLE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FRANCHISE_NOTIFICATION`
--

CREATE TABLE `FRANCHISE_NOTIFICATION` (
  `NOTIFICATION_ID` int(8) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `DETAILS` varchar(100) DEFAULT NULL,
  `LINK_TO_GO` varchar(50) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `NOTIFICATION_JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `TIME` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FRANCHISE_NOTIFICATION`
--

INSERT INTO `FRANCHISE_NOTIFICATION` (`NOTIFICATION_ID`, `FRANCHISE_ID`, `DETAILS`, `LINK_TO_GO`, `STATUS`, `NOTIFICATION_JSOND`, `TIME`) VALUES
(51, '3ovNtsRz', '10 Item(s) with item id TT1 is dispatched', 'addItem', 'DISMISSED', '{\"itemId\":\"TT1\",\"noOfItems\":\"10\"}', '2019-11-11 06:50:52pm');

-- --------------------------------------------------------

--
-- Table structure for table `FRP_BATCH`
--

CREATE TABLE `FRP_BATCH` (
  `BATCH_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `BATCH_UNI_ID` varchar(20) NOT NULL,
  `BATCH_YEAR` year(4) DEFAULT NULL,
  `BATCH_NAME` varchar(50) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FRP_BATCH`
--

INSERT INTO `FRP_BATCH` (`BATCH_ID`, `FRANCHISE_ID`, `BATCH_UNI_ID`, `BATCH_YEAR`, `BATCH_NAME`, `START_DATE`, `END_DATE`) VALUES
(20, '3ovNtsRz', '20193ovNtsRz3p3A9j1Z', 2019, 'Basic Batch', '2019-11-13', '2020-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_ANNEXURE_PROGRAM`
--

CREATE TABLE `FRP_TB_ANNEXURE_PROGRAM` (
  `FRP_AP_ID` int(10) NOT NULL,
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
  `QR_CODE_ITEM` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRP_TB_ANNEXURE_PROGRAM`
--

INSERT INTO `FRP_TB_ANNEXURE_PROGRAM` (`FRP_AP_ID`, `PROGRAM`, `PROGRAM_ID`, `ITEM_ID`, `ITEM_DESC`, `SUB_ITEMS_DETAILS`, `ITEM_PRICE`, `ITEM_PIC`, `LEVEL`, `TENURE`, `BUSINESS_VERTICAL`, `QR_CODE_ITEM`) VALUES
(1, 'IIMTT Basic', 'TT1', 'TT1', 'Study Kit', '{\"Theory\":{\"Number_of_item\":\"2\",\"price\":\"150\"},\"Practical\":{\"Number_of_item\":\"2\",\"price\":\"150\"}}', 4000, 'download.jpeg', 'NA', 12, 'Teacher Training', NULL),
(2, 'IIMTT Advance', 'TT2', 'TT2', 'Study Kit', NULL, 2000, '', 'NA', 12, 'Teacher Training', NULL),
(3, 'YLE', 'YLE', 'YLE1', 'Starters', NULL, 750, '', 'L1', 3, 'Afterschool', NULL),
(4, 'YLE', 'YLE', 'YLE2', 'Movers', NULL, 750, '', 'L4', 3, 'Afterschool', NULL),
(5, 'YLE', 'YLE', 'YLE3', 'Flyers', NULL, 750, '', 'L7', 3, 'Afterschool', NULL),
(6, 'Maxbrain', 'MAX', 'MAX1', 'Level 1 Books', NULL, 250, '', 'L1', 3, 'Afterschool', NULL),
(7, 'Maxbrain', 'MAX', 'MAX2', 'Level 2 Books', NULL, 250, '', 'L2', 3, 'Afterschool', NULL),
(8, 'Maxbrain', 'MAX', 'MAX3', 'Level 3 Books', NULL, 250, '', 'L3', 3, 'Afterschool', NULL),
(9, 'Maxbrain', 'MAX', 'MAX4', 'Level 4 Books', NULL, 250, '', 'L3', 3, 'Afterschool', NULL),
(10, 'Maxbrain', 'MAX', 'MAX5', 'Level 5 Books', NULL, 250, '', 'L3', 3, 'Afterschool', NULL),
(11, 'Maxbrain', 'MAX', 'MAX6', 'Level 6 Books', NULL, 250, '', 'L3', 3, 'Afterschool', NULL),
(12, '3P', '3P', '3P1', '3-4 Years', '{\"Super Phonics\":{\"Item_Details\":\"Super Phonics 1\",\"Item_Id\":\"SP1\",\"Number_of_item\":\"2\",\"price\":\"150\"},\"Writo\":{\"Item_Details\":\"Writo for IK1\",\"Item_Id\":\"P-WR1\",\"Number_of_item\":\"2\",\"price\":\"15\"},\"Min-Max\":{\"Item_Details\":\"Min-max for IK1\",\"Item_Id\":\"MIN1\",\"Number_of_item\":\"2\",\"price\":\"150\"}}', 1000, '', 'L1', 12, 'Afterschool', NULL),
(13, '3P', '3P', '3P2', '4-5 Years', '{\"Super Phonics\":{\"Item_Details\":\"Super Phonics 2\",\"Item_Id\":\"SP2\",\"Number_of_item\":\"2\",\"price\":\"150\"},\"Writo\":{\"Item_Details\":\"Writo for IK2\",\"Item_Id\":\"P-WR2\",\"Number_of_item\":\"2\",\"price\":\"15\"},\"Min-Max\":{\"Item_Details\":\"Min-max for IK2\",\"Item_Id\":\"MIN2\",\"Number_of_item\":\"2\",\"price\":\"150\"}}', 1000, '', 'L2', 12, 'Afterschool', NULL),
(14, '3P', '3P', '3P3', '5-6 Years', '{\"Super Phonics\":{\"Item_Details\":\"Super Phonics 3\",\"Item_Id\":\"SP3\",\"Number_of_item\":\"2\",\"price\":\"150\"},\"Writo\":{\"Item_Details\":\"Writo for IK3\",\"Item_Id\":\"P-WR3\",\"Number_of_item\":\"2\",\"price\":\"15\"},\"Min-Max\":{\"Item_Details\":\"Min-max for IK3\",\"Item_Id\":\"MIN3\",\"Number_of_item\":\"2\",\"price\":\"150\"}}', 1000, '', 'L3', 12, 'Afterschool', NULL),
(15, 'Writo', 'WRT', 'A-WR1', 'Cursive Road', NULL, 650, '', 'L1', 12, 'Afterschool', NULL),
(16, 'Writo', 'WRT', 'A-WR2', 'Cursive Prime', NULL, 650, '', 'L2', 12, 'Afterschool', NULL),
(17, 'Writo', 'WRT', 'A-WR3', 'Cursive Plus', NULL, 650, '', 'L3', 12, 'Afterschool', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_BOOK_COST`
--

CREATE TABLE `FRP_TB_BOOK_COST` (
  `FRP_BOOK_ID` int(10) NOT NULL,
  `PROGRAM_ID` varchar(20) NOT NULL,
  `PROGRAM_DESCR` varchar(20) NOT NULL,
  `ITEM_ID` varchar(20) NOT NULL,
  `ITEM_DESCR` varchar(20) NOT NULL,
  `IMAGE` varchar(100) DEFAULT NULL,
  `COST` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRP_TB_BOOK_COST`
--

INSERT INTO `FRP_TB_BOOK_COST` (`FRP_BOOK_ID`, `PROGRAM_ID`, `PROGRAM_DESCR`, `ITEM_ID`, `ITEM_DESCR`, `IMAGE`, `COST`) VALUES
(1, 'TT1', 'IIMTT', 'TT1', 'THEORY BOOK', 'img.jpg', '150.00'),
(2, 'YLE', 'IIMTT', 'TT1', 'Hello', 'passport.jpg', '125'),
(3, 'YLE', 'IIMTT', 'TT1', 'Hello', 'passport.jpg', '125'),
(4, 'YLE', 'IIMTT', 'TT1', 'Hello', 'passport.jpg', '125'),
(5, 'TT1', 'IIMTT', 'TT1', '', '', ''),
(6, 'TT1', 'IIMTT', 'TT1', 'sfdsfs', 'passport.jpg', '12'),
(7, 'YLE', 'MAXBRAIN', 'A-WR3', 'bdfbdfbdf', 'passport.jpg', '123'),
(8, 'TT1', 'IIMTT', 'TT1', '', '', ''),
(9, 'TT1', 'IIMTT', 'TT1', '', '', ''),
(10, 'MAX', 'YLE', 'A-WR2', 'aasa', 'iao_certificate.jpg', '150'),
(11, 'YLE', 'YLE', 'A-WR3', 'dcsc', 'passport.jpg', '345'),
(12, 'MAX', 'MAXBRAIN', 'A-WR1', 'New Book', 'passport.jpg', '150'),
(13, 'MAX', 'IIMTT', 'A-WR3', 'sfdsfs', 'college-student-resume-format-pdf-listmachineprocom.jpg', '520'),
(14, 'TT1', 'IIMTT', 'TT1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_EXAM_CONTROL`
--

CREATE TABLE `FRP_TB_EXAM_CONTROL` (
  `FRP_EXAM_ID` int(20) NOT NULL,
  `FRANCHISE_ID` varchar(10) DEFAULT NULL,
  `EXAM_TYPE` varchar(100) DEFAULT NULL,
  `SESSION` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(50) DEFAULT NULL,
  `PROGRAM_ID` varchar(50) DEFAULT NULL,
  `EXAM_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRP_TB_EXAM_CONTROL`
--

INSERT INTO `FRP_TB_EXAM_CONTROL` (`FRP_EXAM_ID`, `FRANCHISE_ID`, `EXAM_TYPE`, `SESSION`, `SUBJECT`, `PROGRAM_ID`, `EXAM_DATE`) VALUES
(62, '3ovNtsRz', 'INTERNAL EXAM', '2019___Basic_Batch', 'DM105', NULL, NULL),
(63, '3ovNtsRz', 'FINAL EXAM', '2019___Basic_Batch', 'All subject', NULL, '2019-12-12'),
(64, '3ovNtsRz', 'INTERNAL EXAM', '2019 - Basic Batch', 'DA101', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_FRANCHISE_LIST`
--

CREATE TABLE `FRP_TB_FRANCHISE_LIST` (
  `FRP_FRANCHISE_ID` int(10) NOT NULL,
  `FRAN_NAME` varchar(100) NOT NULL,
  `COUNTRY` varchar(50) NOT NULL,
  `STATE` varchar(50) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `PROGRAM` varchar(20) NOT NULL,
  `VALID_FROM` date NOT NULL,
  `VALID_TO` date NOT NULL,
  `AGREEMENT_COPY` varchar(100) NOT NULL,
  `PHN_NO` varchar(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRP_TB_FRANCHISE_LIST`
--

INSERT INTO `FRP_TB_FRANCHISE_LIST` (`FRP_FRANCHISE_ID`, `FRAN_NAME`, `COUNTRY`, `STATE`, `CITY`, `PROGRAM`, `VALID_FROM`, `VALID_TO`, `AGREEMENT_COPY`, `PHN_NO`, `EMAIL`) VALUES
(1, 'Beanstalk New', 'India', 'West Bengal', 'Barrackpore', 'IIMTT,IIMTTI', '2019-06-12', '2019-08-25', 'passport.jpg', '08620171620', 'hello@gmail.com'),
(2, 'Beanstalk New', 'India', 'West Bengal', 'Barrackpore', 'IIMTT,IIMTTI', '2019-06-12', '2019-08-25', 'passport.jpg', '08620171620', 'hello@gmail.com'),
(3, 'Beanstalk New', 'Afghanistan', 'Laghman', 'honululu', 'IIMTT,IIMTTI,MAXBRAI', '2019-06-09', '2019-06-30', 'my cv - Copy.docx', '08620993996', 'hii@gmail.com'),
(4, 'Beanstalk New 2', 'USA', 'California', 'california', 'IIMTTI,YLE,MAXBRAIN', '2019-06-10', '2019-11-24', 'diploma-mechanical-engineering-resume-format-beautiful-download-site-engineer-sample-of-computer-res', '8621071620', 'hyhy@gml.com');

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_NON_STUDENT_REGISTER`
--

CREATE TABLE `FRP_TB_NON_STUDENT_REGISTER` (
  `FRP_NON_STUDENT_ID` int(20) NOT NULL,
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
  `DATE_OF_ENROLLMENT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRP_TB_NON_STUDENT_REGISTER`
--

INSERT INTO `FRP_TB_NON_STUDENT_REGISTER` (`FRP_NON_STUDENT_ID`, `FRANCHISE_ID`, `STUDENT_NAME`, `DOB`, `FATHER_NAME`, `MOTHER_NAME`, `PHONE_NO`, `EMAIL`, `PROGRAM`, `SUB_PROGRAM`, `SESSION`, `DATE_OF_ENROLLMENT`) VALUES
(1, NULL, 'Rakesh Sen', '2006-02-10', 'Subrata Sen', 'Manisha Sen', '256985658', 'hello@gmail.com', 'IIMTT', NULL, NULL, '2019-06-21'),
(3, '1', 'Sudha Banerjee', '2005-12-10', 'Amish Banerjee', 'radha banerjee', '123655458', 'helo@gmail.com', 'YLE', NULL, '2020-2021', '2019-02-10'),
(5, '62', 'Candidate Name1', '2013-08-30', 'Father Name1', 'Mother Name', '777777777', 'email@kmail.com', 'MAXBRAIN', NULL, '2019 - C', '2019-08-21'),
(6, '62', 'Candidate Name2', '2015-05-25', 'Father Name2', 'mother name2', '4444444444', 'email@dmailc.com', 'MAXBRAIN', NULL, '2020 - B', '2019-08-25'),
(8, '3ovNtLOg', 'Ramu Adhikari', '2016-02-10', 'Shamu Adhikari', 'Dhamu Adhikari', '456789', 'HAHAHAH@gmail.com', 'YLEWRITO', 'MoverCursive Plus', '', '2019-09-08'),
(9, '3ovNtLOg', 'Gourav Chatterjee', '1998-06-26', 'Gourav Chatterjee', 'Gourav Chatterjee', '08620993996', 'chatterjeegouravking@gmail.com', 'YLE,MAXBRAIN', 'Starter,Level 2', '', '2016-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_STUDENT_ENQUIRY`
--

CREATE TABLE `FRP_TB_STUDENT_ENQUIRY` (
  `ID` int(10) NOT NULL,
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
  `REFFERED_BY` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRP_TB_STUDENT_ENQUIRY`
--

INSERT INTO `FRP_TB_STUDENT_ENQUIRY` (`ID`, `FRANCHISE_ID`, `STUDENT_TYPE`, `STUDENT_NAME`, `DOB`, `FATHER_NAME`, `MOTHER_NAME`, `PHONE_NO`, `EMAIL_ADDRESS`, `PROGRAM`, `SUB_PROGRAM`, `DATE_OF_ENQUIRE`, `STATUS`, `REFFERED_BY`) VALUES
(26, '3ovNtsRz', 'IIMTT', 'Gourav Chatterjee', '1991-03-27', NULL, NULL, '08620993996', 'chatterjeegouravking@gmail.com', 'IIMTT Advance', NULL, '2019-11-12', 'Admitted', NULL),
(27, '3ovNtsRz', 'IIMTT', 'Raju Bhaiya', '2019-11-19', NULL, NULL, '08621071620', 'helloraju@gmail.com', 'IIMTT Basic', NULL, '2019-11-20', 'Admitted', NULL),
(28, '3ovNtsRz', 'IIMTT', 'Ghsisjhs sdjjcbj', '2019-12-05', NULL, NULL, '457855', 'chatterjeegouravking@gmail.com', 'IIMTT Advance', NULL, '2019-12-05', 'Enquired', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_STUDENT_REGISTER`
--

CREATE TABLE `FRP_TB_STUDENT_REGISTER` (
  `FRP_STUDENT_ID` int(10) NOT NULL,
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
  `ISSUED_ITEMS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `TOTAL_MARKS` int(10) DEFAULT NULL,
  `DATE_OF_ENROLLMENT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRP_TB_STUDENT_REGISTER`
--

INSERT INTO `FRP_TB_STUDENT_REGISTER` (`FRP_STUDENT_ID`, `FRANCHISE_ID`, `STUDENT_UNI_ID`, `STUDENT_TYPE`, `STUDENT_NAME`, `DOB`, `FATHER_NAME`, `MOTHER_NAME`, `PHONE_NO`, `EMAIL_ADDRESS`, `PROGRAM`, `SUB_PROGRAM`, `SESSION`, `ISSUED_ITEMS`, `TOTAL_MARKS`, `DATE_OF_ENROLLMENT`) VALUES
(51, '3ovNtsRz', '2019BasicBatch-1', 'IIMTT', 'Gourav Chatterjee', '1991-03-27', NULL, NULL, '08620993996', 'chatterjeegouravking@gmail.com', 'IIMTT Advance', NULL, '2019 - Basic Batch', NULL, 131, '2019-11-12'),
(52, '3ovNtsRz', '2019BasicBatch-2', 'IIMTT', 'Raju Bhaiya', '2019-11-19', NULL, NULL, '08621071620', 'helloraju@gmail.com', 'IIMTT Basic', NULL, '2019 - Basic Batch', NULL, NULL, '2019-12-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BS_ADVANCE_THEORY_MARKS`
--
ALTER TABLE `BS_ADVANCE_THEORY_MARKS`
  ADD PRIMARY KEY (`MARKS_ID`);

--
-- Indexes for table `BS_ALBUM_MARKS`
--
ALTER TABLE `BS_ALBUM_MARKS`
  ADD PRIMARY KEY (`ALBUM_MARKS_ID`);

--
-- Indexes for table `BS_BASIC_THEORY_MARKS`
--
ALTER TABLE `BS_BASIC_THEORY_MARKS`
  ADD PRIMARY KEY (`BASIC_THORY_MARKS_ID`);

--
-- Indexes for table `BS_INVENTORY`
--
ALTER TABLE `BS_INVENTORY`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BS_NOTIFICATION`
--
ALTER TABLE `BS_NOTIFICATION`
  ADD PRIMARY KEY (`NOTIFICATION_ID`);

--
-- Indexes for table `BS_PRACTICAL_MARKS`
--
ALTER TABLE `BS_PRACTICAL_MARKS`
  ADD PRIMARY KEY (`PRACTICAL_MARKS_ID`);

--
-- Indexes for table `BS_PRACTICE_TEACHING_MARKS`
--
ALTER TABLE `BS_PRACTICE_TEACHING_MARKS`
  ADD PRIMARY KEY (`PRACTICE_TEACHING_MARKS_ID`);

--
-- Indexes for table `BS_USER`
--
ALTER TABLE `BS_USER`
  ADD PRIMARY KEY (`BS_USER_AUTOID`);

--
-- Indexes for table `BS_VIVA_MARKS`
--
ALTER TABLE `BS_VIVA_MARKS`
  ADD PRIMARY KEY (`VIVA_MARKS_ID`);

--
-- Indexes for table `FRANCHISE_INVENTORY`
--
ALTER TABLE `FRANCHISE_INVENTORY`
  ADD PRIMARY KEY (`INVENTORY_ID`);

--
-- Indexes for table `FRANCHISE_NOTIFICATION`
--
ALTER TABLE `FRANCHISE_NOTIFICATION`
  ADD PRIMARY KEY (`NOTIFICATION_ID`);

--
-- Indexes for table `FRP_BATCH`
--
ALTER TABLE `FRP_BATCH`
  ADD PRIMARY KEY (`BATCH_ID`);

--
-- Indexes for table `FRP_TB_ANNEXURE_PROGRAM`
--
ALTER TABLE `FRP_TB_ANNEXURE_PROGRAM`
  ADD PRIMARY KEY (`FRP_AP_ID`);

--
-- Indexes for table `FRP_TB_BOOK_COST`
--
ALTER TABLE `FRP_TB_BOOK_COST`
  ADD PRIMARY KEY (`FRP_BOOK_ID`);

--
-- Indexes for table `FRP_TB_EXAM_CONTROL`
--
ALTER TABLE `FRP_TB_EXAM_CONTROL`
  ADD PRIMARY KEY (`FRP_EXAM_ID`);

--
-- Indexes for table `FRP_TB_FRANCHISE_LIST`
--
ALTER TABLE `FRP_TB_FRANCHISE_LIST`
  ADD PRIMARY KEY (`FRP_FRANCHISE_ID`);

--
-- Indexes for table `FRP_TB_NON_STUDENT_REGISTER`
--
ALTER TABLE `FRP_TB_NON_STUDENT_REGISTER`
  ADD PRIMARY KEY (`FRP_NON_STUDENT_ID`);

--
-- Indexes for table `FRP_TB_STUDENT_ENQUIRY`
--
ALTER TABLE `FRP_TB_STUDENT_ENQUIRY`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `FRP_TB_STUDENT_REGISTER`
--
ALTER TABLE `FRP_TB_STUDENT_REGISTER`
  ADD PRIMARY KEY (`FRP_STUDENT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BS_ADVANCE_THEORY_MARKS`
--
ALTER TABLE `BS_ADVANCE_THEORY_MARKS`
  MODIFY `MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `BS_ALBUM_MARKS`
--
ALTER TABLE `BS_ALBUM_MARKS`
  MODIFY `ALBUM_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `BS_BASIC_THEORY_MARKS`
--
ALTER TABLE `BS_BASIC_THEORY_MARKS`
  MODIFY `BASIC_THORY_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `BS_INVENTORY`
--
ALTER TABLE `BS_INVENTORY`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `BS_NOTIFICATION`
--
ALTER TABLE `BS_NOTIFICATION`
  MODIFY `NOTIFICATION_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `BS_PRACTICAL_MARKS`
--
ALTER TABLE `BS_PRACTICAL_MARKS`
  MODIFY `PRACTICAL_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `BS_PRACTICE_TEACHING_MARKS`
--
ALTER TABLE `BS_PRACTICE_TEACHING_MARKS`
  MODIFY `PRACTICE_TEACHING_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `BS_USER`
--
ALTER TABLE `BS_USER`
  MODIFY `BS_USER_AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `BS_VIVA_MARKS`
--
ALTER TABLE `BS_VIVA_MARKS`
  MODIFY `VIVA_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `FRANCHISE_INVENTORY`
--
ALTER TABLE `FRANCHISE_INVENTORY`
  MODIFY `INVENTORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `FRANCHISE_NOTIFICATION`
--
ALTER TABLE `FRANCHISE_NOTIFICATION`
  MODIFY `NOTIFICATION_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `FRP_BATCH`
--
ALTER TABLE `FRP_BATCH`
  MODIFY `BATCH_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `FRP_TB_ANNEXURE_PROGRAM`
--
ALTER TABLE `FRP_TB_ANNEXURE_PROGRAM`
  MODIFY `FRP_AP_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `FRP_TB_BOOK_COST`
--
ALTER TABLE `FRP_TB_BOOK_COST`
  MODIFY `FRP_BOOK_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `FRP_TB_EXAM_CONTROL`
--
ALTER TABLE `FRP_TB_EXAM_CONTROL`
  MODIFY `FRP_EXAM_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `FRP_TB_FRANCHISE_LIST`
--
ALTER TABLE `FRP_TB_FRANCHISE_LIST`
  MODIFY `FRP_FRANCHISE_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `FRP_TB_NON_STUDENT_REGISTER`
--
ALTER TABLE `FRP_TB_NON_STUDENT_REGISTER`
  MODIFY `FRP_NON_STUDENT_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `FRP_TB_STUDENT_ENQUIRY`
--
ALTER TABLE `FRP_TB_STUDENT_ENQUIRY`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `FRP_TB_STUDENT_REGISTER`
--
ALTER TABLE `FRP_TB_STUDENT_REGISTER`
  MODIFY `FRP_STUDENT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
