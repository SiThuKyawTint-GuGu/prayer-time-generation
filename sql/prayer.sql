-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2024 at 05:20 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prayer`
--

-- --------------------------------------------------------

--
-- Table structure for table `boxes`
--

CREATE TABLE `boxes` (
  `box_id` int NOT NULL,
  `box_name` varchar(255) NOT NULL,
  `prayer_zone` varchar(10) NOT NULL,
  `subs_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `boxes`
--

INSERT INTO `boxes` (`box_id`, `box_name`, `prayer_zone`, `subs_id`) VALUES
(101, 'Box Name', 'WLY01', 1),
(102, 'United Square', 'SWK02', 1),
(103, 'Thompson Plaza', 'JHR01', 2),
(104, 'Peranakan Place', 'KDH01', 2),
(105, 'Marina Boulevard', 'MLK01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int NOT NULL,
  `song_title` varchar(255) NOT NULL,
  `subs_id` int DEFAULT NULL,
  `box_id` int DEFAULT NULL,
  `prayer_zone` varchar(10) NOT NULL,
  `prayer_time_date` date NOT NULL,
  `prayer_time_seq` int NOT NULL,
  `prayer_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `song_title`, `subs_id`, `box_id`, `prayer_zone`, `prayer_time_date`, `prayer_time_seq`, `prayer_time`) VALUES
(2, 'Subuh (03-09)', 1, 101, 'WLY01', '2024-03-09', 1, '06:14:00'),
(3, 'Zohor (03-09)', 1, 101, 'WLY01', '2024-03-09', 2, '13:26:00'),
(4, 'Asar (03-09)', 1, 101, 'WLY01', '2024-03-09', 3, '16:38:00'),
(5, 'Maghrib (03-09)', 1, 101, 'WLY01', '2024-03-09', 4, '19:28:00'),
(6, 'Isyak (03-09)', 1, 101, 'WLY01', '2024-03-09', 5, '20:37:00'),
(7, 'Subuh (03-10)', 1, 101, 'WLY01', '2024-03-10', 6, '06:14:00'),
(8, 'Zohor (03-10)', 1, 101, 'WLY01', '2024-03-10', 7, '13:26:00'),
(9, 'Asar (03-10)', 1, 101, 'WLY01', '2024-03-10', 8, '16:37:00'),
(10, 'Maghrib (03-10)', 1, 101, 'WLY01', '2024-03-10', 9, '19:27:00'),
(11, 'Isyak (03-10)', 1, 101, 'WLY01', '2024-03-10', 10, '20:36:00'),
(12, 'Subuh (03-11)', 1, 101, 'WLY01', '2024-03-11', 11, '06:14:00'),
(13, 'Zohor (03-11)', 1, 101, 'WLY01', '2024-03-11', 12, '13:26:00'),
(14, 'Asar (03-11)', 1, 101, 'WLY01', '2024-03-11', 13, '16:36:00'),
(15, 'Maghrib (03-11)', 1, 101, 'WLY01', '2024-03-11', 14, '19:27:00'),
(16, 'Isyak (03-11)', 1, 101, 'WLY01', '2024-03-11', 15, '20:36:00'),
(17, 'Subuh (03-12)', 1, 101, 'WLY01', '2024-03-12', 16, '06:13:00'),
(18, 'Zohor (03-12)', 1, 101, 'WLY01', '2024-03-12', 17, '13:26:00'),
(19, 'Asar (03-12)', 1, 101, 'WLY01', '2024-03-12', 18, '16:36:00'),
(20, 'Maghrib (03-12)', 1, 101, 'WLY01', '2024-03-12', 19, '19:27:00'),
(21, 'Isyak (03-12)', 1, 101, 'WLY01', '2024-03-12', 20, '20:36:00'),
(22, 'Subuh (03-13)', 1, 101, 'WLY01', '2024-03-13', 21, '06:13:00'),
(23, 'Zohor (03-13)', 1, 101, 'WLY01', '2024-03-13', 22, '13:25:00'),
(24, 'Asar (03-13)', 1, 101, 'WLY01', '2024-03-13', 23, '16:35:00'),
(25, 'Maghrib (03-13)', 1, 101, 'WLY01', '2024-03-13', 24, '19:27:00'),
(26, 'Isyak (03-13)', 1, 101, 'WLY01', '2024-03-13', 25, '20:36:00'),
(27, 'Subuh (03-14)', 1, 101, 'WLY01', '2024-03-14', 26, '06:13:00'),
(28, 'Zohor (03-14)', 1, 101, 'WLY01', '2024-03-14', 27, '13:25:00'),
(29, 'Asar (03-14)', 1, 101, 'WLY01', '2024-03-14', 28, '16:34:00'),
(30, 'Maghrib (03-14)', 1, 101, 'WLY01', '2024-03-14', 29, '19:27:00'),
(31, 'Isyak (03-14)', 1, 101, 'WLY01', '2024-03-14', 30, '20:36:00'),
(32, 'Subuh (03-15)', 1, 101, 'WLY01', '2024-03-15', 31, '06:12:00'),
(33, 'Zohor (03-15)', 1, 101, 'WLY01', '2024-03-15', 32, '13:25:00'),
(34, 'Asar (03-15)', 1, 101, 'WLY01', '2024-03-15', 33, '16:33:00'),
(35, 'Maghrib (03-15)', 1, 101, 'WLY01', '2024-03-15', 34, '19:27:00'),
(36, 'Isyak (03-15)', 1, 101, 'WLY01', '2024-03-15', 35, '20:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `subs_id` int NOT NULL,
  `subs_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`subs_id`, `subs_name`) VALUES
(1, 'The Café'),
(2, 'My Restaurant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boxes`
--
ALTER TABLE `boxes`
  ADD PRIMARY KEY (`box_id`),
  ADD KEY `subs_id` (`subs_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `subs_id` (`subs_id`),
  ADD KEY `box_id` (`box_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`subs_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boxes`
--
ALTER TABLE `boxes`
  MODIFY `box_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `subs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boxes`
--
ALTER TABLE `boxes`
  ADD CONSTRAINT `boxes_ibfk_1` FOREIGN KEY (`subs_id`) REFERENCES `subscribers` (`subs_id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`subs_id`) REFERENCES `subscribers` (`subs_id`),
  ADD CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`box_id`) REFERENCES `boxes` (`box_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
