-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 03:23 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `from_location` int(11) NOT NULL,
  `to_location` int(11) NOT NULL,
  `departure` date NOT NULL,
  `arrival` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` enum('pending','approved','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `car_id`, `booking_date`, `from_location`, `to_location`, `departure`, `arrival`, `customer_id`, `status`) VALUES
(1, 4, '2018-07-24', 1, 2, '2018-07-18', '2018-07-19', 2, 'canceled'),
(2, 8, '2018-07-26', 1, 2, '2018-07-03', '2018-07-10', 2, 'approved'),
(3, 7, '2018-07-26', 1, 1, '2018-07-03', '2018-07-10', 2, 'approved'),
(4, 8, '2018-07-26', 4, 9, '2018-07-02', '2018-07-25', 3, 'pending'),
(5, 10, '2018-07-26', 4, 9, '2018-07-02', '2018-07-25', 3, 'pending'),
(6, 10, '2018-07-26', 4, 9, '2018-07-02', '2018-07-25', 3, 'pending'),
(7, 2, '2018-07-26', 1, 1, '2018-07-02', '2018-07-18', 2, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `car_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `rent_type` enum('both','weekly','monthly') COLLATE utf8_unicode_ci NOT NULL,
  `booking_accept_type` enum('both','in-city','highway') COLLATE utf8_unicode_ci NOT NULL,
  `weekly_rate` int(11) NOT NULL,
  `monthly_rate` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `car_no`, `vendor_id`, `rent_type`, `booking_accept_type`, `weekly_rate`, `monthly_rate`, `description`, `img`) VALUES
(1, 'No-1001', 1, 'both', 'both', 150, 150, 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', '9cc7a645-bdb5-438d-905d-1d266c2038b4.jpg'),
(2, 'No-1002', 1, 'both', 'both', 100, 100, 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', '5aae26a6-34c6-4c25-9b0f-04a45537ca97.jpg'),
(3, 'No-1003', 1, 'weekly', 'both', 100, 100, 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', 'bf4007ee-e0ec-4cc5-9452-3204a1ddd2c2.jpg'),
(4, 'No-1004', 1, 'monthly', 'in-city', 300, 300, 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', 'd4c4ab14-a480-44d6-a3af-be02e50d9c9e.jpg'),
(5, 'No-1005', 1, 'weekly', 'both', 300, 300, 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', '61d2262a-791c-42fd-acd0-a00f0604e842.jpg'),
(6, 'No-1006', 2, 'both', 'both', 250, 250, 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', 'a39a0954-c2c6-4722-a782-7b1da4341793.jpg'),
(7, 'No-1007', 2, 'monthly', 'both', 300, 300, 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', 'bfef4967-770e-4277-bfa4-9faede77056f.jpg'),
(8, 'No-1008', 4, 'weekly', 'highway', 200, 200, 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', 'ab9f448f-93ac-433c-a7ab-8a9e0e4d1db5.jpg'),
(9, 'No-1009', 4, 'weekly', 'highway', 200, 200, 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', 'af633164-9072-4297-91d9-a42fa5232d70.jpg'),
(10, 'No-1010', 5, 'monthly', 'highway', 500, 500, 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', 'fe3174ef-8822-4040-bb19-96154bd9bdb4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'Bishan East'),
(2, 'Marymount'),
(3, 'Upper Thomson'),
(4, 'Alexandra Hill'),
(5, 'Alexandra North'),
(6, 'Bukit Ho Swee'),
(7, 'Bukit Merah'),
(8, 'City Terminals'),
(10, 'Everton Park'),
(12, 'Bukit Merah');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('admin','customer') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `user_type`) VALUES
(1, 'Admin', 'Control', 'admin@gmail.com', 'Admin123', 'Admin123', 'admin'),
(2, 'Kyaw', 'Kyaw', 'kyawkyaw@gmail.com', '123123123', '123123123', 'customer'),
(3, 'Tun', 'Tun', 'tuntun@gmail.com', '123123123', '123123123', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`) VALUES
(1, 'Toyota'),
(2, 'BMW'),
(3, 'Acura'),
(4, 'Mazda'),
(5, 'Isuzu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
