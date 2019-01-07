-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 29, 2016 at 06:08 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `examtimetable`
--
CREATE DATABASE `examtimetable` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `examtimetable`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `size` int(5) NOT NULL,
  `unit` int(1) NOT NULL,
  `department` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL,
  `tittle` varchar(300) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `code`, `size`, `unit`, `department`, `level`, `tittle`, `status`) VALUES
(1, 'com 111', 100, 2, 'computer science', 'ND 1', 'intro to  fotran', 0),
(2, 'com 112', 100, 3, 'computer science', 'ND 1', 'database', 0),
(3, 'com132', 100, 3, 'SLT', 'ND 1', 'intro web', 0),
(4, 'com 133', 110, 3, 'computer science', 'ND 1', 'file management', 0),
(5, 'sta 111', 100, 4, 'computer science', 'ND 1', 'intro to stat', 0),
(6, 'sta 122', 100, 3, 'computer science', 'ND 1', 'algebra', 0),
(7, 'com 221', 80, 3, 'computer science', 'ND 2', 'java', 0),
(8, 'com 241', 100, 3, 'computer science', 'ND 2', 'intro to networking', 0),
(9, 'com 225', 200, 3, 'computer science', 'ND 2', 'system repair', 0),
(10, 'mth 212', 200, 3, 'computer science', 'ND 2', 'calculua', 0),
(11, 'sta 231', 200, 3, 'computer science', 'ND 2', 'logic and linear algebral', 0),
(12, 'com 322', 120, 3, 'computer science', 'HND 1', 'c#', 0),
(13, 'STA 324', 120, 3, 'computer science', 'HND 1', 'operation research1', 0),
(14, 'com346', 120, 3, 'computer science', 'HND 1', 'system programing', 0),
(15, 'com 352', 120, 2, 'computer science', 'HND 1', 'pacal language', 0),
(16, 'com 344', 120, 3, 'computer science', 'HND 1', 'database 2', 0),
(17, 'slt 114', 150, 3, 'SLT', 'ND 1', 'intro to biology', 0),
(18, 'slt 121', 150, 3, 'SLT', 'ND 1', 'intro chemistry', 0),
(19, 'slt 113', 150, 2, 'SLT', 'ND 1', 'intro to physics', 0),
(20, 'slt 133', 150, 4, 'SLT', 'ND 1', 'intro to act', 0),
(21, 'slt 142', 150, 3, 'SLT', 'ND 1', 'intro to clinic', 0),
(22, 'slt 212', 150, 2, 'SLT', 'ND 2', 'pysics', 0),
(23, 'slt 211', 150, 3, 'SLT', 'ND 2', 'chemistry', 0),
(24, 'com222', 150, 2, 'SLT', 'ND 2', 'biology', 0),
(25, 'slt 242', 150, 3, 'SLT', 'ND 2', 'intro to stat', 0),
(26, 'slt 246', 150, 3, 'SLT', 'ND 2', 'intro to ', 0),
(27, 'slt 311', 120, 3, 'SLT', 'HND 1', 'geography', 0),
(28, 'slt 332', 120, 3, 'SLT', 'HND 1', 'hospital care', 0),
(29, 'slt 342', 120, 2, 'SLT', 'HND 1', 'totla clinic', 0),
(30, 'slt 333', 120, 2, 'SLT', 'HND 1', 'pure science', 0),
(31, 'slt 342', 120, 3, 'SLT', 'HND 1', 'intro to database', 0),
(32, 'slt 411', 100, 3, 'SLT', 'HND 2', 'usefulness of slt', 0),
(33, 'slt 421', 100, 3, 'SLT', 'HND 2', 'atomic theory', 0),
(34, 'slt 4432', 100, 3, 'SLT', 'HND 2', 'anatomy', 0),
(35, 'slt 442', 100, 2, 'SLT', 'HND 2', 'genotonmy', 0),
(36, 'slt 455', 100, 2, 'SLT', 'HND 2', 'dygbokomy', 0),
(37, 'pham 111', 80, 2, 'pharmtech', 'ND 1', 'intro to medicine', 0),
(38, 'pham 112', 80, 2, 'pharmtech', 'ND 1', 'intro to drug', 0),
(39, 'pham 122', 80, 2, 'pharmtech', 'ND 1', 'intro to computer', 0),
(40, 'pham 132', 80, 3, 'pharmtech', 'ND 1', 'intro to chemistryr', 0),
(41, 'pham 142', 80, 3, 'pharmtech', 'ND 1', 'intro to biology', 0),
(42, 'pham 211', 90, 3, 'pharmtech', 'ND 2', ' biology', 0),
(43, 'pham 214', 90, 2, 'pharmtech', 'ND 2', 'main chemistry', 0),
(44, 'pham 222', 90, 2, 'pharmtech', 'ND 2', 'general medicine', 0),
(45, 'pham 236', 90, 2, 'pharmtech', 'ND 2', 'sociology', 0),
(46, 'pham 241', 90, 3, 'pharmtech', 'ND 2', 'effective drug', 0),
(47, 'pham 311', 70, 3, 'pharmtech', 'ND 2', 'genera antony', 0),
(48, 'pham 311', 70, 3, 'pharmtech', 'HND 1', 'genera antony', 0),
(49, 'pham 332', 70, 3, 'pharmtech', 'HND 1', 'iQ', 0),
(50, 'pham 333', 70, 3, 'pharmtech', 'HND 1', 'logic math', 0),
(51, 'pham 342', 70, 3, 'pharmtech', 'HND 1', 'logic and linear algebral', 0),
(52, 'pham 318', 70, 2, 'pharmtech', 'HND 1', 'science methodology', 0),
(53, 'pham 411', 60, 23, 'pharmtech', 'HND 2', 'science methodology', 0),
(54, 'pham 412', 60, 3, 'pharmtech', 'HND 2', 'science ', 0),
(55, 'pham 414', 60, 3, 'pharmtech', 'HND 2', 'logical science ', 0),
(56, 'pham 418', 60, 3, 'pharmtech', 'HND 2', 'business science ', 0),
(57, 'pham 436', 60, 4, 'pharmtech', 'HND 2', 'main project', 0),
(58, 'mst 121', 110, 3, 'math and stat', 'ND 1', 'simple math', 0),
(59, 'mst 111', 110, 3, 'math and stat', 'ND 1', 'intro to stat', 0),
(60, 'mst 114', 110, 3, 'math and stat', 'ND 1', 'intro to logic', 0),
(61, 'mst 134', 110, 2, 'math and stat', 'ND 1', 'intro to business math', 0),
(62, 'mst 141', 110, 3, 'math and stat', 'ND 1', 'intro to algebral', 0),
(63, 'mst 211', 100, 3, 'math and stat', 'ND 2', 'general algebral', 0),
(64, 'mst 213', 100, 3, 'math and stat', 'ND 2', 'general study', 0),
(65, 'mst 212', 100, 3, 'math and stat', 'ND 2', 'intro to database', 0),
(66, 'mst 244', 100, 2, 'math and stat', 'ND 2', 'intro to programing', 0),
(67, 'mst 226', 100, 3, 'math and stat', 'ND 2', 'decriptive stat', 0),
(68, 'mst 311', 95, 3, 'math and stat', 'HND 1', 'opration research', 0),
(69, 'mst 321', 95, 3, 'math and stat', 'HND 1', 'simple algorithm', 0),
(70, 'mst 332', 95, 3, 'math and stat', 'HND 1', 'geometric', 0),
(71, 'mst 348', 95, 3, 'math and stat', 'HND 1', 'main calculus', 0),
(72, 'mst 326', 95, 2, 'math and stat', 'HND 1', 'system math', 0),
(73, 'mst 412', 95, 2, 'math and stat', 'HND 1', 'system achitect', 0),
(74, 'mst 412', 95, 2, 'math and stat', 'HND 2', 'system achitect', 0),
(75, 'mst 414', 95, 3, 'math and stat', 'HND 2', 'broadcasting math', 0),
(76, 'mst 431', 95, 3, 'math and stat', 'HND 2', 'algebra4', 0),
(77, 'mst 444', 95, 3, 'math and stat', 'HND 2', 'operation research4', 0),
(78, 'mst 462', 95, 3, 'math and stat', 'HND 2', 'number base 4', 0),
(79, 'food 111', 75, 3, 'foodtech', 'ND 1', 'intro to food tech', 0),
(80, 'food 121', 75, 3, 'foodtech', 'ND 1', 'intro to food processing', 0),
(81, 'food 132', 75, 2, 'foodtech', 'ND 1', 'intro to presavation', 0),
(82, 'food 212', 60, 3, 'foodtech', 'ND 2', 'presavation tech', 0),
(83, 'food 222', 60, 3, 'foodtech', 'ND 2', ' chemical reaction', 0),
(84, 'com 411', 130, 3, 'computer science', 'HND 2', 'digital broadcasting', 0),
(85, 'com 433', 130, 3, 'computer science', 'HND 2', 'broadcasting meadia', 0),
(86, 'com 462', 130, 3, 'computer science', 'HND 2', 'programing language using pyton', 0),
(87, 'com 428', 130, 2, 'computer science', 'HND 2', 'web development 4', 0),
(88, 'com 429', 130, 4, 'computer science', 'HND 2', 'project seminar', 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `code` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `code`, `status`) VALUES
(1, 'computer science', '1169', 0),
(2, 'SLT', '88', 0),
(3, 'pharmtech', '65', 0),
(4, 'foodtech', '67', 0),
(5, 'math and stat', '86', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE IF NOT EXISTS `hall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `size` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `name`, `size`, `description`, `status`) VALUES
(1, 'keshinton hall', 250, 'not big', 0),
(2, 'OGD hall', 1500, 'verry big', 0),
(3, 'babalakin hall', 600, 'maketing department', 0),
(4, 'ICT room 8', 100, 'computer science department', 0),
(5, '800 seater', 800, 'slt hall', 0),
(6, 'science xtention', 120, 'beside school office', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invigelator`
--

CREATE TABLE IF NOT EXISTS `invigelator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `invigelator`
--

INSERT INTO `invigelator` (`id`, `name`, `code`, `status`) VALUES
(1, 'mr.oladimeji', 'map/inv.001', 0),
(2, 'mr,orunsolu', 'map/inv.002', 0),
(3, 'mrsalaran', 'map/inv.003', 0),
(4, 'mrs olorode', 'map/inv.004', 0),
(5, 'BTA babalola', 'map/inv.005', 0),
(6, 'mr.fadeyi', 'map/inv.006', 0),
(7, 'mr.mabosanyinje', 'map/inv.007', 0),
(8, 'mr.kolabo', 'map/inv.008', 0),
(9, 'mrs.popoola', 'map/inv.009', 0),
(10, 'mr.ayanlowo', 'map/inv.0010', 0),
(11, 'mr.Ayeleso', 'map/inv.0011', 0),
(12, 'Mr.leke adebayo', 'map/inv.012', 0),
(13, 'mmr.kola abiola', 'map/inv.013', 0),
(14, 'mr.odiete joseph', 'map/inv.014', 0),
(15, 'mrs.lawal', 'map/inv.015', 0),
(16, 'mr.gbangboye', 'map/inv.016', 0),
(17, 'mr.micheal', 'map/inv.017', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lectural`
--

CREATE TABLE IF NOT EXISTS `lectural` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `code` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lectural`
--

INSERT INTO `lectural` (`id`, `name`, `code`, `department`, `status`) VALUES
(1, 'mr.oladimeji', 'lec/001', 'computer science', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lectural_course`
--

CREATE TABLE IF NOT EXISTS `lectural_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lectural` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `lectural_course`
--


-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE IF NOT EXISTS `period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_days` int(2) NOT NULL,
  `period` int(2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `period`
--

INSERT INTO `period` (`id`, `no_of_days`, `period`, `status`) VALUES
(1, 3, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE IF NOT EXISTS `time_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `t_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `name`, `t_date`, `status`) VALUES
(1, 'table test', '2016-06-25 00:30:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_table_data`
--

CREATE TABLE IF NOT EXISTS `time_table_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_table_id` int(11) NOT NULL,
  `period` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `data` text NOT NULL,
  `period_data` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `time_table_data`
--

INSERT INTO `time_table_data` (`id`, `time_table_id`, `period`, `day`, `data`, `period_data`, `status`) VALUES
(1, 1, 1, 1, '', '', 0),
(2, 1, 2, 1, 'mst 412: math and stat HND 1 \nslt 133: SLT ND 1 \n', 'Time Table\n DAY: 1PERIOD: 1\nmst 412: math and stat HND 1 95\n\nslt 133: SLT ND 1 150\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmr,orunsolu\nmst 412: math and stat HND 1   7.0\nslt 133: SLT ND 1   11.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nmr.kolabo\nmmr.kola abiola\nmr.gbangboye\nmrs.lawal\nmrs olorode\nmr.odiete joseph\nmst 412: math and stat HND 1   43.0\nslt 133: SLT ND 1   69.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nmr.ayanlowo\nmrs.popoola\nmst 412: math and stat HND 1   17.0\nslt 133: SLT ND 1   27.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmr.micheal\nmst 412: math and stat HND 1   2.0\nslt 133: SLT ND 1   4.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmr.fadeyi\nmr.mabosanyinje\nmr.oladimeji\nBTA babalola\nmrsalaran\nmst 412: math and stat HND 1   26.0\nslt 133: SLT ND 1   36.0\n', 0),
(3, 1, 3, 1, '', '', 0),
(4, 1, 4, 1, 'slt 142: SLT ND 1 \npham 236: pharmtech ND 2 \n', 'Time Table\n DAY: 1PERIOD: 3\nslt 142: SLT ND 1 150\n\npham 236: pharmtech ND 2 90\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmr.oladimeji\nslt 142: SLT ND 1   15.0\npham 236: pharmtech ND 2   9.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 9\nmrsalaran\nmmr.kola abiola\nmrs.lawal\nmrs.popoola\nmr.Ayeleso\nmr.odiete joseph\nmr.fadeyi\nBTA babalola\nmrs olorode\nslt 142: SLT ND 1   91.0\npham 236: pharmtech ND 2   55.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 3\nmr.ayanlowo\nmr.mabosanyinje\nmr,orunsolu\nslt 142: SLT ND 1   36.0\npham 236: pharmtech ND 2   22.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 2\nmr.micheal\nmr.kolabo\nslt 142: SLT ND 1   8.0\npham 236: pharmtech ND 2   3.0\n', 0),
(5, 1, 1, 2, '', '', 0),
(6, 1, 2, 2, '', '', 0),
(7, 1, 3, 2, 'com 428: computer science HND 2 \nmst 444: math and stat HND 2 \npham 436: pharmtech HND 2 \n', 'Time Table\n DAY: 2PERIOD: 2\ncom 428: computer science HND 2 130\n\nmst 444: math and stat HND 2 95\n\npham 436: pharmtech HND 2 60\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmr.fadeyi\ncom 428: computer science HND 2   10.0\nmst 444: math and stat HND 2   7.0\npham 436: pharmtech HND 2   4.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nmr,orunsolu\nmr.Ayeleso\nBTA babalola\nmrs.lawal\nmr.oladimeji\nmr.mabosanyinje\ncom 428: computer science HND 2   60.0\nmst 444: math and stat HND 2   43.0\npham 436: pharmtech HND 2   27.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nMr.leke adebayo\nmr.ayanlowo\ncom 428: computer science HND 2   24.0\nmst 444: math and stat HND 2   17.0\npham 436: pharmtech HND 2   11.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmr.kolabo\ncom 428: computer science HND 2   4.0\nmst 444: math and stat HND 2   2.0\npham 436: pharmtech HND 2   1.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmr.odiete joseph\nmmr.kola abiola\nmrs olorode\nmrs.popoola\nmr.gbangboye\ncom 428: computer science HND 2   32.0\nmst 444: math and stat HND 2   23.0\npham 436: pharmtech HND 2   14.0\n', 0),
(8, 1, 4, 2, '', '', 0),
(9, 1, 1, 3, '', '', 0),
(10, 1, 2, 3, 'pham 222: pharmtech ND 2 \nmst 211: math and stat ND 2 \nmth 212: computer science ND 2 \n', 'Time Table\n DAY: 3PERIOD: 1\npham 222: pharmtech ND 2 90\n\nmst 211: math and stat ND 2 100\n\nmth 212: computer science ND 2 200\n\n\nHALL NAME: science xtention 120\nno of invigilator 1\nmr.ayanlowo\npham 222: pharmtech ND 2   3.0\nmst 211: math and stat ND 2   3.0\nmth 212: computer science ND 2   7.0\n\nHALL NAME: 800 seater 800\nno of invigilator 3\nmr.micheal\nmrsalaran\nmrs.popoola\npham 222: pharmtech ND 2   23.0\nmst 211: math and stat ND 2   25.0\nmth 212: computer science ND 2   51.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmr.kolabo\npham 222: pharmtech ND 2   2.0\nmst 211: math and stat ND 2   3.0\nmth 212: computer science ND 2   6.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nmr,orunsolu\nBTA babalola\npham 222: pharmtech ND 2   17.0\nmst 211: math and stat ND 2   19.0\nmth 212: computer science ND 2   38.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 8\nMr.leke adebayo\nmr.gbangboye\nmr.odiete joseph\nmr.mabosanyinje\nmrs olorode\nmr.fadeyi\nmr.oladimeji\nmmr.kola abiola\npham 222: pharmtech ND 2   45.0\nmst 211: math and stat ND 2   48.0\nmth 212: computer science ND 2   96.0\n', 0),
(11, 1, 3, 3, 'com 344: computer science HND 1 \nfood 121: foodtech ND 1 \nmst 321: math and stat HND 1 \npham 318: pharmtech HND 1 \nslt 332: SLT HND 1 \n', 'Time Table\n DAY: 3PERIOD: 2\ncom 344: computer science HND 1 120\n\nfood 121: foodtech ND 1 75\n\nmst 321: math and stat HND 1 95\n\npham 318: pharmtech HND 1 70\n\nslt 332: SLT HND 1 120\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmrs.popoola\ncom 344: computer science HND 1   9.0\nfood 121: foodtech ND 1   5.0\nmst 321: math and stat HND 1   7.0\npham 318: pharmtech HND 1   5.0\nslt 332: SLT HND 1   9.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nmr.ayanlowo\nmr.Ayeleso\nmrs.lawal\nmr,orunsolu\nmmr.kola abiola\nmrs olorode\ncom 344: computer science HND 1   55.0\nfood 121: foodtech ND 1   34.0\nmst 321: math and stat HND 1   43.0\npham 318: pharmtech HND 1   32.0\nslt 332: SLT HND 1   55.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nmr.gbangboye\nmr.mabosanyinje\ncom 344: computer science HND 1   22.0\nfood 121: foodtech ND 1   13.0\nmst 321: math and stat HND 1   17.0\npham 318: pharmtech HND 1   12.0\nslt 332: SLT HND 1   22.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmr.fadeyi\ncom 344: computer science HND 1   3.0\nfood 121: foodtech ND 1   2.0\nmst 321: math and stat HND 1   2.0\npham 318: pharmtech HND 1   2.0\nslt 332: SLT HND 1   3.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmr.kolabo\nMr.leke adebayo\nmr.odiete joseph\nmr.micheal\nmrsalaran\ncom 344: computer science HND 1   31.0\nfood 121: foodtech ND 1   18.0\nmst 321: math and stat HND 1   23.0\npham 318: pharmtech HND 1   17.0\nslt 332: SLT HND 1   29.0\n', 0),
(12, 1, 4, 3, 'slt 114: SLT ND 1 \npham 311: pharmtech ND 2 \nmst 212: math and stat ND 2 \ncom 225: computer science ND 2 \n', 'Time Table\n DAY: 3PERIOD: 3\nslt 114: SLT ND 1 150\n\npham 311: pharmtech ND 2 70\n\nmst 212: math and stat ND 2 100\n\ncom 225: computer science ND 2 200\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nMr.leke adebayo\nslt 114: SLT ND 1   15.0\npham 311: pharmtech ND 2   7.0\nmst 212: math and stat ND 2   10.0\ncom 225: computer science ND 2   20.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 9\nmrs.lawal\nmr.mabosanyinje\nBTA babalola\nmmr.kola abiola\nmr.micheal\nmrs olorode\nmrs.popoola\nmrsalaran\nmr.Ayeleso\nslt 114: SLT ND 1   91.0\npham 311: pharmtech ND 2   42.0\nmst 212: math and stat ND 2   61.0\ncom 225: computer science ND 2   122.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 3\nmr.odiete joseph\nmr.ayanlowo\nmr,orunsolu\nslt 114: SLT ND 1   36.0\npham 311: pharmtech ND 2   17.0\nmst 212: math and stat ND 2   24.0\ncom 225: computer science ND 2   48.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 2\nmr.gbangboye\nmr.fadeyi\nslt 114: SLT ND 1   8.0\npham 311: pharmtech ND 2   2.0\nmst 212: math and stat ND 2   4.0\ncom 225: computer science ND 2   8.0\n', 0),
(13, 1, 1, 4, '', '', 0),
(14, 1, 2, 4, 'slt 411: SLT HND 2 \npham 122: pharmtech ND 1 \nmst 121: math and stat ND 1 \ncom 111: computer science ND 1 \n', 'Time Table\n DAY: 4PERIOD: 1\nslt 411: SLT HND 2 100\n\npham 122: pharmtech ND 1 80\n\nmst 121: math and stat ND 1 110\n\ncom 111: computer science ND 1 100\n\n\nHALL NAME: 800 seater 800\nno of invigilator 13\nBTA babalola\nmr.ayanlowo\nmmr.kola abiola\nmrs.popoola\nmr.mabosanyinje\nmrs olorode\nmr,orunsolu\nmr.gbangboye\nmr.oladimeji\nmr.Ayeleso\nmr.fadeyi\nmr.odiete joseph\nmrsalaran\nslt 411: SLT HND 2   86.0\npham 122: pharmtech ND 1   69.0\nmst 121: math and stat ND 1   95.0\ncom 111: computer science ND 1   86.0\n\nHALL NAME: science xtention 120\nno of invigilator 2\nmr.micheal\nmrs.lawal\nslt 411: SLT HND 2   14.0\npham 122: pharmtech ND 1   10.0\nmst 121: math and stat ND 1   14.0\ncom 111: computer science ND 1   13.0\n', 0),
(15, 1, 3, 4, 'com 429: computer science HND 2 \nfood 212: foodtech ND 2 \nmst 412: math and stat HND 2 \npham 418: pharmtech HND 2 \nslt 342: SLT HND 1 \n', 'Time Table\n DAY: 4PERIOD: 2\ncom 429: computer science HND 2 130\n\nfood 212: foodtech ND 2 60\n\nmst 412: math and stat HND 2 95\n\npham 418: pharmtech HND 2 60\n\nslt 342: SLT HND 1 120\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmr.kolabo\ncom 429: computer science HND 2   10.0\nfood 212: foodtech ND 2   4.0\nmst 412: math and stat HND 2   7.0\npham 418: pharmtech HND 2   4.0\nslt 342: SLT HND 1   9.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nmmr.kola abiola\nmrsalaran\nmr.ayanlowo\nmr.odiete joseph\nmr.mabosanyinje\nMr.leke adebayo\ncom 429: computer science HND 2   60.0\nfood 212: foodtech ND 2   27.0\nmst 412: math and stat HND 2   43.0\npham 418: pharmtech HND 2   27.0\nslt 342: SLT HND 1   55.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nmrs.lawal\nmr.gbangboye\ncom 429: computer science HND 2   24.0\nfood 212: foodtech ND 2   11.0\nmst 412: math and stat HND 2   17.0\npham 418: pharmtech HND 2   11.0\nslt 342: SLT HND 1   22.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmr.Ayeleso\ncom 429: computer science HND 2   4.0\nfood 212: foodtech ND 2   1.0\nmst 412: math and stat HND 2   2.0\npham 418: pharmtech HND 2   1.0\nslt 342: SLT HND 1   3.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmrs olorode\nmr,orunsolu\nmr.fadeyi\nmr.micheal\nBTA babalola\ncom 429: computer science HND 2   32.0\nfood 212: foodtech ND 2   14.0\nmst 412: math and stat HND 2   23.0\npham 418: pharmtech HND 2   14.0\nslt 342: SLT HND 1   29.0\n', 0),
(16, 1, 4, 4, '', '', 0),
(17, 1, 1, 5, '', '', 0),
(18, 1, 2, 5, 'STA 324: computer science HND 1 \nmst 326: math and stat HND 1 \npham 311: pharmtech HND 1 \ncom132: SLT ND 1 \n', 'Time Table\n DAY: 5PERIOD: 1\nSTA 324: computer science HND 1 120\n\nmst 326: math and stat HND 1 95\n\npham 311: pharmtech HND 1 70\n\ncom132: SLT ND 1 100\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmr.micheal\nSTA 324: computer science HND 1   9.0\nmst 326: math and stat HND 1   7.0\npham 311: pharmtech HND 1   5.0\ncom132: SLT ND 1   7.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nmr.mabosanyinje\nmr.fadeyi\nBTA babalola\nmr.odiete joseph\nmr,orunsolu\nmrsalaran\nSTA 324: computer science HND 1   55.0\nmst 326: math and stat HND 1   43.0\npham 311: pharmtech HND 1   32.0\ncom132: SLT ND 1   46.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nmr.gbangboye\nmr.oladimeji\nSTA 324: computer science HND 1   22.0\nmst 326: math and stat HND 1   17.0\npham 311: pharmtech HND 1   12.0\ncom132: SLT ND 1   18.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmrs.popoola\nSTA 324: computer science HND 1   3.0\nmst 326: math and stat HND 1   2.0\npham 311: pharmtech HND 1   2.0\ncom132: SLT ND 1   3.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmrs.lawal\nmrs olorode\nmr.ayanlowo\nmr.Ayeleso\nMr.leke adebayo\nSTA 324: computer science HND 1   31.0\nmst 326: math and stat HND 1   23.0\npham 311: pharmtech HND 1   17.0\ncom132: SLT ND 1   24.0\n', 0),
(19, 1, 3, 5, 'slt 121: SLT ND 1 \n', 'Time Table\n DAY: 5PERIOD: 2\nslt 121: SLT ND 1 150\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nMr.leke adebayo\nslt 121: SLT ND 1   15.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 9\nmr.fadeyi\nmr.mabosanyinje\nmrsalaran\nmmr.kola abiola\nmr.gbangboye\nmr.kolabo\nmr.oladimeji\nmr.Ayeleso\nmrs.lawal\nslt 121: SLT ND 1   91.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 3\nmrs olorode\nBTA babalola\nmr.odiete joseph\nslt 121: SLT ND 1   36.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 2\nmr.micheal\nmrs.popoola\nslt 121: SLT ND 1   8.0\n', 0),
(20, 1, 4, 5, 'com 433: computer science HND 2 \nmst 431: math and stat HND 2 \npham 412: pharmtech HND 2 \nslt 246: SLT ND 2 \n', 'Time Table\n DAY: 5PERIOD: 3\ncom 433: computer science HND 2 130\n\nmst 431: math and stat HND 2 95\n\npham 412: pharmtech HND 2 60\n\nslt 246: SLT ND 2 150\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmr.oladimeji\ncom 433: computer science HND 2   10.0\nmst 431: math and stat HND 2   7.0\npham 412: pharmtech HND 2   4.0\nslt 246: SLT ND 2   11.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nmrs olorode\nmr.odiete joseph\nmr.ayanlowo\nmr,orunsolu\nmr.micheal\nmr.gbangboye\ncom 433: computer science HND 2   60.0\nmst 431: math and stat HND 2   43.0\npham 412: pharmtech HND 2   27.0\nslt 246: SLT ND 2   69.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nBTA babalola\nmrs.popoola\ncom 433: computer science HND 2   24.0\nmst 431: math and stat HND 2   17.0\npham 412: pharmtech HND 2   11.0\nslt 246: SLT ND 2   27.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmr.Ayeleso\ncom 433: computer science HND 2   4.0\nmst 431: math and stat HND 2   2.0\npham 412: pharmtech HND 2   1.0\nslt 246: SLT ND 2   4.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmr.mabosanyinje\nmrs.lawal\nMr.leke adebayo\nmr.fadeyi\nmmr.kola abiola\ncom 433: computer science HND 2   32.0\nmst 431: math and stat HND 2   23.0\npham 412: pharmtech HND 2   14.0\nslt 246: SLT ND 2   36.0\n', 0),
(21, 1, 1, 6, '', '', 0),
(22, 1, 2, 6, 'slt 455: SLT HND 2 \npham 132: pharmtech ND 1 \nmst 141: math and stat ND 1 \ncom 133: computer science ND 1 \n', 'Time Table\n DAY: 6PERIOD: 1\nslt 455: SLT HND 2 100\n\npham 132: pharmtech ND 1 80\n\nmst 141: math and stat ND 1 110\n\ncom 133: computer science ND 1 110\n\n\nHALL NAME: 800 seater 800\nno of invigilator 13\nmr.micheal\nmr.fadeyi\nmr.kolabo\nmr.gbangboye\nmr.ayanlowo\nmrs.lawal\nmrs olorode\nMr.leke adebayo\nmr.Ayeleso\nmr,orunsolu\nmr.oladimeji\nmmr.kola abiola\nmr.mabosanyinje\nslt 455: SLT HND 2   86.0\npham 132: pharmtech ND 1   69.0\nmst 141: math and stat ND 1   95.0\ncom 133: computer science ND 1   95.0\n\nHALL NAME: science xtention 120\nno of invigilator 2\nBTA babalola\nmr.odiete joseph\nslt 455: SLT HND 2   14.0\npham 132: pharmtech ND 1   10.0\nmst 141: math and stat ND 1   14.0\ncom 133: computer science ND 1   14.0\n', 0),
(23, 1, 3, 6, 'slt 113: SLT ND 1 \npham 211: pharmtech ND 2 \nmst 244: math and stat ND 2 \ncom 221: computer science ND 2 \n', 'Time Table\n DAY: 6PERIOD: 2\nslt 113: SLT ND 1 150\n\npham 211: pharmtech ND 2 90\n\nmst 244: math and stat ND 2 100\n\ncom 221: computer science ND 2 80\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nMr.leke adebayo\nslt 113: SLT ND 1   15.0\npham 211: pharmtech ND 2   9.0\nmst 244: math and stat ND 2   10.0\ncom 221: computer science ND 2   8.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 9\nmrs.popoola\nmr.Ayeleso\nmr.fadeyi\nmr.mabosanyinje\nmr.oladimeji\nmrs.lawal\nmrsalaran\nmr.kolabo\nmmr.kola abiola\nslt 113: SLT ND 1   91.0\npham 211: pharmtech ND 2   55.0\nmst 244: math and stat ND 2   61.0\ncom 221: computer science ND 2   48.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 3\nmr.ayanlowo\nmr.odiete joseph\nmr,orunsolu\nslt 113: SLT ND 1   36.0\npham 211: pharmtech ND 2   22.0\nmst 244: math and stat ND 2   24.0\ncom 221: computer science ND 2   19.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 2\nmr.gbangboye\nmrs olorode\nslt 113: SLT ND 1   8.0\npham 211: pharmtech ND 2   3.0\nmst 244: math and stat ND 2   4.0\ncom 221: computer science ND 2   3.0\n', 0),
(24, 1, 4, 6, 'com346: computer science HND 1 \nmst 348: math and stat HND 1 \npham 333: pharmtech HND 1 \nslt 333: SLT HND 1 \n', 'Time Table\n DAY: 6PERIOD: 3\ncom346: computer science HND 1 120\n\nmst 348: math and stat HND 1 95\n\npham 333: pharmtech HND 1 70\n\nslt 333: SLT HND 1 120\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmr.ayanlowo\ncom346: computer science HND 1   9.0\nmst 348: math and stat HND 1   7.0\npham 333: pharmtech HND 1   5.0\nslt 333: SLT HND 1   9.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nBTA babalola\nmrs.lawal\nmr.micheal\nmrs olorode\nmr,orunsolu\nmr.fadeyi\ncom346: computer science HND 1   55.0\nmst 348: math and stat HND 1   43.0\npham 333: pharmtech HND 1   32.0\nslt 333: SLT HND 1   55.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nmrs.popoola\nmrsalaran\ncom346: computer science HND 1   22.0\nmst 348: math and stat HND 1   17.0\npham 333: pharmtech HND 1   12.0\nslt 333: SLT HND 1   22.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nMr.leke adebayo\ncom346: computer science HND 1   3.0\nmst 348: math and stat HND 1   2.0\npham 333: pharmtech HND 1   2.0\nslt 333: SLT HND 1   3.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmr.Ayeleso\nmmr.kola abiola\nmr.odiete joseph\nmr.gbangboye\nmr.kolabo\ncom346: computer science HND 1   31.0\nmst 348: math and stat HND 1   23.0\npham 333: pharmtech HND 1   17.0\nslt 333: SLT HND 1   29.0\n', 0),
(25, 1, 1, 7, '', '', 0),
(26, 1, 2, 7, 'slt 242: SLT ND 2 \npham 214: pharmtech ND 2 \nmst 226: math and stat ND 2 \nfood 222: foodtech ND 2 \nsta 231: computer science ND 2 \n', 'Time Table\n DAY: 7PERIOD: 1\nslt 242: SLT ND 2 150\n\npham 214: pharmtech ND 2 90\n\nmst 226: math and stat ND 2 100\n\nfood 222: foodtech ND 2 60\n\nsta 231: computer science ND 2 200\n\n\nHALL NAME: science xtention 120\nno of invigilator 1\nmrs.lawal\nslt 242: SLT ND 2   5.0\npham 214: pharmtech ND 2   3.0\nmst 226: math and stat ND 2   3.0\nfood 222: foodtech ND 2   2.0\nsta 231: computer science ND 2   7.0\n\nHALL NAME: 800 seater 800\nno of invigilator 3\nmrsalaran\nmrs.popoola\nmr.oladimeji\nslt 242: SLT ND 2   38.0\npham 214: pharmtech ND 2   23.0\nmst 226: math and stat ND 2   25.0\nfood 222: foodtech ND 2   15.0\nsta 231: computer science ND 2   51.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmr.micheal\nslt 242: SLT ND 2   4.0\npham 214: pharmtech ND 2   2.0\nmst 226: math and stat ND 2   3.0\nfood 222: foodtech ND 2   1.0\nsta 231: computer science ND 2   6.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nmr.odiete joseph\nmr.kolabo\nslt 242: SLT ND 2   28.0\npham 214: pharmtech ND 2   17.0\nmst 226: math and stat ND 2   19.0\nfood 222: foodtech ND 2   11.0\nsta 231: computer science ND 2   38.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 8\nmrs olorode\nmr,orunsolu\nBTA babalola\nmr.mabosanyinje\nmr.fadeyi\nmmr.kola abiola\nmr.gbangboye\nmr.ayanlowo\nslt 242: SLT ND 2   75.0\npham 214: pharmtech ND 2   43.0\nmst 226: math and stat ND 2   48.0\nfood 222: foodtech ND 2   28.0\nsta 231: computer science ND 2   96.0\n', 0),
(27, 1, 3, 7, '', '', 0),
(28, 1, 4, 7, 'com 322: computer science HND 1 \nfood 111: foodtech ND 1 \nmst 311: math and stat HND 1 \npham 332: pharmtech HND 1 \nslt 342: SLT HND 1 \n', 'Time Table\n DAY: 7PERIOD: 3\ncom 322: computer science HND 1 120\n\nfood 111: foodtech ND 1 75\n\nmst 311: math and stat HND 1 95\n\npham 332: pharmtech HND 1 70\n\nslt 342: SLT HND 1 120\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmr.ayanlowo\ncom 322: computer science HND 1   9.0\nfood 111: foodtech ND 1   5.0\nmst 311: math and stat HND 1   7.0\npham 332: pharmtech HND 1   5.0\nslt 342: SLT HND 1   9.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nmr.kolabo\nmr.oladimeji\nmr.Ayeleso\nmr.mabosanyinje\nmrs olorode\nmr,orunsolu\ncom 322: computer science HND 1   55.0\nfood 111: foodtech ND 1   34.0\nmst 311: math and stat HND 1   43.0\npham 332: pharmtech HND 1   32.0\nslt 342: SLT HND 1   55.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nmr.odiete joseph\nmr.micheal\ncom 322: computer science HND 1   22.0\nfood 111: foodtech ND 1   13.0\nmst 311: math and stat HND 1   17.0\npham 332: pharmtech HND 1   12.0\nslt 342: SLT HND 1   22.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmmr.kola abiola\ncom 322: computer science HND 1   3.0\nfood 111: foodtech ND 1   2.0\nmst 311: math and stat HND 1   2.0\npham 332: pharmtech HND 1   2.0\nslt 342: SLT HND 1   3.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmrs.lawal\nmrs.popoola\nmr.fadeyi\nmr.gbangboye\nBTA babalola\ncom 322: computer science HND 1   31.0\nfood 111: foodtech ND 1   18.0\nmst 311: math and stat HND 1   23.0\npham 332: pharmtech HND 1   17.0\nslt 342: SLT HND 1   29.0\n', 0),
(29, 1, 1, 8, '', '', 0),
(30, 1, 2, 8, 'com 462: computer science HND 2 \nmst 462: math and stat HND 2 \npham 414: pharmtech HND 2 \n', 'Time Table\n DAY: 8PERIOD: 1\ncom 462: computer science HND 2 130\n\nmst 462: math and stat HND 2 95\n\npham 414: pharmtech HND 2 60\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nBTA babalola\ncom 462: computer science HND 2   10.0\nmst 462: math and stat HND 2   7.0\npham 414: pharmtech HND 2   4.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nmr.ayanlowo\nmrs.lawal\nmrsalaran\nmr.mabosanyinje\nmr.gbangboye\nmr.oladimeji\ncom 462: computer science HND 2   60.0\nmst 462: math and stat HND 2   43.0\npham 414: pharmtech HND 2   27.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nmr,orunsolu\nmrs.popoola\ncom 462: computer science HND 2   24.0\nmst 462: math and stat HND 2   17.0\npham 414: pharmtech HND 2   11.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmr.Ayeleso\ncom 462: computer science HND 2   4.0\nmst 462: math and stat HND 2   2.0\npham 414: pharmtech HND 2   1.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmr.odiete joseph\nmmr.kola abiola\nmrs olorode\nmr.fadeyi\nmr.kolabo\ncom 462: computer science HND 2   32.0\nmst 462: math and stat HND 2   23.0\npham 414: pharmtech HND 2   14.0\n', 0),
(31, 1, 3, 8, 'com 352: computer science HND 1 \nfood 132: foodtech ND 1 \nmst 332: math and stat HND 1 \npham 342: pharmtech HND 1 \nslt 311: SLT HND 1 \n', 'Time Table\n DAY: 8PERIOD: 2\ncom 352: computer science HND 1 120\n\nfood 132: foodtech ND 1 75\n\nmst 332: math and stat HND 1 95\n\npham 342: pharmtech HND 1 70\n\nslt 311: SLT HND 1 120\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmr,orunsolu\ncom 352: computer science HND 1   9.0\nfood 132: foodtech ND 1   5.0\nmst 332: math and stat HND 1   7.0\npham 342: pharmtech HND 1   5.0\nslt 311: SLT HND 1   9.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nmr.fadeyi\nBTA babalola\nmrsalaran\nmrs.popoola\nmr.odiete joseph\nmrs.lawal\ncom 352: computer science HND 1   55.0\nfood 132: foodtech ND 1   34.0\nmst 332: math and stat HND 1   43.0\npham 342: pharmtech HND 1   32.0\nslt 311: SLT HND 1   55.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nMr.leke adebayo\nmr.ayanlowo\ncom 352: computer science HND 1   22.0\nfood 132: foodtech ND 1   13.0\nmst 332: math and stat HND 1   17.0\npham 342: pharmtech HND 1   12.0\nslt 311: SLT HND 1   22.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmr.oladimeji\ncom 352: computer science HND 1   3.0\nfood 132: foodtech ND 1   2.0\nmst 332: math and stat HND 1   2.0\npham 342: pharmtech HND 1   2.0\nslt 311: SLT HND 1   3.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmmr.kola abiola\nmr.gbangboye\nmr.Ayeleso\nmr.micheal\nmr.mabosanyinje\ncom 352: computer science HND 1   31.0\nfood 132: foodtech ND 1   18.0\nmst 332: math and stat HND 1   23.0\npham 342: pharmtech HND 1   17.0\nslt 311: SLT HND 1   29.0\n', 0),
(32, 1, 4, 8, 'slt 442: SLT HND 2 \npham 112: pharmtech ND 1 \nmst 134: math and stat ND 1 \nsta 111: computer science ND 1 \n', 'Time Table\n DAY: 8PERIOD: 3\nslt 442: SLT HND 2 100\n\npham 112: pharmtech ND 1 80\n\nmst 134: math and stat ND 1 110\n\nsta 111: computer science ND 1 100\n\n\nHALL NAME: 800 seater 800\nno of invigilator 13\nMr.leke adebayo\nmr.kolabo\nmmr.kola abiola\nmr.mabosanyinje\nmr.ayanlowo\nmr.Ayeleso\nmrs olorode\nmr.micheal\nmr.fadeyi\nmrsalaran\nmr.odiete joseph\nmrs.lawal\nmr,orunsolu\nslt 442: SLT HND 2   86.0\npham 112: pharmtech ND 1   69.0\nmst 134: math and stat ND 1   95.0\nsta 111: computer science ND 1   86.0\n\nHALL NAME: science xtention 120\nno of invigilator 2\nmrs.popoola\nmr.oladimeji\nslt 442: SLT HND 2   14.0\npham 112: pharmtech ND 1   10.0\nmst 134: math and stat ND 1   14.0\nsta 111: computer science ND 1   13.0\n', 0),
(33, 1, 1, 9, '', '', 0),
(34, 1, 2, 9, 'com 411: computer science HND 2 \nmst 414: math and stat HND 2 \npham 411: pharmtech HND 2 \ncom222: SLT ND 2 \n', 'Time Table\n DAY: 9PERIOD: 1\ncom 411: computer science HND 2 130\n\nmst 414: math and stat HND 2 95\n\npham 411: pharmtech HND 2 60\n\ncom222: SLT ND 2 150\n\n\nHALL NAME: keshinton hall 250\nno of invigilator 1\nmr.fadeyi\ncom 411: computer science HND 2   10.0\nmst 414: math and stat HND 2   7.0\npham 411: pharmtech HND 2   4.0\ncom222: SLT ND 2   11.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 6\nmr.mabosanyinje\nmrs.lawal\nmr.kolabo\nmr.gbangboye\nmrsalaran\nmr,orunsolu\ncom 411: computer science HND 2   60.0\nmst 414: math and stat HND 2   43.0\npham 411: pharmtech HND 2   27.0\ncom222: SLT ND 2   69.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nmr.Ayeleso\nmr.ayanlowo\ncom 411: computer science HND 2   24.0\nmst 414: math and stat HND 2   17.0\npham 411: pharmtech HND 2   11.0\ncom222: SLT ND 2   27.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmrs olorode\ncom 411: computer science HND 2   4.0\nmst 414: math and stat HND 2   2.0\npham 411: pharmtech HND 2   1.0\ncom222: SLT ND 2   4.0\n\nHALL NAME: 800 seater 800\nno of invigilator 5\nmrs.popoola\nBTA babalola\nmr.odiete joseph\nMr.leke adebayo\nmmr.kola abiola\ncom 411: computer science HND 2   32.0\nmst 414: math and stat HND 2   23.0\npham 411: pharmtech HND 2   14.0\ncom222: SLT ND 2   36.0\n', 0),
(35, 1, 3, 9, 'slt 4432: SLT HND 2 \npham 111: pharmtech ND 1 \nmst 114: math and stat ND 1 \nsta 122: computer science ND 1 \n', 'Time Table\n DAY: 9PERIOD: 2\nslt 4432: SLT HND 2 100\n\npham 111: pharmtech ND 1 80\n\nmst 114: math and stat ND 1 110\n\nsta 122: computer science ND 1 100\n\n\nHALL NAME: 800 seater 800\nno of invigilator 13\nmrs.popoola\nmrs.lawal\nmr.micheal\nmmr.kola abiola\nmr.Ayeleso\nmr.mabosanyinje\nMr.leke adebayo\nmr.ayanlowo\nmr.odiete joseph\nmr.gbangboye\nmr,orunsolu\nmrsalaran\nmr.fadeyi\nslt 4432: SLT HND 2   86.0\npham 111: pharmtech ND 1   69.0\nmst 114: math and stat ND 1   95.0\nsta 122: computer science ND 1   86.0\n\nHALL NAME: science xtention 120\nno of invigilator 2\nmrs olorode\nmr.oladimeji\nslt 4432: SLT HND 2   14.0\npham 111: pharmtech ND 1   10.0\nmst 114: math and stat ND 1   14.0\nsta 122: computer science ND 1   13.0\n', 0),
(36, 1, 4, 9, 'slt 211: SLT ND 2 \npham 241: pharmtech ND 2 \nmst 213: math and stat ND 2 \ncom 241: computer science ND 2 \n', 'Time Table\n DAY: 9PERIOD: 3\nslt 211: SLT ND 2 150\n\npham 241: pharmtech ND 2 90\n\nmst 213: math and stat ND 2 100\n\ncom 241: computer science ND 2 100\n\n\nHALL NAME: science xtention 120\nno of invigilator 1\nmr.fadeyi\nslt 211: SLT ND 2   5.0\npham 241: pharmtech ND 2   3.0\nmst 213: math and stat ND 2   3.0\ncom 241: computer science ND 2   3.0\n\nHALL NAME: 800 seater 800\nno of invigilator 3\nmrs olorode\nmrsalaran\nmr,orunsolu\nslt 211: SLT ND 2   38.0\npham 241: pharmtech ND 2   23.0\nmst 213: math and stat ND 2   25.0\ncom 241: computer science ND 2   25.0\n\nHALL NAME: ICT room 8 100\nno of invigilator 1\nmrs.popoola\nslt 211: SLT ND 2   4.0\npham 241: pharmtech ND 2   2.0\nmst 213: math and stat ND 2   3.0\ncom 241: computer science ND 2   3.0\n\nHALL NAME: babalakin hall 600\nno of invigilator 2\nBTA babalola\nmr.micheal\nslt 211: SLT ND 2   28.0\npham 241: pharmtech ND 2   17.0\nmst 213: math and stat ND 2   19.0\ncom 241: computer science ND 2   19.0\n\nHALL NAME: OGD hall 1500\nno of invigilator 8\nmr.odiete joseph\nmrs.lawal\nmr.Ayeleso\nmr.mabosanyinje\nmr.ayanlowo\nMr.leke adebayo\nmr.kolabo\nmmr.kola abiola\nslt 211: SLT ND 2   75.0\npham 241: pharmtech ND 2   43.0\nmst 213: math and stat ND 2   48.0\ncom 241: computer science ND 2   48.0\n', 0),
(37, 1, 1, 10, '', '', 0),
(38, 1, 2, 10, '', '', 0),
(39, 1, 3, 10, 'slt 421: SLT HND 2 \npham 142: pharmtech ND 1 \nmst 111: math and stat ND 1 \ncom 112: computer science ND 1 \n', 'Time Table\n DAY: 10PERIOD: 2\nslt 421: SLT HND 2 100\n\npham 142: pharmtech ND 1 80\n\nmst 111: math and stat ND 1 110\n\ncom 112: computer science ND 1 100\n\n\nHALL NAME: 800 seater 800\nno of invigilator 13\nmr.ayanlowo\nmr,orunsolu\nmrs olorode\nmr.micheal\nmr.fadeyi\nmrsalaran\nmr.Ayeleso\nmr.oladimeji\nmrs.lawal\nMr.leke adebayo\nmr.gbangboye\nBTA babalola\nmr.odiete joseph\nslt 421: SLT HND 2   86.0\npham 142: pharmtech ND 1   69.0\nmst 111: math and stat ND 1   95.0\ncom 112: computer science ND 1   86.0\n\nHALL NAME: science xtention 120\nno of invigilator 2\nmr.mabosanyinje\nmmr.kola abiola\nslt 421: SLT HND 2   14.0\npham 142: pharmtech ND 1   10.0\nmst 111: math and stat ND 1   14.0\ncom 112: computer science ND 1   13.0\n', 0),
(40, 1, 4, 10, '', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
