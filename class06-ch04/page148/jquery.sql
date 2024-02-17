-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2018 at 10:57 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jquery`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `areaid` int(3) NOT NULL,
  `areaname` varchar(60) NOT NULL,
  `areadesc` varchar(200) NOT NULL,
  `divid` int(2) NOT NULL,
  `distid` int(2) NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`areaid`, `areaname`, `areadesc`, `divid`, `distid`, `createdate`) VALUES
(1, 'Mirpur', 'Mirpur All', 1, 45, '2016-11-19 15:53:10'),
(2, 'Dhanmondi', 'Dhanmondi area', 1, 45, '2016-11-19 16:32:31'),
(3, 'mirpur', 'mirpur-10', 1, 45, '2016-11-19 16:35:28'),
(4, 'Joypurhat ', 'joyputhat', 3, 5, '2016-11-19 16:36:07'),
(5, 'Companiganj', 'Companiganj', 4, 12, '2016-11-19 16:36:19'),
(6, 'Bhandaria	', 'Bhandaria upazila', 5, 29, '2016-11-19 16:36:39'),
(7, 'Magura Sadar Upazila', 'Magura Sadar Upazila', 2, 26, '2016-11-19 16:36:43'),
(8, 'Mohammadpur Upazila', 'Mohammadpur Upazila', 2, 26, '2016-11-19 16:36:54'),
(9, 'tangail bus stand', 'in main point of tangail dis', 1, 80, '2016-11-19 16:36:57'),
(10, 'Kawkhali', 'Kawkhali upazila', 5, 29, '2016-11-19 16:37:06'),
(11, 'Chatkhil', 'Chatkhil des', 4, 12, '2016-11-19 16:37:11'),
(12, 'Shalikha Upazila', 'Shalikha Upazila', 2, 26, '2016-11-19 16:37:15'),
(13, 'Mathbaria', 'Mathbaria upazila', 5, 29, '2016-11-19 16:37:24'),
(14, 'Sreepur Upazila', 'Sreepur Upazila', 2, 26, '2016-11-19 16:37:24'),
(15, 'Panchbibi', 'Panchbibi', 3, 5, '2016-11-19 16:37:27'),
(16, 'Panchbibi', 'Panchbibi', 3, 5, '2016-11-19 16:37:43'),
(18, 'Begumganj', 'Begumganj description', 4, 12, '2016-11-19 16:37:45'),
(19, 'Nazirpur', 'Nazirpur upazila', 5, 29, '2016-11-19 16:37:49'),
(21, 'tangail old bus stand', 'few km from asekpur', 1, 80, '2016-11-19 16:38:01'),
(24, 'Nesarabad', 'Nesarabad upazila', 5, 29, '2016-11-19 16:38:11'),
(25, 'Khetlal', 'Khetlal', 3, 5, '2016-11-19 16:38:17'),
(27, 'Kalia Upazila', 'Kalia Upazila', 2, 41, '2016-11-19 16:38:24'),
(28, 'Lohagara Upazila', 'Lohagara Upazila', 2, 41, '2016-11-19 16:38:33'),
(29, 'Pirojpur Sadar', 'Pirojpur Sadar', 5, 29, '2016-11-19 16:38:38'),
(30, 'Hatiya', 'Hatiya description', 4, 12, '2016-11-19 16:38:39'),
(31, 'Kalai ', 'Kalai ', 3, 5, '2016-11-19 16:38:42'),
(32, 'Narail Sadar Upazila', 'Narail Sadar Upazila', 2, 41, '2016-11-19 16:38:43'),
(33, 'Naragati Thana', 'Naragati Thana', 2, 41, '2016-11-19 16:38:50'),
(34, 'Noakhali Sadar', 'Noakhali Sadar description', 4, 12, '2016-11-19 16:39:05'),
(35, 'Zianagar', 'Zianagar upazila', 5, 29, '2016-11-19 16:39:06'),
(36, 'delduar thana ', 'delduar thana  here  is my nani bari', 1, 80, '2016-11-19 16:39:07'),
(38, 'Assasuni Upazila', 'Assasuni Upazila', 2, 43, '2016-11-19 16:39:15'),
(39, 'Senbag', 'Senbag description', 4, 12, '2016-11-19 16:39:21'),
(40, 'Akkelpur', 'Akkelpur', 3, 5, '2016-11-19 16:39:21'),
(41, 'Debhata Upazila', 'Debhata Upazila', 2, 43, '2016-11-19 16:39:24'),
(42, 'Kalaroa Upazila', 'Kalaroa Upazila', 2, 43, '2016-11-19 16:39:34'),
(43, 'Trishal', 'Trishal area.', 9, 100, '2016-11-19 16:39:42'),
(44, 'Kaliganj Upazila', 'Kaliganj Upazila', 2, 43, '2016-11-19 16:39:42'),
(45, 'Somaimuri', 'Somaimuri description', 4, 12, '2016-11-19 16:39:45'),
(46, 'Satkhira Sadar Upazila', 'Satkhira Sadar Upazila', 2, 43, '2016-11-19 16:39:53'),
(47, 'Shyamnagar Upazila', 'Shyamnagar Upazila', 2, 43, '2016-11-19 16:40:03'),
(48, 'Subarnachar', 'Subarnachar description', 4, 12, '2016-11-19 16:40:14'),
(49, 'Baluka', 'Baluka area.', 9, 100, '2016-11-19 16:40:22'),
(50, 'Tala Upazila', 'Tala Upazila', 2, 43, '2016-11-19 16:40:36'),
(51, 'tangail sadar', 'nice place of tangail ', 1, 80, '2016-11-19 16:40:38'),
(52, 'Kabir Hat', 'Kabir Hatr description', 4, 12, '2016-11-19 16:40:39'),
(53, 'Fulbharia', 'Fulbharia area.', 9, 100, '2016-11-19 16:40:48'),
(54, 'Rangabali', 'Rangabali Upazila', 5, 24, '2016-11-19 16:40:49'),
(55, 'Akhaura', 'Akhaura description', 4, 33, '2016-11-19 16:41:05'),
(56, 'Dumki', 'Dumki Upazila', 5, 24, '2016-11-19 16:41:13'),
(57, 'Fulpur', 'Fulpur area.', 9, 100, '2016-11-19 16:41:15'),
(58, 'ghatail ', 'ghatail  beside mymensingh', 1, 80, '2016-11-19 16:41:28'),
(59, 'Ashuganj', 'Ashuganj description', 4, 33, '2016-11-19 16:41:31'),
(60, 'Bancharampur', 'Bancharampur description', 4, 33, '2016-11-19 16:42:03'),
(61, 'Brahmanbaria Sadar', 'Brahmanbaria Sadar description', 4, 33, '2016-11-19 16:42:21'),
(62, 'basail', 'basail  beside mymensingh valuka thana.', 1, 80, '2016-11-19 16:42:23'),
(63, 'Muktagasa', 'Muktagasa area.', 9, 100, '2016-11-19 16:42:25'),
(64, 'Atrai Upazila', 'Atrai Upazila', 3, 56, '2016-11-19 16:42:31'),
(65, 'Kashba', 'Kashba description', 4, 33, '2016-11-19 16:42:45'),
(66, 'Badalgachhi Upazila', 'Badalgachhi Upazila', 3, 56, '2016-11-19 16:42:51'),
(68, 'basail', 'basail  beside mymensingh valuka thana.', 1, 80, '2016-11-19 16:42:57'),
(69, 'Nabinagar', 'Nabinagar description', 4, 33, '2016-11-19 16:43:01'),
(70, 'Nasirnagar', 'Nasirnagar description', 4, 33, '2016-11-19 16:43:14'),
(71, 'Dhamoirhat Upazila', 'Dhamoirhat Upazila', 3, 56, '2016-11-19 16:43:18'),
(73, 'Patuakhali Sadar', 'Patuakhali Sadar Upazila', 5, 24, '2016-11-19 16:43:27'),
(74, 'Sarail', 'Sarail description', 4, 33, '2016-11-19 16:43:29'),
(75, 'Manda Upazila', 'Manda Upazila', 3, 56, '2016-11-19 16:43:31'),
(77, 'sakipur', 'sakipur is very nice place', 1, 80, '2016-11-19 16:43:37'),
(78, 'Mohadevpur Upazila', 'Mohadevpur Upazila', 3, 56, '2016-11-19 16:43:44'),
(79, 'Mirzaganj', 'Mirzaganj Upazila', 5, 24, '2016-11-19 16:43:44'),
(80, 'Dewanganj', 'Dewanganj Upazila', 9, 61, '2016-11-19 16:43:46'),
(81, 'Feni Sadar', 'Feni Sadar', 4, 101, '2016-11-19 16:43:48'),
(83, 'Haluwagat', 'Haluwagat area.', 9, 100, '2016-11-19 16:43:55'),
(84, 'Magura Sadar', 'Magura Sadar', 2, 36, '2016-11-19 16:43:57'),
(85, 'Naogaon Sadar Upazila', 'Naogaon Sadar Upazila', 3, 56, '2016-11-19 16:43:57'),
(86, 'Kalapara', 'Kalapara Upazila', 5, 24, '2016-11-19 16:43:59'),
(88, 'Niamatpur Upazila', 'Niamatpur Upazila', 3, 56, '2016-11-19 16:44:10'),
(89, 'Dashmina', 'Dashmina Upazila', 5, 24, '2016-11-19 16:44:13'),
(90, 'Parshuram UPazilla', 'Parshuram UPazilla', 4, 101, '2016-11-19 16:44:20'),
(91, 'Patnitala Upazila', 'Patnitala Upazila', 3, 56, '2016-11-19 16:44:24'),
(93, 'Porsha Upazila', 'Porsha Upazila', 3, 56, '2016-11-19 16:44:37'),
(94, 'Galachipa', 'Galachipa Upazila', 5, 24, '2016-11-19 16:44:39'),
(96, 'Raninagar Upazila', 'Raninagar Upazila', 3, 56, '2016-11-19 16:44:49'),
(97, 'Bauphal', 'Bauphal Upazila', 5, 24, '2016-11-19 16:44:56'),
(98, 'Raninagar Upazila', 'Raninagar Upazila', 3, 56, '2016-11-19 16:44:56'),
(99, 'Baksiganj Upazila', 'Baksiganj Upazila', 9, 61, '2016-11-19 16:44:57'),
(100, 'Parshuram', 'Parshuram UPazilla', 4, 101, '2016-11-19 16:45:01'),
(101, 'Sapahar Upazila', 'Sapahar Upazila', 3, 56, '2016-11-19 16:45:14'),
(102, 'nagurpur', 'nagurpur beside manikgonj district.', 1, 80, '2016-11-19 16:45:17'),
(103, 'Islampur', 'Islampur Upazila', 9, 61, '2016-11-19 16:45:34'),
(105, 'Jamalpur Sadar', 'Jamalpur Sadar Upazila', 9, 61, '2016-11-19 16:46:22'),
(106, 'Madarganj Upazila', 'Madarganj Upazila', 9, 61, '2016-11-19 16:46:53'),
(107, 'kalihati thana ', 'kalihati beside gahtail.', 1, 80, '2016-11-19 16:47:05'),
(108, 'Gaffargaon ', 'Gaffargaon   upazila', 9, 100, '2016-11-19 16:47:18'),
(109, 'mirpur-12', 'mirpur-12', 1, 45, '2016-11-19 16:47:20'),
(112, 'Adamdighi', 'Adamdighi', 3, 17, '2016-11-19 16:47:42'),
(113, 'Sarishabari', 'Sarishabari Upazila', 9, 61, '2016-11-19 16:47:45'),
(114, 'Dhobaura ', 'Dhobaura     upazila', 9, 100, '2016-11-19 16:47:55'),
(116, 'Bogra Sadar', 'Bogra Sadar', 3, 17, '2016-11-19 16:47:58'),
(117, 'Nandail', 'Nandail    upazila', 9, 100, '2016-11-19 16:48:10'),
(119, 'Sherpur', 'Sherpur', 3, 17, '2016-11-19 16:48:16'),
(120, 'Dhunat', 'Dhunat', 3, 17, '2016-11-19 16:48:40'),
(122, 'Melandaho', 'Melandaho Upazila', 9, 61, '2016-11-19 16:48:42'),
(123, 'Dhunat', 'Dhunat', 3, 17, '2016-11-19 16:48:50'),
(125, 'Dhupchanchia', 'Dhupchanchia', 3, 17, '2016-11-19 16:49:16'),
(126, 'Gabtali', 'Gabtali', 3, 17, '2016-11-19 16:49:36'),
(128, 'Atpara Upazila', 'Atpara Upazil', 9, 20, '2016-11-19 16:49:53'),
(130, 'Kahaloo', 'Kahaloo', 3, 17, '2016-11-19 16:49:56'),
(131, 'Nandigram', 'Nandigram', 3, 17, '2016-11-19 16:50:07'),
(133, 'Fulgazi', 'Fulgazi', 4, 101, '2016-11-19 16:50:17'),
(134, 'Shajahanpur', 'Shajahanpur', 3, 17, '2016-11-19 16:50:21'),
(137, 'Sariakandi', 'Sariakandi', 3, 17, '2016-11-19 16:50:42'),
(138, 'Shibganj', 'Shibganj', 3, 17, '2016-11-19 16:50:54'),
(139, 'Sonatala', 'Sonatala', 3, 17, '2016-11-19 16:51:03'),
(140, 'Barhatta ', 'Barhatta Upazila', 9, 20, '2016-11-19 16:51:33'),
(141, 'Durgapur ', 'Durgapur Upazila', 9, 20, '2016-11-19 16:52:05'),
(142, 'Khaliajuri', 'Khaliajuri Upazila', 9, 20, '2016-11-19 16:52:41'),
(143, 'Kalmakanda ', 'Kalmakanda Upazila', 9, 20, '2016-11-19 16:53:11'),
(145, 'Rajapur', 'Rajapur Upazila', 5, 102, '2016-11-19 16:53:23'),
(146, 'Kendua', 'Kendua Upazila', 9, 20, '2016-11-19 16:53:36'),
(147, 'Nalchity', 'Nalchity Upazila', 5, 102, '2016-11-19 16:53:44'),
(148, 'Madan Upazila', 'Madan Upazila', 9, 20, '2016-11-19 16:54:09'),
(149, 'Kathalia', 'Kathalia Upazila', 5, 102, '2016-11-19 16:54:27'),
(150, 'Mohanganj', 'Mohanganj Upazila', 9, 20, '2016-11-19 16:54:37'),
(151, 'Jhalokati Sadar', 'Jhalokati Sadar Upazila', 5, 102, '2016-11-19 16:54:52'),
(153, 'Netrokona', 'Netrokona Sadar Upazila', 9, 20, '2016-11-19 16:55:21'),
(155, 'Manpura', 'Manpura Upazila', 5, 19, '2016-11-19 16:55:35'),
(157, 'Char Fasson', 'Char Fasson Upazila', 5, 19, '2016-11-19 16:55:52'),
(159, 'Purbadhala', 'Purbadhala Upazila', 9, 20, '2016-11-19 16:55:56'),
(161, 'Lalmohan', 'Lalmohan Upazila', 5, 19, '2016-11-19 16:56:11'),
(163, 'Tazumuddin', 'Tazumuddin Upazila', 5, 19, '2016-11-19 16:56:31'),
(166, 'Burhanuddin', 'Burhanuddin Upazila', 5, 19, '2016-11-19 16:57:36'),
(169, 'Daulatkhan', 'Daulatkhan Upazila', 5, 19, '2016-11-19 16:57:52'),
(170, 'Bhola Sadar', 'Bhola Sadar Upazila', 5, 19, '2016-11-19 16:58:10'),
(171, 'parshuram', 'parshuram', 4, 101, '2016-11-19 16:58:25'),
(172, 'Daghonvuiyan', 'Daghonvuiyan', 4, 101, '2016-11-19 16:58:46'),
(173, 'Taltali', 'Taltali Upazila', 5, 13, '2016-11-19 16:58:54'),
(174, 'Patharghata', 'Patharghata Upazila', 5, 13, '2016-11-19 16:59:11'),
(175, 'Chagolnaiyan', 'Chagolnaiyan', 4, 101, '2016-11-19 16:59:15'),
(176, 'Morrelgonj', 'Morrelgonj area', 2, 14, '2016-11-19 16:59:22'),
(177, 'Betagi', 'Betagi Upazila', 5, 13, '2016-11-19 16:59:29'),
(178, 'Sonagazi', 'Sonagazi', 4, 101, '2016-11-19 16:59:33'),
(179, 'Barguna Sadar', 'Barguna Sadar Upazila', 5, 13, '2016-11-19 16:59:58'),
(180, 'Bamna', 'Bamna Upazila', 5, 13, '2016-11-19 17:00:13'),
(181, 'Amtali', 'Amtali Upazila', 5, 13, '2016-11-19 17:00:27'),
(182, 'Mirzapur Upazila', 'Mirzapur Upazila nice place of tangail.', 1, 80, '2016-11-19 17:00:45'),
(183, 'Bagerhat sadar', 'Bagerhat sadar area', 2, 14, '2016-11-19 17:01:46'),
(184, 'Rampal', 'Rampal area', 2, 14, '2016-11-19 17:02:16'),
(185, 'Uttara', 'Uttara municipal area', 1, 45, '2016-11-19 17:02:17'),
(186, 'Bholahat Upazila', 'Bholahat Upazila', 3, 65, '2016-11-19 17:02:18'),
(187, 'Gopalpur Upazila', 'Gopalpur Upazila nice place of tangail.', 1, 80, '2016-11-19 17:02:20'),
(188, 'Uttara', 'Uttara municipal area', 1, 45, '2016-11-19 17:02:26'),
(189, 'Gomastapur Upazila', 'Gomastapur Upazila', 3, 65, '2016-11-19 17:02:32'),
(190, 'Uttar Khan', 'Uttar Khan municipal area', 1, 45, '2016-11-19 17:02:47'),
(191, 'Gomastapur Upazila', 'Gomastapur Upazila', 3, 65, '2016-11-19 17:02:49'),
(192, 'Kachua', 'Kachua Area', 2, 14, '2016-11-19 17:02:58'),
(193, 'Turag', 'Turag municipal area', 1, 45, '2016-11-19 17:03:04'),
(194, 'Nachole Upazila', 'Nachole Upazila', 3, 65, '2016-11-19 17:03:05'),
(195, 'Nachole Upazila', 'Nachole Upazila', 3, 65, '2016-11-19 17:03:07'),
(196, 'Nawabganj Sadar Upazila', 'Nawabganj Sadar Upazila', 3, 65, '2016-11-19 17:03:23'),
(197, 'Mongla', 'Mongla Area', 2, 14, '2016-11-19 17:03:26'),
(198, 'Tejgaon', 'Tejgaon Industrial Area', 1, 45, '2016-11-19 17:03:27'),
(199, 'Bhuapur Upazila', 'Bhuapur Upazila northside.', 1, 80, '2016-11-19 17:03:36'),
(200, 'Shibganj Upazila', 'Shibganj Upazila', 3, 65, '2016-11-19 17:03:47'),
(201, 'Tejgaon', 'Tejgaon municipal area', 1, 45, '2016-11-19 17:03:56'),
(202, 'Dhanbari Upazila', 'Bhuapur Upazila famous for pineapple.', 1, 80, '2016-11-19 17:04:21'),
(203, 'Sher-e-Bangla Nagor', 'Sher-e-Bangla Nagor municipal area', 1, 45, '2016-11-19 17:04:39'),
(204, 'Adabor', 'Adabor municipal area', 1, 45, '2016-11-19 17:05:01'),
(205, 'Agargaon', 'Agargaon municipal area', 1, 45, '2016-11-19 17:05:15'),
(206, 'Gurudaspur Upazila', 'Gurudaspur Upazila', 3, 55, '2016-11-19 17:05:28'),
(207, 'Badda', 'Badda municipal area', 1, 45, '2016-11-19 17:05:33'),
(208, 'Natore Sadar Upazila', 'Natore Sadar Upazila', 3, 55, '2016-11-19 17:05:43'),
(209, 'Biman Bandar', 'Biman Bandar municipal area', 1, 45, '2016-11-19 17:05:51'),
(210, 'Baraigram Upazila', 'Baraigram Upazila', 3, 55, '2016-11-19 17:05:54'),
(211, 'Bagatipara Upazila', 'Bagatipara Upazila', 3, 55, '2016-11-19 17:06:09'),
(212, 'Lalpur Upazila', 'Lalpur Upazila', 3, 55, '2016-11-19 17:06:19'),
(213, 'Bangshal', 'Bangshal municipal area', 1, 45, '2016-11-19 17:06:21'),
(214, 'Singra Upazila', 'Singra Upazila', 3, 55, '2016-11-19 17:06:29'),
(215, 'Cantonment', 'Cantonment municipal area', 1, 45, '2016-11-19 17:06:39'),
(216, 'Naldanga Upazila', 'Naldanga Upazila', 3, 55, '2016-11-19 17:06:40'),
(217, 'Chawkbazar Model', 'Chawkbazar Model municipal area', 1, 45, '2016-11-19 17:07:10'),
(218, 'Dakshinkhan', 'Dakshinkhan Model municipal area', 1, 45, '2016-11-19 17:07:27'),
(219, 'Sarankhola', 'Sarankhola Area', 2, 14, '2016-11-19 17:07:31'),
(220, 'Darus Salam', 'Darus Salam Model municipal area', 1, 45, '2016-11-19 17:08:00'),
(221, 'Mollahat', 'Mollahat Area', 2, 14, '2016-11-19 17:08:07'),
(222, 'Dhanmondi', 'Dhanmondi municipal area', 1, 45, '2016-11-19 17:08:36'),
(223, 'Fakirhat', 'Fakirhat Area', 2, 14, '2016-11-19 17:08:43'),
(224, 'Dhanmondi', 'Demra municipal area', 1, 45, '2016-11-19 17:08:51'),
(225, 'Chitalmari', 'Chitalmari Area', 2, 14, '2016-11-19 17:09:15'),
(226, 'Kotwali', 'Kotwali municipal area', 1, 45, '2016-11-19 17:09:22'),
(227, 'Gulshan', 'Gulshan municipal area', 1, 45, '2016-11-19 17:09:53'),
(228, 'New Market', 'New Market municipal area', 1, 45, '2016-11-19 17:11:02'),
(229, 'Motijheel', 'Motijheel Indastrial area', 1, 45, '2016-11-19 17:11:34'),
(230, 'Chuadanga Sadar', 'Chuadanga Sadar Area', 2, 25, '2016-11-19 17:12:15'),
(231, 'Damurhuda', 'Damurhuda Area', 2, 25, '2016-11-19 17:12:49'),
(232, 'Jibannagar', 'JibannagarArea', 2, 25, '2016-11-19 17:13:18'),
(233, 'Atgharia Upazila', 'Atgharia Upazila', 3, 11, '2016-11-19 17:24:37'),
(234, 'Bera Upazila', 'Bera Upazila', 3, 11, '2016-11-19 17:24:46'),
(235, 'Bhangura Upazila', 'Bhangura Upazila', 3, 11, '2016-11-19 17:25:15'),
(236, 'Chatmohar Upazila', 'Chatmohar Upazila', 3, 11, '2016-11-19 17:25:29'),
(237, 'Faridpur Upazila (Formerly Bonwareenogor)', 'Faridpur Upazila (Formerly Bonwareenogor)', 3, 11, '2016-11-19 17:25:45'),
(238, 'Ishwardi Upazila', 'Ishwardi Upazila', 3, 11, '2016-11-19 17:25:58'),
(239, 'Pabna Sadar Upazila', 'Pabna Sadar Upazila', 3, 11, '2016-11-19 17:26:09'),
(240, 'Santhia Upazila', 'Santhia Upazila', 3, 11, '2016-11-19 17:26:19'),
(241, 'Sujanagar Upazila', 'Sujanagar Upazila', 3, 11, '2016-11-19 17:26:34'),
(242, 'Ataikula Thana', 'Ataikula Thana', 3, 11, '2016-11-19 17:26:46'),
(243, 'Aminpur Thana', 'Aminpur Thana', 3, 11, '2016-11-19 17:26:56'),
(244, 'Bagha Upazila', 'Bagha Upazila', 3, 23, '2016-11-19 17:28:09'),
(245, 'Bagmara Upazila', 'Bagmara Upazila', 3, 23, '2016-11-19 17:28:21'),
(246, 'Charghat Upazila', 'Charghat Upazila', 3, 23, '2016-11-19 17:28:31'),
(247, 'Durgapur Upazila', 'Durgapur Upazila', 3, 23, '2016-11-19 17:28:46'),
(248, 'Godagari Upazila', 'Godagari Upazila', 3, 23, '2016-11-19 17:29:06'),
(249, 'Mohanpur Upazila', 'Mohanpur Upazila', 3, 23, '2016-11-19 17:29:17'),
(250, 'Paba Upazila', 'Paba Upazila', 3, 23, '2016-11-19 17:29:30'),
(251, 'Puthia Upazila', 'Puthia Upazila', 3, 23, '2016-11-19 17:29:40'),
(252, 'Tanore Upazila', 'Tanore Upazila', 3, 23, '2016-11-19 17:29:52'),
(253, 'Boalia Thana', 'Boalia Thana', 3, 23, '2016-11-19 17:30:02'),
(254, 'Matihar Thana', 'Matihar Thana', 3, 23, '2016-11-19 17:30:16'),
(255, 'Rajpara Thana', 'Rajpara Thana', 3, 23, '2016-11-19 17:30:28'),
(256, 'Shah Makdam Thana', 'Shah Makdam Thana', 3, 23, '2016-11-19 17:30:59'),
(257, 'Badarganj', 'Badarganj', 7, 85, '2016-11-19 17:34:23'),
(258, 'Mithapukur', 'Mithapukur', 7, 85, '2016-11-19 17:34:33'),
(259, 'Gangachara', 'Gangachara', 7, 85, '2016-11-19 17:34:49'),
(260, 'Kaunia', 'Kaunia', 7, 85, '2016-11-19 17:35:20'),
(261, 'Rangpur Sadar', 'Rangpur Sadar', 7, 85, '2016-11-19 17:35:34'),
(262, 'Pirgachha', 'Pirgachha', 7, 85, '2016-11-19 17:35:44'),
(263, 'Pirganj', 'Pirganj', 7, 85, '2016-11-19 17:35:54'),
(264, 'Taraganj', 'Taraganj', 7, 85, '2016-11-19 17:36:04'),
(265, 'Jhenaigati ', 'Jhenaigati Upazila', 9, 10, '2016-11-19 17:37:00'),
(266, 'Nakla', 'Nakla Upazila', 9, 10, '2016-11-19 17:37:44'),
(267, 'Biral', 'Biral', 7, 86, '2016-11-19 17:37:50'),
(268, 'Meherpur Sadar', 'Meherpur Sadar', 2, 34, '2016-11-19 17:37:52'),
(269, 'Birampur', 'Birampur', 7, 86, '2016-11-19 17:38:00'),
(270, 'Birganj', 'Birganj', 7, 86, '2016-11-19 17:38:09'),
(271, 'Bochaganj ', 'Bochaganj ', 7, 86, '2016-11-19 17:38:22'),
(272, 'Gangni', 'Gangni Area', 2, 34, '2016-11-19 17:38:29'),
(273, 'Chirirbandar ', 'Bochaganj ', 7, 86, '2016-11-19 17:38:33'),
(274, 'Bochaganj ', 'Bochaganj ', 7, 86, '2016-11-19 17:38:44'),
(275, ' Mujibnagar', ' MujibnagarArea', 2, 34, '2016-11-19 17:38:55'),
(276, 'Nalitabari ', 'Nalitabari Upazila', 9, 10, '2016-11-19 17:38:57'),
(277, 'Chirirbandar', 'Chirirbandar', 7, 86, '2016-11-19 17:38:59'),
(278, 'Bochaganj ', 'Bochaganj ', 7, 86, '2016-11-19 17:39:10'),
(279, 'Ghoraghat ', 'Ghoraghat  ', 7, 86, '2016-11-19 17:39:19'),
(280, 'Sherpur Sadar', 'Sherpur Sadar Upazila', 9, 10, '2016-11-19 17:39:27'),
(281, 'Hakimpur', 'Hakimpur', 7, 86, '2016-11-19 17:39:31'),
(282, 'Kaharole', 'Kaharole', 7, 86, '2016-11-19 17:39:41'),
(283, 'Khansama', 'Khansama', 7, 86, '2016-11-19 17:39:51'),
(284, 'Sreebardi ', 'Sreebardi Upazila', 9, 10, '2016-11-19 17:39:53'),
(285, 'Nawabganj', 'Nawabganj', 7, 86, '2016-11-19 17:40:12'),
(286, 'Parbatipur', 'Parbatipur', 7, 86, '2016-11-19 17:40:23'),
(287, 'Phulbari ', 'Phulbari ', 7, 86, '2016-11-19 17:40:33'),
(288, 'Kurigram Sadar', 'Kurigram Sadar', 7, 87, '2016-11-19 17:42:32'),
(289, 'Nageshwari ', 'Nageshwari ', 7, 87, '2016-11-19 17:42:46'),
(290, 'Bhurungamari', 'Bhurungamari', 7, 87, '2016-11-19 17:42:59'),
(291, 'Phulbari', 'Phulbari', 7, 87, '2016-11-19 17:43:10'),
(292, 'Rajarhat ', 'Rajarhat ', 7, 87, '2016-11-19 17:43:40'),
(293, 'Ulipur ', 'Ulipur ', 7, 87, '2016-11-19 17:43:51'),
(294, 'Chilmari', 'Chilmari ', 7, 87, '2016-11-19 17:43:59'),
(295, 'Raomari ', 'Raomari ', 7, 87, '2016-11-19 17:44:10'),
(296, 'Char Rajibpur ', 'Char Rajibpur ', 7, 87, '2016-11-19 17:44:22'),
(297, 'Fulchhari ', 'Fulchhari ', 7, 88, '2016-11-19 17:46:12'),
(298, 'Gaibandha Sadar', 'Gaibandha Sadar', 7, 88, '2016-11-19 17:46:51'),
(299, 'Gobindaganj', 'Gobindaganj', 7, 88, '2016-11-19 17:47:05'),
(300, 'Palashbari ', 'Palashbari ', 7, 88, '2016-11-19 17:47:20'),
(301, 'Sadullapur', 'Sadullapur', 7, 88, '2016-11-19 17:47:30'),
(302, 'Saghata', 'Saghata', 7, 88, '2016-11-19 17:47:53'),
(303, 'Sundarganj', 'Sundarganj', 7, 88, '2016-11-19 17:48:08'),
(304, 'Bheramara', 'Bheramara Area', 2, 21, '2016-11-19 17:59:41'),
(305, 'Khoksa', 'Khoksa Area', 2, 21, '2016-11-19 18:00:39'),
(306, 'Kushtia Sadar', 'Kushtia Sadar Area', 2, 21, '2016-11-19 18:01:13'),
(307, 'Daulatpur', 'Daulatpur Area', 2, 21, '2016-11-19 18:01:42'),
(308, 'Kumarkhali', 'Kumarkhali Area', 2, 21, '2016-11-19 18:02:14'),
(309, 'Mirpur', 'Mirpur Area', 2, 21, '2016-11-19 18:02:42'),
(310, 'Nilphamari Sadar', 'Nilphamari Sadar', 7, 89, '2016-11-19 18:05:35'),
(311, 'Saidpur ', 'Saidpur ', 7, 89, '2016-11-19 18:05:46'),
(312, 'Jaldhaka', 'Jaldhaka', 7, 89, '2016-11-19 18:05:56'),
(313, 'Kishoreganj ', 'Kishoreganj ', 7, 89, '2016-11-19 18:06:15'),
(314, 'Domar', 'Domar', 7, 89, '2016-11-19 18:06:26'),
(315, 'Dimla', 'Dimla', 7, 89, '2016-11-19 18:06:36'),
(316, 'Panchagarh Sadar', 'Panchagarh Sadar', 7, 91, '2016-11-19 18:07:30'),
(317, 'Debiganj', 'Debiganj', 7, 91, '2016-11-19 18:07:43'),
(318, 'Boda', 'Boda', 7, 91, '2016-11-19 18:07:56'),
(319, 'Atwari', 'Atwari', 7, 91, '2016-11-19 18:08:15'),
(320, 'Tetulia', 'Tetulia', 7, 91, '2016-11-19 18:08:26'),
(321, 'Thakurgaon Sadar', 'Thakurgaon Sadar', 7, 94, '2016-11-19 18:09:01'),
(322, 'Pirganj Upazila', 'Pirganj Upazila', 7, 94, '2016-11-19 18:09:12'),
(323, 'Baliadangi ', 'Baliadangi ', 7, 94, '2016-11-19 18:09:28'),
(324, 'Haripur ', 'Haripur ', 7, 94, '2016-11-19 18:09:37'),
(325, 'Ranisankail', 'Ranisankail', 7, 94, '2016-11-19 18:09:47'),
(326, 'Ruhia', 'Ruhia', 7, 94, '2016-11-19 18:09:56'),
(327, 'Aditmari', 'Aditmari', 7, 89, '2016-11-19 18:11:50'),
(328, 'Kaliganj', 'Kaliganj', 7, 89, '2016-11-19 18:12:04'),
(329, 'Patgram', 'Patgram', 7, 89, '2016-11-19 18:12:18'),
(330, 'Lalmonirhat Sadar', 'Lalmonirhat Sadar', 7, 89, '2016-11-19 18:12:33'),
(331, 'Hatibandha', 'Hatibandha', 7, 89, '2016-11-19 18:12:47'),
(332, 'Baluka', 'Baluka area.', 9, 100, '2016-11-19 18:36:38'),
(333, 'saidpur cantonment', 'cantt public school and college students, cantt board school and college student, army personnel, saidpur airport personnel etc', 7, 89, '2016-11-20 16:03:37'),
(334, 'Parbatipur Puratan Bazar', 'Puratan bazar people', 7, 86, '2016-11-20 16:07:07'),
(335, 'Hili', 'Hili CP Point', 7, 86, '2016-11-20 16:08:19'),
(336, '', '', 2, 100, '2016-11-29 16:22:17'),
(337, 'Uzirpur', 'Uzirpur thana', 5, 104, '2016-12-12 12:35:18'),
(338, 'Gouronodi', 'gouronodi', 5, 104, '2016-12-12 12:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `areainfo`
--

CREATE TABLE `areainfo` (
  `id` int(11) NOT NULL,
  `areaid` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areainfo`
--

INSERT INTO `areainfo` (`id`, `areaid`, `description`, `created`) VALUES
(1, 203, 'Sher-E-Bangla Nagar Information.&lt;br&gt;\r\nSher-e-Bangla Nagar (Bengali: শেরে বাংলা নগর, meaning City of the Tiger of Bengal) is a neighborhood and one of the thana of Dhaka, the capital of Bangladesh.[1] It is also known as second capital, and home to the National Parliament, official residence of Prime Minister of Bangladesh Ganabhaban. The area has been named after A. K. Fazlul Huq, a renowned statesman and one of the most prominent political figures of Bangladesh who was popularly known as &quot;Sher-e-Bangla&quot; (Tiger of Bengal). The thana was formed in 2009 from parts of Tejgaon, Kafrul and Mohammadpur thanas.[2] Sher-e-Bangla Nagar is a busy commercial and central neighborhood in the city and home to many offices of government and public institutions, educational institutions, banks and financial institutions and shops.&lt;hr&gt;\r\nThe history of Sher-e-Bangla Nagar can be traced back to before the independence of Bangladesh. Sher-E-Bangla Nagar, Louis I. Kahn&#039;s cap&iacute;tol complex in Dhaka, had very good objectives. Those objectives, simply stated, were to make a significant impact locally and internationally and to represent the strong presence of the central government of what was then Pakistan. Seven miles from the city center, the project originally consisted of the National Assembly building and three hostels (that is, temporary accommodations for officials and delegates coming from West Pakistan when parliament was in session). One hostel was for ministers, one for secretaries, and one for the delegates to the National Assembly. The assembly and hostels were grouped together and called the &quot;Citadel of the Assembly.&quot;\r\n\r\nAn early version shows some civic functions, called by the architect the &quot;Citadel of the Institutions,&quot; grouped opposite the assembly. None of its constituents was ever built and, in 1971, it was replaced by the National Secretariat of Bangladesh. After 1975, the nation became more stable, and the project was revived. The cap&iacute;tol complex was again seen as a symbol; this time of the new government&#039;s stability and accomplishments.', '2018-11-13 04:55:13'),
(2, 193, 'Turag River\r\nFrom Wikipedia, the free encyclopedia\r\nJump to navigationJump to search\r\n\r\nThe river at Aminbazar-Gabtoli, Dhaka\r\n\r\nThe river at Ashulia\r\nAn industrialized and obstructed section of the river\r\n\r\nThe river at Mirpur, Dhaka\r\nThe Turag River (Bengali: তুরাগ নদী [t̪uraɡ nɔd̪i]) is the upper tributary of the Buriganga, a major river in Bangladesh. The Turag originates from the Bangshi River, the latter an important tributary of the Dhaleshwari River, flows through Gazipur and joins the Buriganga at Mirpur in Dhaka District. It is navigable by boat all year round.\r\n\r\nThe Turag suffers from infilling along its banks, which restricts its flow.[1] It also suffers from acute water pollution. While attempts have been made to marginally widen the river,[2] the majority of industry has made little effort to follow environmental law[3] and the water has become visibly discolored.', '2018-11-13 04:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `cityName` varchar(30) NOT NULL,
  `cityRating` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `cityName`, `cityRating`) VALUES
(1, 'dhaka', 25),
(2, 'new york', 80),
(3, 'okinawa', 60),
(4, 'kathmundu', 4),
(5, 'morishas', 77),
(6, 'jeneva', 90);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `distid` int(2) NOT NULL,
  `distname` varchar(30) NOT NULL,
  `distdesc` varchar(200) NOT NULL,
  `divid` int(2) NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`distid`, `distname`, `distdesc`, `divid`, `createdate`) VALUES
(5, 'joypurhat', 'joypurhat', 3, '2016-11-17 16:04:53'),
(10, 'Sherpur', 'Sherpur district', 9, '2016-11-17 16:06:07'),
(11, 'Pabna', 'Pabna', 3, '2016-11-17 16:06:19'),
(12, 'Noakhali', 'Royal District', 4, '2016-11-17 16:06:24'),
(13, 'Barguna ', 'Barguna District', 5, '2016-11-17 16:06:40'),
(14, 'Bagerhat', 'Bagerhat district', 2, '2016-11-17 16:06:44'),
(17, 'Bogra', 'Bogra', 3, '2016-11-17 16:07:25'),
(19, 'Bhola', 'Bhola District', 5, '2016-11-17 16:07:50'),
(20, 'Netrokona', 'Netrokona district', 9, '2016-11-17 16:07:56'),
(21, 'Kushtia', 'Kushtia district', 2, '2016-11-17 16:07:57'),
(23, 'Rajshahi', 'Rajshahi', 3, '2016-11-17 16:08:18'),
(24, 'Patuakhali', 'Patuakhali District', 5, '2016-11-17 16:08:24'),
(25, 'Chuadanga', 'Chuadanga District', 2, '2016-11-17 16:08:28'),
(26, 'Magura', 'magura', 2, '2016-11-17 16:08:35'),
(27, 'Jessore', 'Jessore District', 2, '2016-11-17 16:08:40'),
(28, 'Jhenaidah', 'Jhenaidah District', 2, '2016-11-17 16:08:55'),
(29, 'Pirojpur', 'Pirojpur District', 5, '2016-11-17 16:09:08'),
(33, 'Brahmanbaria', 'Brahmanbaria District', 4, '2016-11-17 16:09:41'),
(34, 'Meherpur', 'Meherpur district', 2, '2016-11-17 16:10:08'),
(35, 'Chandpur', 'Chandpur District', 4, '2016-11-17 16:10:09'),
(36, 'Magura', 'Magura District', 2, '2016-11-17 16:10:13'),
(38, 'Manikgonj', 'Manikgonj District', 1, '2016-11-17 16:10:29'),
(40, 'Chittagong', 'Chittagong District', 4, '2016-11-17 16:10:34'),
(41, 'Narail', 'Narail District', 2, '2016-11-17 16:10:42'),
(42, 'Jhinaidah', 'Jhinaidah district', 2, '2016-11-17 16:10:53'),
(43, 'Satkhira', 'Satkhira District', 2, '2016-11-17 16:10:55'),
(44, 'Comilla', 'Comilla District', 4, '2016-11-17 16:11:02'),
(45, 'Dhaka', 'Dhaka District', 1, '2016-11-17 16:11:03'),
(48, 'Faridpur', 'Faridpur District', 1, '2016-11-17 16:11:57'),
(51, 'Khagrachhari', 'Khagrachhari District', 4, '2016-11-17 16:12:23'),
(52, 'Gazipur', 'Gazipur District', 1, '2016-11-17 16:12:58'),
(53, 'Lakshmipur', 'Lakshmipur District', 4, '2016-11-17 16:12:58'),
(55, 'Natore', 'Natore', 3, '2016-11-17 16:13:07'),
(56, '  Naogaon', '  Naogaon', 3, '2016-11-17 16:13:22'),
(59, 'Kishoreganj', 'Kishoreganj District', 1, '2016-11-17 16:13:49'),
(61, 'Jamalpur', 'Jamalpur Districtrrrrr', 9, '2016-11-17 16:13:59'),
(62, 'Sunamganj', 'Sunamganj District', 6, '2016-11-17 16:14:01'),
(63, 'Rangamati', 'Rangamati District', 4, '2016-11-17 16:14:02'),
(64, 'Habiganj', 'Habiganj district', 6, '2016-11-17 16:14:03'),
(65, 'Chapainawabganj', 'Chapainawabganj', 3, '2016-11-17 16:14:13'),
(66, 'Moulvibazar', 'Moulvibazar District', 6, '2016-11-17 16:14:23'),
(68, 'Gopalgonj ', 'Gopalgonj District', 1, '2016-11-17 16:14:30'),
(69, 'Sylhet', 'Sylhet District', 6, '2016-11-17 16:14:47'),
(71, 'Sunamganj 	', 'Sunamganj district', 6, '2016-11-17 16:14:54'),
(73, 'Habigonj', 'Habigonj district', 6, '2016-11-17 16:15:24'),
(74, 'Madaripur', 'Madaripur District', 1, '2016-11-17 16:15:42'),
(78, 'Rajbari', 'Rajbari District', 1, '2016-11-17 16:16:18'),
(79, 'Shariatpur ', 'Shariatpur District', 1, '2016-11-17 16:16:58'),
(80, 'Tangail', 'Tangail er misti kob maja', 1, '2016-11-17 16:17:20'),
(84, 'Narsingdi', 'Narsingdi District', 1, '2016-11-17 16:17:51'),
(85, 'Rangpur', 'Rangpur', 7, '2016-11-17 16:18:04'),
(86, 'Dinajpur', 'Dinajpur', 7, '2016-11-17 16:18:18'),
(87, ' Kurigram', ' Kurigram', 7, '2016-11-17 16:18:41'),
(88, 'Gaibandha', 'Gaibandha', 7, '2016-11-17 16:18:57'),
(89, 'Nilphamari', 'Nilphamari', 7, '2016-11-17 16:19:12'),
(91, 'Panchagarh', 'Panchagarh', 7, '2016-11-17 16:19:53'),
(94, 'Thakurgaon', 'Thakurgaon', 7, '2016-11-17 16:20:05'),
(95, ' Lalmonirhat.', ' Lalmonirhat.\n', 7, '2016-11-17 16:20:17'),
(100, 'Mymensingh', 'Mymensingh District', 9, '2016-11-17 16:47:37'),
(101, 'Feni', 'Feni district', 4, '2016-11-19 16:43:04'),
(102, 'Jhalokati', 'Jhalokati District', 5, '2016-11-19 16:52:37'),
(103, 'joypurhat', 'joypurhat', 3, '2016-11-19 17:41:04'),
(104, 'Barisal', 'barishal sadar', 5, '2016-12-12 12:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `divid` int(2) NOT NULL,
  `divname` varchar(20) NOT NULL,
  `divdesc` varchar(200) NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`divid`, `divname`, `divdesc`, `createdate`) VALUES
(1, 'Dhaka', 'Dhaka Division', '2016-11-16 18:02:08'),
(2, 'Khulna', 'Khulna division', '2016-11-16 18:23:39'),
(3, 'Rajshahi', 'Rajshahi division', '2016-11-16 18:24:03'),
(4, 'Chittagong', 'Chittagong division', '2016-11-16 18:24:38'),
(5, 'Barishal', 'Barishal division', '2016-11-16 18:24:52'),
(6, 'Sylhet', 'Sylhet division', '2016-11-16 18:25:11'),
(7, 'Rangpur', 'Rangpur division', '2016-11-16 18:25:27'),
(9, 'Mymensingh', 'Mymensingh Division', '2016-11-16 18:57:28'),
(10, 'Noakhali', 'Noakhali Division', '2018-11-13 10:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE `functions` (
  `id` int(3) NOT NULL,
  `languageId` int(11) NOT NULL,
  `functionName` varchar(64) NOT NULL,
  `summary` varchar(128) NOT NULL,
  `example` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`id`, `languageId`, `functionName`, `summary`, `example`) VALUES
(1, 1, 'ucfirst', 'makes a strings first character uppercase', '$message = have a nice day;\r\necho ucfirst($message);'),
(2, 3, 'bind', 'bind event with a selector', '$(p).bind(\"click\",functionname);'),
(3, 1, 'mail', 'send mail to user', 'mail(to, subject,message)'),
(4, 3, 'live', 'can bind event to dynamically created selector', '$(selector).live(click,function)'),
(5, 1, 'explode', 'it willl burst', 'it will explode all the code'),
(6, 1, 'filter_var', 'sanitize and validate variable data', 'mixed filter_var ( mixed $variable [, int $filter = FILTER_DEFAULT [, mixed $options ]] )\r\nvariable\r\nValue to filter. Note that scalar values are converted to string internally before they are filtered.\r\n\r\nfilter\r\nThe ID of the filter to apply. The Types of filters manual page lists the available filters.\r\n\r\nIf omitted, FILTER_DEFAULT will be used, which is equivalent to FILTER_UNSAFE_RAW. This will result in no filtering taking place by default.\r\n\r\noptions\r\nAssociative array of options or bitwise disjunction of flags. If filter accepts options, flags can be provided in \"flags\" field of array. For the \"callback\" filter, callable type should be passed. The callback must accept one argument, the value to be filtered, and return the value after filtering/sanitizing it.'),
(7, 4, 'mark', 'mark selected text', 'unmarked <mark>mark element</mark>'),
(8, 4, 'strong', 'bold the text', 'normal text &lt;strong&gt;bold text&lt;/strong&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(3) NOT NULL,
  `languageName` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `languageName`) VALUES
(1, 'php'),
(2, 'asp'),
(3, 'jquery'),
(4, 'html'),
(5, 'css'),
(6, 'java script'),
(7, 'ExtJS'),
(8, 'Joomla'),
(9, 'Wordpress');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `movieName` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movieName`) VALUES
(1, 'gundey'),
(2, 'saving private ryans'),
(3, 'braveheart'),
(4, 'the lord of the rings: the two towers'),
(5, 'the wizard of OZ'),
(6, 'the sound of music'),
(7, 'its a wonderful life '),
(8, 'gladiator'),
(9, '2001:a space odyssey'),
(10, 'the good, the bad and the ugly'),
(11, 'the departed'),
(12, 'psycho'),
(13, 'american beauty'),
(14, 'pk'),
(15, 'kick'),
(16, 'OMG'),
(17, 'PIPRA BIDDA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'holmes', 'sherlockholmes'),
(2, 'watson', 'johnwatson'),
(3, 'sati', 'pranay'),
(4, 'mantu', 'ajayjoshi'),
(5, 'sahji', 'brijsah'),
(6, 'vijay', 'vijayjoshi'),
(7, 'brij', 'brijsah'),
(8, 'arjun', 'samant'),
(9, 'jyotsna', 'sonawane'),
(12, 'ravindra', 'pokharia'),
(13, 'prakash', 'joshi'),
(14, 'sahji2', 'aloklal'),
(15, 'basant', 'bhandari'),
(16, 'mamun', 'mamun'),
(17, 'sohel', 'sohel'),
(18, 'holmes1', 'holmes'),
(19, 'arjun123', 'rgtfgg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`areaid`);

--
-- Indexes for table `areainfo`
--
ALTER TABLE `areainfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`distid`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`divid`);

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
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
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `areaid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `areainfo`
--
ALTER TABLE `areainfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `distid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `divid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `functions`
--
ALTER TABLE `functions`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
