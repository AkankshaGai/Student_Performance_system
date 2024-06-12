-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 03:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini2b`
--

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `SEM` varchar(3) NOT NULL,
  `Sr_no.` int(11) NOT NULL,
  `Name_of_Subject` varchar(255) NOT NULL,
  `Subject_Abbravation` varchar(255) NOT NULL,
  `Subject_Code` varchar(255) NOT NULL,
  `No_of_Student` int(3) NOT NULL,
  `IAE` int(10) DEFAULT NULL,
  `TW_Marks` int(10) DEFAULT NULL,
  `TW_(Int.)_Rs` int(10) DEFAULT NULL,
  `OR/PR/PR+OR1` varchar(255) DEFAULT NULL,
  `OR/PR/PR+OR` int(10) DEFAULT NULL,
  `ORAL` int(10) DEFAULT NULL,
  `TA_EXTERNAL` int(10) DEFAULT NULL,
  `EXTERNAL(Rs)` int(10) DEFAULT NULL,
  `LAB_ASSISTANT` int(10) DEFAULT NULL,
  `PEON` int(10) DEFAULT NULL,
  `TOTAL_(Rs.)` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`SEM`, `Sr_no.`, `Name_of_Subject`, `Subject_Abbravation`, `Subject_Code`, `No_of_Student`, `IAE`, `TW_Marks`, `TW_(Int.)_Rs`, `OR/PR/PR+OR1`, `OR/PR/PR+OR`, `ORAL`, `TA_EXTERNAL`, `EXTERNAL(Rs)`, `LAB_ASSISTANT`, `PEON`, `TOTAL_(Rs.)`) VALUES
('V', 1, 'Theoretical Computer Science', 'TCS', 'CSC501', 69, 276, 25, 444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 276);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`Sr_no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table1`
--
ALTER TABLE `table1`
  MODIFY `Sr_no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
