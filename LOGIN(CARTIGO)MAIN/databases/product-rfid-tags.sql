-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 12:10 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cartigo`
--

-- --------------------------------------------------------

--
-- Table structure for table `product-rfid-tags`
--

CREATE TABLE `product-rfid-tags` (
  `PRODUCT_ID` int(255) NOT NULL,
  `PRODUCT_NAME` varchar(255) NOT NULL,
  `RFID_TAG` int(255) NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(255) NOT NULL,
  `DATE/TIME` datetime(6) DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product-rfid-tags`
--
ALTER TABLE `product-rfid-tags`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `RFID_TAG` (`RFID_TAG`),
  ADD KEY `PRODUCT_NAME` (`PRODUCT_NAME`,`RFID_TAG`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
