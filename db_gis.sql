-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2017 at 03:13 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gis`
--
CREATE DATABASE IF NOT EXISTS `db_gis` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_gis`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

DROP TABLE IF EXISTS `tbl_location`;
CREATE TABLE IF NOT EXISTS `tbl_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lng` varchar(100) DEFAULT NULL,
  `location_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `location_name`, `lat`, `lng`, `location_type`) VALUES
(1, 'โรงแรมมีสุข', '15.175530157957471', '103.6834716796875', 1),
(2, 'โรงแรมอยู่สบาย', '15.090687418628141', '103.9141845703125', 1),
(3, 'ร้านอาหารกินอิ่ม', '15.08803553604297', '103.57086181640625', 2),
(4, 'โรงแรมสวัสดี', '14.450638918075438', '103.9581298828125', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location_type`
--

DROP TABLE IF EXISTS `tbl_location_type`;
CREATE TABLE IF NOT EXISTS `tbl_location_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_type_th` varchar(100) NOT NULL,
  `location_type_en` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_location_type`
--

INSERT INTO `tbl_location_type` (`id`, `location_type_th`, `location_type_en`) VALUES
(1, 'โรงแรม', 'Hotel'),
(2, 'ร้านอาหาร', 'Food');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
