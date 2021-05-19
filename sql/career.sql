-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 11:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `career`
--

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(30) NOT NULL,
  `f1` varchar(30) NOT NULL,
  `f2` varchar(30) NOT NULL,
  `f3` varchar(30) NOT NULL,
  `f4` varchar(30) NOT NULL,
  `f5` varchar(30) NOT NULL,
  `f6` varchar(30) NOT NULL,
  `f7` varchar(30) NOT NULL,
  `f8` varchar(30) NOT NULL,
  `f9` varchar(30) NOT NULL,
  `f10` varchar(30) NOT NULL,
  `f11` varchar(30) NOT NULL,
  `f12` varchar(30) NOT NULL,
  `f13` varchar(30) NOT NULL,
  `f14` varchar(30) NOT NULL,
  `f15` varchar(30) NOT NULL,
  `result` text NOT NULL,
  `advice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`id`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `f8`, `f9`, `f10`, `f11`, `f12`, `f13`, `f14`, `f15`, `result`, `advice`, `date`) VALUES
(1, '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Asthma', 'Please take Asthma tr 1000mg and see a pharmacist', '2021-04-20 13:43:38'),
(2, '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Pneumonia', 'try and have plenty of rest and a regular intake of fluids', '2021-04-20 14:02:52'),
(3, '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'injured ribs', 'seek medical attention immediately if you feel pressure, fullness or a squeezing pain in the center of your chest', '2021-04-20 14:09:32'),
(4, '1', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Emphysema', 'wear a mask to protect your lungs if you work with chemical fumes or dust', '2021-04-20 14:13:13'),
(5, '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Peptic Ulcer', 'use caution with pain relievers', '2021-04-20 14:17:07'),
(6, '0', '1', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', 'Muscle Strain', 'see a Doctor if the pain does not subside after a week', '2021-04-20 14:24:32'),
(7, '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cystic Fibrosis', 'seek immediate medical care if you are coughing up blood, have chest pain or difficulty breathing, or have severe stomach pain and distention.', '2021-04-20 14:29:44'),
(10, 'GROUP GROWTH', 'GIVING RESULT', 'FACE WHAT&#039;S AHEAD', 'OBSERVING', 'YES', 'MAKING A DIFFERENCE', 'PRESSURE', 'WATCH MOVIES', 'RESEARCH POTENTIAL SOLUTIONS', 'ART', 'YES', 'AVERAGE', 'MSC', 'V.GOOD', 'MARRIED', 'KUL', 'HOT', '2021-05-05 08:37:58'),
(11, 'PERSONAL GROWTH', 'GIVING RESULT', 'FACE WHAT&#039;S AHEAD', 'ASKING QUESTIONS', 'YES', 'MAKING A DIFFERENCE', 'PEOPLE', 'HANGOUT WITH FRIENDS', 'RESEARCH POTENTIAL SOLUTIONS', 'ART', 'NO', 'AVERAGE', 'BSC', 'V.GOOD', 'SINGLE', 'ENGINEERING', 'YOU CAN ALSO DO WELL IN ICT ALSO', '2021-05-06 09:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `role`, `date_created`) VALUES
(1, 'Oche', 'a@a.com', '123456', 1, '2021-04-19 07:17:32'),
(2, 'Bola', 'b@b.com', '123456', 3, '2021-04-19 14:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `career_id` int(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `user_id`, `career_id`, `date`) VALUES
(1, 1, 1, '2021-04-20 14:44:52'),
(2, 1, 1, '2021-04-20 15:30:59'),
(3, 1, 7, '2021-04-20 15:31:36'),
(4, 1, 1, '2021-04-21 11:44:31'),
(5, 1, 10, '2021-05-05 10:17:22'),
(6, 1, 11, '2021-05-06 10:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`) VALUES
(1, 'Abia'),
(2, 'Adamawa'),
(3, 'Akwa Ibom '),
(4, 'Anambra '),
(5, 'Bauchi'),
(6, 'Bayelsa '),
(7, 'Benue '),
(8, 'Borno '),
(9, 'Cross River '),
(10, 'Delta '),
(11, 'Ebonyi '),
(12, 'Edo '),
(13, 'Ekiti '),
(14, 'Enugu '),
(15, 'FCT'),
(16, 'Gombe '),
(17, 'Imo '),
(18, 'Jigawa '),
(19, 'Kaduna '),
(20, 'Kano '),
(21, 'Katsina '),
(22, 'Kebbi '),
(23, 'Kogi '),
(24, 'Kwara '),
(25, 'Lagos '),
(26, 'Nasarawa '),
(27, 'Niger'),
(28, 'Ogun'),
(29, 'Ondo'),
(30, 'Osun'),
(31, 'Oyo'),
(32, 'Plateau '),
(33, 'Rivers '),
(34, 'Sokoto '),
(35, 'Taraba '),
(36, 'Yobe '),
(37, 'Zamfara ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`, `gender`, `date`) VALUES
(1, 'Bola', 'b@b.com', '08136473738', '61 boniface street', '123456', 'FEMALE', '2021-04-19 14:16:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
