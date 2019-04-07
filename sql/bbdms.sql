-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2019 at 07:09 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-04-07 17:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Soniya', '41241241241', 'soniya34@gmail.com', 'Female', 34, 'AB-', 'Mirpur', ' fsdf', '2019-04-06 20:48:11', 1),
(6, 'Md. Deloar Hossain', '01790672620', 'deloar.engr@gmail.com', 'Male', 23, 'A+', 'Dahanmondi, Dhaka, Bangladesh.', ' I agree ', '2019-04-04 10:10:05', 1),
(7, 'Koly', '1790672634', 'koly@gmail.com', 'Female', 24, 'A-', 'Mirpur, Dhaka', ' i will donate blood.', '2019-04-07 16:13:06', 1),
(8, 'Sakib', '1770672623', 'sakib@gmail.com', 'Male', 23, 'AB+', 'Dahanmondi, Dhaka, Bangladesh.', ' i will give blood. ', '2019-04-07 16:23:44', 1),
(9, 'Liza', '1780682620', 'deloar801@gmail.com', 'Female', 24, 'O-', 'Mirpur, Dhaka, Bangladesh.', 'I will give blood.', '2019-04-07 16:24:42', 1),
(10, 'Reja', '0198765432', 'reja801@gmail.com', 'Male', 25, 'A-', 'jatrabari, Dhaka, Bangladesh.', ' I will give blood.', '2019-04-07 16:25:37', 1),
(11, 'Reja', '0198765432', 'reja801@gmail.com', 'Male', 25, 'A-', 'jatrabari, Dhaka, Bangladesh.', ' I will give blood.', '2019-04-07 16:30:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2019-04-07 04:33:45'),
(2, 'AB-', '2019-04-06 20:34:00'),
(3, 'O-', '2019-04-06 20:34:05'),
(4, 'A-', '2019-04-06 20:34:10'),
(5, 'A+', '2019-04-06 20:34:13'),
(6, 'AB+', '2019-04-06 20:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Dhaka,Kalabagan', 'deloar.engr@gmail.com', '01790672620');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(5, 'Md. Deloar Hossain', 'deloar801@gmail.com', '01790672620', 'I need A+ Blood for Operation patient. Location:Green life hospital ', '2019-04-07 16:35:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '										<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">Very few medical conditions disqualify you from donating your organs. It may&nbsp;</span><b style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">be</b><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">determined that certain organs are not suitable for transplantation, but other tissues and organs may&nbsp;</span><b style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">be</b><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;fine. Simply put, a disease in one organ does not preclude other organs from being donated.</span>\r\n										<div><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\"><br></span></div><div><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\"><br></span></div><div><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\"><br></span></div><div><h3 style=\"font-family: Roboto, Arial, sans-serif; font-weight: 700; line-height: 30px; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px;\">Becoming a donor is easy.</h3><p style=\"margin-bottom: 0px; font-size: 18px; line-height: 26px; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif;\">When you register to renew your license, simply check the box that asks if you’d like to be a donor.&nbsp; You can also log onto&nbsp;<a href=\"http://www.nedonation.org/\" target=\"_blank\" style=\"color: rgb(18, 157, 191);\">www.nedonation.org</a>&nbsp;to register.</p><p style=\"margin-top: 15px; margin-bottom: 0px; font-size: 18px; line-height: 26px; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif;\">One of the biggest obstacles to organ donation is getting individuals to register to become an organ donor before they are faced with a tragic situation. “Organ donation gives a family the potential to have a life-saving impact on the lives of others,” says Dr. Siddique. “However, if that person has not taken the steps to register or discuss their wishes with their family in advance, it is very difficult for a family to make that decision when they are still dealing with their own loss.”</p><p style=\"margin-top: 15px; margin-bottom: 0px; font-size: 18px; line-height: 26px; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif;\">The need for organ donors has been rising significantly over the years. The reason? The number of people with end-stage organ failure has been rising and, with advances in transplantation, a greater proportion of these people are eligible for organ transplantation.</p><p style=\"margin-top: 15px; margin-bottom: 0px; font-size: 18px; line-height: 26px; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif;\">Another obstacle is a lack of understanding of what it really means to be an organ donor. Dr. Siddique helps uncover some of these myths:</p></div>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(51, 71, 91); font-family: AvenirNext, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 18px;\">Building a website is, in many ways, an exercise of willpower. It’s tempting to get distracted by the bells and whistles of the design process, and forget all about creating compelling content.</span>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
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
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
