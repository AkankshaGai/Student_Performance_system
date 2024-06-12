-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 03:44 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sps`
--

-- --------------------------------------------------------

--
-- Table structure for table `sem3`
--

CREATE TABLE `sem3` (
  `srNo` int(15) NOT NULL,
  `nameOfSubject` varchar(50) NOT NULL,
  `category` text NOT NULL,
  `subjectAbbr` varchar(10) NOT NULL,
  `subjectCode` varchar(15) NOT NULL,
  `students` int(250) DEFAULT NULL,
  `IAE` int(255) DEFAULT NULL,
  `twMarks` int(100) DEFAULT NULL,
  `twRs` int(11) DEFAULT NULL,
  `oralPrac` varchar(20) DEFAULT NULL,
  `oralPracMark` int(11) DEFAULT NULL,
  `oralpracRs` int(11) DEFAULT NULL,
  `taExternal` int(11) DEFAULT NULL,
  `external` int(11) DEFAULT NULL,
  `labAss` int(11) DEFAULT NULL,
  `peon` int(11) DEFAULT NULL,
  `totalRs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sem3`
--

INSERT INTO `sem3` (`srNo`, `nameOfSubject`, `category`, `subjectAbbr`, `subjectCode`, `students`, `IAE`, `twMarks`, `twRs`, `oralPrac`, `oralPracMark`, `oralpracRs`, `taExternal`, `external`, `labAss`, `peon`, `totalRs`) VALUES
(1, 'Engineering Mathematics', 'MATH', 'EM III', 'CSC301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'Discrete Structure and Graph Theory', 'THEORY', 'DSGT', 'CSC302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 'Data Structures', 'THEOY', 'DS', 'CSC303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'Digital Logic and Computer Architecture', 'THEORY', 'DLCOA', 'CSC304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'Computer Graphics', 'THEORY', 'CG', 'CSC305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 'Data Structure Lab', 'LAB', 'DSL', 'CSL301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 'Digital Logic and Computer Architecture Lab', 'NoTWLAB', 'DLCOAL', 'CSL302', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'Computer Graphics Lab', 'LAB', 'CGL', 'CSL303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'Skill Lab course Object Oriented Programming with ', 'SKILLLAB', 'OOPJ', 'CSL304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'Mini Project 1-A', 'MP', 'MP1A', 'CSM301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sem3`
--
ALTER TABLE `sem3`
  ADD PRIMARY KEY (`srNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sem3`
--
ALTER TABLE `sem3`
  MODIFY `srNo` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
