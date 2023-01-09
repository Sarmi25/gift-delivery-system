-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 03:43 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gift_delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPassword` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPassword`, `level`) VALUES
(1, 'Sarmika Kabilan', 'Sarmi', 'sarmijejaratnam@gmail.com', '8994', 0),
(2, 'Rubi', 'Rubika', 'Jaffna', 'sarmi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(2, 'SAMSUNG'),
(3, 'CANON'),
(4, 'IPHONE'),
(5, 'ACER'),
(6, 'Srilanka'),
(7, 'China'),
(8, 'UK'),
(9, 'America');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Desktop'),
(2, 'Laptop'),
(3, 'Mobile Phones'),
(6, 'Sports &amp; Fitness'),
(7, 'Footwear'),
(8, 'Jewellery'),
(9, 'Clothing'),
(10, 'Toys'),
(11, 'Watches'),
(12, 'Greeting Cards'),
(14, 'Gift Packs'),
(15, 'Flowers'),
(16, 'Cakes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `contact`, `message`, `status`, `date`) VALUES
(2, 'md.alvi islam', 'customer@gmail.com', '1622425286', 'szzss', 1, '2018-08-05 23:23:25'),
(3, 'kabil', 'kabil@gmail.com', '0777563456', 'Cake order', 0, '2023-01-07 04:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Banu', 'Jaffna', 'Inuvil', 'Srilanka', '1219', '07778945678', 'banu@gmail.com', '202cb960'),
(2, 'Rubi', 'Kandy', 'Kandy', 'Srilanka', '43434', '077789456454', 'rubi@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(21, 1, 15, 'Baby set', 1, 505.22, '', '2023-01-03 20:45:34', 2),
(22, 1, 14, 'Cake', 1, 505.22, '', '0000-00-00 00:00:00', 0),
(23, 1, 15, 'Frock', 3, 1515.66, '', '2022-12-11 21:23:42', 0),
(25, 1, 15, 'Watch', 1, 505.22, '', '0000-00-00 00:00:00', 0),
(26, 1, 15, 'Shirt', 1, 505.22, '', '2022-12-23 00:19:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(1, 'Ladies Watch', 11, 8, '<p><span>Ladies Watch, Waterproof. </span></p>', 3000.00, 'uploads/wl.jpg', 0),
(2, 'TShirt', 9, 9, '<p>Best Gift</p>', 4000.00, 'uploads/ts.jpg', 0),
(3, 'Party Frock', 9, 7, '<p>Red, Party Frock. </p>\r\n', 8000.00, 'uploads/fr2.jpg', 1),
(4, 'Kids Watch', 11, 7, '<p><span>Waterproof Kids Watch</span></p>', 1500.00, 'uploads/wk.jpg', 0),
(5, ' Kids blue Watch', 11, 7, '<p><span>Blue Watch, Water proof. </span></p>', 2000.00, 'uploads/wk2.jpg', 1),
(6, 'Baby set', 9, 9, '<p><span>Best Gift</span></p>', 1850.00, 'uploads/bse.jpg', 1),
(7, 'Cake Red', 16, 6, '<p><span>Best Gift</span></p>', 3500.00, 'uploads/cr.jpg', 0),
(8, 'Flowers Yellow', 15, 6, '<p><span>Best Gift</span></p>', 2800.00, 'uploads/fy.jpg', 0),
(11, 'Teddy Orange', 10, 9, '<p>Best Gift</p>', 6000.00, 'uploads/to.jpg', 1),
(12, 'Cake chocolate', 16, 6, '<p><span>Best Gift</span></p>', 2500.00, 'uploads/cc.jpg', 1),
(13, 'Boy shoot', 9, 8, '<p>Best Gift</p>', 6500.00, 'uploads/bs.jpg', 1),
(15, 'Flower Red', 15, 6, '<p>Best Gift<br /><br /></p>', 2500.00, 'uploads/ff1.jpg', 0),
(16, 'Teddy Brown', 10, 7, '<p>Best Gift</p>', 5500.00, 'uploads/tb.jpg', 1),
(17, 'Teddy pink', 10, 7, '<p>Best gift</p>', 5800.00, 'uploads/tp.jpg', 1),
(18, 'Teddy bear', 10, 7, '<p>Best Gift</p>', 7000.00, 'uploads/tb1.jpg', 1),
(19, 'Frock', 9, 7, '<p>Best Gift</p>', 5000.00, 'uploads/fr1.jpg', 1),
(20, 'Boys Watch', 11, 9, '<p>Boys Watch Black</p>', 3600.00, 'uploads/wm.jpg', 1),
(21, 'Analog Couple Watch', 11, 8, '<p>Analog Couple Watch Black</p>', 3600.00, 'uploads/wa.jpg', 1),
(22, 'Shirt', 9, 8, '<p>new product</p>', 3800.00, 'uploads/ba34729885.jpg', 1),
(23, 'Baby set', 9, 8, '<p>baby set</p>', 3500.00, 'uploads/7536f69bc0.jpg', 1),
(24, 'Flower Pink', 15, 6, '<p>pink Flower</p>', 2000.00, 'uploads/fp.jpg', 1),
(25, 'Cake chocolate', 16, 6, '<p>chocolate cake</p>', 5000.00, 'uploads/b25f2ee025.jpg', 1),
(26, 'Cake chocolate', 16, 6, '<p>chocolate</p>', 4500.00, 'uploads/5eed694309.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(6, 1, 15, 'Laundry machine ', 3200.00, 'uploads/d712a37947.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
