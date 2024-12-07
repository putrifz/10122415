-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 06:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restapi_if09`
--

-- --------------------------------------------------------

--
-- Table structure for table `bootcamp`
--

CREATE TABLE `bootcamp` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `website` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bootcamp`
--

INSERT INTO `bootcamp` (`id`, `name`, `description`, `website`, `phone`, `email`, `address`) VALUES
(1, 'Ryan Muhammad Hildan', 'Latihan membuat restful api sederhana', 'https://ryanbootcamp.org', '+62 895 3719 37227', 'ryanmhildan@gmail.com', 'Pasirleutik 40125');

-- --------------------------------------------------------

--
-- Table structure for table `khodam`
--

CREATE TABLE `khodam` (
  `id` int(11) NOT NULL,
  `namakhodam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `khodam`
--

INSERT INTO `khodam` (`id`, `namakhodam`) VALUES
(1, 'Sapu Terbang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bootcamp`
--
ALTER TABLE `bootcamp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khodam`
--
ALTER TABLE `khodam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bootcamp`
--
ALTER TABLE `bootcamp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `khodam`
--
ALTER TABLE `khodam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
