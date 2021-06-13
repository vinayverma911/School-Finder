-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 11, 2020 at 01:27 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

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
  `school_id` int(11) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`school_id`, `Phone`) VALUES
(52, '07312349021'),
(53, '7773001640');

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
  `school_id` int(11) NOT NULL,
  `picture_path` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pics_of_school`
--

INSERT INTO `pics_of_school` (`school_id`, `picture_path`) VALUES
(52, '521.jpg'),
(52, '522.jpg'),
(52, '523.jpg'),
(52, '524.jpg'),
(52, '525.jpg'),
(52, '526.jpg'),
(52, '527.jpg'),
(53, '531.JPG'),
(53, '532.jpg'),
(53, '533.jpg'),
(53, '534.jpg'),
(53, '535.jpg'),
(53, '536.jpg'),
(53, '537.jpg'),
(53, '538.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `School_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `Review_content` varchar(400) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Review_date` date NOT NULL,
  `contact` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `School_id`, `rating`, `Review_content`, `Name`, `Review_date`, `contact`) VALUES
(15, 52, 4, 'Best school in indore.', 'kuldeep salve', '2020-09-19', '8959359132'),
(16, 52, 5, 'Finding best school for your child ? Go and get the admission in this school.', 'Prateek chouhan', '2020-09-19', '7806056241'),
(17, 52, 3, 'Great facilities are available at this school.', 'Manoj Borse', '2020-09-21', '7804063651');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `school_id` int(100) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(2000) DEFAULT NULL,
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
  `principal_msg` varchar(2000) DEFAULT NULL,
  `principal_email` varchar(50) DEFAULT NULL,
  `director_name` varchar(30) DEFAULT NULL,
  `director_phone` varchar(15) DEFAULT NULL,
  `director_msg` varchar(2000) DEFAULT NULL,
  `director_email` varchar(50) DEFAULT NULL,
  `website` varchar(1000) DEFAULT NULL,
  `isFeatured` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`school_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `school_name`, `affilliation_number`, `board`, `medium`, `upto_class`, `email`, `locality`, `area`, `city`, `state`, `pin_code`, `year`, `type`, `principal_name`, `principal_phone`, `principal_msg`, `principal_email`, `director_name`, `director_phone`, `director_msg`, `director_email`, `website`, `isFeatured`) VALUES
(52, 'Shri Balvinay Mandir School, Chhatribagh', '1030640', 'cbse board', 'English', 12, 'shreebalvinaymandir@gmail.com', '30', 'Chattribagh', 'Indore', 'Madhya pradesh', 452002, 1954, 'co-ed', 'Mrs. Shveta Garg ', '07312349021', 'As concerned parents, you always want your child to get an education that lets him or her do better in life.', 'principal@gmail.com', 'Shri Hanskumar jain', '07312342688', 'The school management committee consist of a team of dedicated , self motivated ,who are deeply committed to their jobs to lead the school in the path of progress .', 'director@gmail.com', 'http://sbvmchhatribagh.com', 1),
(53, 'M.G.M.CO-ED.HR.SEC. SCHOOL', '1030449', 'cbse board', 'English', 12, 'mgmschoolbhopal@yahoo.com', 'Amrawadkhurd', 'B.D.A. Road, barkhera', 'Bhopal', 'Madhya pradesh', 462002, 1992, 'co-ed', 'FR. XAVIER T. DANIEL', '7773001639', '\r\nEducation is the most important and everlasting wealth, which parents long to inculcate on their children. No man can live as an island in his journey. Education gives a vital part for him/her to be social, economical & spiritual. As a result he/she comes out into the world and faces the challenges and the difficulties. A child is a turning point when his/her parents start looking for a better school that influences the child in his personal & intellectual growth. MGM is a place which understands the children from inside & prepares them as the world wants them to be.', 'principalmgm@gmail.com', 'FR. LIJO JOHN', '07552491884', 'INSTRUCTION ENDS IN THE SCHOOL ROOM, BUT EDUCATION ENDS ONLY WITH LIFE, A CHILD TO THE UNIVERSE TO BE EDUCATED.\r\nEducation is a service to the development of human person and the society at large. It has mainly three parts: information, formation and transformation. So education is a synonym for development for formation of the society. The value based teaching and learning has become an educational challenge in the competitive age. Realizing these facts, the Malankara Orthodox Syrian Church Management established its institutions. The School is named Mar Gregorios who is the first Saint canonized by the Orthodox Syrian Church of India. ', 'directormgm@gmail.com', 'http://mgmschoolbhopal.com/index.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `school_with_streams`
--

DROP TABLE IF EXISTS `school_with_streams`;
CREATE TABLE IF NOT EXISTS `school_with_streams` (
  `school_id` int(100) NOT NULL,
  `stream_id` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_with_streams`
--

INSERT INTO `school_with_streams` (`school_id`, `stream_id`) VALUES
(52, 'strm1'),
(52, 'strm3'),
(52, 'strm4'),
(52, 'strm6'),
(52, 'strm9'),
(52, 'strm10'),
(52, 'strm11'),
(52, 'strm12'),
(52, 'strm14'),
(53, 'strm1'),
(53, 'strm2'),
(53, 'strm3'),
(53, 'strm4'),
(53, 'strm5'),
(53, 'strm6'),
(53, 'strm7'),
(53, 'strm8'),
(53, 'strm9'),
(53, 'strm10'),
(53, 'strm11'),
(53, 'strm12'),
(53, 'strm13'),
(53, 'strm14');

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
