-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 18, 2020 at 02:18 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_finder`
--
CREATE DATABASE IF NOT EXISTS `school_finder` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school_finder`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Name` varchar(20) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `School_id` varchar(20) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `curdatedemo`
--

DROP TABLE IF EXISTS `curdatedemo`;
CREATE TABLE IF NOT EXISTS `curdatedemo` (
  `ArrivalDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curdatedemo`
--

INSERT INTO `curdatedemo` (`ArrivalDate`) VALUES
('2020-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `Role` varchar(20) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pics_of_school`
--

DROP TABLE IF EXISTS `pics_of_school`;
CREATE TABLE IF NOT EXISTS `pics_of_school` (
  `School_id` varchar(20) NOT NULL,
  `picture_path` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `School_id` varchar(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `Review_content` varchar(400) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Review_date` date NOT NULL,
  `contact` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `school_id` int(100) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(50) DEFAULT NULL,
  `affilliation_number` varchar(50) DEFAULT NULL,
  `board` varchar(30) DEFAULT NULL,
  `medium` varchar(30) DEFAULT NULL,
  `upto_class` int(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `principal_name` varchar(30) DEFAULT NULL,
  `principal_phone` varchar(15) DEFAULT NULL,
  `principal_msg` varchar(200) DEFAULT NULL,
  `principal_email` varchar(20) DEFAULT NULL,
  `director_name` varchar(30) DEFAULT NULL,
  `director_phone` varchar(15) DEFAULT NULL,
  `director_msg` varchar(200) DEFAULT NULL,
  `director_email` varchar(30) DEFAULT NULL,
  `website` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`school_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_with_streams`
--

DROP TABLE IF EXISTS `school_with_streams`;
CREATE TABLE IF NOT EXISTS `school_with_streams` (
  `school_id` int(100) NOT NULL,
  `stream_id` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

DROP TABLE IF EXISTS `streams`;
CREATE TABLE IF NOT EXISTS `streams` (
  `Stream_id` varchar(10) NOT NULL,
  `Stream_name` varchar(30) NOT NULL,
  PRIMARY KEY (`Stream_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`Stream_id`, `Stream_name`) VALUES
('strm1', 'arts+hindi'),
('strm2', 'arts+information practices'),
('strm3', 'arts+physical education'),
('strm4', 'commerce+mathematics'),
('strm5', 'commerce+information practices'),
('strm6', 'commerce+hindi'),
('strm7', 'commerce+physical education'),
('strm8', 'PCM+hindi'),
('strm9', 'PCM+information practices'),
('strm10', 'PCM+physical education'),
('strm11', 'PCB+hindi'),
('strm12', 'PCB+mathematics'),
('strm13', 'PCB+information practices'),
('strm14', 'PCB+physical education');

-- --------------------------------------------------------

--
-- Table structure for table `stream_with_subject`
--

DROP TABLE IF EXISTS `stream_with_subject`;
CREATE TABLE IF NOT EXISTS `stream_with_subject` (
  `Stream_id` varchar(10) NOT NULL,
  `subject_id` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stream_with_subject`
--

INSERT INTO `stream_with_subject` (`Stream_id`, `subject_id`) VALUES
('strm1', 'sub7'),
('strm1', 'sub8'),
('strm1', 'sub9'),
('strm1', 'sub10'),
('strm1', 'sub11'),
('strm2', 'sub7'),
('strm2', 'sub8'),
('strm2', 'sub9'),
('strm2', 'sub10'),
('strm2', 'sub12'),
('strm3', 'sub7'),
('strm3', 'sub8'),
('strm3', 'sub9'),
('strm3', 'sub10'),
('strm3', 'sub13'),
('strm4', 'sub1'),
('strm4', 'sub5'),
('strm4', 'sub6'),
('strm4', 'sub7'),
('strm4', 'sub10'),
('strm5', 'sub5'),
('strm5', 'sub6'),
('strm5', 'sub7'),
('strm5', 'sub10'),
('strm5', 'sub12'),
('strm6', 'sub5'),
('strm6', 'sub6'),
('strm6', 'sub7'),
('strm6', 'sub10'),
('strm6', 'sub11'),
('strm7', 'sub5'),
('strm7', 'sub6'),
('strm7', 'sub7'),
('strm7', 'sub10'),
('strm7', 'sub13'),
('strm8', 'sub1'),
('strm8', 'sub3'),
('strm8', 'sub4'),
('strm8', 'sub10'),
('strm8', 'sub11'),
('strm9', 'sub1'),
('strm9', 'sub3'),
('strm9', 'sub4'),
('strm9', 'sub10'),
('strm9', 'sub12'),
('strm10', 'sub1'),
('strm10', 'sub3'),
('strm10', 'sub4'),
('strm10', 'sub10'),
('strm10', 'sub13'),
('strm11', 'sub2'),
('strm11', 'sub3'),
('strm11', 'sub4'),
('strm11', 'sub10'),
('strm11', 'sub11'),
('strm12', 'sub1'),
('strm12', 'sub2'),
('strm12', 'sub3'),
('strm12', 'sub4'),
('strm12', 'sub10'),
('strm13', 'sub2'),
('strm13', 'sub3'),
('strm13', 'sub4'),
('strm13', 'sub10'),
('strm13', 'sub12'),
('strm14', 'sub2'),
('strm14', 'sub3'),
('strm14', 'sub4'),
('strm14', 'sub10'),
('strm14', 'sub13');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `Subject_id` varchar(20) NOT NULL,
  `Subject_name` varchar(30) NOT NULL,
  PRIMARY KEY (`Subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Subject_id`, `Subject_name`) VALUES
('sub1', 'mathematics'),
('sub2', 'biology'),
('sub3', 'physics'),
('sub4', 'chemistry'),
('sub5', 'accounts'),
('sub6', 'bussiness'),
('sub7', 'economics'),
('sub8', 'history'),
('sub9', 'geography'),
('sub10', 'english'),
('sub11', 'hindi'),
('sub12', 'information practices'),
('sub13', 'physical education');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Name` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
