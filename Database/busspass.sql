-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 04:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busspass`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `date_created`) VALUES
(1, 'Vibinraj', 'vibinrajesh@gmail.com', 'vibinraj', '2021-09-02 19:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `passno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `idtype` varchar(255) NOT NULL,
  `idno` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `period` varchar(255) NOT NULL,
  `passcreation` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `passno`, `name`, `email`, `phoneno`, `idtype`, `idno`, `source`, `destination`, `period`, `passcreation`) VALUES
(1, '896046330', 'vibinraj', 'vibinraj@gmail.com', '9653303855', 'Adhaar Card', '619488581380', 'Kopar Khairne', 'New Panvel', '3month', '2021-09-14 12:13:50'),
(2, '498939132', 'parikshit', 'parikshit@gmail.com', '985671423', 'Adhaar Card', '5751876218', 'Kopar Khairne', 'Airoli', '3month', '2021-09-14 14:49:28'),
(3, '442956516', 'vibinraj', 'vibinraj@gmail.com', '9653303855', 'Adhaar Card', '619488581380', 'Kopar Khairne', 'New Panvel', '3month', '2021-09-16 08:03:20'),
(4, '835868214', 'vibinraj', 'vibinraj@gmail.com', '9653303855', 'Adhaar Card', '619488581380', 'Juhu Nagar', 'New Panvel', '3month', '2021-09-16 08:04:30'),
(5, '103949931', 'vibinraj', 'vibinraj@gmail.com', '9653303855', 'Adhaar Card', '619488581380', 'Kopar Khairne', 'New Panvel', '3month', '2021-09-16 08:05:33'),
(6, '941359621', 'Zuber', 'zuber@gmail.com', '985671423', 'Adhaar Card', '5751876218', 'Kopar Khairne', 'New Panvel', '3month', '2021-09-16 09:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Vibinraj', 'vibinraj@gmail.com', 'vibinraj'),
(2, 'admin', 'admin@gmail.com', 'admin@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
