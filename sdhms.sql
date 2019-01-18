-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2019 at 05:01 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sdhms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Dentist', 1, 1, 500, '2016-12-31', '09:25', '2017-01-01 00:29:02', 1, 0, ''),
(2, 'Homeopath', 4, 5, 700, '2017-01-11', '14:10', '2017-01-07 08:02:58', 0, 1, ''),
(3, 'General Physician', 3, 6, 1200, '2018-12-17', '2:30 PM', '2018-12-19 08:53:32', 0, 1, ''),
(4, 'General Physician', 3, 0, 1200, '2018-12-17', '2:30 PM', '2018-12-19 08:54:49', 1, 1, ''),
(5, 'Demo test', 8, 6, 199, '2018-12-19', '2:45 PM', '2018-12-19 09:08:18', 1, 1, ''),
(6, 'General Physician', 3, 8, 1200, '2019-01-24', '8:00 PM', '2019-01-11 16:15:04', 1, 1, ''),
(7, 'General Physician', 3, 7, 1200, '2019-02-01', '2:45 AM', '2019-01-11 21:12:09', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2016-12-29 06:25:37', '04-01-2017 01:27:51 PM'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', ''),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', ''),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', ''),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', ''),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', ''),
(7, 'Demo test', 'abc ', 'xyz', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', ''),
(8, 'Demo test', 'somen das', 'kolkata', '199', 8617545537, 'somen.das0795@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-12-19 09:05:56', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE IF NOT EXISTS `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'sarita@gmail.com', '0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 05:53:31', '', 1),
(2, 0, 'admin', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 06:36:07', '', 0),
(3, 2, 'sarita@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 06:36:37', '06/01/2017 07:36:45', 1),
(4, 2, 'sarita@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 06:41:33', '12:11:46', 1),
(5, 2, 'sarita@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 06:55:16', '06-01-2017 12:27:47 PM', 1),
(6, 0, 'admin', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 07:07:12', '', 0),
(7, 0, 'info@w3gang.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 08:04:42', '', 0),
(8, 0, 'info@w3gang.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 08:04:55', '', 0),
(9, 2, 'sarita@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 08:05:54', '07-01-2017 01:36:28 PM', 1),
(10, 8, 'somen.das0795@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-12-19 09:07:10', '19-12-2018 02:37:29 PM', 1),
(11, 8, 'somen.das0795@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-12-19 09:08:44', '19-12-2018 02:40:19 PM', 1),
(12, 8, 'somen.das0795@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-12-19 09:25:07', '19-12-2018 02:57:12 PM', 1),
(13, 7, 'test@demo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-01-12 06:41:20', '', 1),
(14, 8, 'somen.das0795@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-01-14 15:31:40', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE IF NOT EXISTS `doctorspecilization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', ''),
(2, 'General Physician', '2016-12-28 06:38:12', ''),
(3, 'Dermatologist', '2016-12-28 06:38:48', ''),
(4, 'Homeopath', '2016-12-28 06:39:26', ''),
(5, 'Ayurveda', '2016-12-28 06:39:51', ''),
(6, 'Dentist', '2016-12-28 06:40:08', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', ''),
(9, 'Demo test', '2016-12-28 07:37:39', '28-12-2016 01:28:42 PM'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '07-01-2017 01:38:04 PM'),
(11, 'dentist', '2018-12-19 08:58:06', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `status`) VALUES
(1, 0, 'admin', '::1', 0),
(2, 0, 'somen.das@gmail.com', '::1', 0),
(3, 0, 'somen.das@gmail.com', '::1', 0),
(4, 8, 'somen.das@gmail.com', '::1', 1),
(5, 0, 'admin', '::1', 0),
(6, 8, 'somen.das@gmail.com', '::1', 1),
(7, 8, 'somen.das@gmail.com', '::1', 1),
(8, 8, 'somen.das@gmail.com', '::1', 1),
(9, 8, 'somen.das@gmail.com', '::1', 1),
(10, 8, 'somen.das@gmail.com', '::1', 1),
(11, 8, 'somen.das@gmail.com', '::1', 1),
(12, 8, 'somen.das@gmail.com', '::1', 1),
(13, 8, 'somen.das@gmail.com', '::1', 1),
(14, 8, 'somen.das@gmail.com', '::1', 1),
(15, 8, 'somen.das@gmail.com', '::1', 1),
(16, 8, 'somen.das@gmail.com', '::1', 1),
(17, 8, 'somen.das@gmail.com', '::1', 1),
(18, 8, 'somen.das@gmail.com', '::1', 1),
(19, 8, 'somen.das@gmail.com', '::1', 1),
(20, 8, 'somen.das@gmail.com', '::1', 1),
(21, 8, 'somen.das@gmail.com', '::1', 1),
(22, 8, 'somen.das@gmail.com', '::1', 1),
(23, 8, 'somen.das@gmail.com', '::1', 1),
(24, 8, 'somen.das@gmail.com', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `address`, `city`, `gender`, `email`, `password`) VALUES
(1, 'aomwn', 'kolkata', 'birati', '', 'somen.das@gmail.com', '70279bfa404abd8bc43904943489d729'),
(2, 'aomwn', 'kolkata', 'birati', 'male', 'somen.das@gmail.com', '330f7818725832da6489c85c85c8f071'),
(3, 'somen das', 'kolkata', 'birati', 'male', 'somen.das0795@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'somen das', 'fsjlsdklsdjksd', 'birati', 'male', 'sdsasss@gmail.com', '5ba0fb78fdb95765e9d1c57eec47e8f0'),
(5, 'aomwn', 'kolkata', 'birati', 'female', 'somen.das@gmail.com', '161bcea77b4bd9764146ea733fc66bbb'),
(6, 'aomwn', 'kolkata', 'birati', 'female', 'somen.das@gmail.com', '161bcea77b4bd9764146ea733fc66bbb'),
(7, 'soumili', 'kolkataa', 'birati', 'female', 'somen.das@gmail.com', '161bcea77b4bd9764146ea733fc66bbb'),
(8, 'somen', 'kolkata', 'birati', 'male', 'somen.das@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
