-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 04:36 AM
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
-- Table structure for table `khodam`
--

CREATE TABLE `khodam` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `khodam`
--

INSERT INTO `khodam` (`id`, `name`) VALUES
(1, 'Monyet Pantai'),
(2, 'Hileud Pucuk'),
(3, 'Agus Sedih'),
(4, 'Si Hitam'),
(5, 'Panglima Adi'),
(6, 'Satria Garuda'),
(7, 'Beruk'),
(8, 'Belut Sawah'),
(9, 'Si Manis Jembatan Ancol'),
(10, 'Skibidi'),
(11, 'Kucing Oren'),
(12, 'Nie Yamin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khodam`
--
ALTER TABLE `khodam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `khodam`
--
ALTER TABLE `khodam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
