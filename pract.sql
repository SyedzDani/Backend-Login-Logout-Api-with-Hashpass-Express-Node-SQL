-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2024 at 09:01 PM
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
-- Database: `pract`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fName` varchar(250) NOT NULL,
  `lName` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fName`, `lName`, `email`, `password`) VALUES
(1, '', '', '', ''),
(5, 'John', 'Smith', 'johnsmith@gmail.com', '123456'),
(6, 'John', 'Smith', 'johnsmith1@gmail.com', '123456'),
(7, 'John', 'Smith', 'johnsmith2@gmail.com', '$2a$10$UmNdhfgCrz.id/Adarb0IuGHBY6PeMDGT6pKxmimz3edHoLZ1STTi'),
(8, 'John', 'Smith', 'johnsmith3@gmail.com', '$2a$10$RsgG6APbZoWdpoOKEEPwlOk3mu3FsJr5baWASu.nRExgpSqVSiv3u'),
(9, 'John', 'Smith', 'johnsmith4@gmail.com', '$2a$10$Ky5Jjww9zBPJZvlYfD9gze4naR9uBLyfxlVKOTnozYBBvS7d3ySX.'),
(10, 'John', 'Smith', 'johnsmith5@gmail.com', '$2a$10$8S/OYhzqTKceetwMecP/1..nidrLBrqPV5VSOSZY4SY0IdU61ZqCO'),
(11, 'John', 'Smith', 'johnsmith6@gmail.com', '$2a$10$sTxpxeUBsrGJ8h7hpi/DveHyKjYa3ORDcmvXUqnG7E0lnn9yFmBj.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
