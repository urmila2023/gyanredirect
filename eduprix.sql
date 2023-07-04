-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 11:43 AM
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
-- Database: `eduprix`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`) VALUES
(1, 'keerti.sharma0201@gmail.com', 'Naukri@12345', 'admin'),
(2, 'Admin@gmail.com', '12345', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(1, 'Finance', 1),
(2, 'Development', 1),
(3, 'Investment', 1),
(4, 'Marketing', 1),
(6, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `curicullum`
--

CREATE TABLE `curicullum` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curicullum`
--

INSERT INTO `curicullum` (`id`, `post_id`, `question`, `answer`) VALUES
(2, 4, 'What is PHP ?', 'PHP is The Server Side Side Scripting Language'),
(3, 4, 'What is PHP KOOKIES ?', 'PHP KOOKIES IS THE MOST POWER FULL SUPER GLOBAL VARIAL');

-- --------------------------------------------------------

--
-- Table structure for table `lession`
--

CREATE TABLE `lession` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lession`
--

INSERT INTO `lession` (`id`, `post_id`, `question`, `answer`) VALUES
(1, 4, 'What is html?', 'Its stand for Hypertext Markup Language.'),
(2, 5, 'what is CSS?', 'Its stand for Cascading style sheet.');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `lebal` varchar(200) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `curicullum` text DEFAULT NULL,
  `post_date` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `title`, `lebal`, `tags`, `desc`, `image`, `curicullum`, `post_date`) VALUES
(4, 2, 'PHP', 'Biggner', 'php,html,css', '<p>This post is php.</p>', 'wmh.png', '<p style=\"text-align:center;\"><span class=\"text-huge\"><strong>Introduction</strong></span></p><p><sp', '03 Jul 2023'),
(5, 3, 'erduipjkop', 'Intermediate', 'asfsdf,sdfsdf,sdfsd', '<p>sxdcfvup,[</p>', 'wmh.png', '<p style=\"text-align:center;\"><span class=\"text-huge\"><strong>Introduction</strong></span></p><ol><li>What is JS ?</li><li>What is Css ?</li><li>What is HTML ?</li></ol>', '03 Jul 2023');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(100) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(10, 'Aftab', 'Alam', 'aftab@gmail.com', '123456'),
(11, 'Urmila', 'Maurya', 'a@gmail.com', '1'),
(12, 'u', 'm', 'm@gmail.com', '2'),
(13, 's', 'm', 'sm@g.c', '3');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state` varchar(30) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`, `code`) VALUES
(1, 'Jammu and Kashmir', '1'),
(2, 'Himachal Pradesh', '2'),
(3, 'Punjab', '3'),
(4, 'Chandigarh', '4'),
(5, 'Uttarakhand', '5'),
(6, 'Haryana', '6'),
(7, 'Delhi', '7'),
(8, 'Rajasthan', '8'),
(9, 'Uttar Pradesh', '9'),
(10, 'Bihar', '10'),
(11, 'Sikkim', '11'),
(12, 'Arunachal Pradesh', '12'),
(13, 'Nagaland', '13'),
(14, 'Manipur', '14'),
(15, 'Mizoram', '15'),
(16, 'Tripura', '16'),
(17, 'Meghalaya', '17'),
(18, 'Assam', '18'),
(19, 'West Bengal', '19'),
(20, 'Jharkhand', '20'),
(21, 'Odisha', '21'),
(22, 'Chattisgarh', '22'),
(23, 'Madhya Pradesh', '23'),
(24, 'Gujarat', '24'),
(25, 'Daman and Diu', '25'),
(26, 'Dadra and Nagar Haveli', '26'),
(27, 'Maharashtra', '27'),
(28, 'Karnataka', '29'),
(29, 'Goa', '30'),
(30, 'Lakshadweep Islands', '31'),
(31, 'Kerala', '32'),
(32, 'Tamil Nadu', '33'),
(33, 'Pondicherry', '34'),
(34, 'Andaman and Nicobar Islands', '35'),
(35, 'Telangana', '36'),
(36, 'Andhra Pradesh', '37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curicullum`
--
ALTER TABLE `curicullum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lession`
--
ALTER TABLE `lession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `curicullum`
--
ALTER TABLE `curicullum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lession`
--
ALTER TABLE `lession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
