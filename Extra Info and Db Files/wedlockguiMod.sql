-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2017 at 07:53 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedlockgui`
--

-- --------------------------------------------------------

--
-- Table structure for table `allproduct`
--

CREATE TABLE `allproduct` (
  `productId` bigint(20) UNSIGNED NOT NULL,
  `sellerId` varchar(255) NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `entryTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categoryavailable`
--

CREATE TABLE `categoryavailable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryDescription` text,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryUrl` varchar(255) DEFAULT NULL,
  `iconFile` varchar(255) DEFAULT NULL,
  `isActive` bit(1) NOT NULL,
  `packageFor` varchar(255) DEFAULT NULL,
  `registrationCharge` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cencellationpolicy`
--

CREATE TABLE `cencellationpolicy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sellerId` varchar(255) NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `withInHours` bigint(20) UNSIGNED NOT NULL,
  `deductPersentage` double UNSIGNED NOT NULL,
  `isActive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flower`
--

CREATE TABLE `flower` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deliveryWithin` bigint(20) UNSIGNED NOT NULL,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `availability` bit(1) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` text,
  `dPUrl` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `freeBie` varchar(255) DEFAULT NULL,
  `noOfPieces` int(11) UNSIGNED NOT NULL,
  `isActive` bit(1) NOT NULL,
  `flowerTypeId` bigint(20) NOT NULL,
  `freeProductId` bigint(20) UNSIGNED DEFAULT NULL,
  `freeProductQty` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `int_flow_occ`
--

CREATE TABLE `int_flow_occ` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flower_id` bigint(20) UNSIGNED DEFAULT NULL,
  `occasion_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `int_vat_categoryavailable`
--

CREATE TABLE `int_vat_categoryavailable` (
  `id` bigint(20) NOT NULL,
  `categoryAvailable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vat_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `occasion`
--

CREATE TABLE `occasion` (
  `id` bigint(20) NOT NULL,
  `description` text,
  `entryTime` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productimagesvideos`
--

CREATE TABLE `productimagesvideos` (
  `id` bigint(20) NOT NULL,
  `isPhotoVideo` bit(1) NOT NULL,
  `productImageVideoUrl` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `isActive` bit(1) NOT NULL,
  `entryTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productprice`
--

CREATE TABLE `productprice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `productId` bigint(20) UNSIGNED NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `advancePercentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `id` bigint(20) NOT NULL,
  `description` text,
  `entryTime` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellerdetails`
--

CREATE TABLE `sellerdetails` (
  `id` varchar(255) NOT NULL,
  `entryTime` date DEFAULT NULL,
  `isActive` bit(1) NOT NULL,
  `isEmailVerified` bit(1) NOT NULL,
  `sellerAddressProof` varchar(255) DEFAULT NULL,
  `sellerAddressProofImg` varchar(255) DEFAULT NULL,
  `sellerAlternateNumber` varchar(255) DEFAULT NULL,
  `sellerCompanyName` varchar(255) DEFAULT NULL,
  `sellerContactNumber` varchar(255) DEFAULT NULL,
  `sellerDateOfBirth` date DEFAULT NULL,
  `sellerEmailId` varchar(255) DEFAULT NULL,
  `sellerFirstName` varchar(255) DEFAULT NULL,
  `sellerGender` varchar(255) DEFAULT NULL,
  `sellerIdProof` varchar(255) DEFAULT NULL,
  `sellerIdProofImg` varchar(255) DEFAULT NULL,
  `sellerImg` varchar(255) DEFAULT NULL,
  `sellerLastName` varchar(255) DEFAULT NULL,
  `sellerPassword` varchar(255) DEFAULT NULL,
  `sellerPermanentAddress` text,
  `sellerPresentAddress` text,
  `sellerRegistrationEnd` date DEFAULT NULL,
  `sellerRegistrationStart` date DEFAULT NULL,
  `typeOfSeller` varchar(255) DEFAULT NULL,
  `adminDetails_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `zipCode_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellerdiscount`
--

CREATE TABLE `sellerdiscount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `productId` bigint(20) UNSIGNED NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `discount` double UNSIGNED NOT NULL,
  `isFlatDiscount` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vat`
--

CREATE TABLE `vat` (
  `id` bigint(20) NOT NULL,
  `entryTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` bit(1) NOT NULL,
  `vatAmount` double NOT NULL,
  `vatName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allproduct`
--
ALTER TABLE `allproduct`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `categoryid` (`categoryId`),
  ADD KEY `sellerid` (`sellerId`);

--
-- Indexes for table `categoryavailable`
--
ALTER TABLE `categoryavailable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cencellationpolicy`
--
ALTER TABLE `cencellationpolicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sellerId` (`sellerId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `flower`
--
ALTER TABLE `flower`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKegxbtgr0dxsrf142dpx91k0kd` (`flowerTypeId`),
  ADD KEY `freeProductId` (`freeProductId`);

--
-- Indexes for table `int_flow_occ`
--
ALTER TABLE `int_flow_occ`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdws945l1w9upeh0kurcv1ta4l` (`flower_id`),
  ADD KEY `FKrvmfwqn6td6smh9ehte3kav1g` (`occasion_id`);

--
-- Indexes for table `int_vat_categoryavailable`
--
ALTER TABLE `int_vat_categoryavailable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4hi7ufblg02laqhmk3epa03md` (`categoryAvailable_id`),
  ADD KEY `FKjtcq7x3djwutkllt79vfvaqte` (`vat_id`);

--
-- Indexes for table `occasion`
--
ALTER TABLE `occasion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimagesvideos`
--
ALTER TABLE `productimagesvideos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnwjf8o59bxy9ti9gln72hv95o` (`product_id`);

--
-- Indexes for table `productprice`
--
ALTER TABLE `productprice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flowerId` (`productId`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `sellerdetails`
--
ALTER TABLE `sellerdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9psk47qtumm17t9aicna32cn0` (`adminDetails_id`),
  ADD KEY `FK7lvg4oqibwioy0x1ddsuxjmsd` (`city_id`),
  ADD KEY `FK1wi9fiocd9g01aiusiwsf5ump` (`state_id`),
  ADD KEY `FKmvlebegv5m56cq6wprps83rov` (`zipCode_id`);

--
-- Indexes for table `sellerdiscount`
--
ALTER TABLE `sellerdiscount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `vat`
--
ALTER TABLE `vat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allproduct`
--
ALTER TABLE `allproduct`
  MODIFY `productId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productprice`
--
ALTER TABLE `productprice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `allproduct`
--
ALTER TABLE `allproduct`
  ADD CONSTRAINT `catid` FOREIGN KEY (`categoryId`) REFERENCES `categoryavailable` (`id`),
  ADD CONSTRAINT `sellerid` FOREIGN KEY (`sellerId`) REFERENCES `sellerdetails` (`id`);

--
-- Constraints for table `cencellationpolicy`
--
ALTER TABLE `cencellationpolicy`
  ADD CONSTRAINT `cencellationpolicy_ibfk_1` FOREIGN KEY (`sellerId`) REFERENCES `sellerdetails` (`id`),
  ADD CONSTRAINT `cencellationpolicy_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `categoryavailable` (`id`);

--
-- Constraints for table `flower`
--
ALTER TABLE `flower`
  ADD CONSTRAINT `flowerId` FOREIGN KEY (`id`) REFERENCES `allproduct` (`productId`),
  ADD CONSTRAINT `flowertype` FOREIGN KEY (`flowerTypeId`) REFERENCES `producttype` (`id`),
  ADD CONSTRAINT `freeProduct` FOREIGN KEY (`freeProductId`) REFERENCES `allproduct` (`productId`);

--
-- Constraints for table `int_flow_occ`
--
ALTER TABLE `int_flow_occ`
  ADD CONSTRAINT `int_flow_occ_ibfk_1` FOREIGN KEY (`flower_id`) REFERENCES `flower` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `occId` FOREIGN KEY (`occasion_id`) REFERENCES `occasion` (`id`);

--
-- Constraints for table `int_vat_categoryavailable`
--
ALTER TABLE `int_vat_categoryavailable`
  ADD CONSTRAINT `int_vat_categoryavailable_ibfk_1` FOREIGN KEY (`vat_id`) REFERENCES `vat` (`id`),
  ADD CONSTRAINT `vatcatid` FOREIGN KEY (`categoryAvailable_id`) REFERENCES `categoryavailable` (`id`);

--
-- Constraints for table `productimagesvideos`
--
ALTER TABLE `productimagesvideos`
  ADD CONSTRAINT `productimagesvideos_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `allproduct` (`productId`);

--
-- Constraints for table `productprice`
--
ALTER TABLE `productprice`
  ADD CONSTRAINT `productPrice` FOREIGN KEY (`productId`) REFERENCES `allproduct` (`productId`);

--
-- Constraints for table `producttype`
--
ALTER TABLE `producttype`
  ADD CONSTRAINT `productTypeCategory` FOREIGN KEY (`categoryId`) REFERENCES `categoryavailable` (`id`);

--
-- Constraints for table `sellerdiscount`
--
ALTER TABLE `sellerdiscount`
  ADD CONSTRAINT `productDiscount` FOREIGN KEY (`productId`) REFERENCES `allproduct` (`productId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
