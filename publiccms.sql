-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2020 at 01:18 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '18-10-2016 04:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'E-commerce', 'E-commerce', '2017-03-28 07:10:55', ''),
(2, 'general', 'dsdas', '2017-06-11 10:54:06', ''),
(3, 'Education and learning', 'Any type of Complaint about Education can be included here. ', '2020-03-03 10:10:54', NULL),
(4, 'Health and Wellness', 'Any type of Complaint about Health and wealth can be included here.', '2020-03-03 10:11:38', '03-03-2020 03:42:17 PM'),
(5, 'Electricity', 'Electricity\r\n', '2020-03-03 10:11:53', NULL),
(6, 'Housing and Property', 'Housing and Property', '2020-03-03 10:12:06', NULL),
(7, 'Local Services', 'Any type of Complaint about Local Service can be included here.', '2020-03-05 05:06:58', NULL),
(8, 'LPG', 'Any type of Complaint about LPG can be included here.', '2020-03-05 05:07:10', NULL),
(9, 'Water', 'Any type of Complaint about water can be included here.', '2020-03-05 05:07:21', NULL),
(10, 'Money and Taxes', 'Any type of Complaint about Money and Taxes can be included here.', '2020-03-05 05:07:43', NULL),
(11, 'Jobs', 'Any type of Complaint about jobs can be included here.', '2020-03-05 05:07:57', NULL),
(12, 'justice, Law, Grievances', 'Any type of Complaint about Justice, Law, Grievances can be included here.', '2020-03-05 05:08:41', NULL),
(13, 'Travel and Tourism', 'Any type of Complaint about Travel and Tourism can be included here.', '2020-03-05 05:09:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Uttar Pradesh', '', '2016-10-18 11:35:02', ''),
(4, 'Punjab', 'pbPB', '2016-10-18 11:35:58', '28-03-2017 03:40:02 PM'),
(5, 'Haryana', 'Haryana', '2017-03-28 07:20:36', ''),
(6, 'fsdfs', 'fsdf', '2017-06-11 10:54:12', ''),
(7, 'Tamil Nadu', '', '2020-03-05 05:10:10', NULL),
(8, 'Kerala', '', '2020-03-05 05:10:16', NULL),
(9, 'puducherry', 'puducherry', '2020-03-05 05:10:21', '05-03-2020 10:40:32 AM');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Online SHopping', '2017-03-28 07:11:07', '03-03-2020 11:17:58 AM'),
(2, 1, 'E-wllaet', '2017-03-28 07:11:20', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 1, 'E-wllaet', 'General Query', 'Punjab', 'test demo', 'test demo test demo test demotest demotest demotest demotest demotest demotest demotest demotest demo', NULL, '2017-03-30 16:52:40', 'closed', '2018-09-05 17:08:27'),
(2, 1, 1, 'Online SHopping', 'General Query', 'Punjab', 'testing', 'sample text for demo', '', '2017-03-30 17:05:56', 'in process', '2017-04-01 17:29:19'),
(3, 1, 1, 'Online SHopping', ' Complaint', 'Punjab', 'ferwekt lwentgwewt', 'wetwetwe', '', '2017-03-30 17:07:51', 'in process', '2017-05-02 15:57:43'),
(4, 1, 1, 'E-wllaet', 'General Query', 'Haryana', 'lkdlsfklsdf', 'fdsf,msd,f  f f', '2. Compendium Selected Paper.doc', '2017-03-30 17:13:14', 'closed', '2017-03-31 16:06:22'),
(5, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:14:55', NULL, '0000-00-00 00:00:00'),
(6, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:20:16', NULL, '0000-00-00 00:00:00'),
(7, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:20:56', NULL, '0000-00-00 00:00:00'),
(8, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:23:05', NULL, '0000-00-00 00:00:00'),
(9, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:25:09', 'in process', '2017-04-01 18:38:00'),
(10, 1, 1, 'E-wllaet', ' Complaint', 'Punjab', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:27:24', NULL, '0000-00-00 00:00:00'),
(11, 1, 1, 'Online SHopping', 'General Query', 'Haryana', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:36:32', NULL, '0000-00-00 00:00:00'),
(12, 1, 1, 'Online SHopping', 'General Query', 'Haryana', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:37:09', NULL, '0000-00-00 00:00:00'),
(13, 1, 1, 'Online SHopping', 'General Query', 'Haryana', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:39:57', NULL, '0000-00-00 00:00:00'),
(14, 1, 1, 'Online SHopping', ' Complaint', 'Haryana', 'vcxvxcvxcv', 'cvcx', 'doctorslog.sql', '2017-03-30 17:41:19', NULL, '0000-00-00 00:00:00'),
(15, 1, 1, 'E-wllaet', 'General Query', 'Punjab', 'dsfsd', 'fsdfsdf', '', '2017-03-30 17:42:38', NULL, '0000-00-00 00:00:00'),
(16, 1, 1, 'E-wllaet', 'General Query', 'Punjab', 'dsfsd', 'fsdfsdf', '', '2017-03-31 01:54:07', NULL, '0000-00-00 00:00:00'),
(17, 5, 1, 'E-wllaet', ' Complaint', 'fsdfs', 'regarding refund', 'test test', '', '2017-06-11 10:57:49', NULL, '0000-00-00 00:00:00'),
(18, 5, 1, 'Online SHopping', ' Complaint', 'Uttar Pradesh', 'yhytr', 'rtytry', 'About Us.docx', '2017-06-11 11:08:47', NULL, '0000-00-00 00:00:00'),
(19, 6, 1, 'Online SHopping', ' Complaint', 'Uttar Pradesh', 'regarding refund', 'Test@123 dfds fsd fs gs gsd g sg g g sgstwerwe ewtw tw', 'About Us.docx', '2017-06-11 11:15:24', 'closed', '2017-06-11 11:18:33'),
(20, 1, 1, 'E-wllaet', 'General Query', 'fsdfs', 'sdgsdg', 'gdgsdgsd', '', '2018-05-24 18:26:23', NULL, '0000-00-00 00:00:00'),
(21, 1, 1, 'Online SHopping', 'General Query', 'Uttar Pradesh', 'csdf', 'fsdfs', '', '2018-05-24 18:26:55', NULL, '0000-00-00 00:00:00'),
(22, 1, 1, 'Online SHopping', 'General Query', 'Uttar Pradesh', 'csdf', 'fsdfs', '', '2018-05-24 18:27:02', NULL, '0000-00-00 00:00:00'),
(23, 2, 2, 'Select Subcategory', 'General Query', 'Punjab', 'fghgfhfghfg', 'gfhfheyrfhdyhghfhyrtbbfghrthhfghfghfgherfghgfghfhfghf', 'video.mp4', '2020-03-03 05:35:05', NULL, '0000-00-00 00:00:00'),
(24, 2, 1, 'E-wllaet', ' Complaint', 'Punjab', 'fghgfghfgh', 'gfjfgjfgj', 'App-Track-syllabus.pdf', '2020-03-03 06:22:06', NULL, '0000-00-00 00:00:00'),
(25, 1, 9, '', 'General Query', 'puducherry', 'Water problem', 'in this place, the water is not properly coming.', 'About Us.docx', '2020-03-05 05:58:18', NULL, '0000-00-00 00:00:00'),
(26, 1, 3, '', 'General Query', 'Tamil Nadu', 'School maintenance', 'School is not properly maintained.', '', '2020-03-05 06:07:47', NULL, '0000-00-00 00:00:00'),
(27, 1, 2, '', 'General Query', 'Uttar Pradesh', 'general', 'general message', 'compliantdocs/logonew.png', '2020-03-05 06:27:11', NULL, '2020-03-05 09:18:22'),
(28, 1, 3, '', 'General Query', 'Tamil Nadu', 'School maintenance', 'test message', 'compliantdocsTest2.webm', '2020-03-05 06:40:17', NULL, '2020-03-05 09:18:37'),
(29, 1, 4, '', 'General Query', 'fsdfs', 'general', 'test message', 'compliantdocsflower.jpeg', '2020-03-05 06:53:33', NULL, '2020-03-05 09:18:47'),
(30, 1, 2, '', 'General Query', 'Haryana', 'general', 'general message12', 'complaintdocs/', '2020-03-05 07:21:15', NULL, '0000-00-00 00:00:00'),
(31, 1, 4, '', 'General Query', 'Uttar Pradesh', 'fghgfghfgh', 'general message', 'complaintdocs/', '2020-03-05 08:43:24', NULL, '0000-00-00 00:00:00'),
(32, 1, 4, '', 'General Query', 'Punjab', 'general', 'test2', 'complaintdocs/slide2.jpg', '2020-03-05 08:46:09', NULL, '0000-00-00 00:00:00'),
(33, 2, 9, '', 'General Query', 'Tamil Nadu', 'Water problem', 'test123', 'complaintdocs/complaints.jpg', '2020-03-05 09:53:10', NULL, '0000-00-00 00:00:00'),
(34, 3, 2, '', 'General Query', 'Haryana', 'general', 'test messages', 'complaintdocs/Screen Shot 2020-03-06 at 10.28.32 am.png', '2020-03-06 05:58:38', NULL, '0000-00-00 00:00:00'),
(35, 3, 5, '', 'General Query', 'Tamil Nadu', 'general', 'Electricity problem', 'complaintdocs/video copy.mp4', '2020-03-06 06:47:36', NULL, '0000-00-00 00:00:00'),
(36, 4, 7, '', 'General Query', 'Kerala', 'Street Light Problem', 'In Kerala, on street1 the street light are not', 'complaintdocs/profile2.jpeg', '2020-03-09 04:55:46', NULL, '0000-00-00 00:00:00'),
(37, 4, 9, '', 'General Query', 'Punjab', 'Water Issue', 'water problem in this area', 'complaintdocs/profile1.jpeg', '2020-03-09 05:17:02', NULL, '0000-00-00 00:00:00'),
(38, 7, 1, '', 'General Query', 'Punjab', 'general', 'test compliant', 'complaintdocs/Screen Shot 2020-03-11 at 2.09.13 pm.png', '2020-03-11 09:11:05', NULL, '0000-00-00 00:00:00'),
(39, 7, 2, '', 'General Query', 'Haryana', 'general', 'tedst comhgghf', 'complaintdocs/Screen Shot 2020-03-11 at 2.09.22 pm.png', '2020-03-11 09:11:28', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-28 17:04:36', '', 1),
(2, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-29 15:02:26', '', 1),
(3, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-30 14:58:00', '', 1),
(4, 0, 'dsad', 0x3a3a3100000000000000000000000000, '2017-03-31 17:39:07', '', 0),
(5, 0, 'dwerwer', 0x3a3a3100000000000000000000000000, '2017-03-31 17:41:22', '', 0),
(6, 0, 'ffert', 0x3a3a3100000000000000000000000000, '2017-03-31 17:41:29', '', 0),
(7, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:42:12', '', 0),
(8, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:47:51', '', 0),
(9, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:47:54', '', 0),
(10, 0, 'fsdfsdff', 0x3a3a3100000000000000000000000000, '2017-03-31 17:48:11', '', 0),
(11, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-31 17:49:25', '', 1),
(12, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 18:52:35', '02-04-2017 12:24:41 AM', 1),
(13, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 18:58:09', '02-04-2017 12:50:42 AM', 1),
(14, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 19:38:15', '02-04-2017 01:08:19 AM', 1),
(15, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-02 18:50:20', '', 0),
(16, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-02 18:50:28', '03-04-2017 12:26:50 AM', 1),
(17, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-05-02 18:01:26', '', 1),
(18, 0, 'test@gm.com', 0x3a3a3100000000000000000000000000, '2017-06-11 10:48:50', '', 0),
(19, 5, 'abc@abc.com', 0x3a3a3100000000000000000000000000, '2017-06-11 10:56:30', '11-06-2017 04:39:15 PM', 1),
(20, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2017-06-11 11:13:28', '11-06-2017 04:45:46 PM', 1),
(21, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2017-06-11 11:19:45', '11-06-2017 04:50:02 PM', 1),
(22, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-05-24 18:26:07', '', 1),
(23, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:05:22', '', 0),
(24, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:05:32', '', 0),
(25, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:07:12', '', 1),
(26, 0, 'clive@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 05:00:02', '', 0),
(27, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 05:02:26', '03-03-2020 10:33:02 AM', 1),
(28, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 05:32:55', '', 1),
(29, 0, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 06:05:36', '', 0),
(30, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 06:05:44', '', 1),
(31, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 10:04:53', '03-03-2020 03:35:38 PM', 1),
(32, 0, 'clive@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 10:06:04', '', 0),
(33, 0, 'clive@gmail.comâ€¨', 0x3a3a3100000000000000000000000000, '2020-03-03 10:06:29', '', 0),
(34, 0, 'clive@gmail.comâ€¨', 0x3a3a3100000000000000000000000000, '2020-03-03 10:06:53', '', 0),
(35, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 10:07:22', '03-03-2020 03:42:42 PM', 1),
(36, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 10:13:51', '', 1),
(37, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-04 06:42:26', '', 1),
(38, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-05 04:54:15', '05-03-2020 10:32:37 AM', 1),
(39, 0, 'test1', 0x3a3a3100000000000000000000000000, '2020-03-05 05:03:30', '', 0),
(40, 3, 'test1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-05 05:03:45', '05-03-2020 02:23:00 PM', 1),
(41, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-05 08:53:17', '05-03-2020 02:25:38 PM', 1),
(42, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-05 09:00:02', '05-03-2020 02:34:44 PM', 1),
(43, 3, 'test1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-05 09:34:39', '05-03-2020 03:18:10 PM', 1),
(44, 0, 'clive@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-05 09:49:03', '', 0),
(45, 0, 'clive@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-05 09:51:21', '', 0),
(46, 0, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-05 09:51:31', '', 0),
(47, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-05 09:51:38', '', 1),
(48, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-05 11:09:53', '', 1),
(49, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 04:09:51', '06-03-2020 10:35:15 AM', 1),
(50, 0, 'test1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 05:05:28', '', 0),
(51, 0, 'test1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 05:05:36', '', 0),
(52, 0, 'test1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 05:05:53', '', 0),
(53, 0, 'test1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 05:06:06', '06-03-2020 10:36:47 AM', 0),
(54, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 05:07:02', '06-03-2020 11:27:57 AM', 1),
(55, 3, 'test1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 05:58:08', '06-03-2020 11:51:58 AM', 1),
(56, 3, 'test1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-06 06:29:46', '', 1),
(57, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-07 04:30:21', '07-03-2020 10:10:30 AM', 1),
(58, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-07 04:41:56', '', 1),
(59, 2, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-09 04:44:17', '09-03-2020 10:14:23 AM', 1),
(60, 4, 'test2@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-09 04:48:24', '', 1),
(61, 4, 'test2@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-09 05:16:10', '09-03-2020 10:50:31 AM', 1),
(62, 0, 'test3@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-09 05:28:16', '', 0),
(63, 0, 'test3@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-09 05:28:32', '', 0),
(64, 6, 'test4@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-09 05:29:45', '', 1),
(65, 0, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-11 08:49:20', '11-03-2020 02:34:27 PM', 0),
(66, 0, 'Test1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-11 09:07:56', '', 0),
(67, 0, 'test1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-11 09:08:07', '', 0),
(68, 0, 'test2@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-11 09:08:21', '', 0),
(69, 0, 'rishi.24@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-11 09:08:59', '', 0),
(70, 7, 'test6@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-11 09:10:27', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 9999857860, 'Shakarpur', 'Uttar Pradesh', 'India', 110092, NULL, '2017-03-28 11:44:52', '2017-04-01 19:37:42', 1),
(2, 'rishi', 'rishi.24@gmail.com', '9e58d6ab9e42c22ebd5c63e97c36004d', 9898989898, NULL, NULL, NULL, NULL, '399e85e9d4cd1e4ee80d294b93d4e5d7.png', '2020-03-03 05:02:07', '2020-03-05 08:54:17', 1),
(3, 'test1', 'test1@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', 7878787878, NULL, NULL, NULL, NULL, '518f67278fa3e4cc635469fb4831c384.png', '2020-03-05 05:03:12', '2020-03-05 08:52:44', 1),
(4, 'Test2', 'test2@gmail.com', '12bce374e7be15142e8172f668da00d8', 9865327845, 'Kerala', 'Kerala', 'india', 608005, '518f67278fa3e4cc635469fb4831c384.png', '2020-03-09 04:46:14', '2020-03-09 04:54:10', 1),
(5, 'test3', 'test3@gmail.com', 'b60cca12d755f277193763be587348de', 7845128956, NULL, NULL, NULL, NULL, NULL, '2020-03-09 05:21:01', '0000-00-00 00:00:00', 1),
(6, 'Test4', 'test4@gmail.com', '0abf04b554101a89924c063084c14804', 9865327845, NULL, NULL, NULL, NULL, NULL, '2020-03-09 05:29:29', '0000-00-00 00:00:00', 1),
(7, 'Test6', 'test6@gmail.com', '6e5bebcab55ed9ad6d5860b2bf7f9ce9', 0, NULL, NULL, NULL, NULL, NULL, '2020-03-11 09:10:05', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
