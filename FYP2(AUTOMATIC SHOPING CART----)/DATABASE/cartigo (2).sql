-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 08:50 PM
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
  `PRODUCT-NAME` varchar(255) NOT NULL,
  `BILL-ID` int(255) NOT NULL,
  `CART-ID` int(255) NOT NULL,
  `PRODUCT-PRICE` int(255) NOT NULL,
  `QUANTITY` int(255) NOT NULL,
  `RFID-TAG` int(255) NOT NULL,
  `TOTAL-COST` int(255) NOT NULL,
  `DATE/TIME` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `YEAR` year(4) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CART-ID` int(100) NOT NULL,
  `TOTAL-COST` int(255) NOT NULL,
  `DATE/TIME` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart-items`
--

CREATE TABLE `cart-items` (
  `CART-ID` int(255) NOT NULL,
  `PRODUCT-NAME` varchar(100) NOT NULL,
  `WEIGHT` varchar(255) NOT NULL,
  `PRODUCT-PRICE` int(100) NOT NULL,
  `QUANTITY` int(100) NOT NULL,
  `RFID-TAGS` int(255) NOT NULL,
  `PRODUCT DESCRIPTION` varchar(100) NOT NULL,
  `TOTAL-COST` int(255) NOT NULL,
  `DATE/TIME` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer-cart`
--

CREATE TABLE `customer-cart` (
  `CART-ID` int(255) NOT NULL,
  `PRODUCT-NAME` varchar(255) NOT NULL,
  `PRODUCT-PRICE` int(255) NOT NULL,
  `RFID-TAG` int(255) NOT NULL,
  `TOTAL-COST` int(255) NOT NULL,
  `DATE/TIME` datetime(6) NOT NULL,
  `YEAR` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CART-ID` int(255) NOT NULL,
  `BILL-ID` int(255) NOT NULL,
  `DATE/TIME` datetime(6) NOT NULL,
  `YEAR` year(4) NOT NULL,
  `TOTAL-COST` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `S_Number` int(255) NOT NULL,
  `PRODUCT_NAME` varchar(255) NOT NULL,
  `PRODUCT_PRICE` int(255) NOT NULL,
  `WEIGHT` varchar(255) NOT NULL,
  `QUANTITY` int(255) NOT NULL,
  `RFID_TAG` int(255) NOT NULL,
  `PRODUCT_ID` int(255) NOT NULL,
  `PRODUCT_TYPE` varchar(255) NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`S_Number`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `WEIGHT`, `QUANTITY`, `RFID_TAG`, `PRODUCT_ID`, `PRODUCT_TYPE`, `PRODUCT_DESCRIPTION`) VALUES
(1, 'SNOOKER STICK', 1200, '450 GRAMS', 1, 77, 77, 'SPORTS', 'SNOOKER STICK PRICE IS 1200/RS');

-- --------------------------------------------------------

--
-- Table structure for table `product-rfid-tags`
--

CREATE TABLE `product-rfid-tags` (
  `RFID-TAG` bit(64) NOT NULL,
  `PRODUCT-ID` int(255) NOT NULL,
  `PRODUCT-DESCRIPTION` varchar(255) NOT NULL,
  `DATE/TIME` datetime(6) DEFAULT current_timestamp(6),
  `QUANTITY` int(255) NOT NULL,
  `PRODUCT-NAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `S_Number` int(255) NOT NULL,
  `PRODUCT_NAME` varchar(255) NOT NULL,
  `PRODUCT_PRICE` varchar(255) NOT NULL,
  `WEIGHT` varchar(255) NOT NULL,
  `QUANTITY` varchar(255) NOT NULL,
  `RFID_TAG` varchar(255) NOT NULL,
  `PRODUCT_ID` varchar(255) NOT NULL,
  `PRODUCT_TYPE` varchar(255) NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`S_Number`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `WEIGHT`, `QUANTITY`, `RFID_TAG`, `PRODUCT_ID`, `PRODUCT_TYPE`, `PRODUCT_DESCRIPTION`) VALUES
(1, 'Dalda Cooking Oil (1KG)', '200', '1KG', '1', '1', '1', 'Cooking Oil', 'Dalda Cooking Oil Price is 200Rs for 1KG'),
(2, 'Shahtaj Cooking Oil (5KG)', '1050', '5KG', '1', '10', '10', 'Cooking Oil', 'Shahtaj Cooking oil of 5kg price is 1050/Rs'),
(3, 'Manpasand Cooking Oil (5KG)', '950', '5KG', '1', '11', '11', 'Cooking Oil', 'Manpasand Cooking Oil 5KG price is 950/Rs'),
(4, 'Habib Cooking Oil (1KG)', '200', '1KG', '1', '12', '12', 'Cooking Oil', 'Habib Cooking Oil of 1kg price is 200/Rs'),
(5, 'Habib Cooking Oil (5KG)', '1000', '5KG', '1', '13', '13', 'Cooking Oil', 'Habib Cooking Oil 5KG price is 1000/Rs'),
(6, 'Tullo Cooking Oil (1KG)', '200', '1KG', '1', '14', '14', 'Cooking Oil', 'Tullo Cooking Oil for 1kg price is 200/Rs'),
(7, 'Tullo Cooking Oil (5KG)', '1000', '5KG', '1', '15', '15', 'Cooking Oil', 'Tullo Cooking Oil for 5kg price is 1000/Rs'),
(8, 'Kashmir Cooking Oil (1KG)', '200', '1KG', '1', '16', '16', 'Cooking Oil', 'Kashmir Cooking Oil for 1kg price is 200/Rs'),
(9, 'Kashmir Cooking Oil (5KG)', '1000', '5KG', '1', '17', '17', 'Cooking Oil', 'Kashmir Cooking Oil for 5kg price is 1000/Rs'),
(10, 'Maulvi Cooking Oil (1KG)', '220', '1KG', '1', '18', '18', 'Cooking Oil', 'Maulvi Cooking Oil for 1kg price is 220/Rs'),
(11, 'Maulvi Cooking Oil (5KG)', '1150', '5KG', '1', '19', '19', 'Cooking Oil', 'Maulvi Cooking Oil for 1kg price is 1150/Rs'),
(12, 'Dalda Cooking Oil(5KG)', '1000', '5KG', '1', '2', '2', 'Cooking Oil', 'Dalda Cooking Oil Price is 1000 Rs for 5KG'),
(13, 'Habib Banaspati  (1KG)', '200', '1KG', '1', '20', '20', 'Ghee', 'Habib Banaspati of 1kg price is 200/Rs'),
(14, 'Habib Banaspati (5KG)', '1000', '5KG', '1', '21', '21', 'Ghee', 'Habib Banaspati 5KG price is 1000/Rs'),
(15, 'Tullo Banaspati (1KG)', '200', '1KG', '1', '22', '22', 'Ghee', 'Tullo Banaspati for 1kg price is 210/Rs'),
(16, 'Tullo Banaspati (5KG)', '1050', '5KG', '1', '23', '23', 'Ghee', 'Tullo Banaspati for 5kg price is 1050/Rs'),
(17, 'Kashmir Banaspati (1KG)', '200', '1KG', '1', '24', '24', 'Ghee', 'Kashmir Banaspati for 1kg price is 200/Rs'),
(18, 'Kashmir Banaspati (5KG)', '1000', '5KG', '1', '25', '25', 'Ghee', 'Kashmir Banaspati for 5kg price is 1000/Rs'),
(19, 'Maulvi Banaspati (1KG)', '220', '1KG', '1', '26', '26', 'Ghee', 'Maulvi Banaspati for 1kg price is 220/Rs'),
(20, 'Maulvi Banaspati (5KG)', '1150', '5KG', '1', '27', '27', 'Ghee', 'Maulvi Banaspati for 5 kg price is 1150/Rs'),
(21, 'Meezan Banaspati  (1KG)', '200', '1KG', '1', '28', '28', 'Ghee', 'Meezan Banaspati of 1kg price is 200/Rs'),
(22, 'Meezan Banaspati (5KG)', '1000', '5KG', '1', '29', '29', 'Ghee', 'Meezan Banaspati 5KG price is 1000/Rs'),
(23, 'Meezan Cooking Oil (1KG)', '190', '1KG', '1', '3', '3', 'Cooking Oil', 'Meezan Cooking Oil Price is 190/Rs of 1KG'),
(24, 'Dalda Banaspati (1KG)', '220', '1KG', '1', '30', '30', 'Ghee', 'Dalda Banaspati for 1kg price is 220/Rs'),
(25, 'Dalda Banaspati (5KG)', '1050', '5KG', '1', '31', '31', 'Ghee', 'Dalda Banaspati for 5kg price is 1050/Rs'),
(26, 'Soya Supreme Banaspati (1KG)', '220', '1KG', '1', '32', '32', 'Ghee', 'Soya Supreme Banaspati for 1kg price is 220/Rs'),
(27, 'Soya Supreme Banaspati (5KG)', '1150', '5KG', '1', '33', '33', 'Ghee', 'Soya Supreme Banaspati for 5kg price is 1150/Rs'),
(28, 'Sufi Banaspati (1KG)', '220', '1KG', '1', '34', '34', 'Ghee', 'Sufi Banaspati for 1kg price is 220/Rs'),
(29, 'Sufi Banaspati (5KG)', '1150', '5KG', '1', '35', '35', 'Ghee', 'Sufi Banaspati for 5 kg price is 1150/Rs'),
(30, 'Shahtaj Banaspati (1KG)', '220', '1KG', '1', '36', '36', 'Ghee', 'Shahtaj Banaspati for 1kg price is 220/Rs'),
(31, 'Shahtaj Banaspati (5KG)', '1150', '5KG', '1', '37', '37', 'Ghee', 'Shahtaj Banaspati for 5 kg price is 1150/Rs'),
(32, 'Meezan Cooking Oil (5KG)', '950', '5KG', '1', '4', '4', 'Cooking Oil', 'Meezan cooking Oil for 5KG price is 950/Rs'),
(33, 'Cadbury Dairy Milk Chocolate (10/Rs)', '10', '11 grams', '1', '40', '40', 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE PRICE 10/Rs'),
(34, 'Cadbury Dairy Milk Chocolate (25/Rs)', '25', '20 grams', '1', '41', '41', 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE PROCE 25/Rs'),
(35, 'Cadbury Dairy Milk Chocolate (65/Rs)', '65', '', '1', '42', '42', 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE PRICE 65/Rs'),
(36, 'Cadbury Dairy Milk Chocolate (100/Rs)', '100', '', '1', '43', '43', 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE PROCE 100/Rs'),
(37, 'Cadbury Dairy Milk Chocolate(BUBBLY) (35/Rs)', '35', '', '1', '44', '44', 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE(BUBBLY) PRICE 35/Rs'),
(38, 'Cadbury Dairy Milk Chocolate(BUBBLY) (55/Rs)', '55', '', '1', '45', '45', 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE PRICE 55/Rs'),
(39, 'Cadbury Dairy Milk Chocolate(BUBBLY) (110/Rs)', '110', '', '1', '46', '46', 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE(BUBBLY) PRICE 110/Rs'),
(40, 'Cadbury Dairy Milk Chocolate(Crackle) (25/Rs)', '25', '20 grams', '1', '47', '47', 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE (Crackle) PRICE 25/Rs'),
(41, 'Cadbury Dairy Milk Chocolate(Crackle) (55/Rs)', '55', '', '1', '48', '48', 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE (Crackle) PRICE 55/Rs'),
(42, 'Mars ', '60', '', '1', '49', '49', 'CHOCOLATE', 'MARS PRICE IS 60/Rs'),
(43, 'Canolive Cooking Oil (1KG)', '210', '1KG', '1', '5', '5', 'Cooking Oil', 'Canolive Cooking oil of 1kg price is 210/Rs'),
(44, 'SNICKERS', '60', '', '1', '50', '50', 'CHOCOLATE', 'SNICKERS PRICE IS 60/Rs'),
(45, 'TWIX', '60', '', '1', '51', '51', 'CHOCOLATE', 'TWIX CHOCOLATE PRICE 60/Rs'),
(46, 'KITKAT', '60', '', '1', '52', '52', 'CHOCOLATE', 'KITKAT CHOCOLATE PRICE 60/Rs'),
(47, 'GALAXY (DARK) Chocolate', '225', '', '1', '53', '53', 'CHOCOLATE', 'GALAXY (DARK) CHOCOLATE PRICE 225/Rs'),
(48, 'BOUNTY Chocolate', '60', '', '1', '54', '54', 'CHOCOLATE', 'BOUNTY CHOCOLATE PRICE 60/Rs'),
(49, 'NOW(CANDYLAND) Chocolate', '5', '5 Grams', '1', '55', '55', 'CHOCOLATE', 'NOW(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(50, 'NOW(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', '56', '56', 'CHOCOLATE', 'NOW(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(51, 'Jubilee(CANDYLAND) Chocolate', '5', '5 Grams', '1', '57', '57', 'CHOCOLATE', 'Jubilee CHOCOLATE PRICE 5/Rs'),
(52, 'Jubilee(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', '58', '58', 'CHOCOLATE', 'Jubilee(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(53, 'SONNET(CANDYLAND) Chocolate', '5', '5 Grams', '1', '59', '59', 'CHOCOLATE', 'SONNET(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(54, 'Manpasand Cooking Oil (1KG)', '190', '1KG', '1', '6', '6', 'Cooking Oil', 'Manpasand Cooking Oil 1KG price is 190'),
(55, 'SONNET(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', '60', '60', 'CHOCOLATE', 'SONNET(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(56, 'PERK(CANDYLAND) Chocolate', '5', '5 Grams', '1', '61', '61', 'CHOCOLATE', 'PERK(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(57, 'PERK(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', '62', '62', 'CHOCOLATE', 'PERK(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(58, 'PARADISE(CANDYLAND) Chocolate', '5', '5 Grams', '1', '63', '63', 'CHOCOLATE', 'PARADISE(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(59, 'PARADISE(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', '64', '64', 'CHOCOLATE', 'PARADISE(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(60, 'CLOUD-9 (CANDYLAND) Chocolate', '10', '7 Grams', '1', '65', '65', 'CHOCOLATE', 'CLOUD-9(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(61, 'CRICKET BAT(CA)', '350', '', '1', '67', '67', 'SPORTS', 'CRICKET BAT (CA) PRICE 350/Rs'),
(62, 'CRICKET BAT(MB)', '450', '500 GRAMS', '1', '68', '68', 'SPORTS', 'CRICKET BAT(MB) PRICE IS 450/Rs'),
(63, 'FOOTBALL', '600', '', '1', '69', '69', 'SPORTS', 'FOOTBALL PRICE IS 600/RS'),
(64, 'Eva Cooking Oil (1KG)', '200', '1KG', '1', '7', '7', 'Cooking Oil', 'Eve Cooking Oil of 1kg price is 200/Rs'),
(65, 'TABLE TENIS RACKETS(2)', '900', '', '1', '70', '70', 'SPORTS', 'TABLE TENNIS RACKETS (2RL) PRICE IS 900/Rs'),
(66, 'TABLE TENNIS NET', '1000', '', '1', '71', '71', 'SPORTS', 'TABLE TENNIS NET PRICE IS 1000/RS'),
(67, 'TABLE TENNIS BALL PACKET(6)', '600', '', '1', '72', '72', 'SPORTS', 'TABLE TENNIS BALL PACKET(6) PRICE IS 600/RS'),
(68, 'BADMINTON RACKETS (2)', '600', '100 GRAMS', '2', '73', '73', 'SPORTS', '2 BADMINTON TACKET PRICE IS 600/RS'),
(69, 'SHITTLE COCK PACKETS (BADMINTON)(12)', '1000', '250 GRAMS', '12', '74', '74', 'SPORTS', 'SHITTLE COCK PACKETS (BADMINTON)(12) PRICE IS 1000/RS'),
(70, 'BASKET BALL', '550', '', '1', '75', '75', 'SPORTS', 'BASKET BALL PRICE IS 550/RS'),
(71, 'BASKET BALL STAND', '750', '', '1', '76', '76', 'SPORTS', 'BASKET BALL STAND PRICE IS 750/RS'),
(72, 'SNOOKER BALLS PACKETS(24)', '1000', '', '24', '77', '77', 'SPORTS', 'SNOOKER BALLS PACKETS(24) PRICE IS 1000/RS'),
(75, 'CHESS GAME', '500', '100 GRAMS', '1', '78', '78', 'SPORTS', 'Chess game price is 500/Rs '),
(73, 'Soya Supreme Cooking Oil (1KG)', '200', '1KG', '1', '8', '8', 'Cooking Oil', 'Soya Supreme Cooking Oil 1KG price is 200'),
(74, 'Shahtaj Cooking Oil (1KG)', '210', '1KG', '1', '9', '9', 'Cooking Oil', 'Shahtaj Cooking oil of 1kg price is 210/Rs');

-- --------------------------------------------------------

--
-- Table structure for table `products category`
--

CREATE TABLE `products category` (
  `PRODUCT-ID` int(255) NOT NULL,
  `PRODUCT-NAME` varchar(255) NOT NULL,
  `PRODUCT-TYPE` varchar(255) NOT NULL,
  `CATEGORY-NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `STORE-NAME` varchar(255) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PHONE-NUMBER` int(255) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `WEBSITE` varchar(50) NOT NULL,
  `NTN-NO#` varchar(100) NOT NULL,
  `TAX-NUMBER` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `Age` int(100) NOT NULL,
  `Province` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `TypeofCancer` varchar(4000) NOT NULL,
  `stage` int(255) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `Age`, `Province`, `City`, `TypeofCancer`, `stage`, `email`) VALUES
(1, 'ahmed', 'ali raza', 22, 'SINDH', 'KARACHI', 'lymphoma(Non-Hodgkin\'s)', 2, 'iuammu22@gmail.com'),
(2, 'anis ', 'hasan', 54, 'SINDH', 'KARACHI', 'Pencreatic cancer', 3, 'anishasan29@gmail.com'),
(3, 'chaudry ', 'iqbal', 55, 'PUNJAB', 'LAHORE', 'Neck cancer (Head and neck cancer)', 1, 'Ciqbal393@gmail.com'),
(4, 'zafar', 'gohar', 34, 'KPK', 'PESHAWAR', 'Brain cancer', 4, 'gharZ@gmail.com'),
(5, 'dildar ', 'khan', 38, 'BALOCHISTAN', 'QUETTA', 'Kidney cancer', 2, 'dildarkhan123@gmail.com'),
(6, 'jamal', 'Kamal', 44, 'SINDH', 'KARACHI', 'Blood cancer', 3, 'kkkhan93@gmail.com'),
(7, 'komal', 'rizwan', 43, 'AZAD-KASHMIR', 'MUZAFFARABAD', 'Throat cancer', 3, 'kritz939@gmail.com'),
(8, 'wazir', 'hasan', 60, 'SINDH', 'KARACHI', 'Throat cancer', 4, 'whasan16@gmail.com'),
(9, 'ali', 'khan', 23, 'SINDH', 'KARACHI', 'Acute granulocytic leukemia (Leukemia)', 1, 'ali1@gmail.com'),
(10, 'hafsa ', 'shah jatoi', 43, 'BALOCHISTAN', 'QUETTA', 'Breast cancer', 1, 'jatt23@gmail.com'),
(12, 'hasnain', 'mirza baig', 55, 'PUNJAB', 'LAHORE', 'Brain tumor (Brain cancer)', 3, 'mbaig!@gmail.com'),
(13, 'hasil', 'bazinjo', 56, 'BALOCHISTAN', 'QUETTA', 'Eye cancer', 2, 'baz90@gmail.com'),
(14, 'gola', 'LAAL', 20, 'KPK', 'PESHAWAR', 'Cervical cancer', 4, 'bolalaal20@gmail.com'),
(15, 'marina', 'haad', 34, 'PUNJAB', 'Balochistan', 'Breast cancer', 2, 'marinah@gmail.com'),
(16, 'Pakistan', 'Zindabad', 71, '--', '--', '--', 1, 'pak-ik@govt.pk'),
(17, 'xyz', 'abc', 22, 'SINDH', 'KARACHI', 'Acute granulocytic leukemia (Leukemia)', 1, 'iuammu22@gmail.com'),
(18, 'mohsin', 'jafferi', 22, 'SINDH', 'KARACHI', '--', 1, 'mohsin');

-- --------------------------------------------------------

--
-- Table structure for table `user-login`
--

CREATE TABLE `user-login` (
  `USER-ID` int(11) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user-login`
--

INSERT INTO `user-login` (`USER-ID`, `USERNAME`, `PASSWORD`) VALUES
(1, 'admin1', 'admin1'),
(2, 'admin2', 'admin2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BILL-ID`,`CART-ID`),
  ADD UNIQUE KEY `S.NO#` (`S.NO#`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CART-ID`);

--
-- Indexes for table `cart-items`
--
ALTER TABLE `cart-items`
  ADD PRIMARY KEY (`CART-ID`,`RFID-TAGS`);

--
-- Indexes for table `customer-cart`
--
ALTER TABLE `customer-cart`
  ADD PRIMARY KEY (`CART-ID`,`RFID-TAG`,`TOTAL-COST`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CART-ID`,`BILL-ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD UNIQUE KEY `S_Number` (`S_Number`);

--
-- Indexes for table `product-rfid-tags`
--
ALTER TABLE `product-rfid-tags`
  ADD UNIQUE KEY `PRODUCT-ID` (`PRODUCT-ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`RFID_TAG`,`PRODUCT_ID`),
  ADD UNIQUE KEY `S_Number` (`S_Number`);

--
-- Indexes for table `products category`
--
ALTER TABLE `products category`
  ADD PRIMARY KEY (`PRODUCT-ID`,`PRODUCT-NAME`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user-login`
--
ALTER TABLE `user-login`
  ADD PRIMARY KEY (`USER-ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `S.NO#` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `S_Number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `S_Number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user-login`
--
ALTER TABLE `user-login`
  MODIFY `USER-ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
