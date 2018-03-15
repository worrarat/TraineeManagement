-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2018 at 07:04 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traineedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `staff_tb`
--

CREATE TABLE `staff_tb` (
  `stf_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `stf_name` varchar(30) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `stf_surname` varchar(30) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `stf_program` varchar(30) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `stf_tel` varchar(10) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `stf_email` varchar(20) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `stf_user` varchar(20) COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `stf_pass` varchar(10) COLLATE utf8mb4_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staff_tb`
--
ALTER TABLE `staff_tb`
  ADD PRIMARY KEY (`stf_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
