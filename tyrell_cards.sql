-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2022 at 10:13 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tyrell_cards`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `card_id` int NOT NULL,
  `card_name` varchar(10) NOT NULL,
  `card_status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`card_id`, `card_name`, `card_status`) VALUES
(1, 'S-A', 0),
(2, 'S-2', 0),
(3, 'S-3', 0),
(4, 'S-4', 0),
(5, 'S-5', 0),
(6, 'S-6', 0),
(7, 'S-7', 0),
(8, 'S-8', 0),
(9, 'S-9', 0),
(10, 'S-X', 0),
(11, 'S-J', 0),
(12, 'S-Q', 0),
(13, 'S-K', 0),
(14, 'H-A', 0),
(15, 'H-2', 0),
(16, 'H-3', 0),
(17, 'H-4', 0),
(18, 'H-5', 0),
(19, 'H-6', 0),
(20, 'H-7', 0),
(21, 'H-8', 0),
(22, 'H-9', 0),
(23, 'H-X', 0),
(24, 'H-J', 0),
(25, 'H-Q', 0),
(26, 'H-K', 0),
(27, 'D-A', 0),
(28, 'D-2', 0),
(29, 'D-3', 0),
(30, 'D-4', 0),
(31, 'D-5', 0),
(32, 'D-6', 0),
(33, 'D-7', 0),
(34, 'D-8', 0),
(35, 'D-9', 0),
(36, 'D-X', 0),
(37, 'D-J', 0),
(38, 'D-Q', 0),
(39, 'D-K', 0),
(40, 'C-A', 0),
(41, 'C-2', 0),
(42, 'C-3', 0),
(43, 'C-4', 0),
(44, 'C-5', 0),
(45, 'C-6', 0),
(46, 'C-7', 0),
(47, 'C-8', 0),
(48, 'C-9', 0),
(49, 'C-X', 0),
(50, 'C-J', 0),
(51, 'C-Q', 0),
(52, 'C-K', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`card_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `card_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
