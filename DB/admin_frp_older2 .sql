-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 28, 2019 at 11:12 AM
-- Server version: 10.2.25-MariaDB-10.2.25+maria~xenial
-- PHP Version: 7.2.19-1+ubuntu16.04.1+deb.sury.org+1

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
  `STUDENT_ID` varchar(10) NOT NULL,
  `DA101` int(10) DEFAULT NULL,
  `DA102` int(10) DEFAULT NULL,
  `DA103` int(10) DEFAULT NULL,
  `DA104` int(10) DEFAULT NULL,
  `DA105` int(10) DEFAULT NULL,
  `DA106` int(10) DEFAULT NULL,
  `DA107` int(10) DEFAULT NULL,
  `DA108` int(10) DEFAULT NULL,
  `TOTAL_THEORY` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_ADVANCE_THEORY_MARKS`
--

INSERT INTO `BS_ADVANCE_THEORY_MARKS` (`MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DA101`, `DA102`, `DA103`, `DA104`, `DA105`, `DA106`, `DA107`, `DA108`, `TOTAL_THEORY`) VALUES
(1, '62', '11', NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_ALBUM_MARKS`
--

CREATE TABLE `BS_ALBUM_MARKS` (
  `ALBUM_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DMA101` int(10) DEFAULT NULL,
  `DMA102` int(10) DEFAULT NULL,
  `DMA103` int(10) DEFAULT NULL,
  `DMA104` int(10) DEFAULT NULL,
  `DMA105` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_ALBUM_MARKS`
--

INSERT INTO `BS_ALBUM_MARKS` (`ALBUM_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMA101`, `DMA102`, `DMA103`, `DMA104`, `DMA105`) VALUES
(1, '62', '11', 20, NULL, NULL, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `BS_BASIC_THEORY_MARKS`
--

CREATE TABLE `BS_BASIC_THEORY_MARKS` (
  `BASIC_THORY_MARKS_ID` int(10) NOT NULL,
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
  `BASIC_THEORY_TOTAL` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_BASIC_THEORY_MARKS`
--

INSERT INTO `BS_BASIC_THEORY_MARKS` (`BASIC_THORY_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DM101`, `DM102`, `DM103`, `DM104`, `DM105`, `DM106`, `DM107`, `DM108`, `BASIC_THEORY_TOTAL`) VALUES
(1, '62', '11', 18, 28, 50, NULL, NULL, NULL, NULL, NULL, NULL);

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
(25, '62', 'PENDING', 'uploadFinalQuestion', 'All_16_chapters', '2020_2021', 'Final Exam Question', NULL),
(26, '62', 'PENDING', 'UploadQuestionPaper', 'DM101', '2019_Delta', 'Internal Exam Question', NULL),
(27, '62', 'PENDING', 'UploadQuestionPaper', 'DM102', '2020_2021', 'Internal Exam Question', NULL),
(28, '62', 'PENDING', 'franchiseeList', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_PRACTICAL_MARKS`
--

CREATE TABLE `BS_PRACTICAL_MARKS` (
  `PRACTICAL_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DMP101` int(10) DEFAULT NULL,
  `DMP102` int(10) DEFAULT NULL,
  `DMP103` int(10) DEFAULT NULL,
  `DMP104` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_PRACTICAL_MARKS`
--

INSERT INTO `BS_PRACTICAL_MARKS` (`PRACTICAL_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMP101`, `DMP102`, `DMP103`, `DMP104`) VALUES
(1, '62', '11', 21, NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_PRACTICE_TEACHING_MARKS`
--

CREATE TABLE `BS_PRACTICE_TEACHING_MARKS` (
  `PRACTICE_TEACHING_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DMT101` int(10) DEFAULT NULL,
  `DMT102` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_PRACTICE_TEACHING_MARKS`
--

INSERT INTO `BS_PRACTICE_TEACHING_MARKS` (`PRACTICE_TEACHING_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMT101`, `DMT102`) VALUES
(1, '62', '11', 80, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_USER`
--

CREATE TABLE `BS_USER` (
  `BS_USER_AUTOID` int(10) NOT NULL,
  `BS_USER_ID` int(20) DEFAULT NULL,
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
(1, NULL, NULL, 'Developer', '', 'Gourav Chatterjee', '8621071620', 'chatterjeegouravking@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', '2019-08-02 03:04:08.000000', NULL),
(62, NULL, '{\"Details\":{\"Programs\":\"IIMTT,YLE\"},\"ValidFr\":{\"ValidFrom\":\"2019-08-08\"},\"ValidTo\":{\"ValidTo\":\"2019-08-03\"},\"Address\":{\"FranName\":\"Beanstalk New\",\"Line1\":\"3, sadhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"Barbados\",\"State\":\"Saint Philip\",\"Agreement\":\"download.jpeg\"}}', 'FRANSCHISE', NULL, 'Beanstalk New', '8620993996', 'gourav@gmail.com', '96e79218965eb72c92a549dd5a330112', '2019-08-08 06:54:14.481455', NULL),
(63, NULL, '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"\"},\"ValidTo\":{\"ValidTo\":\"\"},\"Address\":{\"FranName\":\"hey Beanstalk\",\"Line1\":\"3, saddhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata\",\"City\":\"kolkata\",\"Pin\":\"700122\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"download.jpeg\"}}', 'FRANSCHISE', NULL, 'hey Beanstalk', '08621071620', 'hello@gmail.com', 'e3ceb5881a0a1fdaad01296d7554868d', '2019-08-09 06:18:26.077371', NULL),
(64, NULL, '{\"Details\":{\"Programs\":\"YLE,MAXBRAIN,WRITO,3P\"},\"ValidFr\":{\"ValidFrom\":\"2020-10-01\"},\"ValidTo\":{\"ValidTo\":\"2030-10-01\"},\"Address\":{\"FranName\":\"Beanstalk New\",\"Line1\":\"3, saddhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata\",\"City\":\"kolkata\",\"Pin\":\"700122\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"\"}}', 'FRANSCHISE', NULL, 'Beanstalk New', '08621071620', 'abhishekbanerjea@gmail.com', NULL, '2019-08-10 07:05:24.515733', NULL),
(65, NULL, '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-08-16\"},\"ValidTo\":{\"ValidTo\":\"2019-08-31\"},\"Address\":{\"FranName\":\"Beanstalk New 3\",\"Line1\":\"3, saddhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata\",\"City\":\"kolkata\",\"Pin\":\"700122\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"download3.jpeg\"}}', 'FRANSCHISE', NULL, 'Beanstalk New 3', '08621071620', 'sarkar.suvankar@gmail.com', NULL, '2019-08-16 10:38:20.171173', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BS_VIVA_MARKS`
--

CREATE TABLE `BS_VIVA_MARKS` (
  `VIVA_MARKS_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) NOT NULL,
  `STUDENT_ID` varchar(10) NOT NULL,
  `DMV101` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_VIVA_MARKS`
--

INSERT INTO `BS_VIVA_MARKS` (`VIVA_MARKS_ID`, `FRANCHISE_ID`, `STUDENT_ID`, `DMV101`) VALUES
(1, '62', '11', 30);

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
  `ITEM_PIC` varchar(100) DEFAULT NULL,
  `LEVEL` varchar(20) NOT NULL,
  `TENURE` int(5) NOT NULL,
  `BUSINESS_VERTICAL` varchar(25) NOT NULL,
  `QR_CODE_ITEM` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRP_TB_ANNEXURE_PROGRAM`
--

INSERT INTO `FRP_TB_ANNEXURE_PROGRAM` (`FRP_AP_ID`, `PROGRAM`, `PROGRAM_ID`, `ITEM_ID`, `ITEM_DESC`, `ITEM_PIC`, `LEVEL`, `TENURE`, `BUSINESS_VERTICAL`, `QR_CODE_ITEM`) VALUES
(5, 'IIMTT', 'TT1', 'TT1', 'Theory Book', 'download.jpeg', 'NA', 12, 'Teacher Training', NULL),
(6, 'IIMTT', 'TT1', 'TT1', 'Practical Book', '', 'NA', 12, 'Teacher Training', NULL),
(7, 'YLE', 'YLE', 'YLE1', 'Starters L1', '', 'L1', 3, 'Afterschool', NULL),
(8, 'YLE', 'YLE', 'YLE2', 'Starters L2', '', 'L2', 3, 'Afterschool', NULL),
(9, 'YLE', 'YLE', 'YLE3', 'Starters L3', '', 'L3', 3, 'Afterschool', NULL),
(10, 'YLE', 'YLE', 'YLE4', 'MoversL1', '', 'L4', 3, 'Afterschool', NULL),
(11, 'YLE', 'YLE', 'YLE5', 'MoversL2', '', 'L5', 3, 'Afterschool', NULL),
(12, 'YLE', 'YLE', 'YLE6', 'MoversL3', '', 'L6', 3, 'Afterschool', NULL),
(13, 'YLE', 'YLE', 'YLE7', 'FlyersL1', '', 'L7', 3, 'Afterschool', NULL),
(14, 'YLE', 'YLE', 'YLE8', 'FlyersL2', '', 'L8', 3, 'Afterschool', NULL),
(15, 'YLE', 'YLE', 'YLE9', 'FlyersL3', '', 'L9', 3, 'Afterschool', NULL),
(16, 'Maxbrain', 'MAX', 'MAX1', 'Level 1 Books', '', 'L1', 3, 'Afterschool', NULL),
(17, 'Maxbrain', 'MAX', 'MAX2', 'Level 2 Books', '', 'L2', 3, 'Afterschool', NULL),
(18, 'Maxbrain', 'MAX', 'MAX3', 'Level 3 Books', '', 'L3', 3, 'Afterschool', NULL),
(19, 'Writo', 'WRT', 'A-WR1', 'Cursive Road', '', 'L1', 4, 'Afterschool', NULL),
(20, 'Writo', 'WRT', 'A-WR2', 'Cursive Prime', '', 'L2', 4, 'Afterschool', NULL),
(21, 'Writo', 'WRT', 'A-WR3', 'Cursive Plus', '', 'L3', 4, 'Afterschool', NULL),
(22, 'Writo', 'WRT', 'A-WR4', 'Cursive Plus Ad', '', 'L4', 4, 'Afterschool', NULL),
(23, '3P', '3P', 'SP1', 'Super Phonics 1', '', 'L1', 12, 'Afterschool', NULL),
(24, '3P', '3P', 'SP1', 'Super Phonics 1', '', 'L1', 12, 'Afterschool', NULL),
(25, '3P', '3P', 'SP2', 'Super Phonics 2', '', 'L2', 12, 'Afterschool', NULL),
(26, '3P', '3P', 'SP3', 'Super Phonics 3', '', 'L3', 12, 'Afterschool', NULL),
(27, '3P', '3P', 'P-WR1', 'Writo for IK1', '', 'L1', 12, 'Afterschool', NULL),
(28, '3P', '3P', 'P-WR2', 'Writo for IK2', '', 'L2', 12, 'Afterschool', NULL),
(29, '3P', '3P', 'P-WR3', 'Writo for IK3', '', 'L3', 12, 'Afterschool', NULL),
(30, '3P', '3P', 'MIN1', 'Writo for IK1', '', 'L1', 12, 'Afterschool', NULL),
(31, '3P', '3P', 'MIN2', 'Writo for IK2', '', 'L2', 12, 'Afterschool', NULL),
(32, '3P', '3P', 'MIN3', 'Writo for IK3', '', 'L3', 12, 'Afterschool', NULL);

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
(30, '62', 'INTERNAL EXAM', NULL, 'DM103', NULL, NULL),
(31, '62', 'FINAL EXAM', NULL, 'All subject', NULL, NULL),
(32, '62', 'INTERNAL EXAM', NULL, 'DM101', NULL, NULL),
(33, '62', 'INTERNAL EXAM', NULL, 'DM102', NULL, NULL),
(34, '62', 'INTERNAL EXAM', NULL, 'DM101', NULL, NULL),
(35, '62', 'INTERNAL EXAM', '2020_2021', 'DM103', NULL, NULL),
(36, '62', 'INTERNAL EXAM', '2020_2021', 'DM104', NULL, NULL),
(37, '62', 'INTERNAL EXAM', '2020_2021', 'DM105', NULL, NULL),
(38, '62', 'INTERNAL EXAM', '2020_2021', 'DM106', NULL, NULL),
(39, '62', 'INTERNAL EXAM', '2020_2021', 'DM107', NULL, NULL),
(40, '62', 'INTERNAL EXAM', '2020_2021', 'DA105', NULL, NULL),
(41, '62', 'FINAL EXAM', '2020_2021', 'All subject', NULL, '2019-09-19'),
(42, '62', 'FINAL EXAM', '2020_2021', 'All subject', NULL, '2019-09-20'),
(43, '62', 'INTERNAL EXAM', '2020_2021', 'DM106', NULL, NULL),
(44, '62', 'INTERNAL EXAM', '2020_2021', 'DM107', NULL, NULL),
(45, '62', 'INTERNAL EXAM', '2020_2021', 'DA102', NULL, NULL),
(46, '62', 'FINAL EXAM', '2020_2021', 'All subject', NULL, '2019-09-25'),
(47, '62', 'INTERNAL EXAM', '2019_Delta', 'DM101', NULL, NULL),
(48, '62', 'INTERNAL EXAM', '2020_2021', 'DM102', NULL, NULL);

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
  `SESSION` varchar(100) DEFAULT NULL,
  `DATE_OF_ENROLLMENT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRP_TB_NON_STUDENT_REGISTER`
--

INSERT INTO `FRP_TB_NON_STUDENT_REGISTER` (`FRP_NON_STUDENT_ID`, `FRANCHISE_ID`, `STUDENT_NAME`, `DOB`, `FATHER_NAME`, `MOTHER_NAME`, `PHONE_NO`, `EMAIL`, `PROGRAM`, `SESSION`, `DATE_OF_ENROLLMENT`) VALUES
(1, NULL, 'Rakesh Sen', '2006-02-10', 'Subrata Sen', 'Manisha Sen', '256985658', 'hello@gmail.com', 'IIMTT', NULL, '2019-06-21'),
(3, '1', 'Sudha Banerjee', '2005-12-10', 'Amish Banerjee', 'radha banerjee', '123655458', 'helo@gmail.com', 'YLE', '2020-2021', '2019-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `FRP_TB_STUDENT_REGISTER`
--

CREATE TABLE `FRP_TB_STUDENT_REGISTER` (
  `FRP_STUDENT_ID` int(10) NOT NULL,
  `FRANCHISE_ID` varchar(10) DEFAULT NULL,
  `STUDENT_NAME` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `PHONE_NO` varchar(20) NOT NULL,
  `EMAIL_ADDRESS` varchar(50) DEFAULT NULL,
  `PROGRAM` varchar(50) NOT NULL,
  `SESSION` varchar(100) DEFAULT NULL,
  `DATE_OF_ENROLLMENT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRP_TB_STUDENT_REGISTER`
--

INSERT INTO `FRP_TB_STUDENT_REGISTER` (`FRP_STUDENT_ID`, `FRANCHISE_ID`, `STUDENT_NAME`, `DOB`, `PHONE_NO`, `EMAIL_ADDRESS`, `PROGRAM`, `SESSION`, `DATE_OF_ENROLLMENT`) VALUES
(6, '62', 'Gourav Chatterjee', '1998-06-26', '5943093', 'chatterjeegouravking@gmail.com', 'IIMTT Basic,IIMTT Advance', '2020-2021', '2019-08-24'),
(8, '62', 'Gourav Chatterjee', '2019-08-10', '8620993996', 'chatterjeegouravking@gmail.com', 'IIMTT Basic', '2019 Delta', '2019-08-20'),
(11, '62', 'Suvankar Sarkar', '2010-02-10', '4545454545', 'ss@gmail.com', 'IIMTT Basic', '2019 - A', '2019-08-27');

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
  MODIFY `MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BS_ALBUM_MARKS`
--
ALTER TABLE `BS_ALBUM_MARKS`
  MODIFY `ALBUM_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BS_BASIC_THEORY_MARKS`
--
ALTER TABLE `BS_BASIC_THEORY_MARKS`
  MODIFY `BASIC_THORY_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BS_INVENTORY`
--
ALTER TABLE `BS_INVENTORY`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `BS_NOTIFICATION`
--
ALTER TABLE `BS_NOTIFICATION`
  MODIFY `NOTIFICATION_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `BS_PRACTICAL_MARKS`
--
ALTER TABLE `BS_PRACTICAL_MARKS`
  MODIFY `PRACTICAL_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BS_PRACTICE_TEACHING_MARKS`
--
ALTER TABLE `BS_PRACTICE_TEACHING_MARKS`
  MODIFY `PRACTICE_TEACHING_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BS_USER`
--
ALTER TABLE `BS_USER`
  MODIFY `BS_USER_AUTOID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `BS_VIVA_MARKS`
--
ALTER TABLE `BS_VIVA_MARKS`
  MODIFY `VIVA_MARKS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `FRP_TB_ANNEXURE_PROGRAM`
--
ALTER TABLE `FRP_TB_ANNEXURE_PROGRAM`
  MODIFY `FRP_AP_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `FRP_TB_BOOK_COST`
--
ALTER TABLE `FRP_TB_BOOK_COST`
  MODIFY `FRP_BOOK_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `FRP_TB_EXAM_CONTROL`
--
ALTER TABLE `FRP_TB_EXAM_CONTROL`
  MODIFY `FRP_EXAM_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `FRP_TB_FRANCHISE_LIST`
--
ALTER TABLE `FRP_TB_FRANCHISE_LIST`
  MODIFY `FRP_FRANCHISE_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `FRP_TB_NON_STUDENT_REGISTER`
--
ALTER TABLE `FRP_TB_NON_STUDENT_REGISTER`
  MODIFY `FRP_NON_STUDENT_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `FRP_TB_STUDENT_REGISTER`
--
ALTER TABLE `FRP_TB_STUDENT_REGISTER`
  MODIFY `FRP_STUDENT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
