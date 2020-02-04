-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 20, 2019 at 11:55 AM
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
(3, '1', 'Sudha Banerjee', '2005-12-10', 'Amish Banerjee', 'radha banerjee', '123655458', 'helo@gmail.com', 'YLE', '2020-2021', '2019-02-10'),
(4, '62', 'Gourav Chatterjee', '2016-02-05', 'Gourav Chatterjee', 'Gourav Chatterjee', '8620993996', 'chatterjeegouravking@gmail.com', '', '2020-2021', '5220-02-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `FRP_TB_NON_STUDENT_REGISTER`
--
ALTER TABLE `FRP_TB_NON_STUDENT_REGISTER`
  ADD PRIMARY KEY (`FRP_NON_STUDENT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `FRP_TB_NON_STUDENT_REGISTER`
--
ALTER TABLE `FRP_TB_NON_STUDENT_REGISTER`
  MODIFY `FRP_NON_STUDENT_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
