-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 172.16.1.52
-- Generation Time: Dec 18, 2019 at 09:36 AM
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
  `FRANCHISE_ID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STUDENT_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DA101` int(10) DEFAULT 0,
  `DA102` int(10) DEFAULT 0,
  `DA103` int(10) DEFAULT 0,
  `DA104` int(10) DEFAULT 0,
  `DA105` int(10) DEFAULT 0,
  `DA106` int(10) DEFAULT 0,
  `DA107` int(10) DEFAULT 0,
  `DA108` int(10) DEFAULT 0,
  `TOTAL_ADVANCE_THEORY` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BS_ADVANCE_THEORY_MARKS`
--

INSERT INTO `BS_ADVANCE_THEORY_MARKS` (`MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DA101`, `DA102`, `DA103`, `DA104`, `DA105`, `DA106`, `DA107`, `DA108`, `TOTAL_ADVANCE_THEORY`) VALUES
(1, '3ovNtsRz', '8', 30, 0, 30, 0, 34, 0, 0, 0, 94),
(2, '3ovNtsRz', '2019BasicBatch-1', 42, 48, 32, 34, 0, 0, 0, 0, 156);

-- --------------------------------------------------------

--
-- Table structure for table `BS_ALBUM_MARKS`
--

CREATE TABLE `BS_ALBUM_MARKS` (
  `ALBUM_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STUDENT_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DMA101` int(10) DEFAULT 0,
  `DMA102` int(10) DEFAULT 0,
  `DMA103` int(10) DEFAULT 0,
  `DMA104` int(10) DEFAULT 0,
  `DMA105` int(10) DEFAULT 0,
  `TOTAL_ALBUM_MARKS` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BS_ALBUM_MARKS`
--

INSERT INTO `BS_ALBUM_MARKS` (`ALBUM_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMA101`, `DMA102`, `DMA103`, `DMA104`, `DMA105`, `TOTAL_ALBUM_MARKS`) VALUES
(1, '3ovNtsRz', '11', 20, 35, 0, 0, 0, 55),
(2, '3ovNtsRz', '8', 30, 50, 47, 0, 0, 127),
(3, '3ovNtsRz', '12', 32, 39, 30, 0, 0, 101),
(4, '3oUPbmOZ', '3oUTWbYj', 0, 44, 0, 0, 0, 44),
(5, '3ovNtsRz', '2019BasicBatch-1', 34, 45, 0, 0, 0, 79),
(6, '3ovNtsRz', '2019BasicBatch-2', 45, 0, 0, 0, 0, 45);

-- --------------------------------------------------------

--
-- Table structure for table `BS_BASIC_THEORY_MARKS`
--

CREATE TABLE `BS_BASIC_THEORY_MARKS` (
  `BASIC_THORY_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STUDENT_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DM101` int(10) DEFAULT NULL,
  `DM102` int(10) DEFAULT NULL,
  `DM103` int(10) DEFAULT NULL,
  `DM104` int(10) DEFAULT NULL,
  `DM105` int(10) DEFAULT NULL,
  `DM106` int(10) DEFAULT NULL,
  `DM107` int(10) DEFAULT NULL,
  `DM108` int(10) DEFAULT NULL,
  `TOTAL_BASIC_THEORY` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(12, '3phwLdEm', '2019BasicBatch-1', 34, 45, 22, 35, 36, 24, NULL, NULL, 101),
(13, '3ovNtsRz', '2019BasicBatch-1', 30, 44, 40, 25, 18, 18, 35, 24, 234);

-- --------------------------------------------------------

--
-- Table structure for table `BS_INVENTORY`
--

CREATE TABLE `BS_INVENTORY` (
  `ID` int(10) NOT NULL,
  `TIME_STAMP` timestamp NOT NULL DEFAULT current_timestamp(),
  `PROGRAM_ID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ITEM_ID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ITEM_NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ITEM_DESC` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `NUMBER_OF_ITEMS` int(11) NOT NULL,
  `ITEM_STATUS` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ITEM_REQ_DATE` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ITEM_REC_DATE` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ITEM_ISU_DATE` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `USER_ID` varchar(15) CHARACTER SET utf8 NOT NULL,
  `STATUS` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `LINK` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SUBJECT_DETAILS` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SESSION` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `NOTIFICATION_DETAILS` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(175, '3ovNtsRz', 'PENDING', 'UploadQuestionPaper', 'DA101', '2019 - Basic Batch', 'Internal Exam Question', NULL),
(176, '3phwLdEm', 'PENDING', 'UploadQuestionPaper', 'DM101', '2019___Basic_Batch', 'Internal Exam Question', NULL),
(177, '3ovNtsRz', 'PENDING', 'vivaMarks', '2019BasicBatch-1', NULL, 'Viva marks request', NULL),
(178, '3ovNtsRz', 'PENDING', 'vivaMarks', '2019BasicBatch-1', NULL, 'Viva marks request', NULL),
(179, '3ovNtsRz', 'PENDING', 'vivaMarks', '2019BasicBatch-1', NULL, 'Viva marks request', NULL),
(180, '3ovNtsRz', 'PENDING', 'vivaMarks', '2019BasicBatch-1', NULL, 'Viva marks request', NULL),
(181, '3ovNtsRz', 'PENDING', 'vivaMarks', '2019BasicBatch-1', NULL, 'Viva marks request', NULL),
(182, '3ovNtsRz', 'PENDING', 'vivaMarks', '2019BasicBatch-1', NULL, 'Viva marks request', NULL),
(183, '3ovNtsRz', 'PENDING', 'vivaMarks', '2019BasicBatch-1', NULL, 'Viva marks request', NULL),
(184, '3ovNtsRz', 'PENDING', 'vivaMarks', '2019BasicBatch-2', NULL, 'Viva marks request', NULL),
(185, '3ovNtsRz', 'PENDING', 'vivaMarks', '2019BasicBatch-2', NULL, 'Viva marks request', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_PRACTICAL_MARKS`
--

CREATE TABLE `BS_PRACTICAL_MARKS` (
  `PRACTICAL_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) CHARACTER SET utf8 NOT NULL,
  `STUDENT_ID` varchar(20) CHARACTER SET utf8 NOT NULL,
  `DMP101` int(10) DEFAULT 0,
  `DMP102` int(10) DEFAULT 0,
  `DMP103` int(10) DEFAULT 0,
  `DMP104` int(11) DEFAULT 0,
  `TOTAL_PRACTICAL_MARKS` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BS_PRACTICAL_MARKS`
--

INSERT INTO `BS_PRACTICAL_MARKS` (`PRACTICAL_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMP101`, `DMP102`, `DMP103`, `DMP104`, `TOTAL_PRACTICAL_MARKS`) VALUES
(1, '3ovNtsRz', '11', 21, 0, 0, 0, 21),
(2, '3ovNtsRz', '8', 24, 23, 25, 15, 87),
(3, '3ovNtsRz', '12', 17, 0, 0, 0, 17),
(4, '3ovNtsRz', '40', 23, 25, 0, 0, 48),
(5, '3oUPbmOZ', '2019BasicBatch-2', 18, 25, 15, 23, 81),
(6, '3ovNtsRz', '2019BasicBatch-1', 20, 0, 25, 25, 70);

-- --------------------------------------------------------

--
-- Table structure for table `BS_PRACTICE_TEACHING_MARKS`
--

CREATE TABLE `BS_PRACTICE_TEACHING_MARKS` (
  `PRACTICE_TEACHING_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) CHARACTER SET utf8 NOT NULL,
  `STUDENT_ID` varchar(20) CHARACTER SET utf8 NOT NULL,
  `DMT101` int(10) DEFAULT 0,
  `DMT102` int(10) DEFAULT 0,
  `TOTAL_PRACTICE_TEACHING_MARKS` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BS_PRACTICE_TEACHING_MARKS`
--

INSERT INTO `BS_PRACTICE_TEACHING_MARKS` (`PRACTICE_TEACHING_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMT101`, `DMT102`, `TOTAL_PRACTICE_TEACHING_MARKS`) VALUES
(1, '3ovNtsRz', '12', 100, 70, 170),
(2, '3ovNtsRz', '8', 90, 40, 130),
(3, '3ovNtsRz', '2019BasicBatch-1', 73, 77, 150);

-- --------------------------------------------------------

--
-- Table structure for table `BS_USER`
--

CREATE TABLE `BS_USER` (
  `BS_USER_AUTOID` int(11) NOT NULL,
  `BS_USER_ID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_JSOND` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `BS_USER_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BS_USER_GROUP` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_FULL_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_PHONE` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_EMAIL` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_PASSWORD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REGISTER_TIME` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `STATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BS_USER`
--

INSERT INTO `BS_USER` (`BS_USER_AUTOID`, `BS_USER_ID`, `USER_JSOND`, `BS_USER_TYPE`, `BS_USER_GROUP`, `USER_FULL_NAME`, `USER_PHONE`, `USER_EMAIL`, `USER_PASSWORD`, `REGISTER_TIME`, `STATUS`) VALUES
(1, '3ovNtLOg', NULL, 'Developer', '', 'Gourav Chatterjee', '8621071620', 'chatterjeegouravking@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', '2019-08-02 03:04:08.000000', NULL),
(62, '3ovNtsRz', '{\"Details\":{\"Programs\":\"IIMTT,YLE\"},\"ValidFr\":{\"ValidFrom\":\"2019-08-08\"},\"ValidTo\":{\"ValidTo\":\"2019-08-03\"},\"Address\":{\"FranName\":\"Beanstalk New\",\"Line1\":\"3, sadhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"Barbados\",\"State\":\"Saint Philip\",\"Agreement\":\"download.jpeg\"}}', 'FRANCHISE', NULL, 'Beanstalk New', '8620993996', 'gourav@gmail.com', '96e79218965eb72c92a549dd5a330112', '2019-08-08 06:54:14.481455', NULL),
(70, '3ovNeEe-', '{\"Details\":{\"Programs\":\"3P\"},\"ValidFr\":{\"ValidFrom\":\"2019-09-20\"},\"ValidTo\":{\"ValidTo\":\"2019-09-19\"},\"Address\":{\"FranName\":\"new Fran\",\"Line1\":\"howrah\",\"City\":\"kolkata\",\"Pin\":\"700001\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"internalExamQues.php\"}}', 'FRANCHISE', NULL, 'new Fran', '08620993996', 'hik@gmail.com', NULL, '2019-09-03 05:57:12.424631', NULL),
(71, '3oUPbmOZ', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-10-25\"},\"ValidTo\":{\"ValidTo\":\"2020-03-13\"},\"Address\":{\"FranName\":\"The Brand New Beanstalk\",\"Line1\":\"Roy  Pur road\",\"City\":\"Roy pur\",\"Pin\":\"3424244\",\"Country\":\"India\",\"State\":\"Bihar\",\"Agreement\":\"CORPORATE_CONTACT.sql\"}}', 'FRANCHISE', NULL, 'The Brand New Beanstalk', '123456', 'franchise@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', '2019-10-25 05:23:00.622108', NULL),
(72, '3pfRwQob', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-12-09\"},\"ValidTo\":{\"ValidTo\":\"2019-12-09\"},\"Address\":{\"FranName\":\"The Brand New Beanstalk\",\"Line1\":\"3, saddhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"ea5cc316-9cde-4fc7-9dc8-6d9206df54f2.jpg\"}}', 'FRANCHISE', NULL, 'The Brand New Beanstalk', '45454545', 'chatterjee@gmail.com', '96e79218965eb72c92a549dd5a330112', '2019-12-09 11:32:16.850425', NULL),
(73, '3phahooZ', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-12-12\"},\"ValidTo\":{\"ValidTo\":\"2019-12-12\"},\"Address\":{\"FranName\":\"The Brand New Beanstalk bbb\",\"Line1\":\"ksdh\",\"City\":\"djhfj\",\"Pin\":\"ewjf\",\"Country\":\"Afghanistan\",\"State\":\"Badakhshan\",\"Agreement\":\"ea5cc316-9cde-4fc7-9dc8-6d9206df54f2.jpg\"}}', 'FRANCHISE', NULL, 'The Brand New Beanstalk bbb', '545646', 'sdnfjis@gmail.com', '3phahoeT', '2019-12-12 10:19:22.538368', NULL),
(74, '7dnz5dJk', NULL, 'ADMIN', '', 'Abhishek Banerjea', '7044154080', 'director@beanstalkedu.com', 'e3ceb5881a0a1fdaad01296d7554868d', '2019-08-02 03:04:08.000000', 'Admin'),
(75, '3phwLdEm', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-12-27\"},\"ValidTo\":{\"ValidTo\":\"2021-12-23\"},\"Address\":{\"FranName\":\"Beezy Bee\",\"Line1\":\"sjfhsdfub dsjfgsfk\",\"City\":\"jsdhf\",\"Pin\":\"jsdufh\",\"Country\":\"Albania\",\"State\":\"Delvine\",\"Agreement\":\"img_lights.jpg\"}}', 'FRANCHISE', NULL, 'Beezy Bee', '45412454', 'srk@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', '2019-12-13 06:23:40.640323', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_VIVA_MARKS`
--

CREATE TABLE `BS_VIVA_MARKS` (
  `VIVA_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) CHARACTER SET utf8 NOT NULL,
  `STUDENT_ID` varchar(20) CHARACTER SET utf8 NOT NULL,
  `DMV101` int(10) DEFAULT 0,
  `TOTAL_VIVA_MARKS` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BS_VIVA_MARKS`
--

INSERT INTO `BS_VIVA_MARKS` (`VIVA_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMV101`, `TOTAL_VIVA_MARKS`) VALUES
(1, '62', '11', 50, 50),
(2, '3ovNtsRz', '12', 30, 30),
(3, '3ovNtsRz', '8', 30, 0),
(4, '3oUPbmOZ', '2019BasicBatch-2', 40, 0),
(6, '3ovNtsRz', '2019BasicBatch-1', 30, 0),
(8, '3ovNtsRz', '2019BasicBatch-2', 40, 40);

-- --------------------------------------------------------

--
-- Table structure for table `FRANCHISE_INVENTORY`
--

CREATE TABLE `FRANCHISE_INVENTORY` (
  `INVENTORY_ID` int(11) NOT NULL,
  `FRANCHISE_ID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CART_ID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PROGRAM_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ITEM_ID` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ITEM_NAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NUMBER_OF_ITEM` int(11) DEFAULT NULL,
  `SUB_ITEMS_DETAILS` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ITEM_PRICE` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DELIVERY_CHARGES` int(15) DEFAULT NULL,
  `ITEM_STATUS` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DETAILS` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `FRANCHISE_ID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DETAILS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_TO_GO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOTIFICATION_JSOND` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIME` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FRANCHISE_NOTIFICATION`
--

INSERT INTO `FRANCHISE_NOTIFICATION` (`NOTIFICATION_ID`, `FRANCHISE_ID`, `DETAILS`, `LINK_TO_GO`, `STATUS`, `NOTIFICATION_JSOND`, `TIME`) VALUES
(51, '3ovNtsRz', '10 Item(s) with item id TT1 is dispatched', 'addItem', 'DISMISSED', '{\"itemId\":\"TT1\",\"noOfItems\":\"10\"}', '2019-11-11 06:50:52pm'),
(52, '3ovNtsRz', 'VIVA MARKS GIVEN FOR 2019BasicBatch-2', '_home', 'DISMISSED', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FRP_BATCH`
--

CREATE TABLE `FRP_BATCH` (
  `BATCH_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BATCH_UNI_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BATCH_YEAR` year(4) DEFAULT NULL,
  `BATCH_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FRP_BATCH`
--

INSERT INTO `FRP_BATCH` (`BATCH_ID`, `FRANCHISE_ID`, `BATCH_UNI_ID`, `BATCH_YEAR`, `BATCH_NAME`, `START_DATE`, `END_DATE`) VALUES
(20, '3ovNtsRz', '20193ovNtsRz3p3A9j1Z', 2019, 'Basic Batch', '2019-11-13', '2020-02-21'),
(23, '3phwLdEm', '20193phwLdEm3phxVdqv', 2019, 'Basic Batch', '2019-12-12', '2019-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_ANNEXURE_PROGRAM`
--

CREATE TABLE `FRP_TB_ANNEXURE_PROGRAM` (
  `FRP_AP_ID` int(10) NOT NULL,
  `PROGRAM` varchar(50) CHARACTER SET latin1 NOT NULL,
  `PROGRAM_ID` varchar(10) CHARACTER SET latin1 NOT NULL,
  `ITEM_ID` varchar(10) CHARACTER SET latin1 NOT NULL,
  `ITEM_DESC` varchar(50) CHARACTER SET latin1 NOT NULL,
  `SUB_ITEMS_DETAILS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ITEM_PRICE` int(10) DEFAULT NULL,
  `ITEM_PIC` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `LEVEL` varchar(20) CHARACTER SET latin1 NOT NULL,
  `TENURE` int(5) NOT NULL,
  `BUSINESS_VERTICAL` varchar(25) CHARACTER SET latin1 NOT NULL,
  `QR_CODE_ITEM` varchar(10) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FRP_TB_ANNEXURE_PROGRAM`
--

INSERT INTO `FRP_TB_ANNEXURE_PROGRAM` (`FRP_AP_ID`, `PROGRAM`, `PROGRAM_ID`, `ITEM_ID`, `ITEM_DESC`, `SUB_ITEMS_DETAILS`, `ITEM_PRICE`, `ITEM_PIC`, `LEVEL`, `TENURE`, `BUSINESS_VERTICAL`, `QR_CODE_ITEM`) VALUES
(1, 'IIMTT Basic', 'TT1', 'TT1', 'Study Kit', '{\"Theory\":{\"Number_of_item\":\"2\",\"price\":\"150\"},\"Practical\":{\"Number_of_item\":\"2\",\"price\":\"150\"}}', 4000, 'download.jpeg', 'NA', 12, 'Teacher Training', NULL),
(2, 'IIMTT Advance', 'TT2', 'TT2', 'Study Kit', NULL, 2000, '', 'NA', 12, 'Teacher Training', NULL),
(3, 'YLE', 'YLE', 'YLE1', 'Starters', NULL, 750, '', 'L1', 3, 'Afterschool', NULL),
(4, 'YLE', 'YLE', 'YLE2', 'Movers', NULL, 750, '', 'L4', 3, 'Afterschool', NULL),
(5, 'YLE', 'YLE', 'YLE3', 'Flyers', NULL, 750, '', 'L7', 3, 'Afterschool', NULL),
(6, 'Maxbrain', 'MAX', 'MAX1', 'Level 1', NULL, 250, '', 'L1', 3, 'Afterschool', NULL),
(7, 'Maxbrain', 'MAX', 'MAX2', 'Level 2', NULL, 250, '', 'L2', 3, 'Afterschool', NULL),
(8, 'Maxbrain', 'MAX', 'MAX3', 'Level 3', NULL, 250, '', 'L3', 3, 'Afterschool', NULL),
(9, 'Maxbrain', 'MAX', 'MAX4', 'Level 4', NULL, 250, '', 'L3', 3, 'Afterschool', NULL),
(10, 'Maxbrain', 'MAX', 'MAX5', 'Level 5', NULL, 250, '', 'L3', 3, 'Afterschool', NULL),
(11, 'Maxbrain', 'MAX', 'MAX6', 'Level 6', NULL, 250, '', 'L3', 3, 'Afterschool', NULL),
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
  `PROGRAM_ID` varchar(20) CHARACTER SET latin1 NOT NULL,
  `PROGRAM_DESCR` varchar(20) CHARACTER SET latin1 NOT NULL,
  `ITEM_ID` varchar(20) CHARACTER SET latin1 NOT NULL,
  `ITEM_DESCR` varchar(20) CHARACTER SET latin1 NOT NULL,
  `IMAGE` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `COST` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `FRANCHISE_ID` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `EXAM_TYPE` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `SESSION` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `SUBJECT` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `PROGRAM_ID` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `EXAM_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FRP_TB_EXAM_CONTROL`
--

INSERT INTO `FRP_TB_EXAM_CONTROL` (`FRP_EXAM_ID`, `FRANCHISE_ID`, `EXAM_TYPE`, `SESSION`, `SUBJECT`, `PROGRAM_ID`, `EXAM_DATE`) VALUES
(62, '3ovNtsRz', 'INTERNAL EXAM', '2019___Basic_Batch', 'DM105', NULL, NULL),
(63, '3ovNtsRz', 'FINAL EXAM', '2019___Basic_Batch', 'All subject', NULL, '2019-12-12'),
(64, '3ovNtsRz', 'INTERNAL EXAM', '2019 - Basic Batch', 'DA101', NULL, NULL),
(65, '3phwLdEm', 'INTERNAL EXAM', '2019___Basic_Batch', 'DM101', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_STUDENT_ENQUIRY`
--

CREATE TABLE `FRP_TB_STUDENT_ENQUIRY` (
  `ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STUDENT_TYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STUDENT_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `FATHER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MOTHER_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PHONE_NO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PROGRAM` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SUB_PROGRAM` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DATE_OF_ENQUIRE` date NOT NULL,
  `STATUS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REFFERED_BY` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FRP_TB_STUDENT_ENQUIRY`
--

INSERT INTO `FRP_TB_STUDENT_ENQUIRY` (`ID`, `FRANCHISE_ID`, `STUDENT_TYPE`, `STUDENT_NAME`, `DOB`, `FATHER_NAME`, `MOTHER_NAME`, `PHONE_NO`, `EMAIL_ADDRESS`, `PROGRAM`, `SUB_PROGRAM`, `DATE_OF_ENQUIRE`, `STATUS`, `REFFERED_BY`) VALUES
(26, '3ovNtsRz', 'IIMTT', 'Gourav Chatterjee', '1991-03-27', NULL, NULL, '08620993996', 'chatterjeegouravking@gmail.com', 'IIMTT Advance', NULL, '2019-11-12', 'Admitted', NULL),
(27, '3ovNtsRz', 'IIMTT', 'Raju Bhaiya', '2019-11-19', NULL, NULL, '08621071620', 'helloraju@gmail.com', 'IIMTT Basic', NULL, '2019-11-20', 'Admitted', NULL),
(28, '3ovNtsRz', 'IIMTT', 'Ghsisjhs sdjjcbj', '2019-12-05', NULL, NULL, '457855', 'chatterjeegouravking@gmail.com', 'IIMTT Advance', NULL, '2019-12-05', 'Enquired', NULL),
(29, '3ovNtsRz', 'NON-IIMTT', 'Biraj Roy', '1970-03-04', 'Raghav Roy', 'haha Roy', '3535353', 'gaga@gmail.com', 'YLE', 'YLE2', '2019-12-12', 'Admitted', NULL),
(30, '3phwLdEm', 'IIMTT', 'Abhi Manna', '1973-03-15', NULL, NULL, '8620999999', 'huhu@gmail.com', 'IIMTT Basic', NULL, '2019-12-12', 'Admitted', NULL),
(31, '3ovNtsRz', 'IIMTT', 'বাংলা টাইপ করুন ', '2019-12-11', NULL, NULL, '08621071620', 'haaa@hs.co', 'IIMTT Basic', NULL, '2019-12-09', 'Enquired', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_STUDENT_REGISTER`
--

CREATE TABLE `FRP_TB_STUDENT_REGISTER` (
  `FRP_STUDENT_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STUDENT_UNI_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STUDENT_TYPE` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STUDENT_NAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `FATHER_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MOTHER_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PHONE_NO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EMAIL_ADDRESS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PROGRAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SUB_PROGRAM` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SESSION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ISSUED_ITEMS` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TOTAL_MARKS` int(10) DEFAULT NULL,
  `DATE_OF_ENROLLMENT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FRP_TB_STUDENT_REGISTER`
--

INSERT INTO `FRP_TB_STUDENT_REGISTER` (`FRP_STUDENT_ID`, `FRANCHISE_ID`, `STUDENT_UNI_ID`, `STUDENT_TYPE`, `STUDENT_NAME`, `DOB`, `FATHER_NAME`, `MOTHER_NAME`, `PHONE_NO`, `EMAIL_ADDRESS`, `PROGRAM`, `SUB_PROGRAM`, `SESSION`, `ISSUED_ITEMS`, `TOTAL_MARKS`, `DATE_OF_ENROLLMENT`) VALUES
(51, '3ovNtsRz', '2019BasicBatch-1', 'IIMTT', 'Gourav Chatterjee', '1991-03-27', NULL, NULL, '08620993996', 'chatterjeegouravking@gmail.com', 'IIMTT Advance', NULL, '2019 - Basic Batch', NULL, 689, '2019-11-12'),
(52, '3ovNtsRz', '2019BasicBatch-2', 'IIMTT', 'Raju Bhaiya', '2019-11-19', NULL, NULL, '08621071620', 'helloraju@gmail.com', 'IIMTT Basic', NULL, '2019 - Basic Batch', NULL, 85, '2019-12-10'),
(53, '3ovNtsRz', '3phxAHAO', 'NON-IIMTT', 'Biraj Roy', '1970-03-04', 'Raghav Roy', 'haha Roy', '3535353', 'gaga@gmail.com', 'YLE', 'YLE2', NULL, NULL, NULL, '2019-12-13'),
(54, '3phwLdEm', '2019BasicBatch-1', 'IIMTT', 'Abhi Manna', '1973-03-15', NULL, NULL, '8620999999', 'huhu@gmail.com', 'IIMTT Basic', NULL, '2019 - Basic Batch', NULL, NULL, '2019-12-13');

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
  MODIFY `ALBUM_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `BS_BASIC_THEORY_MARKS`
--
ALTER TABLE `BS_BASIC_THEORY_MARKS`
  MODIFY `BASIC_THORY_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `BS_INVENTORY`
--
ALTER TABLE `BS_INVENTORY`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `BS_NOTIFICATION`
--
ALTER TABLE `BS_NOTIFICATION`
  MODIFY `NOTIFICATION_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `BS_PRACTICAL_MARKS`
--
ALTER TABLE `BS_PRACTICAL_MARKS`
  MODIFY `PRACTICAL_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `BS_PRACTICE_TEACHING_MARKS`
--
ALTER TABLE `BS_PRACTICE_TEACHING_MARKS`
  MODIFY `PRACTICE_TEACHING_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `BS_USER`
--
ALTER TABLE `BS_USER`
  MODIFY `BS_USER_AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `BS_VIVA_MARKS`
--
ALTER TABLE `BS_VIVA_MARKS`
  MODIFY `VIVA_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `FRANCHISE_INVENTORY`
--
ALTER TABLE `FRANCHISE_INVENTORY`
  MODIFY `INVENTORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `FRANCHISE_NOTIFICATION`
--
ALTER TABLE `FRANCHISE_NOTIFICATION`
  MODIFY `NOTIFICATION_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `FRP_BATCH`
--
ALTER TABLE `FRP_BATCH`
  MODIFY `BATCH_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `FRP_EXAM_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `FRP_TB_STUDENT_ENQUIRY`
--
ALTER TABLE `FRP_TB_STUDENT_ENQUIRY`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `FRP_TB_STUDENT_REGISTER`
--
ALTER TABLE `FRP_TB_STUDENT_REGISTER`
  MODIFY `FRP_STUDENT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
