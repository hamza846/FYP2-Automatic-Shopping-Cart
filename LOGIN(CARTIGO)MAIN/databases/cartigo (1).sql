-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2019 at 11:39 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `S_Number` int(255) NOT NULL,
  `BILL_ID` int(255) NOT NULL,
  `CART_ID` int(255) NOT NULL,
  `DATE/TIME` datetime(4) NOT NULL,
  `TOTAL_COST` int(255) NOT NULL
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
  `CART_ID` int(255) NOT NULL,
  `PRODUCT_NAME` varchar(100) NOT NULL,
  `WEIGHT` varchar(255) NOT NULL,
  `QUANTITY` int(100) NOT NULL,
  `PRODUCT_PRICE` int(100) NOT NULL,
  `RFID_TAG` int(255) NOT NULL,
  `TOTAL_COST` int(255) NOT NULL,
  `DATE/TIME` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer-cart`
--

CREATE TABLE `customer-cart` (
  `CART_ID` int(255) NOT NULL,
  `PRODUCT_NAME` varchar(255) NOT NULL,
  `PRODUCT_PRICE` int(255) NOT NULL,
  `RFID_TAG` int(255) NOT NULL,
  `TOTAL_COST` int(255) NOT NULL,
  `DATE/TIME` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `YEAR` year(4) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'CARTIGO', '311820715ABH');

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
  `RFID_TAG` int(255) NOT NULL,
  `PRODUCT_ID` int(255) NOT NULL,
  `PRODUCT_TYPE` varchar(255) NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`S_Number`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `WEIGHT`, `QUANTITY`, `RFID_TAG`, `PRODUCT_ID`, `PRODUCT_TYPE`, `PRODUCT_DESCRIPTION`) VALUES
(1, 'BADMINTON RACKETS (2)', '600', '100 GRAMS', '2', 73, 73, 'SPORTS', '2 BADMINTON TACKET PRICE IS 600/RS'),
(2, 'BAKERI BISTIKS(LU)', '200', '', '1', 144, 144, 'BISCUITS', ' BAKERI BISTIKS(LU)1BOX PRICE IS 200/Rs'),
(154, 'BAKERI BISTIKS(LU)', '200', '', '1', 155, 155, 'BISCUITS', ' BAKERI BISTIKS(LU)1BOX PRICE IS 200/Rs'),
(3, 'BAKERI CLASSIC(LU)(12)', '200', '', '10', 143, 143, 'BISCUITS', ' BAKERI CLASSIC(LU)(10) 1BOX PRICE IS 200/Rs'),
(153, 'BAKERI CLASSIC(LU)(12)', '200', '', '12', 154, 154, 'BISCUITS', ' BAKERI CLASSIC(LU)(12) 1BOX PRICE IS 200/Rs'),
(4, 'BAKERI NAN KHATAI(LU)(24)', '200', '', '1', 145, 145, 'BISCUITS', ' BAKERI NAN KHATAI(LU) 1BOX PRICE IS 200/Rs'),
(155, 'BAKERI NAN KHATAI(LU)(24)', '200', '', '1', 156, 156, 'BISCUITS', ' BAKERI NAN KHATAI(LU) 1BOX PRICE IS 200/Rs'),
(5, 'BASKET BALL', '550', '', '1', 75, 75, 'SPORTS', 'BASKET BALL PRICE IS 550/RS'),
(6, 'BASKET BALL STAND', '750', '', '1', 76, 76, 'SPORTS', 'BASKET BALL STAND PRICE IS 750/RS'),
(7, 'BOUNTY Chocolate', '60', '', '1', 54, 54, 'CHOCOLATE', 'BOUNTY CHOCOLATE PRICE 60/Rs'),
(8, 'BOXING GLOVES(R/L)(APOLLO)', '1300', '12 OZ', '2', 80, 80, 'SPORTS', 'BOXING GLOVES(R/L)(APOLLO) PRICE IS 1300/RS'),
(9, 'Cadbury Dairy Milk Chocolate (10/Rs)', '10', '11 grams', '1', 40, 40, 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE PRICE 10/Rs'),
(10, 'Cadbury Dairy Milk Chocolate (100/Rs)', '100', '', '1', 43, 43, 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE PROCE 100/Rs'),
(11, 'Cadbury Dairy Milk Chocolate (25/Rs)', '25', '20 grams', '1', 41, 41, 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE PROCE 25/Rs'),
(12, 'Cadbury Dairy Milk Chocolate (65/Rs)', '65', '', '1', 42, 42, 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE PRICE 65/Rs'),
(13, 'Cadbury Dairy Milk Chocolate(BUBBLY) (110/Rs)', '110', '', '1', 46, 46, 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE(BUBBLY) PRICE 110/Rs'),
(14, 'Cadbury Dairy Milk Chocolate(BUBBLY) (35/Rs)', '35', '', '1', 44, 44, 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE(BUBBLY) PRICE 35/Rs'),
(15, 'Cadbury Dairy Milk Chocolate(BUBBLY) (55/Rs)', '55', '', '1', 45, 45, 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE PRICE 55/Rs'),
(16, 'Cadbury Dairy Milk Chocolate(Crackle) (25/Rs)', '25', '20 grams', '1', 47, 47, 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE (Crackle) PRICE 25/Rs'),
(17, 'Cadbury Dairy Milk Chocolate(Crackle) (55/Rs)', '55', '', '1', 48, 48, 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE (Crackle) PRICE 55/Rs'),
(18, 'CAFE(MAYFAIR)(24)', '120', '', '24', 164, 164, 'BISCUITS', ' CAFE(MAYFAIR)(6) 1BOX PRICE IS 120/Rs'),
(19, 'CANDI(LU)', '120', '', '6', 139, 139, 'BISCUITS', 'CANDI BISCUITS(LU) PRICE IS 120/RS'),
(20, 'Canolive Cooking Oil (1KG)', '210', '1KG', '1', 5, 5, 'Cooking Oil', 'Canolive Cooking oil of 1kg price is 210/Rs'),
(21, 'CATTY CHINS', '10', '', '1', 110, 110, 'SNACKS', 'CATTY CHINS PRICE IS 10/Rs'),
(22, 'CATTY CHINS', '20', '', '1', 111, 111, 'SNACKS', 'CATTY CHINS price is 20/Rs'),
(23, 'CATTY CHINS', '30', '', '1', 112, 112, 'SNACKS', 'CATTY CHINS price is 50/Rs'),
(24, 'CHEETOS(KETCHEP)', '10', '', '1', 119, 119, 'SNACKS', 'CHEETOS(KETCHEP) PRICE IS 10/Rs'),
(25, 'CHEETOS(KETCHEP)', '20', '', '1', 120, 120, 'SNACKS', 'CHEETOS(KETCHEP) price is 20/Rs'),
(26, 'CHEETOS(RED HOT)', '25', '', '1', 121, 121, 'SNACKS', 'CHEETOS(RED HOT) price is 25/Rs'),
(27, 'CHESS GAME', '500', '100 GRAMS', '1', 78, 78, 'SPORTS', 'Chess game price is 500/Rs '),
(28, 'CHOCOLATE CHIP(BISCONNI)(24)', '115', '', '24', 151, 151, 'BISCUITS', ' CHOCOLATE CHIP(BISCONNI) PRICE IS 115/Rs'),
(163, 'CHOCOLATE CHIP(BISCONNI)(24)', '115', '', '24', 161, 161, 'BISCUITS', ' CHOCOLATE CHIP(BISCONNI) PRICE IS 115/Rs'),
(29, 'CHOCOLATTO(BISCONNI)(12)', '120', '', '12', 149, 149, 'BISCUITS', ' CHOCOLATTO(BISCONNI) 1BOX (12) PRICE IS 120/Rs'),
(158, 'CHOCOLATTO(BISCONNI)(12)', '120', '', '12', 159, 159, 'BISCUITS', ' CHOCOLATTO(BISCONNI) 1BOX (12) PRICE IS 120/Rs'),
(30, 'CHOCOLATTO(BISCONNI)(24)', '200', '', '24', 150, 150, 'BISCUITS', ' CHOCOLATTO(BISCONNI) PRICE IS 200/Rs'),
(159, 'CHOCOLATTO(BISCONNI)(24)', '200', '', '24', 160, 160, 'BISCUITS', ' CHOCOLATTO(BISCONNI) PRICE IS 200/Rs'),
(31, 'CLOUD-9 (CANDYLAND) Chocolate', '10', '7 Grams', '1', 65, 65, 'CHOCOLATE', 'CLOUD-9(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(32, 'COCOMO(BISCONNI)(24)', '125', '', '24', 147, 147, 'BISCUITS', ' COCOMO(BISCONNI)  1 BOX(24 PACKS) PRICE IS 125/Rs'),
(156, 'COCOMO(BISCONNI)(24)', '125', '', '24', 157, 157, 'BISCUITS', ' COCOMO(BISCONNI)  1 BOX(24 PACKS) PRICE IS 125/Rs'),
(33, 'CRICKET BAT(CA)', '350', '', '1', 67, 67, 'SPORTS', 'CRICKET BAT (CA) PRICE 350/Rs'),
(34, 'CRICKET BAT(MB)', '450', '500 GRAMS', '1', 68, 68, 'SPORTS', 'CRICKET BAT(MB) PRICE IS 450/Rs'),
(35, 'Dalda Banaspati (1KG)', '220', '1KG', '1', 30, 30, 'Ghee', 'Dalda Banaspati for 1kg price is 220/Rs'),
(36, 'Dalda Banaspati (5KG)', '1050', '5KG', '1', 31, 31, 'Ghee', 'Dalda Banaspati for 5kg price is 1050/Rs'),
(37, 'Dalda Cooking Oil (1KG)', '200', '1KG', '1', 1, 1, 'Cooking Oil', 'Dalda Cooking Oil Price is 200Rs for 1KG'),
(38, 'Dalda Cooking Oil(5KG)', '1000', '5KG', '1', 2, 2, 'Cooking Oil', 'Dalda Cooking Oil Price is 1000 Rs for 5KG'),
(39, 'DORITOS(LARGE)', '850', '', '1', 131, 131, 'SNACKS', 'DORITOS(LARGE) price is 850/Rs'),
(40, 'DORITOS(SMALL)', '490', '', '1', 130, 130, 'SNACKS', 'DORITOS(SMALL) PRICE IS 490/Rs'),
(41, 'Eva Cooking Oil (1KG)', '200', '1KG', '1', 7, 7, 'Cooking Oil', 'Eve Cooking Oil of 1kg price is 200/Rs'),
(42, 'FLO(BISCONNI)(CAKE)(12)', '120', '', '12', 148, 148, 'BISCUITS', ' FLO(BISCONNI)CAKE PRICE IS 120/Rs'),
(157, 'FLO(BISCONNI)(CAKE)(12)', '120', '', '12', 158, 158, 'BISCUITS', ' FLO(BISCONNI)CAKE PRICE IS 120/Rs'),
(43, 'FOOTBALL', '600', '', '1', 69, 69, 'SPORTS', 'FOOTBALL PRICE IS 600/RS'),
(44, 'GALA(LU)', '120', '', '6', 163, 163, 'BISCUITS', 'GALA(LU) PRICE IS 120/RS'),
(45, 'GALA(LU)(24)', '20', '--', '1', 140, 140, 'BISCUITS', 'GALA(LU) PRICE IS 20/RS'),
(46, 'GALAXY (DARK) Chocolate', '225', '', '1', 53, 53, 'CHOCOLATE', 'GALAXY (DARK) CHOCOLATE PRICE 225/Rs'),
(47, 'Habib Banaspati  (1KG)', '200', '1KG', '1', 20, 20, 'Ghee', 'Habib Banaspati of 1kg price is 200/Rs'),
(48, 'Habib Banaspati (5KG)', '1000', '5KG', '1', 21, 21, 'Ghee', 'Habib Banaspati 5KG price is 1000/Rs'),
(49, 'Habib Cooking Oil (1KG)', '200', '1KG', '1', 12, 12, 'Cooking Oil', 'Habib Cooking Oil of 1kg price is 200/Rs'),
(50, 'Habib Cooking Oil (5KG)', '1000', '5KG', '1', 13, 13, 'Cooking Oil', 'Habib Cooking Oil 5KG price is 1000/Rs'),
(51, 'HOCKEY STICK (CA)', '3000', '500 GRAMS', '1', 81, 81, 'SPORTS', 'HOCKEY STICK(CA) PRICE IS 3000/RS '),
(52, 'Jubilee(CANDYLAND) Chocolate', '5', '5 Grams', '1', 57, 57, 'CHOCOLATE', 'Jubilee CHOCOLATE PRICE 5/Rs'),
(53, 'Jubilee(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', 58, 58, 'CHOCOLATE', 'Jubilee(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(54, 'Kashmir Banaspati (1KG)', '200', '1KG', '1', 24, 24, 'Ghee', 'Kashmir Banaspati for 1kg price is 200/Rs'),
(55, 'Kashmir Banaspati (5KG)', '1000', '5KG', '1', 25, 25, 'Ghee', 'Kashmir Banaspati for 5kg price is 1000/Rs'),
(56, 'Kashmir Cooking Oil (1KG)', '200', '1KG', '1', 16, 16, 'Cooking Oil', 'Kashmir Cooking Oil for 1kg price is 200/Rs'),
(57, 'Kashmir Cooking Oil (5KG)', '1000', '5KG', '1', 17, 17, 'Cooking Oil', 'Kashmir Cooking Oil for 5kg price is 1000/Rs'),
(58, 'KITKAT', '60', '', '1', 52, 52, 'CHOCOLATE', 'KITKAT CHOCOLATE PRICE 60/Rs'),
(59, 'KURKURE(CHUTNY CHASKA)', '360', '', '24', 132, 132, 'SNACKS', 'KURKURE(CHUTNY CHASKA) \r\n1BOX((24 PIECES) price is 360/Rs'),
(60, 'KURKURE(CHUTNY CHASKA)', '360', '', '24', 133, 133, 'SNACKS', 'KURKURE(CHUTNY CHASKA)(24) price is 600/Rs'),
(62, 'KURKURE(RED HOT)', '360', '', '24', 134, 134, 'SNACKS', 'KURKURE(RED HOT)(24) price is 360/Rs'),
(61, 'KURKURE(RED HOT)', '25', '', '24', 135, 135, 'SNACKS', 'KURKURE(RED HOT) price is 600/Rs'),
(63, 'KURLEEZ(KETCHEP)', '10', '20 g', '1', 85, 85, 'SNACKS', 'KURLEEZ(KETCHEP) price is 10/RS'),
(64, 'KURLEEZ(KETCHEP)', '30', '--', '1', 86, 86, 'SNACKS', 'KURLEEZ(KETCHEP) price is 30/RS'),
(65, 'KURLEEZ(KETCHEP)', '50', '--', '1', 87, 87, 'SNACKS', 'KURLEEZ(KETCHEP) price is 50/RS'),
(66, 'KURLEEZ(MASALA )', '30', '--', '1', 83, 83, 'SNACKS', 'KURLEEZ(MASALA ) price is 30/RS'),
(67, 'KURLEEZ(MASALA)', '10', '20 g', '1', 82, 82, 'SNACKS', 'KURLEEZ(MASALA ) price is 10/rs'),
(68, 'KURLEEZ(MASALA)', '50', '--', '1', 84, 84, 'SNACKS', 'KURLEEZ(MASALA ) price is 50/RS'),
(69, 'LAY(FRENCH CHEESE)', '10', '20 g', '1', 92, 92, 'SNACKS', 'LAY(FRENCH CHEESE) PRICE IS 10/RS'),
(70, 'LAY(FRENCH CHEESE)', '20', '--', '1', 93, 93, 'SNACKS', 'LAY(FRENCH CHEESE) PRICE IS 20/RS'),
(71, 'LAY(FRENCH CHEESE)', '30', '--', '1', 94, 94, 'SNACKS', 'LAY(FRENCH CHEESE) PRICE IS 30/RS'),
(72, 'LAY(FRENCH CHEESE)', '50', '--', '1', 95, 95, 'SNACKS', 'LAY(FRENCH CHEESE) PRICE IS 50/RS'),
(73, 'LAY(MASALA)', '10', '20 g', '1', 96, 96, 'SNACKS', 'LAY(MASALA) PRICE IS 10/RS'),
(74, 'LAY(MASALA)', '20', '--', '1', 97, 97, 'SNACKS', 'LAY(MASALA) PRICE IS 20/RS'),
(75, 'LAY(MASALA)', '30', '--', '1', 98, 98, 'SNACKS', 'LAY(MASALA) PRICE IS 30/RS'),
(76, 'LAY(MASALA)', '50', '--', '1', 99, 99, 'SNACKS', 'LAY(MASALA) PRICE IS 50/RS'),
(77, 'LAYS(SALT)', '10', '20 g', '1', 88, 88, 'SNACKS', 'LAYS (SALT) PRICE IS 10/RS'),
(78, 'LAYS(SALT)', '20', '--', '1', 89, 89, 'SNACKS', 'LAYS (SALT) PRICE IS 20/RS'),
(79, 'LAYS(SALT)', '30', '--', '1', 90, 90, 'SNACKS', 'LAYS (SALT) PRICE IS 30/RS'),
(80, 'LAYS(SALT)', '50', '--', '1', 91, 91, 'SNACKS', 'LAYS (SALT) PRICE IS 50/RS'),
(81, 'LAYS(YOGURT & HERBS)', '10', '20 g', '1', 100, 100, 'SNACKS', 'LAYS(YOGURT & HERBS) PRICE IS 10/RS'),
(82, 'LAYS(YOGURT & HERBS)', '20', '--', '1', 101, 101, 'SNACKS', 'LAYS(YOGURT & HERBS) PRICE IS 20/RS'),
(83, 'LAYS(YOGURT & HERBS)', '30', '--', '1', 102, 102, 'SNACKS', 'LAYS(YOGURT & HERBS) PRICE IS 30/RS'),
(84, 'LAYS(YOGURT & HERBS)', '50', '--', '1', 103, 103, 'SNACKS', 'LAYS(YOGURT & HERBS) PRICE IS 50/RS'),
(85, 'Manpasand Cooking Oil (1KG)', '190', '1KG', '1', 6, 6, 'Cooking Oil', 'Manpasand Cooking Oil 1KG price is 190'),
(86, 'Manpasand Cooking Oil (5KG)', '950', '5KG', '1', 11, 11, 'Cooking Oil', 'Manpasand Cooking Oil 5KG price is 950/Rs'),
(87, 'Mars ', '60', '', '1', 49, 49, 'CHOCOLATE', 'MARS PRICE IS 60/Rs'),
(88, 'Maulvi Banaspati (1KG)', '220', '1KG', '1', 26, 26, 'Ghee', 'Maulvi Banaspati for 1kg price is 220/Rs'),
(89, 'Maulvi Banaspati (5KG)', '1150', '5KG', '1', 27, 27, 'Ghee', 'Maulvi Banaspati for 5 kg price is 1150/Rs'),
(90, 'Maulvi Cooking Oil (1KG)', '220', '1KG', '1', 18, 18, 'Cooking Oil', 'Maulvi Cooking Oil for 1kg price is 220/Rs'),
(91, 'Maulvi Cooking Oil (5KG)', '1150', '5KG', '1', 19, 19, 'Cooking Oil', 'Maulvi Cooking Oil for 1kg price is 1150/Rs'),
(92, 'Meezan Banaspati  (1KG)', '200', '1KG', '1', 28, 28, 'Ghee', 'Meezan Banaspati of 1kg price is 200/Rs'),
(93, 'Meezan Banaspati (5KG)', '1000', '5KG', '1', 29, 29, 'Ghee', 'Meezan Banaspati 5KG price is 1000/Rs'),
(94, 'Meezan Cooking Oil (1KG)', '190', '1KG', '1', 3, 3, 'Cooking Oil', 'Meezan Cooking Oil Price is 190/Rs of 1KG'),
(95, 'Meezan Cooking Oil (5KG)', '950', '5KG', '1', 4, 4, 'Cooking Oil', 'Meezan cooking Oil for 5KG price is 950/Rs'),
(96, 'NOVITA ORANGE(LU)(12)', '220', '', '12', 152, 152, 'BISCUITS', ' NOVITA ORANGE(LU) 1BOX(12) PRICE IS 220/Rs'),
(97, 'NOVITA(LU)(12)', '220', '', '12', 153, 153, 'BISCUITS', ' NOVITA CHOCOLATE(LU) 1BOX(12) PRICE IS 220/Rs'),
(98, 'NOW(CANDYLAND) Chocolate', '5', '5 Grams', '1', 55, 55, 'CHOCOLATE', 'NOW(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(99, 'NOW(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', 56, 56, 'CHOCOLATE', 'NOW(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(100, 'OREO', '120', '', '6', 136, 136, 'BISCUITS', 'OREO(LU) PRICE IS 120/RS'),
(101, 'PARADISE(CANDYLAND) Chocolate', '5', '5 Grams', '1', 63, 63, 'CHOCOLATE', 'PARADISE(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(102, 'PARADISE(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', 64, 64, 'CHOCOLATE', 'PARADISE(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(103, 'PERK(CANDYLAND) Chocolate', '5', '5 Grams', '1', 61, 61, 'CHOCOLATE', 'PERK(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(104, 'PERK(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', 62, 62, 'CHOCOLATE', 'PERK(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(105, 'PRINCE CHOCOLATE', '120', '', '6', 138, 138, 'BISCUITS', 'PRINCE BISCUITS(LU) PRICE IS 120/RS'),
(106, 'PRINCLES(BARBIQUE)', '190', '', '1', 128, 128, 'SNACKS', 'PRINCLES(BARBIQUE) price is 190/Rs'),
(107, 'PRINCLES(CHEESE)', '190', '', '1', 129, 129, 'SNACKS', 'PRINCLES(CHEESE) price is 190/Rs'),
(108, 'PRINCLES(ORIGINAL)', '190', '', '1', 127, 127, 'SNACKS', 'PRINCLES(ORIGINAL) price is 190/Rs'),
(109, 'Shahtaj Banaspati (1KG)', '220', '1KG', '1', 36, 36, 'Ghee', 'Shahtaj Banaspati for 1kg price is 220/Rs'),
(110, 'Shahtaj Banaspati (5KG)', '1150', '5KG', '1', 37, 37, 'Ghee', 'Shahtaj Banaspati for 5 kg price is 1150/Rs'),
(111, 'Shahtaj Cooking Oil (1KG)', '210', '1KG', '1', 9, 9, 'Cooking Oil', 'Shahtaj Cooking oil of 1kg price is 210/Rs'),
(112, 'Shahtaj Cooking Oil (5KG)', '1050', '5KG', '1', 10, 10, 'Cooking Oil', 'Shahtaj Cooking oil of 5kg price is 1050/Rs'),
(113, 'SHITTLE COCK PACKETS (BADMINTON)(12)', '1000', '250 GRAMS', '12', 74, 74, 'SPORTS', 'SHITTLE COCK PACKETS (BADMINTON)(12) PRICE IS 1000/RS'),
(114, 'SLANTY(KETCHEP)', '10', '', '1', 115, 115, 'SNACKS', 'SLANTY(KETCHEP) price is 10/Rs'),
(115, 'SLANTY(KETCHEP)', '30', '', '1', 116, 116, 'SNACKS', 'SLANTY(KETCHEP) price is 30/Rs'),
(116, 'SLANTY(MASALA)', '10', '', '1', 117, 117, 'SNACKS', 'SLANTY(MASALA) price is 10/Rs'),
(117, 'SLANTY(MASALA)', '30', '', '1', 118, 118, 'SNACKS', 'SLANTY(MASALA) price is 30/Rs'),
(118, 'SLANTY(SALT)', '10', '', '1', 113, 113, 'SNACKS', 'SLANTY(SALT) price is 10/Rs'),
(119, 'SLANTY(SALT)', '30', '', '1', 114, 114, 'SNACKS', 'SLANTY(SALT) price is 30/Rs'),
(120, 'SNACKERS(CHEESE)(LAYS)', '10', '', '1', 126, 126, 'SNACKS', 'SNACKERS(CHEESE)(LAYS) price is 10/Rs'),
(121, 'SNACKERS(MASALA)(LAYS)', '10', '', '1', 125, 125, 'SNACKS', 'SNACKERS(PIZZA)(LAYS) price is 10/Rs'),
(122, 'SNACKERS(PIZZA)(LAYS)', '10', '', '1', 124, 124, 'SNACKS', 'SNACKERS(PIZZA)(LAYS) price is 10/Rs'),
(123, 'SNICKERS', '60', '', '1', 50, 50, 'CHOCOLATE', 'SNICKERS PRICE IS 60/Rs'),
(124, 'SNOOKER BALLS PACKETS(24)', '1000', '', '24', 77, 77, 'SPORTS', 'SNOOKER BALLS PACKETS(24) PRICE IS 1000/RS'),
(125, 'SNOOKER STICK', '1200', '500 GRAMS', '1', 79, 79, 'SPORTS', 'SNOOKER STICK PRICE IS 1200/RS'),
(126, 'SONNET(CANDYLAND) Chocolate', '5', '5 Grams', '1', 59, 59, 'CHOCOLATE', 'SONNET(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(127, 'SONNET(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', 60, 60, 'CHOCOLATE', 'SONNET(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(161, 'SOOPER(PEAK FREANS)(24)', '120', '100 GRAMS', '24', 162, 162, 'BISCUITS', 'SOOPER(PEAK FREANS)(24) PRICE IS 120/RS'),
(128, 'Soya Supreme Banaspati (1KG)', '220', '1KG', '1', 32, 32, 'Ghee', 'Soya Supreme Banaspati for 1kg price is 220/Rs'),
(129, 'Soya Supreme Banaspati (5KG)', '1150', '5KG', '1', 33, 33, 'Ghee', 'Soya Supreme Banaspati for 5kg price is 1150/Rs'),
(130, 'Soya Supreme Cooking Oil (1KG)', '200', '1KG', '1', 8, 8, 'Cooking Oil', 'Soya Supreme Cooking Oil 1KG price is 200'),
(131, 'Sufi Banaspati (1KG)', '220', '1KG', '1', 34, 34, 'Ghee', 'Sufi Banaspati for 1kg price is 220/Rs'),
(132, 'Sufi Banaspati (5KG)', '1150', '5KG', '1', 35, 35, 'Ghee', 'Sufi Banaspati for 5 kg price is 1150/Rs'),
(133, 'SUPER CRISPS', '30', '', '1', 122, 122, 'SNACKS', 'SUPER CRISPS price is 30/Rs'),
(134, 'SUPER CRISPS', '50', '', '1', 123, 123, 'SNACKS', 'SUPER CRISPS price is 50/Rs'),
(135, 'TABLE TENIS RACKETS(2)', '900', '', '1', 70, 70, 'SPORTS', 'TABLE TENNIS RACKETS (2RL) PRICE IS 900/Rs'),
(136, 'TABLE TENNIS BALL PACKET(6)', '600', '', '1', 72, 72, 'SPORTS', 'TABLE TENNIS BALL PACKET(6) PRICE IS 600/RS'),
(137, 'TABLE TENNIS NET', '1000', '', '1', 71, 71, 'SPORTS', 'TABLE TENNIS NET PRICE IS 1000/RS'),
(138, 'TIGER(LU)(24)', '110', '', '24', 141, 141, 'BISCUITS', ' TIGER(LU)  1BOX(24) PRICE IS 110/Rs'),
(139, 'TUC', '120', '', '6', 137, 137, 'BISCUITS', 'TUC(LU) PRICE IS 120/RS'),
(140, 'Tullo Banaspati (1KG)', '200', '1KG', '1', 22, 22, 'Ghee', 'Tullo Banaspati for 1kg price is 210/Rs'),
(141, 'Tullo Banaspati (5KG)', '1050', '5KG', '1', 23, 23, 'Ghee', 'Tullo Banaspati for 5kg price is 1050/Rs'),
(142, 'Tullo Cooking Oil (1KG)', '200', '1KG', '1', 14, 14, 'Cooking Oil', 'Tullo Cooking Oil for 1kg price is 200/Rs'),
(143, 'Tullo Cooking Oil (5KG)', '1000', '5KG', '1', 15, 15, 'Cooking Oil', 'Tullo Cooking Oil for 5kg price is 1000/Rs'),
(144, 'TWIX', '60', '', '1', 51, 51, 'CHOCOLATE', 'TWIX CHOCOLATE PRICE 60/Rs'),
(145, 'WAVYS(BARBIQUE)', '20', '--', '1', 104, 104, 'SNACKS', 'WAVYS(BARBIQUE) price is 20/RS'),
(146, 'WAVYS(BARBIQUE)', '30', '--', '1', 105, 105, 'SNACKS', 'WAVYS(BARBIQUE) price is 30/RS'),
(147, 'WAVYS(BARBIQUE)', '50', '--', '1', 106, 106, 'SNACKS', 'WAVYS(BARBIQUE) price is 50/RS'),
(148, 'WAVYS(SALT & PEPPER)', '20', '--', '1', 107, 107, 'SNACKS', 'WAVYS(SALT & PEPPER) price is 20/RS'),
(149, 'WAVYS(SALT & PEPPER)', '30', '--', '1', 108, 108, 'SNACKS', 'WAVYS(SALT & PEPPER) price is 30/RS'),
(150, 'WAVYS(SALT & PEPPER)', '50', '--', '1', 109, 109, 'SNACKS', 'WAVYS(SALT & PEPPER) price is 50/RS'),
(151, 'WHEATABLE(LU)', '55', '', '1', 146, 146, 'BISCUITS', ' WHEATABLE(LU) PRICE IS 55/Rs'),
(152, 'ZEERA PLUS(LU)(24)', '120', '', '6', 142, 142, 'BISCUITS', ' ZEERA PLUS(LU)(6) 1BOX PRICE IS 120/Rs');

-- --------------------------------------------------------

--
-- Table structure for table `products_category`
--

CREATE TABLE `products_category` (
  `PRODUCT_ID` int(255) NOT NULL,
  `PRODUCT_NAME` varchar(255) NOT NULL,
  `PRODUCT_TYPE` varchar(255) NOT NULL
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
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`S_Number`),
  ADD KEY `BILL_ID` (`BILL_ID`,`CART_ID`,`TOTAL_COST`);

--
-- Indexes for table `cart-items`
--
ALTER TABLE `cart-items`
  ADD PRIMARY KEY (`CART_ID`,`PRODUCT_NAME`,`PRODUCT_PRICE`,`QUANTITY`,`RFID_TAG`,`TOTAL_COST`,`DATE/TIME`);

--
-- Indexes for table `customer-cart`
--
ALTER TABLE `customer-cart`
  ADD PRIMARY KEY (`CART_ID`,`PRODUCT_NAME`,`PRODUCT_PRICE`,`RFID_TAG`,`TOTAL_COST`,`DATE/TIME`,`YEAR`),
  ADD UNIQUE KEY `CART_ID` (`CART_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product-rfid-tags`
--
ALTER TABLE `product-rfid-tags`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `RFID_TAG` (`RFID_TAG`),
  ADD KEY `PRODUCT_NAME` (`PRODUCT_NAME`,`RFID_TAG`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PRODUCT_NAME`,`RFID_TAG`,`PRODUCT_ID`),
  ADD UNIQUE KEY `S_Number` (`S_Number`);

--
-- Indexes for table `products_category`
--
ALTER TABLE `products_category`
  ADD KEY `PRODUCT_TYPE` (`PRODUCT_TYPE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `S.NO#` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `S_Number` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `S_Number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`BILL_ID`) REFERENCES `bill_details` (`BILL_ID`);

--
-- Constraints for table `customer-cart`
--
ALTER TABLE `customer-cart`
  ADD CONSTRAINT `customer-cart_ibfk_1` FOREIGN KEY (`CART_ID`) REFERENCES `bill` (`BILL_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
