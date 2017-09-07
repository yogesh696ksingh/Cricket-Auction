-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2017 at 10:18 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `man_name` varchar(255) NOT NULL,
  `asst_name` varchar(255) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `rights` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `man_name`, `asst_name`, `team_name`, `rights`) VALUES
(1, 'Siddhi R', 'Varsha', 'Hit and Run', 'manager'),
(2, 'Soumya S', 'Thirta', 'Knight Slayers', 'manager'),
(3, 'Pooja D', 'Shruti', 'The Son of Pitches', 'manager'),
(4, 'Mitali T', 'Kalpalathika R', 'Royal Strikers', 'manager'),
(5, 'L V Chinchu', 'Aparna Paturi', 'All Stars XI', 'manager'),
(6, 'Vipula R', 'Mitali Shetty', 'Hulk Hitters', 'manager'),
(7, 'Ankita A', 'Sushmita', 'Strike Force XI', 'manager'),
(8, 'Lipika', 'Rammya', 'Storm Riders', 'manager'),
(9, 'Yogesh Singh', '', 'admin', 'admin'),
(10, 'Global', '', '', 'global');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
