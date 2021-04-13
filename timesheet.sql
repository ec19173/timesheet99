-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 11, 2021 at 07:48 PM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timesheet`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admins`
--

CREATE TABLE `Admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `role` int(11) DEFAULT '1',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admins`
--

INSERT INTO `Admins` (`id`, `email`, `password`, `phone`, `createdAt`, `updatedAt`, `role`, `name`) VALUES
(1, 'admin@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 33312345, '2021-04-04 19:25:24', '2021-04-04 19:25:24', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `Consultants`
--

CREATE TABLE `Consultants` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `LinemanagerId` int(11) NOT NULL,
  `role` int(11) DEFAULT '3',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Consultants`
--

INSERT INTO `Consultants` (`id`, `email`, `password`, `phone`, `createdAt`, `updatedAt`, `LinemanagerId`, `role`, `name`) VALUES
(1, 'adrian@gmail.com', '$2b$10$UzcaGlwLFQHo/OPXnBbP9eXGTAsFkcU0GHKiwAYT8MaCeeGALL.42', 33312345, '2021-04-04 19:19:11', '2021-04-10 08:48:14', 1, 3, 'adrian'),
(2, 'adam@gmail.com', '$2b$10$9bwRXZ27qFq6wM/O.i9K5O.HV33uMYTCRYOpwVdvEM8d3RB8Ozds.', 492123545, '2021-04-04 19:19:44', '2021-04-06 15:30:31', 1, 3, 'adam'),
(3, 'alex@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 33312345, '2021-04-04 19:20:23', '2021-04-04 19:20:23', 1, 3, 'alex'),
(4, 'ash@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 444123456, '2021-04-04 19:21:13', '2021-04-04 19:21:13', 1, 3, 'ash'),
(5, 'bruce@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 492123545, '2021-04-04 19:21:42', '2021-04-04 19:21:42', 2, 3, 'bruce'),
(6, 'bob@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 33312345, '2021-04-04 19:21:57', '2021-04-04 19:21:57', 2, 3, 'bob'),
(7, 'bill@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 992122245, '2021-04-04 19:22:10', '2021-04-04 19:22:10', 2, 3, 'bill'),
(8, 'brandon@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 444123456, '2021-04-04 19:22:26', '2021-04-04 19:22:26', 2, 3, 'brandon'),
(9, 'dean@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 33312345, '2021-04-04 19:23:37', '2021-04-04 19:23:37', 3, 3, 'dean'),
(10, 'diego@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 492123545, '2021-04-04 19:23:53', '2021-04-04 19:23:53', 3, 3, 'diego'),
(11, 'doe@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 33312345, '2021-04-04 19:24:20', '2021-04-04 19:24:20', 3, 3, 'Doe'),
(12, 'daniel@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 992122245, '2021-04-04 19:24:36', '2021-04-04 19:24:36', 3, 3, 'Daniel');

-- --------------------------------------------------------

--
-- Table structure for table `Feedbacks`
--

CREATE TABLE `Feedbacks` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `WeekId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Linemanagers`
--

CREATE TABLE `Linemanagers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `role` int(11) DEFAULT '2',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Linemanagers`
--

INSERT INTO `Linemanagers` (`id`, `email`, `password`, `phone`, `createdAt`, `updatedAt`, `role`, `name`) VALUES
(1, 'lee@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 33312345, '2021-04-04 19:15:56', '2021-04-04 19:15:56', 2, 'Lee'),
(2, 'larry@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 33312345, '2021-04-04 19:16:56', '2021-04-04 19:16:56', 2, 'Larry'),
(3, 'leo@gmail.com', '$2b$10$Ww4TiTEktIq2UfchQYqRFe0TW0xlqpxe/gf0QvEd2.qHRddq4iFEi', 33312345, '2021-04-04 19:17:25', '2021-04-04 19:17:25', 2, 'Leo');

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE `Notifications` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ConsultantId` int(11) DEFAULT NULL,
  `LinemanagerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Timeschedules`
--

CREATE TABLE `Timeschedules` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `WeekId` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Weeks`
--

CREATE TABLE `Weeks` (
  `id` int(11) NOT NULL,
  `creation_date` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `link_code` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ConsultantId` int(11) DEFAULT NULL,
  `LinemanagerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admins`
--
ALTER TABLE `Admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Consultants`
--
ALTER TABLE `Consultants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `LinemanagerId` (`LinemanagerId`);

--
-- Indexes for table `Feedbacks`
--
ALTER TABLE `Feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `WeekId` (`WeekId`);

--
-- Indexes for table `Linemanagers`
--
ALTER TABLE `Linemanagers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ConsultantId` (`ConsultantId`),
  ADD KEY `LinemanagerId` (`LinemanagerId`);

--
-- Indexes for table `Timeschedules`
--
ALTER TABLE `Timeschedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `WeekId` (`WeekId`);

--
-- Indexes for table `Weeks`
--
ALTER TABLE `Weeks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ConsultantId` (`ConsultantId`),
  ADD KEY `LinemanagerId` (`LinemanagerId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admins`
--
ALTER TABLE `Admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Consultants`
--
ALTER TABLE `Consultants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Feedbacks`
--
ALTER TABLE `Feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Linemanagers`
--
ALTER TABLE `Linemanagers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Notifications`
--
ALTER TABLE `Notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `Timeschedules`
--
ALTER TABLE `Timeschedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Weeks`
--
ALTER TABLE `Weeks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Consultants`
--
ALTER TABLE `Consultants`
  ADD CONSTRAINT `Consultants_ibfk_1` FOREIGN KEY (`LinemanagerId`) REFERENCES `Linemanagers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Feedbacks`
--
ALTER TABLE `Feedbacks`
  ADD CONSTRAINT `Feedbacks_ibfk_1` FOREIGN KEY (`WeekId`) REFERENCES `Weeks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD CONSTRAINT `Notifications_ibfk_41` FOREIGN KEY (`ConsultantId`) REFERENCES `Consultants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Notifications_ibfk_42` FOREIGN KEY (`LinemanagerId`) REFERENCES `Linemanagers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Timeschedules`
--
ALTER TABLE `Timeschedules`
  ADD CONSTRAINT `Timeschedules_ibfk_1` FOREIGN KEY (`WeekId`) REFERENCES `Weeks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Weeks`
--
ALTER TABLE `Weeks`
  ADD CONSTRAINT `Weeks_ibfk_41` FOREIGN KEY (`ConsultantId`) REFERENCES `Consultants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Weeks_ibfk_42` FOREIGN KEY (`LinemanagerId`) REFERENCES `Linemanagers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
