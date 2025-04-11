-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2025 at 01:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blossom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `c_register_table`
--

CREATE TABLE `c_register_table` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `c_register_table`
--

INSERT INTO `c_register_table` (`id`, `first_name`, `last_name`, `email`, `phone_no`, `password`) VALUES
(7, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(8, 'Litty', 'pulickal', 'litty@gmail.com', '9446158736', 'litty@12'),
(9, 'Litty', 'pulickal', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(10, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(11, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(12, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(13, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(14, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(15, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(16, 'suba', 'sreya', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(17, 'suba', 'sreya', 'liyaanna.lalichan12@gmail.com', '8078210338', 'sneha12@'),
(18, 'suba', 'sreya', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(19, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(20, 'Litty', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(21, 'Litty', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(22, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(23, 'suba', 'pulickal', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(24, 'Liya', 'pulickal', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(25, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(26, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(27, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', 'liya12@'),
(28, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', '1245678'),
(29, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', '1245678'),
(30, 'Liya', 'Lalichan', 'liyaanna.lalichan12@gmail.com', '8078210338', '1245678'),
(31, 'liya', 'Lalichan', 'fathimaanas012@gmail.com', '8078210338', 'liya12@'),
(32, 'liya', 'Lalichan', 'fathimaanas012@gmail.com', '8078210338', 'liya12@');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_register_table`
--

CREATE TABLE `s_register_table` (
  `owner_name` varchar(100) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `address_1` varchar(100) NOT NULL,
  `address_2` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `license` varchar(100) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `shop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_register_table`
--

INSERT INTO `s_register_table` (`owner_name`, `shop_name`, `address_1`, `address_2`, `district`, `state`, `pincode`, `license`, `phone_no`, `email_id`, `shop_id`) VALUES
('liya', 'liyashop', 'ABC', 'ABC', 'KOTTAYAM', 'KERALA', '686104', '65748', '8078210338', 'liyaanna@12gmail.com', 1),
('liya', 'liyashop', 'ABC', 'ABC', 'KOTTAYAM', 'KERALA', '686104', '65748', '8078210338', 'liyaanna@12gmail.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_register_table`
--
ALTER TABLE `c_register_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_shop` (`shop_id`);

--
-- Indexes for table `s_register_table`
--
ALTER TABLE `s_register_table`
  ADD PRIMARY KEY (`shop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_register_table`
--
ALTER TABLE `c_register_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `s_register_table`
--
ALTER TABLE `s_register_table`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_shop` FOREIGN KEY (`shop_id`) REFERENCES `s_register_table` (`shop_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
