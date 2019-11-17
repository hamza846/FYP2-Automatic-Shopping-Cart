-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 12:05 AM
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
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `S.NO#` int(255) NOT NULL,
  `PRODUCT_NAME` varchar(255) NOT NULL,
  `BILL_ID` int(255) NOT NULL,
  `CART_ID` int(255) NOT NULL,
  `PRODUCT_PRICE` int(255) NOT NULL,
  `QUANTITY` int(255) NOT NULL,
  `RFID_TAG` int(255) NOT NULL,
  `TOTAL_COST` int(255) NOT NULL,
  `DATE/TIME` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `YEAR` year(4) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`PRODUCT_NAME`,`BILL_ID`,`CART_ID`,`PRODUCT_PRICE`,`RFID_TAG`,`TOTAL_COST`,`DATE/TIME`,`YEAR`),
  ADD UNIQUE KEY `S.NO#` (`S.NO#`),
  ADD KEY `BILL_ID` (`BILL_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `S.NO#` int(255) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`BILL_ID`) REFERENCES `bill_details` (`BILL_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
