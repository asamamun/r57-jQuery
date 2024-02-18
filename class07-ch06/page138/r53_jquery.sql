-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 03:59 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r53_jquery`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countryName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countryName`) VALUES
(1, 'India'),
(2, 'Bangladesh'),
(3, 'Japan'),
(4, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE `functions` (
  `id` int(3) NOT NULL,
  `lid` int(11) NOT NULL,
  `fname` varchar(64) NOT NULL,
  `summary` varchar(128) NOT NULL,
  `example` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`id`, `lid`, `fname`, `summary`, `example`) VALUES
(1, 1, 'anchor', 'set hyperlink link with anchor tag: a', '<a href=\"somelink\">link name<a>'),
(2, 2, 'alert', 'output information to the user', 'alert(\"hello world\")'),
(3, 2, 'math.random', 'random value generator', 'Math.random will generate a random value from 0 to 1 in fraction.'),
(4, 3, 'require', 'add a php script with require', 'require function adds a php script into another script');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(1, 'HTML'),
(2, 'JavaScript'),
(3, 'PHP'),
(4, 'MySQL');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sku` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(5) NOT NULL,
  `unit` enum('piece','kg','lb','gm') COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `vat` decimal(9,2) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `description`, `quantity`, `unit`, `price`, `vat`, `uid`, `created`) VALUES
(15, 'cas2346', 'Casio Edifice', '', 0, 'piece', '100.00', '0.00', 4, '2022-03-03 04:09:33'),
(16, 'Is3434', 'Ispahani Tea bag', '', 0, 'piece', '60.00', '0.00', 4, '2022-03-03 04:09:33'),
(17, '5r8u54', 'another product', '', 0, 'piece', '244.00', '0.00', 4, '2022-03-03 04:09:33'),
(18, 'aaaa', 'aaa', '', 0, 'piece', '454.00', '0.00', 4, '2022-03-03 04:09:33'),
(19, 'tttt', 'ttttt', '', 0, 'piece', '43.00', '0.00', 4, '2022-03-03 04:09:33'),
(20, '12312312', 'asdasdasd', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 04:09:33'),
(24, 'wwww', 'www', '', 0, 'piece', '38.00', '0.00', 4, '2022-03-03 04:09:33'),
(25, 'dfdgf324', 'a very new product', '', 0, 'piece', '60.00', '0.00', 4, '2022-03-03 04:09:33'),
(26, 's1253', 'computer', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 04:09:33'),
(27, 'wt123', 'Walton TV', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 04:09:33'),
(28, '12', 'rana ', '', 0, 'piece', '255.00', '0.00', 4, '2022-03-03 04:09:33'),
(29, 'tea', 'tulshi green tea', '', 0, 'piece', '105.00', '0.00', 4, '2022-03-03 04:09:33'),
(30, 'fdg54', 'gfgf', '', 0, 'piece', '515.00', '0.00', 4, '2022-03-03 04:09:33'),
(31, 'ss1254', 'key board', '', 0, 'piece', '579.00', '0.00', 4, '2022-03-03 04:09:33'),
(32, 's200000', 'hair cutter', '', 0, 'piece', '515.00', '0.00', 4, '2022-03-03 04:09:33'),
(33, 'mobile', 'sumsung s9', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 04:09:33'),
(35, 'jhhd5782', 'A4-tech Keyboard', '', 0, 'piece', '515.00', '0.00', 4, '2022-03-03 04:09:33'),
(36, 's2254', 'axe perfume', '', 0, 'piece', '355.00', '0.00', 4, '2022-03-03 04:09:33'),
(38, '2222', 'dgkghdi higifghifghifh gifhgifghifhgifhg ifdhgfdhgifdhifdgifg igh', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 04:09:33'),
(39, 'lskdfj', 'jklasdf jklasdfkjlasdfjkl asdflkjaskldfjkj asdfkljkljlkjasdfkljlkj', '', 0, 'piece', '565.00', '0.00', 4, '2022-03-03 04:09:33'),
(40, '45grtrg', 'edtgtttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 04:09:33'),
(41, 'edd55255', 'compjdfjfpdjojdfofodjfdjdfoefiofjkhjfiodfhjfhjfhsdsjfahas', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 04:09:33'),
(42, '1215', 'yitttuuuu uuuuufddddddddd ddddddddddddddddddd dddddddddddddddd ddddddddddddddd ddddddd ddddddddddddd', '', 0, 'piece', '15.00', '0.00', 4, '2022-03-03 04:09:33'),
(44, 'rfl55', 'rfl', '', 0, 'piece', '305.00', '0.00', 4, '2022-03-03 04:09:33'),
(45, '55edwere', 'Canon mf54 Camera', '', 0, 'piece', '80015.00', '16003.00', 4, '2022-03-03 04:09:33'),
(47, 'dfg', 'dg', '', 0, 'piece', '50.00', '0.00', 4, '2022-03-03 04:09:33'),
(48, 'dfaf33', 'radio', '', 0, 'piece', '128.00', '0.00', 4, '2022-03-03 04:09:33'),
(49, '12555', 'sona bondhu', '', 0, 'piece', '6681.00', '1002.15', 4, '2022-03-03 04:09:33'),
(51, 'btl35', 'Botol', '', 0, 'piece', '125.00', '0.00', 4, '2022-03-03 04:09:33'),
(52, 'uuu', 'uuu', '', 0, 'piece', '88.00', '0.00', 4, '2022-03-03 04:09:33'),
(56, 'qqq', 'qqq', '', 0, 'piece', '12.00', '0.00', 4, '2022-03-03 04:09:33'),
(57, 'aaa', 'aaaa', '', 0, 'piece', '50.00', '0.00', 4, '2022-03-03 04:09:33'),
(58, 'ppp', 'pp', '', 0, 'piece', '50.00', '0.00', 4, '2022-03-03 04:09:33'),
(59, 'pr', 'prasix123', '', 0, 'piece', '300.00', '0.00', 4, '2022-03-03 04:09:33'),
(60, 'ttt', 'ttt', '', 0, 'piece', '55.00', '0.00', 4, '2022-03-03 04:09:33'),
(61, 'asdfsadf', 'sdafdsaf', '', 0, 'piece', '500.00', '0.00', 4, '2022-03-03 04:09:33'),
(63, 'sad', 'gp mug', '', 0, 'piece', '1500.00', '0.00', 4, '2022-03-03 04:09:33'),
(67, 'gpmug11', 'gp mug 22', '', 0, 'piece', '25.00', '0.00', 4, '2022-03-03 04:09:33'),
(68, 'phone111', '11 takar phone', '', 0, 'piece', '11.00', '0.00', 4, '2022-03-03 04:09:33'),
(70, 'asdf 111', 'gp mug', '', 0, 'piece', '11.00', '0.00', 4, '2022-03-03 04:09:33'),
(71, 'bbbb', 'bb', '', 0, 'piece', '333.00', '0.00', 4, '2022-03-03 04:09:33'),
(76, 'saj-001', 'sajek333', '', 0, 'piece', '5000.00', '0.00', 4, '2022-03-03 04:09:33'),
(77, 'qqqqqq12', 'toothbrush123', '', 0, 'piece', '500.00', '0.00', 4, '2022-03-03 04:09:33'),
(78, 'mansha00', 'Mansha Saree', '', 0, 'piece', '2500.00', '0.00', 4, '2022-03-03 04:09:33'),
(79, 'wsp-01', 'Wedding Saree Partywear', '', 0, 'piece', '10000.00', '0.00', 4, '2022-03-03 04:09:33'),
(80, 'test', 'test', 'desc', 10, 'piece', '123.00', '0.00', 4, '2022-03-03 06:45:36'),
(81, '3', 'Motor', 'desc', 10, 'piece', '8000.00', '0.00', 30, '2022-03-03 06:47:26'),
(82, '5', 'Lux', 'desc', 10, 'piece', '40.00', '0.00', 10, '2022-03-03 06:47:26'),
(83, '112', 'flower', 'desc', 10, 'piece', '2000.00', '0.00', 19, '2022-03-03 06:47:32'),
(84, 'ip-012', 'Apple iPhone 13 256GB', 'desc', 10, 'piece', '87500.00', '0.00', 25, '2022-03-03 06:47:32'),
(85, '100', 'Monitor', 'desc', 10, 'piece', '9000.00', '0.00', 29, '2022-03-03 06:47:37'),
(87, 'Smart Ph', 'One Plus 9 Pro', 'desc', 10, 'piece', '65000.00', '0.00', 9, '2022-03-03 06:47:40'),
(88, '1', 'Memory', 'desc', 10, 'piece', '500.00', '0.00', 30, '2022-03-03 06:47:51'),
(89, '101', 'book', 'desc', 10, 'piece', '1200.00', '0.00', 20, '2022-03-03 06:47:54'),
(90, '05', 'Iphone13pro', 'desc', 10, 'piece', '1.00', '0.00', 8, '2022-03-03 06:48:05'),
(91, '52', 'Pistol', 'desc', 10, 'piece', '20000.00', '0.00', 10, '2022-03-03 06:48:08'),
(93, '101', 'camera', 'desc', 10, 'piece', '40000.00', '0.00', 29, '2022-03-03 06:48:19'),
(94, '12345678', 'Mobile', 'desc', 10, 'piece', '25000.00', '0.00', 16, '2022-03-03 06:48:22'),
(95, '113', 'flower2', 'desc', 10, 'piece', '2500.00', '0.00', 19, '2022-03-03 06:48:24'),
(96, 'op-045', 'OnePlus 10 Pro', 'desc', 10, 'piece', '78000.00', '0.00', 25, '2022-03-03 06:48:24'),
(97, 'laptop', 'laptop', 'desc', 10, 'piece', '50000.00', '0.00', 4, '2022-03-03 06:48:25'),
(98, 'Smart Ph', 'One Plus 10 Pro', 'desc', 10, 'piece', '90000.00', '0.00', 9, '2022-03-03 06:48:25'),
(99, '12543', 'sumsung', 'desc', 10, 'piece', '33000.00', '0.00', 27, '2022-03-03 06:48:36'),
(100, '112230', 'Samgsung phone', 'desc', 10, 'piece', '38550.00', '0.00', 24, '2022-03-03 06:48:43'),
(101, '10', 'Galaxy22 ultra', 'desc', 10, 'piece', '1.00', '0.00', 8, '2022-03-03 06:49:28'),
(102, '102', 'prime', 'desc', 10, 'piece', '1300.00', '0.00', 20, '2022-03-03 06:49:38'),
(103, '124', 'Pen', 'desc', 10, 'piece', '500.00', '0.00', 28, '2022-03-03 06:49:40'),
(104, '43216', 'sumsung', 'desc', 10, 'piece', '564320.00', '0.00', 27, '2022-03-03 06:50:02'),
(105, '03', 'Hand made card', 'desc', 10, 'piece', '200.00', '0.00', 5, '2022-03-03 06:52:20'),
(106, 'nkls1234', 'necklace', 'desc', 10, 'piece', '20000.00', '0.00', 31, '2022-03-03 06:52:38'),
(107, 'fngm', 'fay spray', 'desc', 10, 'piece', '150.00', '0.00', 26, '2022-03-03 06:53:23'),
(108, 'qq', 'qq', 'qq', 12, 'kg', '12.00', '0.00', 4, '2022-03-05 05:46:24'),
(109, 'www', 'www', 'www', 12, 'kg', '123.00', '0.00', 4, '2022-03-05 07:04:53'),
(110, 'yy', 'yy', 'yy', 12, 'piece', '12.00', '0.00', 4, '2022-03-05 07:07:30'),
(111, 'asdf', 'sadf', 'asdf', 12, 'kg', '12.00', '0.00', 4, '2022-03-05 07:09:07'),
(112, 'rr', 'rr', 'rr', 123, 'piece', '123.00', '0.00', 4, '2022-03-05 07:11:48'),
(113, 'test555', 'test', 'some desc', 50, 'piece', '500.00', '0.00', 4, '2022-03-08 04:43:50'),
(114, 'test555', 'test', 'some desc', 50, 'piece', '500.00', '0.00', 4, '2022-03-08 04:44:16'),
(115, 'test555', 'test', 'some desc', 50, 'piece', '500.00', '0.00', 4, '2022-03-08 04:45:33'),
(116, 'test555', 'test', 'some desc', 50, 'piece', '500.00', '0.00', 4, '2022-03-08 04:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `stateName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `countryId`, `stateName`) VALUES
(1, 1, 'U.P.'),
(2, 1, 'Uttarakhand'),
(3, 2, 'Dhaka'),
(4, 2, 'Chittagong'),
(5, 2, 'Rajshahi'),
(6, 3, 'Tokyo'),
(7, 3, 'Okinawa'),
(8, 3, 'Hiroshima'),
(9, 3, 'Nagashaki');

-- --------------------------------------------------------

--
-- Table structure for table `testusers`
--

CREATE TABLE `testusers` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testusers`
--

INSERT INTO `testusers` (`id`, `username`, `password`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `towninfo`
--

CREATE TABLE `towninfo` (
  `id` int(11) NOT NULL,
  `townId` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `towninfo`
--

INSERT INTO `towninfo` (`id`, `townId`, `description`) VALUES
(1, 3, 'Pithoragarh is a beautiful town situated in Kumaon region of Uttarakhand. It has an average elevation of 1,514\r\nmetres (4,967 feet) above sea level.'),
(2, 4, 'Dehradun also known as Doon is the capital city of Uttarakhand. It is around 250 Kilometers from national\r\ncapital Delhi.\r\nRice and Lychee are major products of this city.'),
(3, 1, 'Lucknow is the capital city of U.P. or Uttar Pradesh.\r\nLucknow has Asia\'s first human DNA bank.\r\nIt is\r\npopularly known as The City of Nawabs, Golden City of the East and The Constantinople of India.'),
(4, 6, 'savar details info'),
(5, 7, 'gazipur info');

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `townName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `stateId`, `townName`) VALUES
(1, 1, 'Lucknow'),
(2, 1, 'Bareilly'),
(3, 2, 'Pithoragarh'),
(4, 2, 'Dehradun'),
(5, 2, 'Nainital'),
(6, 3, 'Savar'),
(7, 3, 'Gazipur'),
(8, 3, 'NGanj'),
(9, 4, 'Potanga'),
(10, 4, 'Agrabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testusers`
--
ALTER TABLE `testusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towninfo`
--
ALTER TABLE `towninfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `functions`
--
ALTER TABLE `functions`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testusers`
--
ALTER TABLE `testusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `towninfo`
--
ALTER TABLE `towninfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
