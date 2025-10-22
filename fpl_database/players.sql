-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2025 at 10:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fpl_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `position` enum('GK','DEF','MID','FWD') NOT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `total_points` int(11) DEFAULT NULL,
  `fk_team` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `full_name`, `position`, `price`, `points`, `total_points`, `fk_team`) VALUES
(1, 'Senne Lammens', 'GK', 5.00, 9, 9, 14),
(2, 'Jurrien Timber', 'DEF', 5.90, 12, 48, 1),
(3, 'Dan Burn', 'DEF', 5.10, 11, 43, 15),
(4, 'Jan Paul van Hecke', 'DEF', 4.20, 11, 22, 5),
(5, 'Antoine Semenyo', 'MID', 7.90, 20, 66, 3),
(6, 'Mohammed Kudus', 'MID', 6.70, 12, 39, 18),
(7, 'Declan Rice', 'MID', 6.50, 11, 40, 1),
(8, 'Donyell Malen', 'FWD', 5.10, 16, 22, 2),
(9, 'Benjamin Sesko', 'FWD', 7.30, 9, 23, 14),
(10, 'Bruno Guimaraes', 'MID', 6.50, 14, 30, 15),
(11, 'Josko Gvardiol', 'DEF', 5.90, 12, 24, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `fk_team` (`fk_team`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`fk_team`) REFERENCES `teams` (`team_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
