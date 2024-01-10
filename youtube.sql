-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 08:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `ContactName` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `PostalCode` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57	', 'Berlin', '2000', 'Germany'),
(2, 'Dasun', 'Shanaka', 'Lake Side A. 57 ', 'Kandy', '2000', 'Srilanka'),
(3, 'Kasun', 'perera', 'Aqvq Str. A 5-7 ', 'México D.F', '1000', 'Afgan'),
(4, 'Upun ', 'Abekon', '120 Hanover Sq.	', 'Landon', '2000', 'UK'),
(5, 'supun', 'Bandara', 'Galle Face, A Block-23', 'Kandy', '2000', 'Srilanka'),
(6, 'Pathum', 'Supun', 'Elas AS12', 'Ella', '2000', 'Srilanka'),
(11, 'Nipun', 'Lahiru', 'ADd78/ jafna', ' Jafna', '1000', 'Srilanka'),
(30, 'Dasun ', 'Shanaka ', 'Obere Str. 57 ', 'Berlin ', '12209', 'Germany'),
(31, 'Dasun ', 'Shanaka ', 'Obere Str. 57 ', 'Berlin ', '12209', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `ShipperID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `ShipperID`) VALUES
(1, 1, 8, '2024-11-11 13:23:44', 1),
(2, 2, 5, '2023-11-11 16:13:34', 2),
(4, 11, 6, '2024-05-11 13:33:52', 3),
(5, 5, 7, '2024-01-11 07:17:16', 1),
(8, 2, 0, '2023-12-31 08:19:55', 4),
(9, 2, 10, '2023-12-31 08:24:27', 4),
(10, 11, 11, '2023-12-31 00:00:00', 4),
(11, 11, 12, '2023-12-31 08:32:37', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(20) NOT NULL,
  `SupplierID` int(2) NOT NULL,
  `CategoryID` int(2) NOT NULL,
  `Unit` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL,
  `NewPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`, `NewPrice`) VALUES
(1, 'Chais', 1, 1, 'boxes x 20 bags', 18, 19.23),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 80, 80.6),
(3, 'Keybord', 1, 2, '12 - 550 ml bottles', 45, 45.8),
(4, 'Chef Anton Cajun Sea', 1, 2, '48 - 6 oz jars', 22, 22.2),
(5, 'Chef Anton Gumbo Mi', 1, 2, '36 boxes', 2, 2.3);

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `ShipperID` int(11) NOT NULL,
  `ShipperName` varchar(25) NOT NULL,
  `Phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`ShipperID`, `ShipperName`, `Phone`) VALUES
(1, 'Speedy Express	', '(503) 555-9831'),
(2, 'ABC CAR 	', '0123456789'),
(3, 'RObs Cabs', '9996663'),
(4, 'Sky Jet', '8888888');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(100) NOT NULL,
  `ContactName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `PostalCode` int(10) NOT NULL,
  `Country` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Apple', 'Kasun JR', 'ABC 1235', 'London', 12345, 'UK'),
(2, 'Red', 'Supun JR', 'Colombo 7', 'Colombo', 5412, 'Srilanka'),
(3, 'Sky', 'DASUN JR', 'Mal A56 1', 'Berlin', 9874, 'Germany'),
(4, 'Pink', 'NIPUN JR', 'Moon 45/6', 'Kandy', 6321, 'Srilanka'),
(5, 'Jhon', ' ', ' ', '', 0, ''),
(6, 'Smith', '', '', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `ShipperID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
