-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 03:43 PM
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
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `IAE(20)` int(11) NOT NULL,
  `TW(25)` int(11) NOT NULL,
  `TW(50)` int(11) NOT NULL,
  `OralPrac` int(11) NOT NULL,
  `TAExternalLab` int(11) NOT NULL,
  `LabAssistant` int(11) NOT NULL,
  `Peon` int(11) NOT NULL,
  `MiniProjectTW(25)` int(11) NOT NULL,
  `MiniProjectTW(50)` int(11) NOT NULL,
  `MiniProjectOral(25)` int(11) NOT NULL,
  `MiniProjectOral(50)` int(11) NOT NULL,
  `TAExternalMp` int(11) NOT NULL,
  `LabAssistantMp` int(11) NOT NULL,
  `PeonMp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`IAE(20)`, `TW(25)`, `TW(50)`, `OralPrac`, `TAExternalLab`, `LabAssistant`, `Peon`, `MiniProjectTW(25)`, `MiniProjectTW(50)`, `MiniProjectOral(25)`, `MiniProjectOral(50)`, `TAExternalMp`, `LabAssistantMp`, `PeonMp`) VALUES
(4, 6, 10, 10, 500, 160, 80, 150, 200, 15, 20, 1000, 80, 40);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
