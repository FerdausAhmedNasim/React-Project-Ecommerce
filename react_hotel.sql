-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 06:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(6) NOT NULL,
  `email` varchar(250) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(500) NOT NULL,
  `status` enum('active','inactive','','') NOT NULL DEFAULT 'active',
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `username`, `password`, `status`, `create_date`) VALUES
(2, 'sagorwdpf@gmail.com', 'sagor', '$2y$10$WsQDnpg2pwJMvtPajQ4NyOI6vYS5310TGDT5F/YHfL655/CX2aE4y', 'active', '2024-09-05 09:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `persons` int(11) NOT NULL,
  `roomType` varchar(50) NOT NULL,
  `startDate` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `endDate` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `totalPrice` decimal(10,2) NOT NULL,
  `days` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `status` enum('Pending','Booked','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `address`, `cnic`, `email`, `phone`, `persons`, `roomType`, `startDate`, `endDate`, `totalPrice`, `days`, `capacity`, `status`) VALUES
(4, 'Family', 'Khilgaon,Dhaka-1219', 'ff', 'sagorwdpf@gmail.com', '+880156839308', 2, 'presidential', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2500.00, 1, 7, 'Booked'),
(8, 'Ferdaus Ahmed Nasim', 'polton', '12345', 'isdbbisewroundnasim@gmail.com', '+880965432', 1, 'Economy', '9/14/2024', '9/14/2024', 1000.00, 1, 1, 'Pending'),
(9, 'Ferdaus Ahmed Nasim', 'polton', '12345', 'ferdausahmed@gmail.com', '+8801776177808', 10, 'single', '9/14/2024', '9/14/2024', 2000.00, 1, 10, 'Pending'),
(10, 'Ferdaus ', 'Dhaka', '454433 9.54PM', 'ferdausahmed@gmail.com', '+880977776', 10, 'single', '9/14/2024', '9/14/2024', 2000.00, 1, 10, 'Pending'),
(11, '10.09', 'qatar', '877', 'ferdausahmed2020@gmail.com', '+8801776177802', 10, 'single', '9/14/2024', '9/14/2024', 2000.00, 1, 10, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `full_name`, `email`, `message`, `created_at`) VALUES
(1, 'sagor', 'sagorwdf@gmail.com', 'ws', '2024-09-09 10:25:35'),
(2, 'sagor', 'sagorwdf@gmail.com', 'ws', '2024-09-09 10:25:36'),
(3, 'sagor', 'sagorwdf@gmail.com', 'ws', '2024-09-09 10:27:37'),
(4, 'sagor', 'sagors@gmail.com', 'xxx', '2024-09-09 10:27:50'),
(5, 'sagor', 'sagorwdpf@gmail.com', 'ssss', '2024-09-09 10:29:32'),
(6, 'sagor', 'sagorwdf@gmail.com', 'dd', '2024-09-09 21:54:26'),
(7, 'Ferdaus Ahmed Nasim', 'isdbbisewroundnasim@gmail.com', 'try from react', '2024-09-12 06:15:51'),
(8, 'Ferdaus Ahmed Nasim', 'isdbbisewroundnasim@gmail.com', 'try from react', '2024-09-12 06:15:53'),
(9, 'Ferdaus Ahmed Nasim', 'isdbbisewroundnasim@gmail.com', 'hello msg from biman', '2024-09-14 12:50:40'),
(10, 'Ferdaus Ahmed Nasim', 'isdbbisewroundnasim@gmail.com', 'hello msg from biman', '2024-09-14 13:01:56'),
(11, 'Ferdaus Ahmed Nasim', 'isdbbisewroundnasim@gmail.com', 'hello msg from biman', '2024-09-14 13:01:58'),
(12, 'Ferdaus Ahmed Nasim', 'sagorwdpf@gmail.com', 'jok 7.02eeeeeeeeeee', '2024-09-14 13:02:20'),
(13, 'Ferdaus Ahmed Nasim', 'isdbbisewroundnasim@gmail.com', 'ok', '2024-09-14 13:59:34'),
(14, 'Ferdaus Ahmed Nasim', 'isdbbisewroundnasim@gmail.com', 'ok', '2024-09-14 14:00:04'),
(15, 'Ferdaus Ahmed Nasim', 'isdbbisewroundnasim@gmail.com', 'ok', '2024-09-14 14:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `roomes`
--

CREATE TABLE `roomes` (
  `id` int(11) NOT NULL,
  `details` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `pets` tinyint(1) NOT NULL DEFAULT 0,
  `breakfast` tinyint(1) NOT NULL DEFAULT 0,
  `extrac_1` varchar(255) DEFAULT NULL,
  `extrac_2` varchar(255) DEFAULT NULL,
  `extrac_3` varchar(255) DEFAULT NULL,
  `roomType` enum('single','double','family','presidential') NOT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(500) NOT NULL,
  `image3` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomes`
--

INSERT INTO `roomes` (`id`, `details`, `price`, `size`, `capacity`, `pets`, `breakfast`, `extrac_1`, `extrac_2`, `extrac_3`, `roomType`, `image1`, `image2`, `image3`) VALUES
(23, 'naws', 2000.00, 52, 10, 0, 0, '0', 'fff', 'sdfsdf', 'single', 'uploads/Biman.jpeg', 'uploads/Biman - Copy.jpeg', 'uploads/Biman - Copy (2).jpeg'),
(24, 'naws', 5000.00, 0, 10, 0, 0, '0', 'fff', 'sdfsdf', 'single', 'uploads/Biman.jpeg', 'uploads/Biman - Copy.jpeg', 'uploads/Biman - Copy (2).jpeg'),
(25, 'naws', 2000.00, 0, 30, 0, 0, '0', 'fff', 'sdfsdf', 'single', 'uploads/Biman - Copy.jpeg', 'uploads/Biman.jpeg', 'uploads/Biman.jpeg'),
(26, 'New', 50000.00, 0, 10, 0, 0, '0', 'Air', 'Water', 'single', 'uploads/Biman.jpeg', 'uploads/Biman - Copy (2).jpeg', 'uploads/Biman - Copy.jpeg'),
(27, 'New', 89999.00, 0, 30, 0, 0, '0', 'water', 'Cool', 'single', 'uploads/Biman.jpeg', 'uploads/Biman.jpeg', 'uploads/Biman.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `roomes_details`
--

CREATE TABLE `roomes_details` (
  `id` int(11) NOT NULL,
  `capacity` int(2) NOT NULL,
  `breakfast` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `pets` varchar(30) NOT NULL,
  `roomtype` varchar(30) NOT NULL,
  `size` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `id` int(11) NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`id`, `fullname`, `username`, `email`, `password`) VALUES
(4, ' gdfg', 'ssss', 'sagorwdf@gmail.com', '$2y$10$PosBmXvxd2Yuvr9sfOWUiOywTNvqSXqUlYtgJlijiN4k0MYnQPwdC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomes`
--
ALTER TABLE `roomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomes_details`
--
ALTER TABLE `roomes_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roomes`
--
ALTER TABLE `roomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `roomes_details`
--
ALTER TABLE `roomes_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
