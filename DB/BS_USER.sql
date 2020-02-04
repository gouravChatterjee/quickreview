-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 27, 2019 at 05:53 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b_frp`
--

-- --------------------------------------------------------

--
-- Table structure for table `BS_USER`
--

CREATE TABLE `BS_USER` (
  `BS_USER_AUTOID` int(11) NOT NULL,
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
  `STATUS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BS_USER`
--

INSERT INTO `BS_USER` (`BS_USER_AUTOID`, `BS_USER_ID`, `USER_JSOND`, `BS_USER_TYPE`, `BS_USER_GROUP`, `USER_FULL_NAME`, `CENTER_NAME`, `USER_PHONE`, `USER_EMAIL`, `USER_PASSWORD`, `REGISTER_TIME`, `STATUS`) VALUES
(1, '3ovNtLOg', NULL, 'Developer', '', 'Gourav Chatterjee', NULL, '8621071620', 'chatterjeegourav@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', '2019-08-02 03:04:08.000000', NULL),
(62, '3ovNtsRz', '{\"Details\":{\"Programs\":\"IIMTT,YLE\"},\"ValidFr\":{\"ValidFrom\":\"2019-08-08\"},\"ValidTo\":{\"ValidTo\":\"2019-08-03\"},\"Address\":{\"FranName\":\"Beanstalk New\",\"Line1\":\"3, sadhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"Barbados\",\"State\":\"Saint Philip\",\"Agreement\":\"download.jpeg\"}}', 'FRANCHISE', NULL, 'Beanstalk New', NULL, '8620993996', 'gourav@gmail.com', '96e79218965eb72c92a549dd5a330112', '2019-08-08 06:54:14.481455', NULL),
(70, '3ovNeEe-', '{\"Details\":{\"Programs\":\"3P\"},\"ValidFr\":{\"ValidFrom\":\"2019-09-20\"},\"ValidTo\":{\"ValidTo\":\"2019-09-19\"},\"Address\":{\"FranName\":\"new Fran\",\"Line1\":\"howrah\",\"City\":\"kolkata\",\"Pin\":\"700001\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"internalExamQues.php\"}}', 'FRANCHISE', NULL, 'new Fran', NULL, '08620993996', 'hik@gmail.com', NULL, '2019-09-03 05:57:12.424631', NULL),
(71, '3oUPbmOZ', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-10-25\"},\"ValidTo\":{\"ValidTo\":\"2020-03-13\"},\"Address\":{\"FranName\":\"The Brand New Beanstalk\",\"Line1\":\"Roy  Pur road\",\"City\":\"Roy pur\",\"Pin\":\"3424244\",\"Country\":\"India\",\"State\":\"Bihar\",\"Agreement\":\"CORPORATE_CONTACT.sql\"}}', 'FRANCHISE', NULL, 'The Brand New Beanstalk', NULL, '123456', 'franchise@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', '2019-10-25 05:23:00.622108', NULL),
(72, '3pfRwQob', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-12-09\"},\"ValidTo\":{\"ValidTo\":\"2019-12-09\"},\"Address\":{\"FranName\":\"The Brand New Beanstalk\",\"Line1\":\"3, saddhu Mukherjee road(2nd lane), p.o-Nona chandan pukur, Barrackpore, Kolkata-700122\",\"City\":\"BARRACKPORE\",\"Pin\":\"700122\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"ea5cc316-9cde-4fc7-9dc8-6d9206df54f2.jpg\"}}', 'FRANCHISE', NULL, 'The Brand New Beanstalk', NULL, '45454545', 'chatterjee@gmail.com', NULL, '2019-12-09 11:32:16.850425', NULL),
(74, '7dnz5dJk', NULL, 'ADMIN', NULL, 'Abhishek Banerjea', NULL, '7044154080', 'director@beanstalkedu.com', '96e79218965eb72c92a549dd5a330112', '2019-12-25 18:30:00.000000', 'Admin'),
(76, '3poK3zTD', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-02-14\"},\"ValidTo\":{\"ValidTo\":\"2024-02-14\"},\"Address\":{\"FranName\":\"Falak Randerian\",\"Line1\":\"575,2ndmain , 10th cross,MICO Layout,BTM 2ND Stage.BANGALORE 560076 Near State Bank of India ATM (BTM 2nd stage)\",\"City\":\"Bangalore\",\"Pin\":\"560076\",\"Country\":\"India\",\"State\":\"Karnataka\",\"Agreement\":\"Bangalore MICO Layout.pdf\"}}', 'FRANCHISE', NULL, 'Falak Randerian', 'Ayelet Montessori House of Children', '9964495522', 'connect@ayeletmontessori.com', '9ba079b10a54604b07c8714ccb233866', '2019-12-27 07:03:29.054174', NULL),
(77, '3poKbfup', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-06-06\"},\"ValidTo\":{\"ValidTo\":\"2024-06-06\"},\"Address\":{\"FranName\":\"Yogeshwari devraj\",\"Line1\":\"Dayspring Montessori House of Children-F2-11, Skylark Arcadia, Phase 2 Kodigehalli Main Road Sadaramangala,kadugodi PO Bengaluru 560067 Landmark: Near Zonasha Retreat and opp to Shilpitha Royal Apartment\",\"City\":\"Bengaluru\",\"Pin\":\"560067\",\"Country\":\"India\",\"State\":\"Karnataka\",\"Agreement\":\"IIMTT Franchise Agreement Signup.pdf\"}}', 'FRANCHISE', NULL, 'Yogeshwari devraj', 'Day Spring Academy Pvt Ltd.', '8095095400', 'dayspringacademy.bangalore@gmail.com', '4273d69ccde3b754806d76fe90205149', '2019-12-27 07:10:54.884462', NULL),
(79, '3poKkTyz', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-05-25\"},\"ValidTo\":{\"ValidTo\":\"2024-05-25\"},\"Address\":{\"FranName\":\"Ashangla\",\"Line1\":\"Colours Montessori School, Near Public College of commerce,JK Dental clinic Building, Old Overbridge colony, Dimapur Nagaland \\u2013 797111\",\"City\":\"Dimapur\",\"Pin\":\"797111\",\"Country\":\"India\",\"State\":\"Nagaland\",\"Agreement\":\"IIMTT Franchise Agreement.pdf\"}}', 'FRANCHISE', NULL, 'Ashangla', 'IIMTT Dimapur', '7005258789', 'michelleochir@gmail.com', 'ea604a5c48b75a4ce677974bd00af7ec', '2019-12-27 07:20:13.393475', NULL),
(80, '3poKFkcT', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-12-24\"},\"ValidTo\":{\"ValidTo\":\"2024-12-24\"},\"Address\":{\"FranName\":\"Rozalin Pramanik\",\"Line1\":\"J-13,baishnabghata Patuli township ward np.101. Near Patuli Police Station\",\"City\":\"kolkata\",\"Pin\":\"700094\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"IIMTT Franchise Agreement Draft.pdf\"}}', 'FRANCHISE', NULL, 'Rozalin Pramanik', 'IIMTT Patuli', '7603039220', 'iimttpatuli@gmail.com', '78341a1eaaacc301c5d14ee2027610a3', '2019-12-27 07:39:01.756930', NULL),
(81, '3poMGF6H', '{\"Details\":{\"Programs\":\"YLE,MAXBRAIN,WRITO,3P\"},\"ValidFr\":{\"ValidFrom\":\"2019-07-25\"},\"ValidTo\":{\"ValidTo\":\"2024-07-25\"},\"Address\":{\"FranName\":\"S.Sangeetha\",\"Line1\":\"Avadi,Poonamallee High roaf,near Adithanar Marriage Hall, J.B.Estate Chennai-600054\",\"City\":\"Avadi\",\"Pin\":\"600054\",\"Country\":\"India\",\"State\":\"Tamil Nadu\",\"Agreement\":\"Beanstalk Afterschool Agreement.pdf\"}}', 'FRANCHISE', NULL, 'S.Sangeetha', 'Garden Gurus Young learning Centre', '9940686581', 'gardengurusedu2@gmail.com', '4e5f71e695b0ac87fb62e24059cb4cc5', '2019-12-27 09:32:27.116858', NULL),
(82, '3poMRU_0', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2019-09-27\"},\"ValidTo\":{\"ValidTo\":\"2024-06-27\"},\"Address\":{\"FranName\":\"Alyana Manji\",\"Line1\":\"Eldama Ravine Cl, Nairobi, Kenya\",\"City\":\"Nairobi\",\"Pin\":\"NA\",\"Country\":\"Kenya\",\"State\":\"Nairobi Area\",\"Agreement\":\"IIMTT International Franchise Agreement Draft.pdf\"}}', 'FRANCHISE', NULL, 'Alyana Manji', 'Oak House Training Academy', '254780635635', 'alyana.manji@minigrp.com', 'b94014ab3b49f33bec842cd7ce9a37ed', '2019-12-27 09:41:22.616679', NULL),
(84, '3poQjLiw', '{\"Details\":{\"Programs\":\"IIMTT\"},\"ValidFr\":{\"ValidFrom\":\"2017-01-16\"},\"ValidTo\":{\"ValidTo\":\"2021-01-16\"},\"Address\":{\"FranName\":\"Anu Pareek\",\"Line1\":\"7D, N.G.Basak Road, Kolkata-700080 \",\"City\":\"Kolkata\",\"Pin\":\"700080\",\"Country\":\"India\",\"State\":\"West Bengal\",\"Agreement\":\"FRANCHISE AGREEMENT-Dum Dum, Mall Road (1).pdf\"}}', 'FRANCHISE', NULL, 'Anu Pareek', 'IIMTT Dum Dum', '8981763209', 'ashoke.parik@gmail.com', 'e8a0584eb8a5b468d030e07a7fc659d0', '2019-12-27 11:59:28.910654', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BS_USER`
--
ALTER TABLE `BS_USER`
  ADD PRIMARY KEY (`BS_USER_AUTOID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BS_USER`
--
ALTER TABLE `BS_USER`
  MODIFY `BS_USER_AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
