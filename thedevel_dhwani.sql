-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2020 at 11:10 AM
-- Server version: 10.3.24-MariaDB-cll-lve
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
-- Database: `thedevel_dhwani`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_child`
--

CREATE TABLE `tbl_child` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update-date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_child`
--

INSERT INTO `tbl_child` (`id`, `name`, `gender`, `dob`, `father_name`, `mother_name`, `state`, `district`, `image`, `upload_date`, `update-date`) VALUES
(1, 'testing', 'f', '2020-11-01', 'father name', 'mother name', 1, 1, 'da2d1501c8c553064fdf9276b1fee746.jpg', '2020-11-04 18:52:04', '0000-00-00 00:00:00'),
(2, 'dsfdf', 'm', '1992-06-15', 'Peter Solanki', 'Peter', 2, 1, '', '2020-11-05 04:31:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`id`, `state_id`, `name`, `upload_date`, `update_date`) VALUES
(1, 1, 'uttam nagar', '2020-11-04 18:50:17', '0000-00-00 00:00:00'),
(2, 2, 'haldwani', '2020-11-04 18:50:31', '0000-00-00 00:00:00'),
(3, 2, 'Vaishalii', '2020-11-05 04:32:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `id` int(11) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0->active,1->deactive',
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `state`, `status`, `upload_date`, `update_date`) VALUES
(1, 'delhi', 0, '2020-11-04 17:28:47', '0000-00-00 00:00:00'),
(5, 'mumbai', 0, '2020-11-05 04:29:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT '1',
  `last_login` varchar(225) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `email`, `password`, `token`, `is_active`, `last_login`, `create_date`) VALUES
(2, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEwMTEiLCJ1bmlxdWVfdXNlcl9pZCI6IjEwMTEiLCJuYW1lIjoiQmhhZ3llc2ggQ29vcmRpbmF0b3IiLCJ1c2VybmFtZSI6IjE0MTIiLCJtb2JpbGUiOiI4NDg4MDc0NjEyIiwibGV2ZWxfaWQiOiI1IiwicGFzc3dvcmRfcmVzZXRfdG9r', '1', '2020-10-30 03:10:35', '2020-10-29 15:45:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_child`
--
ALTER TABLE `tbl_child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_child`
--
ALTER TABLE `tbl_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
