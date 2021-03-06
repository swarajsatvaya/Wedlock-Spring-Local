-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2017 at 08:56 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedlock`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindetails`
--

CREATE TABLE `admindetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alternateNumber` varchar(255) DEFAULT NULL,
  `emailId` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `imageName` varchar(255) DEFAULT NULL,
  `ipAddress` varchar(255) DEFAULT NULL,
  `isActive` bit(1) NOT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admindetails`
--

INSERT INTO `admindetails` (`id`, `alternateNumber`, `emailId`, `firstName`, `imageName`, `ipAddress`, `isActive`, `lastName`, `password`, `phoneNumber`) VALUES
(1, '7278117250', 'wedlock-mss@gmail.com', 'Wedlock', 'resources/images/W_AdminLogo.png', '192.168.1.100', b'1', 'MSS', 'mss@123', '7003082897');

-- --------------------------------------------------------

--
-- Table structure for table `allproducts`
--

CREATE TABLE `allproducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `categoryAvailable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sellerDetails_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `allsellercategory`
--

CREATE TABLE `allsellercategory` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categoryavailable`
--

CREATE TABLE `categoryavailable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `annualCharge` double NOT NULL,
  `categoryDescription` text,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryUrl` varchar(255) DEFAULT NULL,
  `halfYearlyCharge` double NOT NULL,
  `iconFile` varchar(255) DEFAULT NULL,
  `isActive` bit(1) NOT NULL,
  `registrationCharge` double NOT NULL,
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoryavailable`
--

INSERT INTO `categoryavailable` (`id`, `annualCharge`, `categoryDescription`, `categoryName`, `categoryUrl`, `halfYearlyCharge`, `iconFile`, `isActive`, `registrationCharge`, `tableName`) VALUES
(10, 0, 'Florist', 'Florist', NULL, 0, 'Category/categoryIcon/1498821324664tulip.png', b'1', 3, 'Flower'),
(11, 0, 'Priest', 'Priest', NULL, 0, 'Category/categoryIcon/1498821345854priest.png', b'1', 3, ''),
(12, 0, 'Jewellery', 'Jewellery', NULL, 0, 'Category/categoryIcon/1498821369491interlocking-rings.png', b'1', 3, ''),
(13, 0, 'Grocery', 'Grocery', NULL, 0, 'Category/categoryIcon/1498821391346man-pushing-a-shopping-cart.png', b'1', 3, ''),
(14, 0, 'Wedding Cards', 'Wedding Cards', NULL, 0, 'Category/categoryIcon/1498821421100wedding-invitation.png', b'1', 3, ''),
(15, 0, 'Transport', 'Transport', NULL, 0, 'Category/categoryIcon/1498821449843delivery-truck.png', b'1', 3, ''),
(16, 0, 'Photographer', 'Photographer', NULL, 0, 'Category/categoryIcon/1498821474100photo-camera.png', b'1', 3, 'SellerPhotographer'),
(17, 0, 'Wedding Hall', 'Wedding Hall', NULL, 0, 'Category/categoryIcon/1498821505552city-hall.png', b'1', 3, ''),
(18, 0, 'Catering', 'Catering', NULL, 0, 'Category/categoryIcon/1498821541151shape.png', b'1', 3, 'Caterer'),
(19, 0, 'Beautician', 'Beautician', NULL, 0, 'Category/categoryIcon/1498821577774woman-hair.png', b'1', 3, ''),
(20, 0, 'Cook', 'Cook', NULL, 0, 'Category/categoryIcon/1498821617134chefhat1.png', b'1', 3, ''),
(21, 0, 'Crackers', 'Crackers', NULL, 0, 'Category/categoryIcon/1498821650230shopping-groceries.png', b'1', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `categorytaken`
--

CREATE TABLE `categorytaken` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `endDate` date DEFAULT NULL,
  `entryTime` datetime DEFAULT NULL,
  `isAnnually` bit(1) NOT NULL,
  `isPaid` bit(1) NOT NULL,
  `startDate` date DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  `categoryAvailable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sellerDetails_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `caterer`
--

CREATE TABLE `caterer` (
  `id` varchar(255) NOT NULL,
  `advancePaymentPercentage` double NOT NULL,
  `availability` bit(1) NOT NULL,
  `description` text,
  `dpUrl` varchar(255) DEFAULT NULL,
  `entryTime` datetime DEFAULT NULL,
  `freebie` varchar(255) DEFAULT NULL,
  `isPackage` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `noOfMember` int(11) UNSIGNED DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  `allProducts_id` bigint(20) UNSIGNED DEFAULT NULL,
  `productType_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cityDescription` text,
  `cityName` varchar(255) DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `cityDescription`, `cityName`, `state_id`) VALUES
(3, 'Bankura Desc', 'Bankura', 2),
(4, 'Kolkata Desc', 'Kolkata', 2);

-- --------------------------------------------------------

--
-- Table structure for table `flower`
--

CREATE TABLE `flower` (
  `id` varchar(255) NOT NULL,
  `advancePaymentPercentage` double NOT NULL,
  `availability` bit(1) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` text,
  `dpUrl` varchar(255) DEFAULT NULL,
  `entryTime` datetime DEFAULT NULL,
  `freebie` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `noOfPieces` int(11) UNSIGNED DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  `allProducts_id` bigint(20) UNSIGNED DEFAULT NULL,
  `productType_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `entryTime` datetime DEFAULT NULL,
  `isVeg` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `status` bit(1) NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  `foodType_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sellerDetails_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foodofpackage`
--

CREATE TABLE `foodofpackage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  `allProduct_id` bigint(20) UNSIGNED DEFAULT NULL,
  `food_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foodtype`
--

CREATE TABLE `foodtype` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text,
  `entryTime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `freesproduct`
--

CREATE TABLE `freesproduct` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` datetime DEFAULT NULL,
  `qty` int(11) UNSIGNED DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  `validTo` date DEFAULT NULL,
  `toPId` bigint(20) UNSIGNED DEFAULT NULL,
  `withPId` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `intproductoccasion`
--

CREATE TABLE `intproductoccasion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `allProducts_id` bigint(20) UNSIGNED DEFAULT NULL,
  `occasion_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `int_vat_categoryavailable`
--

CREATE TABLE `int_vat_categoryavailable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryAvailable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vat_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `occasion`
--

CREATE TABLE `occasion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text,
  `entryTime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `updateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occasion`
--

INSERT INTO `occasion` (`id`, `description`, `entryTime`, `name`, `status`, `updateTime`) VALUES
(22, 'Test1 Desc', '2017-08-07 13:35:50', 'Test1', b'0', '2017-08-07 13:35:50'),
(24, 'Wedding desc', '2017-08-07 13:36:38', 'Wedding', b'1', '2017-08-07 13:36:38'),
(25, 'Birthday desc', '2017-08-07 13:35:42', 'Birthday', b'1', '2017-08-07 13:35:42'),
(26, 'Annaprashan  desc', '2017-08-07 13:35:57', 'Annaprashan', b'1', '2017-08-07 13:35:57'),
(27, 'Conference Desc', '2017-08-07 13:36:02', 'Conference', b'1', '2017-08-07 13:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `otp` int(11) NOT NULL,
  `sentDate` date DEFAULT NULL,
  `sellerDetails_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photographyoccasion`
--

CREATE TABLE `photographyoccasion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `occasionDescription` text,
  `occasionName` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photographyoccasion`
--

INSERT INTO `photographyoccasion` (`id`, `occasionDescription`, `occasionName`, `status`) VALUES
(11, 'Weeding Occ Desc', 'Weeding Occ', b'1'),
(12, 'Birthday Occ Desc', 'Birthday', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `photographytype`
--

CREATE TABLE `photographytype` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` bit(1) NOT NULL,
  `typeDescription` text,
  `typeName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photographytype`
--

INSERT INTO `photographytype` (`id`, `status`, `typeDescription`, `typeName`) VALUES
(9, b'1', 'Weeding Desc', 'Weeding'),
(10, b'1', 'Birthday Desc', 'Birthday');

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `typeDescription` text,
  `typeName` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `categoryAvailable_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`id`, `entryTime`, `status`, `typeDescription`, `typeName`, `updateTime`, `categoryAvailable_id`) VALUES
(17, '2017-07-28 15:48:03', b'1', 'It\'s a  Single Piece Flower Type', 'Single Piece', '2017-07-29 11:40:57', 10),
(18, '2017-07-28 18:05:57', b'1', 'It\'s for Raw File Provider Photographer.', 'Raw File', '2017-07-29 11:44:28', 16),
(20, '2017-07-29 11:41:59', b'1', 'It\'s a Bunch of Flower', 'Bouquet', '2017-07-29 11:41:59', 10),
(21, '2017-07-29 11:47:07', b'1', 'It\'s for fine file provider photographer.', 'Fine Files', '2017-07-29 11:48:49', 16),
(22, '2017-07-29 11:47:07', b'1', 'It\'s for raw and fine both provider photographer', 'Raw + Fine File', '2017-07-29 11:49:05', 16),
(23, '2017-07-29 11:51:20', b'1', 'It\'s  for flower garlands (mala).', 'Garlands', '2017-07-29 11:51:20', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sellerbankdetails`
--

CREATE TABLE `sellerbankdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accountHolderName` varchar(255) DEFAULT NULL,
  `accountNumber` varchar(255) DEFAULT NULL,
  `branchCode` varchar(255) DEFAULT NULL,
  `branchName` varchar(255) DEFAULT NULL,
  `ifscCode` varchar(255) DEFAULT NULL,
  `sellerDetails_id` varchar(255) DEFAULT NULL
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
  `isMobileVerified` bit(1) NOT NULL,
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
  `adminDetails_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `zipCode_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellerdiscount`
--

CREATE TABLE `sellerdiscount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount` bigint(20) UNSIGNED DEFAULT NULL,
  `entryTime` datetime DEFAULT NULL,
  `fromDateDiscount` date DEFAULT NULL,
  `isFlatDiscount` bit(1) NOT NULL,
  `status` bit(1) NOT NULL,
  `toDateDiscount` date DEFAULT NULL,
  `allProducts_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellerinactivedetails`
--

CREATE TABLE `sellerinactivedetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dateOfInactivity` date DEFAULT NULL,
  `inactiveReason` varchar(255) DEFAULT NULL,
  `isActive` bit(1) NOT NULL,
  `adminDetails_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sellerDetails_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellerphotographer`
--

CREATE TABLE `sellerphotographer` (
  `id` varchar(255) NOT NULL,
  `advancePaymentPercentage` double NOT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `description` text,
  `entryTime` date DEFAULT NULL,
  `freebie` text,
  `isActive` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `noOfPhotosProvided` int(11) NOT NULL,
  `videoDescription` text,
  `videoLength` int(11) NOT NULL,
  `allProducts_id` bigint(20) UNSIGNED DEFAULT NULL,
  `occasion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `photographyType_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellerphotographyoccasion`
--

CREATE TABLE `sellerphotographyoccasion` (
  `id` bigint(20) NOT NULL,
  `entryTime` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `allProducts_id` bigint(20) UNSIGNED DEFAULT NULL,
  `photographyOccasion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sellerPhotographer_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellerproductcancellation`
--

CREATE TABLE `sellerproductcancellation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cancellationPercentage` double NOT NULL,
  `entryTime` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `withinHours` bigint(20) NOT NULL,
  `categoryAvailable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sellerDetails_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellerproductimagesvideos`
--

CREATE TABLE `sellerproductimagesvideos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` datetime DEFAULT NULL,
  `isPhotoVideo` bit(1) NOT NULL,
  `productImageVideoUrl` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `allProducts_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellerproductpricing`
--

CREATE TABLE `sellerproductpricing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` datetime DEFAULT NULL,
  `price` double NOT NULL,
  `priceFromDate` date DEFAULT NULL,
  `priceToDate` date DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `allProducts_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stateDescription` text,
  `stateName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateDescription`, `stateName`) VALUES
(2, 'WB Desc', 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `subcategoryavailable`
--

CREATE TABLE `subcategoryavailable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isActive` bit(1) NOT NULL,
  `subCategoryDescription` text,
  `subCategoryName` varchar(255) DEFAULT NULL,
  `subCategoryUrl` varchar(255) DEFAULT NULL,
  `categoryAvailable_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategoryavailable`
--

INSERT INTO `subcategoryavailable` (`id`, `isActive`, `subCategoryDescription`, `subCategoryName`, `subCategoryUrl`, `categoryAvailable_id`) VALUES
(2, b'1', 'Add & Edit Flower', 'Add & Edit Flower', 'admin-addEditFlower', 10),
(3, b'1', 'View All Flowers', 'View All Flowers', 'admin-viewFloristProducts', 10),
(4, b'1', 'Add Edit Photography Product', 'Add Edit Photography Product', 'admin-addEditPhotographer', 16),
(5, b'1', 'View Photography Product', 'View Photography Product', 'admin-viewPhotographyProducts', 16),
(7, b'1', 'Add & Edit Caterer', 'Add & Edit Caterer', 'admin-addEditCatering', 18),
(8, b'1', 'View All Caterer', 'View All Caterer', 'admin-viewCateringProducts', 18),
(9, b'1', 'Add & Edit Food', 'Add & Edit Food', 'admin-addEditFood', 18);

-- --------------------------------------------------------

--
-- Table structure for table `vat`
--

CREATE TABLE `vat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entryTime` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `vatAmount` double NOT NULL,
  `vatName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zipcode`
--

CREATE TABLE `zipcode` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `localityName` varchar(255) DEFAULT NULL,
  `zipCode` varchar(255) DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zipcode`
--

INSERT INTO `zipcode` (`id`, `localityName`, `zipCode`, `city_id`) VALUES
(5, 'Indpur', '722136', 3),
(6, 'Bankura Town', '722101', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindetails`
--
ALTER TABLE `admindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allproducts`
--
ALTER TABLE `allproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqss3ws8rwo57p0re3c1u1141m` (`categoryAvailable_id`),
  ADD KEY `FKg2xj69f6n06ko1st2brgx4pdo` (`sellerDetails_id`);

--
-- Indexes for table `allsellercategory`
--
ALTER TABLE `allsellercategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoryavailable`
--
ALTER TABLE `categoryavailable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorytaken`
--
ALTER TABLE `categorytaken`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr90gmmfqvnijquni5pneqiw8m` (`categoryAvailable_id`),
  ADD KEY `FK690hyopk4y358b1x85e07clc1` (`sellerDetails_id`);

--
-- Indexes for table `caterer`
--
ALTER TABLE `caterer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKo0m2h2wn3bb45hkjc4nj68af1` (`allProducts_id`),
  ADD KEY `FKrv12vpudi2ml80tubyujvfxmd` (`productType_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK19lu7ofio5d2w879ch76hemmw` (`state_id`);

--
-- Indexes for table `flower`
--
ALTER TABLE `flower`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpajkh0nklsmu9r0ku8dumuf5f` (`allProducts_id`),
  ADD KEY `FKcy8wcieorwue896bv81iiwsix` (`productType_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKplkk3lef1jlfw00xdv3hq693x` (`foodType_id`),
  ADD KEY `FK72assrnvrecu0tpfwo11qloul` (`sellerDetails_id`);

--
-- Indexes for table `foodofpackage`
--
ALTER TABLE `foodofpackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgl7bh26v78av3eld4y88gokvm` (`allProduct_id`),
  ADD KEY `FKqonaskcttwku5txfs9iien2h2` (`food_id`);

--
-- Indexes for table `foodtype`
--
ALTER TABLE `foodtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freesproduct`
--
ALTER TABLE `freesproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgfp9w86h9cpkg7qvmfiqy3hwr` (`toPId`),
  ADD KEY `FKjf8yvwsjkmctskvf3uu4nhl3m` (`withPId`);

--
-- Indexes for table `intproductoccasion`
--
ALTER TABLE `intproductoccasion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK63gondvx5jvmnvl6e7ldugkjc` (`allProducts_id`),
  ADD KEY `FKq6y6sjdoea0f15f0o592e4vgt` (`occasion_id`);

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
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs5ftychf09w53ait1m13fu0xh` (`sellerDetails_id`);

--
-- Indexes for table `photographyoccasion`
--
ALTER TABLE `photographyoccasion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photographytype`
--
ALTER TABLE `photographytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgq0s1b320ppb3p4mn0tela4y9` (`categoryAvailable_id`);

--
-- Indexes for table `sellerbankdetails`
--
ALTER TABLE `sellerbankdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9caetts1b6d91kesrgw5m941n` (`sellerDetails_id`);

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
  ADD KEY `FKpxrxn8d0pxgbs5p796vor1kqx` (`allProducts_id`);

--
-- Indexes for table `sellerinactivedetails`
--
ALTER TABLE `sellerinactivedetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnjtex6bixuiaviay5hhrvy9fk` (`adminDetails_id`),
  ADD KEY `FK9ceejmk4xtys14eduiopxc4hy` (`sellerDetails_id`);

--
-- Indexes for table `sellerphotographer`
--
ALTER TABLE `sellerphotographer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpdt27ksxx3ynvsvvkqbadars1` (`allProducts_id`),
  ADD KEY `FKq9gwsxlldcrijdw7b8dstlv8x` (`occasion_id`),
  ADD KEY `FK2cl7ju1mr3m4nrmmkxmvioone` (`photographyType_id`);

--
-- Indexes for table `sellerphotographyoccasion`
--
ALTER TABLE `sellerphotographyoccasion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKi41dt5xf5gwu9dx4kjckotb3s` (`allProducts_id`),
  ADD KEY `FKcy8hcn8u0b9xgkukqg6724h2q` (`photographyOccasion_id`),
  ADD KEY `FKnoqq9xidwpw01ne1qgwkrnf32` (`sellerPhotographer_id`);

--
-- Indexes for table `sellerproductcancellation`
--
ALTER TABLE `sellerproductcancellation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7pxxq6g5f7lwr90q3jgprcbvq` (`categoryAvailable_id`),
  ADD KEY `FKl3fy1alnnwlebx6sej6o157u2` (`sellerDetails_id`);

--
-- Indexes for table `sellerproductimagesvideos`
--
ALTER TABLE `sellerproductimagesvideos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe19b7v9snxyllprvtb553l5ij` (`allProducts_id`);

--
-- Indexes for table `sellerproductpricing`
--
ALTER TABLE `sellerproductpricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt0lqo4tk704luwy02p8h0186a` (`allProducts_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategoryavailable`
--
ALTER TABLE `subcategoryavailable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1ec010dbjpyslk206ce0skol4` (`categoryAvailable_id`);

--
-- Indexes for table `vat`
--
ALTER TABLE `vat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zipcode`
--
ALTER TABLE `zipcode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoqc1cwgsx72pyg4muigvq7vyn` (`city_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allproducts`
--
ALTER TABLE `allproducts`
  ADD CONSTRAINT `FKg2xj69f6n06ko1st2brgx4pdo` FOREIGN KEY (`sellerDetails_id`) REFERENCES `sellerdetails` (`id`),
  ADD CONSTRAINT `FKqss3ws8rwo57p0re3c1u1141m` FOREIGN KEY (`categoryAvailable_id`) REFERENCES `categoryavailable` (`id`);

--
-- Constraints for table `categorytaken`
--
ALTER TABLE `categorytaken`
  ADD CONSTRAINT `FK690hyopk4y358b1x85e07clc1` FOREIGN KEY (`sellerDetails_id`) REFERENCES `sellerdetails` (`id`),
  ADD CONSTRAINT `FKr90gmmfqvnijquni5pneqiw8m` FOREIGN KEY (`categoryAvailable_id`) REFERENCES `categoryavailable` (`id`);

--
-- Constraints for table `caterer`
--
ALTER TABLE `caterer`
  ADD CONSTRAINT `FKo0m2h2wn3bb45hkjc4nj68af1` FOREIGN KEY (`allProducts_id`) REFERENCES `allproducts` (`id`),
  ADD CONSTRAINT `FKrv12vpudi2ml80tubyujvfxmd` FOREIGN KEY (`productType_id`) REFERENCES `producttype` (`id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK19lu7ofio5d2w879ch76hemmw` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

--
-- Constraints for table `flower`
--
ALTER TABLE `flower`
  ADD CONSTRAINT `FKcy8wcieorwue896bv81iiwsix` FOREIGN KEY (`productType_id`) REFERENCES `producttype` (`id`),
  ADD CONSTRAINT `FKpajkh0nklsmu9r0ku8dumuf5f` FOREIGN KEY (`allProducts_id`) REFERENCES `allproducts` (`id`);

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `FK72assrnvrecu0tpfwo11qloul` FOREIGN KEY (`sellerDetails_id`) REFERENCES `sellerdetails` (`id`),
  ADD CONSTRAINT `FKplkk3lef1jlfw00xdv3hq693x` FOREIGN KEY (`foodType_id`) REFERENCES `foodtype` (`id`);

--
-- Constraints for table `foodofpackage`
--
ALTER TABLE `foodofpackage`
  ADD CONSTRAINT `FKgl7bh26v78av3eld4y88gokvm` FOREIGN KEY (`allProduct_id`) REFERENCES `allproducts` (`id`),
  ADD CONSTRAINT `FKqonaskcttwku5txfs9iien2h2` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`);

--
-- Constraints for table `freesproduct`
--
ALTER TABLE `freesproduct`
  ADD CONSTRAINT `FKgfp9w86h9cpkg7qvmfiqy3hwr` FOREIGN KEY (`toPId`) REFERENCES `allproducts` (`id`),
  ADD CONSTRAINT `FKjf8yvwsjkmctskvf3uu4nhl3m` FOREIGN KEY (`withPId`) REFERENCES `allproducts` (`id`);

--
-- Constraints for table `intproductoccasion`
--
ALTER TABLE `intproductoccasion`
  ADD CONSTRAINT `FK63gondvx5jvmnvl6e7ldugkjc` FOREIGN KEY (`allProducts_id`) REFERENCES `allproducts` (`id`),
  ADD CONSTRAINT `FKq6y6sjdoea0f15f0o592e4vgt` FOREIGN KEY (`occasion_id`) REFERENCES `occasion` (`id`);

--
-- Constraints for table `int_vat_categoryavailable`
--
ALTER TABLE `int_vat_categoryavailable`
  ADD CONSTRAINT `FK4hi7ufblg02laqhmk3epa03md` FOREIGN KEY (`categoryAvailable_id`) REFERENCES `categoryavailable` (`id`),
  ADD CONSTRAINT `FKjtcq7x3djwutkllt79vfvaqte` FOREIGN KEY (`vat_id`) REFERENCES `vat` (`id`);

--
-- Constraints for table `otp`
--
ALTER TABLE `otp`
  ADD CONSTRAINT `FKs5ftychf09w53ait1m13fu0xh` FOREIGN KEY (`sellerDetails_id`) REFERENCES `sellerdetails` (`id`);

--
-- Constraints for table `producttype`
--
ALTER TABLE `producttype`
  ADD CONSTRAINT `FKgq0s1b320ppb3p4mn0tela4y9` FOREIGN KEY (`categoryAvailable_id`) REFERENCES `categoryavailable` (`id`);

--
-- Constraints for table `sellerbankdetails`
--
ALTER TABLE `sellerbankdetails`
  ADD CONSTRAINT `FK9caetts1b6d91kesrgw5m941n` FOREIGN KEY (`sellerDetails_id`) REFERENCES `sellerdetails` (`id`);

--
-- Constraints for table `sellerdetails`
--
ALTER TABLE `sellerdetails`
  ADD CONSTRAINT `FK1wi9fiocd9g01aiusiwsf5ump` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`),
  ADD CONSTRAINT `FK7lvg4oqibwioy0x1ddsuxjmsd` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `FK9psk47qtumm17t9aicna32cn0` FOREIGN KEY (`adminDetails_id`) REFERENCES `admindetails` (`id`),
  ADD CONSTRAINT `FKmvlebegv5m56cq6wprps83rov` FOREIGN KEY (`zipCode_id`) REFERENCES `zipcode` (`id`);

--
-- Constraints for table `sellerdiscount`
--
ALTER TABLE `sellerdiscount`
  ADD CONSTRAINT `FKpxrxn8d0pxgbs5p796vor1kqx` FOREIGN KEY (`allProducts_id`) REFERENCES `allproducts` (`id`);

--
-- Constraints for table `sellerinactivedetails`
--
ALTER TABLE `sellerinactivedetails`
  ADD CONSTRAINT `FK9ceejmk4xtys14eduiopxc4hy` FOREIGN KEY (`sellerDetails_id`) REFERENCES `sellerdetails` (`id`),
  ADD CONSTRAINT `FKnjtex6bixuiaviay5hhrvy9fk` FOREIGN KEY (`adminDetails_id`) REFERENCES `admindetails` (`id`);

--
-- Constraints for table `sellerphotographer`
--
ALTER TABLE `sellerphotographer`
  ADD CONSTRAINT `FK2cl7ju1mr3m4nrmmkxmvioone` FOREIGN KEY (`photographyType_id`) REFERENCES `photographytype` (`id`),
  ADD CONSTRAINT `FKpdt27ksxx3ynvsvvkqbadars1` FOREIGN KEY (`allProducts_id`) REFERENCES `allproducts` (`id`),
  ADD CONSTRAINT `FKq9gwsxlldcrijdw7b8dstlv8x` FOREIGN KEY (`occasion_id`) REFERENCES `photographyoccasion` (`id`);

--
-- Constraints for table `sellerphotographyoccasion`
--
ALTER TABLE `sellerphotographyoccasion`
  ADD CONSTRAINT `FKcy8hcn8u0b9xgkukqg6724h2q` FOREIGN KEY (`photographyOccasion_id`) REFERENCES `photographyoccasion` (`id`),
  ADD CONSTRAINT `FKi41dt5xf5gwu9dx4kjckotb3s` FOREIGN KEY (`allProducts_id`) REFERENCES `allproducts` (`id`),
  ADD CONSTRAINT `FKnoqq9xidwpw01ne1qgwkrnf32` FOREIGN KEY (`sellerPhotographer_id`) REFERENCES `sellerphotographer` (`id`);

--
-- Constraints for table `sellerproductcancellation`
--
ALTER TABLE `sellerproductcancellation`
  ADD CONSTRAINT `FK7pxxq6g5f7lwr90q3jgprcbvq` FOREIGN KEY (`categoryAvailable_id`) REFERENCES `categoryavailable` (`id`),
  ADD CONSTRAINT `FKl3fy1alnnwlebx6sej6o157u2` FOREIGN KEY (`sellerDetails_id`) REFERENCES `sellerdetails` (`id`);

--
-- Constraints for table `sellerproductimagesvideos`
--
ALTER TABLE `sellerproductimagesvideos`
  ADD CONSTRAINT `FKe19b7v9snxyllprvtb553l5ij` FOREIGN KEY (`allProducts_id`) REFERENCES `allproducts` (`id`);

--
-- Constraints for table `sellerproductpricing`
--
ALTER TABLE `sellerproductpricing`
  ADD CONSTRAINT `FKt0lqo4tk704luwy02p8h0186a` FOREIGN KEY (`allProducts_id`) REFERENCES `allproducts` (`id`);

--
-- Constraints for table `subcategoryavailable`
--
ALTER TABLE `subcategoryavailable`
  ADD CONSTRAINT `FK1ec010dbjpyslk206ce0skol4` FOREIGN KEY (`categoryAvailable_id`) REFERENCES `categoryavailable` (`id`);

--
-- Constraints for table `zipcode`
--
ALTER TABLE `zipcode`
  ADD CONSTRAINT `FKoqc1cwgsx72pyg4muigvq7vyn` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
