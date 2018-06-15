-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 15, 2018 at 04:56 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_matthias_liszt_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `additionalCharges`
--

CREATE TABLE `additionalCharges` (
  `aChargeId` int(11) NOT NULL,
  `transactionId` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `carId` int(11) NOT NULL,
  `carType` varchar(32) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `prodYear` year(4) DEFAULT NULL,
  `tankCapacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carDamage`
--

CREATE TABLE `carDamage` (
  `reportId` int(11) NOT NULL,
  `carId` int(11) DEFAULT NULL,
  `damageId` int(11) DEFAULT NULL,
  `transactionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carPrice`
--

CREATE TABLE `carPrice` (
  `carPriceId` int(11) NOT NULL,
  `carId` int(11) DEFAULT NULL,
  `carPrice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carRent`
--

CREATE TABLE `carRent` (
  `transactionId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `carId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carTank`
--

CREATE TABLE `carTank` (
  `tankId` int(11) NOT NULL,
  `carId` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `damageCalculation`
--

CREATE TABLE `damageCalculation` (
  `calculationId` int(11) NOT NULL,
  `transactionId` int(11) DEFAULT NULL,
  `carType` varchar(32) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `damages`
--

CREATE TABLE `damages` (
  `damageId` int(11) NOT NULL,
  `name` varchar(21) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentId` int(11) NOT NULL,
  `transactionId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `surname` varchar(16) DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `verificiaton`
--

CREATE TABLE `verificiaton` (
  `userId` int(11) DEFAULT NULL,
  `documentNumber` int(11) NOT NULL,
  `document` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additionalCharges`
--
ALTER TABLE `additionalCharges`
  ADD PRIMARY KEY (`aChargeId`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`carId`);

--
-- Indexes for table `carDamage`
--
ALTER TABLE `carDamage`
  ADD PRIMARY KEY (`reportId`);

--
-- Indexes for table `carPrice`
--
ALTER TABLE `carPrice`
  ADD PRIMARY KEY (`carPriceId`);

--
-- Indexes for table `carRent`
--
ALTER TABLE `carRent`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `carTank`
--
ALTER TABLE `carTank`
  ADD PRIMARY KEY (`tankId`);

--
-- Indexes for table `damageCalculation`
--
ALTER TABLE `damageCalculation`
  ADD PRIMARY KEY (`calculationId`);

--
-- Indexes for table `damages`
--
ALTER TABLE `damages`
  ADD PRIMARY KEY (`damageId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `verificiaton`
--
ALTER TABLE `verificiaton`
  ADD PRIMARY KEY (`documentNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
