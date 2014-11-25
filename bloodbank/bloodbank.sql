-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 23, 2014 at 06:34 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminUsers`
--

CREATE TABLE IF NOT EXISTS `adminUsers` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `adminUsers`
--

INSERT INTO `adminUsers` (`uid`, `username`, `password`) VALUES
(2, 'admin@gmail.com', '31e66abf2b1be93dc5c06e94a696f31fbc81d9cd');

-- --------------------------------------------------------

--
-- Table structure for table `AskBlood_Request`
--

CREATE TABLE IF NOT EXISTS `AskBlood_Request` (
  `requestID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `numberOfDonorsRequired` int(11) NOT NULL,
  PRIMARY KEY (`requestID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `AskBlood_Request`
--

INSERT INTO `AskBlood_Request` (`requestID`, `username`, `timestamp`, `numberOfDonorsRequired`) VALUES
(15, 'ashish.fagna@gmail.com', '2014-11-23 16:19:23', 333);

-- --------------------------------------------------------

--
-- Table structure for table `DonateBlood_Request`
--

CREATE TABLE IF NOT EXISTS `DonateBlood_Request` (
  `requestID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`requestID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `DonateBlood_Request`
--

INSERT INTO `DonateBlood_Request` (`requestID`, `username`, `timestamp`) VALUES
(7, 'ashish.fagna@gmail.com', '2014-11-23 16:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8 NOT NULL,
  `password` char(100) CHARACTER SET utf8 NOT NULL,
  `firstname` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `bloodtype` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8 NOT NULL,
  `state` varchar(200) CHARACTER SET utf8 NOT NULL,
  `zipcode` varchar(20) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `firstname`, `lastname`, `bloodtype`, `address`, `city`, `state`, `zipcode`, `phone`) VALUES
(12, 'ashish.fagna@gmail.com', '10de6e741b14a3b820c0d2a6413006e1f7cac48c', 'Ashish', 'Kumar', 'AB+', 'GGN', 'GGN', 'Haryana', '122001', '9988998899');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
