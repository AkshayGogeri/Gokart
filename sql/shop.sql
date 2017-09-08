-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2017 at 07:31 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(200) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'iphone'),
(2, 'samsung'),
(3, 'moto '),
(4, 'sony'),
(5, 'HP'),
(6, 'clothes');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(270) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(350) NOT NULL,
  `product_image` text NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amout` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(200) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Men Wear'),
(2, 'Kids Wear'),
(3, 'Ladies Wear'),
(4, 'Electronics'),
(5, 'Furnitures'),
(6, 'Home Appliances'),
(7, 'Electronic Gadgets');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(150) NOT NULL,
  `produt_cat` int(150) NOT NULL,
  `product_brand` varchar(150) NOT NULL,
  `product_title` varchar(300) NOT NULL,
  `product_price` int(200) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `produt_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 4, '1', 'iphone 6', 50000, 'iphone 6 -brand new ', 'product-1.JPG', 'apple iphone electronics'),
(2, 4, '1', 'iphone 6s', 70000, 'iphone 6s', 'product-2.JPG', 'apple iphone electronics'),
(3, 4, '1', 'iphone 5', 30000, 'iphone 5', 'product-5.JPG', 'apple iphone electronics'),
(4, 4, '2', 'samsung pro', 10000, 'samsung pro', 'product-3.JPG', 'samsung phone mobile electronics'),
(5, 4, '2', 'samsung on 5', 5000, 'samsung  on 5', 'product-4.JPG', 'samsung phone mobile electronics'),
(6, 4, '2', 'samsung s8', 50000, 'samsung s8', 'product-6.JPG', 'samsung mobile electronics samsung s8'),
(7, 4, '5', 'HP pavillion', 60000, 'laptop', 'h4-slide.PNG', 'laptop laptops HP electronics '),
(8, 3, '6', 'saree', 2000, 'saree ', 'h4-slide2.PNG', 'saree women ladies');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `pro_title` varchar(150) NOT NULL,
  `pro_review` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`pro_title`, `pro_review`) VALUES
('samsung s8', 'hi'),
('samsung s8', 'hello'),
('samsung s8', ''),
('samsung s8', 'This is awesome');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(20) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(350) NOT NULL,
  `address2` varchar(350) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Banu', 'chandra', 'banu@gmail.com', '123456789', '1234567890', 'sultan road', 'sultan road'),
(2, 'A', 'B', 'a@gmail.com', '123456789', '1234567890', 'sultan', 'sultan'),
(3, 'Abc', 'Abc', 'ban@gmail.com', '25f9e794323b453885f5181f1b624d0b', '1234567890', 'sultanpur', 'sultanpur'),
(4, 'Ashwin', 'Kamath', 'ash@gmail.com', 'd4395a5856617fa4afe8c5cd2eed3912', '9876543210', 'pes', 'pes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`), ADD UNIQUE KEY `product_title` (`product_title`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(150) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
