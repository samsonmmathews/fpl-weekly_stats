-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2025 at 10:44 PM
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
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `stadium` varchar(100) DEFAULT NULL,
  `manager_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `stadium`, `manager_name`) VALUES
(1, 'Arsenal', 'Emirates Stadium', 'Mikel Arteta'),
(2, 'Aston Villa', 'Villa Park', 'Unai Emery'),
(3, 'AFC Bournemouth', 'Dean Court', 'Andoni Iraola'),
(4, 'Brentford', 'Brentford Community Stadium', 'Keith Andrews'),
(5, 'Brighton & Hove Albion', 'Falmer Stadium', 'Fabian Hürzeler'),
(6, 'Burnley', 'Turf Moor', 'Scott Parker'),
(7, 'Chelsea', 'Stamford Bridge', 'Enzo Maresca'),
(8, 'Crystal Palace', 'Selhurst Park', 'Oliver Glasner'),
(9, 'Everton', 'Hill Dickinson Stadium', 'David Moyes'),
(10, 'Fulham', 'Craven Cottage', 'Marco Silva'),
(11, 'Leeds United', 'Elland Road', 'Daniel Farke'),
(12, 'Liverpool', 'Anfield', 'Arne Slot'),
(13, 'Manchester City', 'Etihad Stadium', 'Pep Guardiola'),
(14, 'Manchester United', 'Old Trafford', 'Ruben Amorim'),
(15, 'Newcastle United', 'St James Park', 'Eddie Howe'),
(16, 'Nottingham Forest', 'City Ground', 'Ange Postecoglou'),
(17, 'Sunderland', 'Stadium of Light', 'Régis Le Bris'),
(18, 'Tottenham Hotspur', 'Tottenham Hotspur Stadium', 'Thomas Frank'),
(19, 'West Ham United', 'London Stadium', 'Nuno Espírito Santo'),
(20, 'Wolverhampton Wanderers', 'Molineux Stadium', 'Vitor Pereira');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
