-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2017 at 05:19 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storess`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Mobile` char(10) DEFAULT NULL,
  `AddL1` varchar(50) DEFAULT NULL,
  `AddL2` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Province` varchar(40) DEFAULT NULL,
  `PostCode` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FName`, `LName`, `Email`, `Password`, `Mobile`, `AddL1`, `AddL2`, `City`, `Province`, `PostCode`) VALUES
(1, 'Resil', 'Hiripitiya', 'resil@gmail.com', '123', '0714664833', 'No.99,', 'HiriRoad,', 'Homagama', 'western', '10370'),
(6, 'Lahiru', 'Amara', 'lahiru@yahoo.com', '123', '0780705071', 'No 30,', 'Goroo,', 'Horana', 'Western', '10712'),
(7, 'Thamara', 'Indraji', 'thamara@gmail.com', 'abc', '0775557777', '"indra",', 'kandy Road,', 'Kandy', 'Central', '5555'),
(8, 'Pavara', 'Madduma', 'luckyrulz@yahoo.com', 'xyz', '0775668751', 'No 11,', 'Karapitiya,', 'Galle', 'South', '6678'),
(16, 'kamal', 'amara', 'abc@gmail.com', '12345', '0714569874', NULL, NULL, 'Horana.', 'western', '12400');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ProductID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `OrderNO` int(11) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `ShipMode` varchar(30) DEFAULT NULL,
  `PayMethod` varchar(40) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `IsDelivered` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ProductID`, `CustomerID`, `OrderNO`, `OrderDate`, `ShipMode`, `PayMethod`, `Quantity`, `IsDelivered`) VALUES
(2, 8, 6, '2017-04-16 13:35:44', 'Mode1', 'Credit Card', 2, 1),
(2, 1, 13, '2017-04-22 21:05:59', 'Mode1', 'Cash', 4, 1),
(1, 1, 14, '2017-04-22 21:06:48', 'Mode2', 'Cash', 1, 0),
(1, 1, 15, '2017-04-22 21:07:28', 'Mode2', 'Cash', 1, 0),
(5, 1, 16, '2017-04-22 22:36:31', 'Mode1', 'Credit Card', 1, 1),
(5, 1, 17, '2017-04-22 22:36:39', 'Mode1', 'Cash', 1, 0),
(1, 1, 18, '2017-04-22 22:47:35', 'Mode1', 'Debit Card', 1, 1),
(1, 1, 19, '2017-04-23 22:49:13', NULL, NULL, 1, 0),
(1, 1, 20, '2017-04-23 22:49:19', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `BrandName` varchar(50) DEFAULT NULL,
  `UnitPrice` decimal(10,2) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `ImageName` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `Category`, `BrandName`, `UnitPrice`, `Quantity`, `Description`, `ImageName`) VALUES
(1, 'Shirts', 'Mens', 'LEVIS', '1400.00', 12, 'Good Brand. We granted for lifetime ', 'http://www.thirtysixstore.co.uk/images/levis-barstow-western-flannel-long-sleeved-shirt-dress-blue-check-p1531-10772_medium.jpg'),
(2, 'Trousers', 'Mens', 'DolceGabbana', '2300.00', 7, 'Import from Dubai and specially for real gentlemens', 'http://static1.jassets.com/p/Raymond-Brown-Solid-Formal-Trouser-3280-6568182-1-catalog_m.jpg'),
(4, 'Hats & Caps', 'Mens', 'Adidas', '750.00', 5, 'Very rare color mixing. You can be a real man with this.', 'https://imgau2.surfstitch.com/product_images/M30625BLKWH-ADIDASORIGINALS-1.JPG'),
(5, 'Watches', 'Mens', 'Tissot', '12000.00', 12, 'Rolex Brand. Good for real gentlemens.', 'http://i.ebayimg.com/00/s/NjAwWDYwMAu003du003d/z/SCMAAOSwQgpW~r7o/$_57.JPG?set_idu003d8800005007'),
(6, 'Frock', 'Ladies', 'Lienen', '1000.00', 1, 'Good', 'http://machopicture.com/images/fashion-dresses/5215-9128-fashion-ladies-dress-shop-k1002668-purple.jpg'),
(7, 'Frock', 'Ladies', 'Lienen', '1000.00', 1, 'Good', 'http://outfitideaz.com/wp-content/uploads/2015/12/0western-frocks-for-parties.jpg');

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
  ADD UNIQUE KEY `OrderNO` (`OrderNO`),
  ADD KEY `FK_ProductID` (`ProductID`),
  ADD KEY `FK_StudentID` (`CustomerID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_ProductID` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`),
  ADD CONSTRAINT `FK_StudentID` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
