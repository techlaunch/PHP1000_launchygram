-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2019 at 04:15 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `launchygram`
--

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `likes` int(5) NOT NULL DEFAULT '0',
  `dislikes` int(5) NOT NULL DEFAULT '0',
  `picture` varchar(36) NOT NULL,
  `userid` int(11) NOT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `title`, `likes`, `dislikes`, `picture`, `userid`, `inserted`) VALUES
(1, 'This is a magnificent wale', 3, 2, 'wale.jpg', 1, '2019-05-14 01:44:25'),
(2, 'Some quick example text to bui', 0, 0, 'antolipe.jpg', 2, '2019-05-14 01:44:25'),
(3, 'Some quick example text to bui', 12, 1, 'elephant.jpg', 3, '2019-05-14 01:44:25'),
(4, 'Some quick example text to bui', 1, 2, 'lemur.jpg', 4, '2019-05-14 01:44:25'),
(5, 'Some quick example text to bui', 0, 0, 'seal.jpg', 1, '2019-05-14 01:44:25'),
(6, 'Some quick example text to bui', 0, 0, 'squarrel.jpg', 2, '2019-05-14 01:44:25'),
(7, 'Our lovely grad students from ', 0, 0, 'ef15d9fb33103616d29c1648de6ec3fd.jpg', 1, '2019-05-14 02:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'salvi', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'dj', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'lisset', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'brian', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
