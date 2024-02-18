-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 07:00 PM
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
-- Database: `r53_jquery_project`
--

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
(15, 'cas2346', 'Casio Edifice', '', 0, 'piece', '100.00', '0.00', 4, '2022-03-03 10:09:33'),
(16, 'Is3434', 'Ispahani Tea bag', '', 0, 'piece', '60.00', '0.00', 4, '2022-03-03 10:09:33'),
(17, '5r8u54', 'another product', '', 0, 'piece', '244.00', '0.00', 4, '2022-03-03 10:09:33'),
(18, 'aaaa', 'aaa', '', 0, 'piece', '454.00', '0.00', 4, '2022-03-03 10:09:33'),
(19, 'tttt', 'ttttt', '', 0, 'piece', '43.00', '0.00', 4, '2022-03-03 10:09:33'),
(20, '12312312', 'asdasdasd', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 10:09:33'),
(24, 'wwww', 'www', '', 0, 'piece', '38.00', '0.00', 4, '2022-03-03 10:09:33'),
(25, 'dfdgf324', 'a very new product', '', 0, 'piece', '60.00', '0.00', 4, '2022-03-03 10:09:33'),
(26, 's1253', 'computer', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 10:09:33'),
(27, 'wt123', 'Walton TV', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 10:09:33'),
(28, '12', 'rana ', '', 0, 'piece', '255.00', '0.00', 4, '2022-03-03 10:09:33'),
(29, 'tea', 'tulshi green tea', '', 0, 'piece', '105.00', '0.00', 4, '2022-03-03 10:09:33'),
(30, 'fdg54', 'gfgf', '', 0, 'piece', '515.00', '0.00', 4, '2022-03-03 10:09:33'),
(31, 'ss1254', 'key board', '', 0, 'piece', '579.00', '0.00', 4, '2022-03-03 10:09:33'),
(32, 's200000', 'hair cutter', '', 0, 'piece', '515.00', '0.00', 4, '2022-03-03 10:09:33'),
(33, 'mobile', 'sumsung s9', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 10:09:33'),
(35, 'jhhd5782', 'A4-tech Keyboard', '', 0, 'piece', '515.00', '0.00', 4, '2022-03-03 10:09:33'),
(36, 's2254', 'axe perfume', '', 0, 'piece', '355.00', '0.00', 4, '2022-03-03 10:09:33'),
(38, '2222', 'dgkghdi higifghifghifh gifhgifghifhgifhg ifdhgfdhgifdhifdgifg igh', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 10:09:33'),
(39, 'lskdfj', 'jklasdf jklasdfkjlasdfjkl asdflkjaskldfjkj asdfkljkljlkjasdfkljlkj', '', 0, 'piece', '565.00', '0.00', 4, '2022-03-03 10:09:33'),
(40, '45grtrg', 'edtgtttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 10:09:33'),
(41, 'edd55255', 'compjdfjfpdjojdfofodjfdjdfoefiofjkhjfiodfhjfhjfhsdsjfahas', '', 0, 'piece', '1014.99', '50.75', 4, '2022-03-03 10:09:33'),
(42, '1215', 'yitttuuuu uuuuufddddddddd ddddddddddddddddddd dddddddddddddddd ddddddddddddddd ddddddd ddddddddddddd', '', 0, 'piece', '15.00', '0.00', 4, '2022-03-03 10:09:33'),
(44, 'rfl55', 'rfl', '', 0, 'piece', '305.00', '0.00', 4, '2022-03-03 10:09:33'),
(45, '55edwere', 'Canon mf54 Camera', '', 0, 'piece', '80015.00', '16003.00', 4, '2022-03-03 10:09:33'),
(47, 'dfg', 'dg', '', 0, 'piece', '50.00', '0.00', 4, '2022-03-03 10:09:33'),
(48, 'dfaf33', 'radio', '', 0, 'piece', '128.00', '0.00', 4, '2022-03-03 10:09:33'),
(49, '12555', 'sona bondhu', '', 0, 'piece', '6681.00', '1002.15', 4, '2022-03-03 10:09:33'),
(51, 'btl35', 'Botol', '', 0, 'piece', '125.00', '0.00', 4, '2022-03-03 10:09:33'),
(52, 'uuu', 'uuu', '', 0, 'piece', '88.00', '0.00', 4, '2022-03-03 10:09:33'),
(56, 'qqq', 'qqq', '', 0, 'piece', '12.00', '0.00', 4, '2022-03-03 10:09:33'),
(57, 'aaa', 'aaaa', '', 0, 'piece', '50.00', '0.00', 4, '2022-03-03 10:09:33'),
(58, 'ppp', 'pp', '', 0, 'piece', '50.00', '0.00', 4, '2022-03-03 10:09:33'),
(59, 'pr', 'prasix123', '', 0, 'piece', '300.00', '0.00', 4, '2022-03-03 10:09:33'),
(60, 'ttt', 'ttt', '', 0, 'piece', '55.00', '0.00', 4, '2022-03-03 10:09:33'),
(61, 'asdfsadf', 'sdafdsaf', '', 0, 'piece', '500.00', '0.00', 4, '2022-03-03 10:09:33'),
(63, 'sad', 'gp mug', '', 0, 'piece', '1500.00', '0.00', 4, '2022-03-03 10:09:33'),
(67, 'gpmug11', 'gp mug 22', '', 0, 'piece', '25.00', '0.00', 4, '2022-03-03 10:09:33'),
(68, 'phone111', '11 takar phone', '', 0, 'piece', '11.00', '0.00', 4, '2022-03-03 10:09:33'),
(70, 'asdf 111', 'gp mug', '', 0, 'piece', '11.00', '0.00', 4, '2022-03-03 10:09:33'),
(71, 'bbbb', 'bb', '', 0, 'piece', '333.00', '0.00', 4, '2022-03-03 10:09:33'),
(76, 'saj-001', 'sajek333', '', 0, 'piece', '5000.00', '0.00', 4, '2022-03-03 10:09:33'),
(77, 'qqqqqq12', 'toothbrush123', '', 0, 'piece', '500.00', '0.00', 4, '2022-03-03 10:09:33'),
(78, 'mansha00', 'Mansha Saree', '', 0, 'piece', '2500.00', '0.00', 4, '2022-03-03 10:09:33'),
(79, 'wsp-01', 'Wedding Saree Partywear', '', 0, 'piece', '10000.00', '0.00', 4, '2022-03-03 10:09:33'),
(80, 'test', 'test', 'desc', 10, 'piece', '123.00', '0.00', 4, '2022-03-03 12:45:36'),
(81, '3', 'Motor', 'desc', 10, 'piece', '8000.00', '0.00', 30, '2022-03-03 12:47:26'),
(82, '5', 'Lux', 'desc', 10, 'piece', '40.00', '0.00', 10, '2022-03-03 12:47:26'),
(83, '112', 'flower', 'desc', 10, 'piece', '2000.00', '0.00', 19, '2022-03-03 12:47:32'),
(84, 'ip-012', 'Apple iPhone 13 256GB', 'desc', 10, 'piece', '87500.00', '0.00', 25, '2022-03-03 12:47:32'),
(85, '100', 'Monitor', 'desc', 10, 'piece', '9000.00', '0.00', 29, '2022-03-03 12:47:37'),
(87, 'Smart Ph', 'One Plus 9 Pro', 'desc', 10, 'piece', '65000.00', '0.00', 9, '2022-03-03 12:47:40'),
(88, '1', 'Memory', 'desc', 10, 'piece', '500.00', '0.00', 30, '2022-03-03 12:47:51'),
(89, '101', 'book', 'desc', 10, 'piece', '1200.00', '0.00', 20, '2022-03-03 12:47:54'),
(90, '05', 'Iphone13pro', 'desc', 10, 'piece', '1.00', '0.00', 8, '2022-03-03 12:48:05'),
(91, '52', 'Pistol', 'desc', 10, 'piece', '20000.00', '0.00', 10, '2022-03-03 12:48:08'),
(93, '101', 'camera', 'desc', 10, 'piece', '40000.00', '0.00', 29, '2022-03-03 12:48:19'),
(94, '12345678', 'Mobile', 'desc', 10, 'piece', '25000.00', '0.00', 16, '2022-03-03 12:48:22'),
(95, '113', 'flower2', 'desc', 10, 'piece', '2500.00', '0.00', 19, '2022-03-03 12:48:24'),
(96, 'op-045', 'OnePlus 10 Pro', 'desc', 10, 'piece', '78000.00', '0.00', 25, '2022-03-03 12:48:24'),
(97, 'laptop', 'laptop', 'desc', 10, 'piece', '50000.00', '0.00', 4, '2022-03-03 12:48:25'),
(98, 'Smart Ph', 'One Plus 10 Pro', 'desc', 10, 'piece', '90000.00', '0.00', 9, '2022-03-03 12:48:25'),
(99, '12543', 'sumsung', 'desc', 10, 'piece', '33000.00', '0.00', 27, '2022-03-03 12:48:36'),
(100, '112230', 'Samgsung phone', 'desc', 10, 'piece', '38550.00', '0.00', 24, '2022-03-03 12:48:43'),
(101, '10', 'Galaxy22 ultra', 'desc', 10, 'piece', '1.00', '0.00', 8, '2022-03-03 12:49:28'),
(102, '102', 'prime', 'desc', 10, 'piece', '1300.00', '0.00', 20, '2022-03-03 12:49:38'),
(103, '124', 'Pen', 'desc', 10, 'piece', '500.00', '0.00', 28, '2022-03-03 12:49:40'),
(104, '43216', 'sumsung', 'desc', 10, 'piece', '564320.00', '0.00', 27, '2022-03-03 12:50:02'),
(105, '03', 'Hand made card', 'desc', 10, 'piece', '200.00', '0.00', 5, '2022-03-03 12:52:20'),
(106, 'nkls1234', 'necklace', 'desc', 10, 'piece', '20000.00', '0.00', 31, '2022-03-03 12:52:38'),
(107, 'fngm', 'fay spray', 'desc', 10, 'piece', '150.00', '0.00', 26, '2022-03-03 12:53:23'),
(108, 'qq', 'qq', 'qq', 12, 'kg', '12.00', '0.00', 4, '2022-03-05 11:46:24'),
(109, 'www', 'www', 'www', 12, 'kg', '123.00', '0.00', 4, '2022-03-05 13:04:53'),
(110, 'yy', 'yy', 'yy', 12, 'piece', '12.00', '0.00', 4, '2022-03-05 13:07:30'),
(111, 'asdf', 'sadf', 'asdf', 12, 'kg', '12.00', '0.00', 4, '2022-03-05 13:09:07'),
(112, 'rr', 'rr', 'rr', 123, 'piece', '123.00', '0.00', 4, '2022-03-05 13:11:48'),
(113, 'test555', 'test', 'some desc', 50, 'piece', '500.00', '0.00', 4, '2022-03-08 10:43:50'),
(114, 'test555', 'test', 'some desc', 50, 'piece', '500.00', '0.00', 4, '2022-03-08 10:44:16'),
(115, 'test555', 'test', 'some desc', 50, 'piece', '500.00', '0.00', 4, '2022-03-08 10:45:33'),
(117, 'asdf', 'sadf', 'sadfsdafd', 123, 'piece', '123.00', '0.00', 4, '2022-03-21 12:29:21'),
(118, '123', '123', '123', 12, 'piece', '123.00', '0.00', 4, '2022-03-21 12:42:32'),
(119, 'pppppppp', 'test ppppppppp', 'some details', 13, 'piece', '123.00', '0.00', 4, '2022-03-21 12:53:41'),
(120, '123', '123', '123', 123, 'piece', '123.00', '0.00', 4, '2022-03-21 12:58:47'),
(121, '132', '123', '123', 12, 'piece', '123.00', '0.00', 4, '2022-03-21 12:59:45'),
(122, '333', '333', '333', 12, 'piece', '333.00', '0.00', 4, '2022-03-21 13:00:56'),
(123, '666', '666', '666', 666, 'piece', '666.00', '0.00', 4, '2022-03-21 13:01:42'),
(124, 'yyy', 'yyy', 'yyy', 12, 'piece', '123.00', '0.00', 4, '2022-03-21 13:03:07'),
(125, '132', '123', '123', 123, 'piece', '123.00', '0.00', 4, '2022-03-21 13:07:58'),
(126, 'tttt', 'ttt', 'tttt', 12, 'piece', '123.00', '0.00', 4, '2022-03-21 13:10:01'),
(127, '333', '333', '333', 123, 'piece', '123.00', '22.00', 4, '2022-03-21 13:12:19'),
(128, 'iii', 'iii', 'iii', 12, 'piece', '11.00', '11.00', 4, '2022-03-21 13:14:31'),
(129, 'yyy', 'yyy', 'yyy', 12, 'piece', '666.00', '6.00', 4, '2022-03-21 13:15:26'),
(130, 'uni123', 'University', 'university lorem', 5, 'piece', '500.00', '5.00', 32, '2023-02-25 10:51:36'),
(131, 'Test Flo', 'Flower', 'testing flower images', 400, 'piece', '50.00', '5.00', 32, '2023-02-25 11:07:28'),
(132, '12', 'Camera', 'this is a camera', 2, 'piece', '40000.00', '10.00', 38, '2023-02-25 11:50:43'),
(133, 'laptop', 'SR Sohan Laptop', 'Gaming Laptop', 5, 'piece', '100000.00', '5.00', 33, '2023-02-25 11:51:05'),
(134, 'MGN63', 'MacBook', '13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGN63) Space Gray', 10, '', '113.00', '5.00', 40, '2023-02-25 11:51:59'),
(135, 'vegetabl', 'My Favorite Vegetables', 'All Vegetables ', 100, 'kg', '60.00', '5.00', 33, '2023-02-25 11:52:20'),
(136, 'ram', 'DDR4 8GB RAM', 'Desktop Ram', 100, 'piece', '1500.00', '5.00', 33, '2023-02-25 11:54:04'),
(137, 'RC81', 'Backpack', 'Tear- and water-resistant exterior\r\nTPU padded scratch proof interior\r\nDedicated laptop compartment\r\nMade to fit the Razer Blade 15\"', 10, 'piece', '11.00', '5.00', 40, '2023-02-25 11:54:18'),
(138, 'laptoop', 'laptop', 'A laptop computer, sometimes called a notebook computer by manufacturers, is a battery- or AC-powered personal computer generally smaller than a briefcase that can easily be transported and conveniently used in temporary spaces such as on airplanes, in libraries, temporary offices, and at meetings.', 1, 'piece', '70000.00', '20.00', 37, '2023-02-25 11:54:55'),
(139, 'camera', 'camera', 'electronics', 1, 'piece', '50.00', '5.00', 36, '2023-02-25 11:54:55'),
(140, 'Apple iP', 'Apple iPhone 13 Pro', 'Apple iPhone 13 Pro comes with a 6.1 inches Super Retina XDR OLED Full HD+ screen. It has a Apple iPhone notch design. The back camera is of quad 12+12+12 Megapixel + TOF 3D LiDAR scanner with powerful image processing capability and 4K video recording. The front one is of Dual 12 MP and SL 3D camera. Apple iPhone 13 Pro comes with 3095 mAh battery with 23W fast charging solution. It has 6 GB RAM, up to 3.22 GHz Hexa-core CPU and Apple GPU. It is powered by a 5 nm Apple A15 Bionic chipset. The device comes with 128, 256, 512 GB or 1 TB internal storage.\r\n\r\nAmong other features, there is Face ID, Apple Pay, Siri, Qi Wireless Charging, etc. There is no FM Radio, 3.5mm jack, and MicroSD slot in this phone. The device is IP68-certified waterproof and 5G supported.', 5, 'piece', '0.00', '10.00', 42, '2023-02-25 11:55:19'),
(141, 'd12', 'bike', 'very costly', 1, 'piece', '100000.00', '15.00', 39, '2023-02-25 11:55:19'),
(142, 'watch', 'watch', 'accessories', 1, 'piece', '2.00', '200.00', 36, '2023-02-25 11:56:10'),
(143, 'd13', 'cycle', 'very costly', 1, 'piece', '10000.00', '15.00', 39, '2023-02-25 11:56:13'),
(144, 'car', 'RAM Car', 'Ram car', 100, 'piece', '1500000.00', '5.00', 33, '2023-02-25 11:56:29'),
(145, 'Foldable', 'Alluminium Foldable Laptop Table', 'Compatible with 11-17inch laptops\r\nBuilt-in iPad stand groove & Cupholder\r\nScratch-resistant, Heat resistant\r\nSize: 40 x 60 x 27 (Cm)', 10, 'piece', '1.00', '5.00', 40, '2023-02-25 11:56:39'),
(146, 'Apple iP', 'Apple iPhone 13 Mini', 'Apple iPhone 13 Mini comes with a 5.4 inches Super Retina XDR OLED Full HD+ screen. It has a classical Apple iPhone notch design. The back camera is of dual 12+12 MP with powerful image processing capability and 4K video recording. The front one is of Dual 12 MP and SL 3D camera. Apple iPhone 13 Mini comes with 2438 mAh battery with 20W fast charging solution. It has 4 GB RAM, up to 3.22 GHz Hexa-core CPU and Apple GPU. It is powered by a 5 nm Apple A15 Bionic chipset. The device comes with 128, 256 or 512 GB internal storage.\r\n\r\nAmong other features, there is Face ID, Apple Pay, Siri, Qi Wireless Charging etc. There is no FM Radio, 3.5mm jack and MicroSD slot in this phone. The device is IP68 certified waterproof and 5G supported.', 6, 'piece', '0.00', '10.00', 42, '2023-02-25 11:56:59'),
(147, 'laptop', 'laptop', 'electronics', 1, 'piece', '50.00', '4.00', 36, '2023-02-25 11:57:02'),
(148, '5', 'tshirt', 'this is a tshirt', 3, 'piece', '300.00', '5.00', 38, '2023-02-25 11:57:45'),
(149, 'mug', 'mug', 'mug', 1, 'piece', '700.00', '10.00', 36, '2023-02-25 11:57:50'),
(150, 'phone', 'Nothing Phone', 'Nothing Transparent Phone', 100, 'piece', '60000.00', '5.00', 33, '2023-02-25 11:58:18'),
(151, '6', 'Tshirt', 'this is a tshirt..', 4, 'piece', '400.00', '5.00', 38, '2023-02-25 11:58:22'),
(152, 'sunglass', 'sunglass', 'sunglass', 1, 'piece', '900.00', '90.00', 36, '2023-02-25 11:58:45'),
(153, 'Samsung ', 'Samsung Galaxy A53 5G', 'Samsung Galaxy A53 5G comes with 6.5 inches Full HD+ Super AMOLED screen. It has a center punch-hole front camera design. The back camera is of Quad 64+12+5+5 with PDAF, OIS, ultrawide, depth sensor, dedicated macro camera etc. and Ultra HD video recording. The front camera is of 32 MP. Galaxy A53 5G comes with 5000 mAh battery with 25W fast charging. It has 8 GB RAM, up to 2.4 GHz octa-core CPU and Mali-G68 MP2 GPU. It is powered by a Exynos 1280 (5 nm) chipset. The device comes with 128 or 256 GB internal storage and MicroSD slot. There is an in-display optical fingerprint sensor in this phone.\r\n\r\nAmong other features, there is FM Radio, Dual SIM, Face Unlock, USB Type-C etc.', 6, 'piece', '0.00', '10.00', 42, '2023-02-25 11:59:02'),
(154, 'car', 'car', 'Governments and private organizations have developed car classification schemes that are used for various purposes including regulation, description, and categorization of cars.', 1, 'piece', '90000000.00', '20.00', 37, '2023-02-25 11:59:21'),
(155, 'HV-F2030', 'Laptop Cooler', 'Fan Size: 140 x 140 x 15mm\r\nFan Noise Level: 21dBA(min)\r\nFan Noise : 15dbA (min)\r\nFan Speed : 800-1200 RPM', 10, 'piece', '1.00', '2.00', 40, '2023-02-25 11:59:29'),
(156, '5', 'pant', 'this is a pant..', 4, 'piece', '500.00', '5.00', 38, '2023-02-25 12:00:01'),
(157, '3', 'All3', 'Samsung Galaxy A53 5G comes with 6.5 inches Full HD+ Super AMOLED screen. It has a center punch-hole front camera design. The back camera is of Quad 64+12+5+5 with PDAF, OIS, ultrawide, depth sensor, dedicated macro camera etc. and Ultra HD video recording. The front camera is of 32 MP. Galaxy A53 5G comes with 5000 mAh battery with 25W fast charging. It has 8 GB RAM, up to 2.4 GHz octa-core CPU and Mali-G68 MP2 GPU. It is powered by a Exynos 1280 (5 nm) chipset. The device comes with 128 or 256 GB internal storage and MicroSD slot. There is an in-display optical fingerprint sensor in this phone.\r\n\r\nAmong other features, there is FM Radio, Dual SIM, Face Unlock, USB Type-C etc.', 6, 'piece', '250000.00', '10.00', 42, '2023-02-25 12:00:18'),
(158, '2', 'Nokia Lumia', 'this is a mobile..', 1, 'piece', '35000.00', '10.00', 38, '2023-02-25 12:01:05'),
(159, '2', 'Nokia Lumia 630', 'this is a mobile..', 1, 'piece', '40000.00', '10.00', 38, '2023-02-25 12:01:53'),
(160, 'pm', 'Perfume', 'perfume', 1, 'piece', '0.00', '2.00', 41, '2023-02-25 12:02:05'),
(161, 'asd', 'Sharee', 'Tangail Sharee', 25, 'piece', '780.00', '0.00', 34, '2023-02-25 12:02:38'),
(162, 'AD-0258', 'Laptop Power Charger Adapter ', 'A Grade adapter\r\nFor laptop & notebook\r\n6 month warranty', 10, 'piece', '1.00', '2.00', 40, '2023-02-25 12:02:38'),
(163, '3', 'Power Bank', 'this is a power bank..', 1, 'piece', '2000.00', '10.00', 38, '2023-02-25 12:03:09'),
(164, 'test53', 'test53', 'test53 description', 30, 'kg', '500.00', '5.00', 32, '2023-02-25 12:03:40'),
(165, 'asdf', 'New Sharee', 'Tangail Sharee', 23, 'piece', '1000.00', '0.00', 34, '2023-02-25 12:03:49'),
(166, 'se', 'shoe', 'men shoe', 2, 'piece', '0.00', '2.00', 41, '2023-02-25 12:04:20'),
(167, '5', 'Hair Dry', 'this is a power Hair dryer..', 1, 'piece', '2000.00', '10.00', 38, '2023-02-25 12:04:21'),
(168, 'ddff', 'chomchom', 'tangail chomchom', 40, 'kg', '320.00', '0.00', 34, '2023-02-25 12:05:56'),
(169, '3', 'Kemei-KM-810-Hair-Dryer-With-Comb', 'this is a power Hair dryer..', 1, 'piece', '2500.00', '10.00', 38, '2023-02-25 12:05:58'),
(170, '4', 'rice coocker', 'this is a power rice coocker..', 1, 'piece', '3000.00', '10.00', 38, '2023-02-25 12:07:14'),
(171, 'hp', 'head phone', 'hearing instrument', 1, 'piece', '0.00', '2.00', 41, '2023-02-25 12:07:24'),
(172, 'asad', 'kotha khesh saree', 'kotha khesh saree', 15, 'piece', '700.00', '0.00', 34, '2023-02-25 12:07:28'),
(173, 'mobile', 'mobile', 'electronics', 3, 'piece', '40000.00', '20.00', 36, '2023-02-25 12:07:59'),
(174, '5', 'bajaj-pulsar', 'this is a power rice bajaj-pulsar..', 1, 'piece', '200000.00', '10.00', 38, '2023-02-25 12:08:09'),
(175, 'perfume', 'perfume', 'perfume', 3, 'piece', '5000.00', '20.00', 36, '2023-02-25 12:08:43'),
(176, '4', 'bajaj-pulsar', 'this is a power rice bajaj-pulsar..', 1, 'piece', '400000.00', '10.00', 38, '2023-02-25 12:08:55'),
(177, 'ssaa', 'Knife ', 'Knife with wood Handle Leather cover', 5, 'piece', '2000.00', '0.00', 34, '2023-02-25 12:09:49'),
(178, '3', 'Bicycle-Children', 'this is a power Bicycle-Children', 1, 'piece', '20000.00', '10.00', 38, '2023-02-25 12:10:09'),
(179, 'se', 'Shoe', 'shoe', 2, 'piece', '700.00', '10.00', 41, '2023-02-25 12:11:48'),
(180, '12', 'mobile', 'The Samsung Galaxy A03s Price in Bangladesh is ৳13,999 4/64 GB BDT.\r\nThis phone comes with 5000 mAh battery and 6.5 inches display.\r\nThe back camera is of Triple 13+2+2 Megapixel. The Selfie camera is of 5 megapixel.\r\nSamsung Galaxy A03s has 3/4 GB RAM and 32/64  GB internal storage and can be expanded by dedicated MicroSD slot.\r\nThis phone is runs with Android operating system.\r\nThere is also Fast Charging, USB type-C, face unlock, fingerprint sensor in this Samsung Galaxy A03s device.', 12, 'gm', '25000.00', '5.00', 35, '2023-02-25 12:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `pid`, `image`, `created`) VALUES
(1, 125, 'GBS-21_1647868078_4_125', '2022-03-21 13:07:58'),
(2, 125, 'GBS-28_1647868078_4_1', '2022-03-21 13:07:58'),
(3, 125, 'GBS-58_1647868079_4_2', '2022-03-21 13:07:59'),
(4, 126, 'GBS-77_1647868201_4_126png', '2022-03-21 13:10:01'),
(5, 126, 'GBS-80_1647868201_4_4png', '2022-03-21 13:10:01'),
(6, 126, 'GBS-95 (1)_1647868201_4_5png', '2022-03-21 13:10:01'),
(7, 126, 'GBS-95_1647868201_4_6png', '2022-03-21 13:10:01'),
(8, 126, 'GBS-110_1647868201_4_7png', '2022-03-21 13:10:01'),
(9, 127, 'GBS-53_1647868339_4_127.png', '2022-03-21 13:12:19'),
(10, 127, 'GBS-58_1647868339_4_9.png', '2022-03-21 13:12:19'),
(11, 127, 'GBS-77_1647868339_4_10.png', '2022-03-21 13:12:19'),
(12, 127, 'GBS-80_1647868339_4_11.png', '2022-03-21 13:12:19'),
(13, 127, 'GBS-95 (1)_1647868339_4_12.png', '2022-03-21 13:12:19'),
(14, 127, 'GBS-95_1647868339_4_13.png', '2022-03-21 13:12:19'),
(15, 127, 'GBS-110_1647868339_4_14.png', '2022-03-21 13:12:19'),
(16, 127, 'Mansha 1750_1647868340_4_15.jpg', '2022-03-21 13:12:20'),
(17, 127, 'Mansha 2350_1647868340_4_16.jpg', '2022-03-21 13:12:20'),
(18, 127, 'Mansha 2350_2_1647868340_4_17.jpg', '2022-03-21 13:12:20'),
(19, 128, 'GBS-03_1647868471_4_128.png', '2022-03-21 13:14:31'),
(20, 128, 'GBS-06_1647868472_4_128.png', '2022-03-21 13:14:32'),
(21, 128, 'GBS-08_1647868472_4_128.png', '2022-03-21 13:14:32'),
(22, 128, 'GBS-10_1647868472_4_128.png', '2022-03-21 13:14:32'),
(23, 128, 'GBS-12_1647868472_4_128.png', '2022-03-21 13:14:32'),
(24, 129, 'GBS-80_1647868526_4_129.png', '2022-03-21 13:15:26'),
(25, 129, 'GBS-95 (1)_1647868526_4_129.png', '2022-03-21 13:15:26'),
(26, 129, 'GBS-95_1647868527_4_129.png', '2022-03-21 13:15:27'),
(27, 129, 'GBS-110_1647868527_4_129.png', '2022-03-21 13:15:27'),
(28, 129, 'Mansha 1750_1647868527_4_129.jpg', '2022-03-21 13:15:27'),
(29, 130, '323140283_725509438801513_3883935970662978889_n_1677322296_32_130.jpg', '2023-02-25 10:51:36'),
(30, 131, 'DSC_0020_1677323248_32_131.jpg', '2023-02-25 11:07:28'),
(31, 131, 'DSC_0021_1677323248_32_131.jpg', '2023-02-25 11:07:28'),
(32, 131, 'DSC_0033_1677323248_32_131.jpg', '2023-02-25 11:07:28'),
(33, 131, 'DSC_0034_1677323248_32_131.jpg', '2023-02-25 11:07:28'),
(34, 132, 'camera_1677325843_38_132.png', '2023-02-25 11:50:43'),
(35, 133, 'p1_1677325865_33_133.jfif', '2023-02-25 11:51:05'),
(36, 134, '01_1677325919_40_134.png', '2023-02-25 11:51:59'),
(37, 135, 'p2_1677325940_33_135.jpg', '2023-02-25 11:52:20'),
(38, 136, 'p3_1677326044_33_136.jpg', '2023-02-25 11:54:04'),
(39, 137, '02_1677326058_40_137.png', '2023-02-25 11:54:18'),
(40, 138, 'laptop_1677326095_37_138.jpg', '2023-02-25 11:54:55'),
(41, 139, 'pexels-math-90946_1677326095_36_139.jpg', '2023-02-25 11:54:55'),
(42, 140, 'Apple-iPhone-13-Pro-image_1677326119_42_140.jpg', '2023-02-25 11:55:19'),
(43, 141, 'bike_1677326119_39_141.jpg', '2023-02-25 11:55:19'),
(44, 142, 'download_1677326170_36_142.jpg', '2023-02-25 11:56:10'),
(45, 143, 'cicyle_1677326173_39_143.jpg', '2023-02-25 11:56:13'),
(46, 144, 'p4_1677326189_33_144.webp', '2023-02-25 11:56:29'),
(47, 145, '03_1677326199_40_145.png', '2023-02-25 11:56:39'),
(48, 146, 'Apple-iPhone-13-Mini-image_1677326219_42_146.jpg', '2023-02-25 11:56:59'),
(49, 147, 'all-black-black-business-desk_1677326222_36_147.jpg', '2023-02-25 11:57:02'),
(50, 148, 'e225cda8-d94c-4f4a-8bef-d0ddbdd506a3_Performance+Shirts (1)_1677326265_38_148.avif', '2023-02-25 11:57:45'),
(51, 149, 'photo-ideas-0_1677326270_36_149.jpg', '2023-02-25 11:57:50'),
(52, 150, 'p5_1677326298_33_150.webp', '2023-02-25 11:58:18'),
(53, 151, 'tshirt2_1677326302_38_151.avif', '2023-02-25 11:58:22'),
(54, 152, 'white-background-product-photo_1677326325_36_152.jpg', '2023-02-25 11:58:45'),
(55, 153, 'Samsung-Galaxy-A53-5G_1677326342_42_153.jpg', '2023-02-25 11:59:02'),
(56, 154, 'car_1677326361_37_154.jpg', '2023-02-25 11:59:21'),
(57, 155, '04_1677326369_40_155.png', '2023-02-25 11:59:29'),
(58, 156, 'pant_1677326401_38_156.jpg', '2023-02-25 12:00:01'),
(59, 157, 'Samsung-Galaxy-A53-5G_1677326418_42_157.jpg', '2023-02-25 12:00:18'),
(60, 157, 'Apple-iPhone-13-Mini-image_1677326418_42_157.jpg', '2023-02-25 12:00:18'),
(61, 157, 'Apple-iPhone-13-Pro-image_1677326418_42_157.jpg', '2023-02-25 12:00:18'),
(62, 158, 'lumia_1677326465_38_158.jpg', '2023-02-25 12:01:05'),
(63, 159, 'nokia-lumia-630-dual-sim-1_1677326513_38_159.jpg', '2023-02-25 12:01:54'),
(64, 160, 'revolt-164_6wVEHfI-unsplash_1677326525_41_160.jpg', '2023-02-25 12:02:09'),
(65, 161, '71T9mDnKPPL_1677326558_34_161.jpg', '2023-02-25 12:02:38'),
(66, 162, '05_1677326558_40_162.png', '2023-02-25 12:02:38'),
(67, 163, 'images_1677326589_38_163.jpg', '2023-02-25 12:03:09'),
(68, 164, 'cGaBxdRhbNU_1677326620_32_164.jpg', '2023-02-25 12:03:44'),
(69, 164, 'EJPqDUoJDno_1677326624_32_164.jpg', '2023-02-25 12:03:46'),
(70, 165, 'Top-Trendz-Sharee-6-All-Market-bd_1677326629_34_165.jpg', '2023-02-25 12:03:49'),
(71, 164, 'TTHQHxsd8JQ_1677326626_32_164.jpg', '2023-02-25 12:03:52'),
(72, 164, 'Ws4cyJn6Is0_1677326632_32_164.jpg', '2023-02-25 12:04:01'),
(73, 167, 'hair dryer_1677326661_38_167.webp', '2023-02-25 12:04:22'),
(74, 166, 'c-d-x-PDX_a_82obo-unsplash_1677326660_41_166.jpg', '2023-02-25 12:04:24'),
(75, 168, 'images (1)_1677326756_34_168.jpg', '2023-02-25 12:05:56'),
(76, 169, 'Kemei-KM-810-Hair-Dryer-With-Comb_1677326759_38_169.jpg', '2023-02-25 12:05:59'),
(77, 170, 'rice coocker_1677326834_38_170.jpg', '2023-02-25 12:07:15'),
(78, 172, 'ac8abf28c4c9687c9ffb2b5a8f8d9834_1677326848_34_172.jpg', '2023-02-25 12:07:29'),
(79, 171, 'c-d-x-PDX_a_82obo-unsplash_1677326844_41_171.jpg', '2023-02-25 12:07:29'),
(80, 173, 'iPhone8Plus_color_selection_inline_1677326879_36_173.jpg', '2023-02-25 12:07:59'),
(81, 174, 'bajaj-pulsar-150-img03_1677326889_38_174.jpg', '2023-02-25 12:08:09'),
(82, 175, 'perfume-3640056__340_1677326923_36_175.jpg', '2023-02-25 12:08:43'),
(83, 176, 'Bajaj Pulsar 150 ABS_1677326935_38_176.png', '2023-02-25 12:08:55'),
(84, 177, 'images (2)_1677326989_34_177.jpg', '2023-02-25 12:09:49'),
(85, 178, 'Good-Quality-Kids-Bicycle-Children-Bike-Baby-Cycle_1677327009_38_178.jpg', '2023-02-25 12:10:09'),
(86, 179, 'reuben-mansell-nwOip8AOZz0-unsplash_1677327108_41_179.jpg', '2023-02-25 12:11:53'),
(87, 180, 'Walton-Orbit-Y20_1677329545_35_180.jpg', '2023-02-25 12:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` set('1','2','3','4') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$nMUrpC36GFLK3dVssawo2uq1VkDqU7wOr0yiNvGKHsDVqoWzft2M6', '1'),
(2, 'test', 'test@gmail.com', '$2y$10$zLSNaHp9d8RfO8m7O6rka.1bwl93hX.sTFLXWjUHv9QABDT7XA2N2', '1'),
(3, 'aaaa', 'aaaa@gmail.com', '$2y$10$Xm9dN70ZZLtUu0YyzCsNMujvSPfI0U2xZCc1zmtGzb7.HYWKPEYc6', '1'),
(4, 'mamun', 'mamun@gmail.com', '$2y$10$foapWIw8AI4ptOdWKT.EtOLPbDQqzp2CpXRUFQNt5qdXpXxY3TjuK', '1'),
(5, 'tarin', 'ta@gmail.com', '$2y$10$SyTEtFxluNxA3DtOAgnoXe9gV4m68Sx6nI9UIj.v/Y3vkALmSm0ZG', '1'),
(6, 'mamun2', 'mamun2@gmail.com', '$2y$10$WT43oDU3be5fRvNS7SxBVe4Cd9o0Bxt0IHz47oM3AqBYgvRWWB5e6', '1'),
(7, 'testuser', 'testuser@gmail.com', '$2y$10$kShq4v3oGuqasuWNDOFqpeds/WAlS6X.vEw0pS5YeKq4nbnGCDplK', '1'),
(8, 'mohsin', 'mohsin@gmail.com', '$2y$10$jp4qr1oIGup9TFl1FAMqnufkPxIIvWaXZKRyBHdErQ4YKQEBwm/RO', '1'),
(9, 'umer', 'umer@gmail.com', '$2y$10$9smB7P2iBPz/ec9z.py.RuilYEZlROfez.40lbHwSQgVqJTmMTRIm', '1'),
(10, 'adnan', 'adnan@gmail.com', '$2y$10$OHzJUPLRlIsZatglSZsqV.3d6x8aKQsqt6QSA6U53yEblkxhmrR/2', '1'),
(11, 'Kiran Dave', 'wicihel936@vapaka.com', '$2y$10$ltaPMTdIwi0EgzQYFKdch.H7rBbQYZ.vUkYJZW76LXFCnXjxz7QMK', '1'),
(12, 'Sadeq Russell', 'hatage5268@nitynote.com', '$2y$10$IMkZwoNnMTiz4yGxQewUxulo0l32r/oCsdqvT.ctoSShVAKYaNDky', '1'),
(13, 'Alam Sirajul', 'kobracreppupau-9040@yopmail.com', '$2y$10$YRoRrFTZyG/iQxzX7EJJHuc6KvOQoKQtOtRAUvkimjO5yTJrxAfxC', '1'),
(14, 'Mahmud Rabiul', 'Purry1955@cuvox.de', '$2y$10$D2OFUslrCpTmpFLbH0so/uov29MAce0ZFjdxGXflMYN1Zt4l5DRxq', '1'),
(15, 'Abdus Parvez', 'josogac588@vapaka.com', '$2y$10$TYUHzn.cVSkt0LoObt9QHeVWeCDGZ7AjfoubhjztEynQQdcL8amV2', '1'),
(16, 'Imran Islam', 'lurepot@gmail.com', '$2y$10$XXRK7AtvHuN9H6gXQHh.JuOshgeJ5rUGVWMYmZJIM72H6fGTo7MjK', '1'),
(17, 'Ali Sultan', 'finiba7883@ketchet.com', '$2y$10$pc6MN6H1Q3NuGUhzeeR03O39VuAQbVtW69mKKNPiXcj83zfBfzS6.', '1'),
(18, 'Abdus Jahangir', 'balekor221@nitynote.com', '$2y$10$eDWRdhVh3olffTAhdvqe..QGTiCWaf4BQRBAvC7tzoz8CrvXpR2LO', '1'),
(19, 'Amin Parvez', 'pesivid959@ketchet.com', '$2y$10$obgjSxrmLf3FpG9lLATU8.eydc.klcAetqAQmQ6Oo8niK3HPO4GVm', '1'),
(20, 'ibrahim', 'ibrahim000@gmil.com', '$2y$10$zeMp0ZNCVuJJH06kwNKGzuj/tVRJ2TAbiqSClAkaTXA0mKf8IJViy', '1'),
(21, 'umer', 'bolumna@gmail.com', '$2y$10$p.8esyJfsXhHOULzmb3ueO.smpvgTmScc767sveysDBBrCQy6f2Ni', '1'),
(22, 'mohsin2', 'mohsin2@gmail.com', '$2y$10$Aztm1szU0h3Yt0BawBaRvesxnLXgzCZ3tgK/0w0duBYpws7Nd7I5S', '1'),
(23, 'Md. Shaidur Rahman', 'mdshaide123@gmail.com', '$2y$10$tnuiPFRX9usjZ10w1pU/au20kg.k5IG/n24LA2tuYBWPAUD6uKyEi', '1'),
(24, 'Md. Shaidur Rahman', 'mdshaidur123@gmail.com', '$2y$10$yy2GVN4p5tE30BxHoGiqK.ja43VRswijQgn/wVIDGNXb/7NlWngZi', '1'),
(25, 'zayed', 'zayed@gmail.com', '$2y$10$XPQXY8QvU7D5D9IAV2doO.ADFkQRa2VXV7TP0YWixW3rATb15elSK', '1'),
(26, 'sharif', 'shari@gmail.com', '$2y$10$cpEfReKYNBf8b2du30AdZOG8Cbs6PW/eLzSwaebHQR9XE4GwZmcZO', '1'),
(27, 'tasnim', 'tasnim@gmail.com', '$2y$10$GJd/e3BjayBO3jSi40Rs6effLjGzJfHMg4VvJeC689/R5kUaZvMM2', '1'),
(28, 'Md. Feroze Alam', 'mohammadferoj33@gmail.com', '$2y$10$/LW47Dw6bTJvUzNBckWhRezk7HHEwO/5olB498A94FBHy4g3FR2im', '1'),
(29, 'Taijul', 'taijul@gmail.com', '$2y$10$mN6aURKVwCF0hlwr3uwO5.s5FM/JKQHj0g//ayZ7ah014YBq5PUUa', '1'),
(30, 'boom', 'boom@gmail.com', '$2y$10$ObAi7mSZgahN5GJTi5q./eIa6AvFYqZ7ns4IjmlqbruH.iySmbNRa', '1'),
(31, 'IrinAbbas', 'irin1234@gmail.com', '$2y$10$SibDqUiXip4Y4z9MCmgcWOXnKmA9Jd6Lm8ibjgpYl.WNfNDnkCcoC', '1'),
(32, 'admin53', 'admin53@gmail.com', '$2y$10$gOZVSpyUQmL8MatsWdshhex30KP1936vUnDkhsSDw8izcKOw/DLa2', '1'),
(33, 'SR Sohan', 'sr.sohanur22@gmail.com', '$2y$10$n2MXXv/l/ggEUhZTKJaYfeJ3rGQ5I2H7UO280IRq1WBpbGVXhN1F2', '1'),
(34, 'Ismail hosen', 'ismail@gmail.com', '$2y$10$QFq8RuUxL6yEYD0RslJ5WO/le8Vb6bXu5m5udj5yj2VoEm.5daVKy', '1'),
(35, 'ruma', 'abc@gmail.com', '$2y$10$i.dTeCPFK0KREevhx7xKdu961fd6nLgjJXUgdn78CMui3teG.n.ku', '1'),
(36, 'Marzan Afroz', 'afrozmarzan97@gmail.com', '$2y$10$dRQ0M6zgs1.Rpcmeo36w6uoU9AVEw1e8Osl6Ij1q5qihsfcUrKFj6', '1'),
(37, 'lipi', 'lipiakter@gmail.com', '$2y$10$0tzH0sbA7YqGin2AcpV7Fu1.3wTbzXz/jrOvwgn80mTy8D30bDmxu', '1'),
(38, 'ishrat', 'ishrat@gmail.com', '$2y$10$HmKVWy8shrsBDeuZQA99WO5LtHTgapnU0TF2.4BWdQDM70VBR2BRO', '1'),
(39, 'Md. Jalal S K', 'mdjalalalsk02@gmail.com', '$2y$10$8DxFPjwDucrzHXnUaP5R8ek7oLecZgSNvp6Gcd8PoaihZN1NdMrbe', '1'),
(40, 'sharif', 'abcd@gmail.com', '$2y$10$gzeuzpu9lO6tv1L/qnZ86.PEoSDlJcixgRYQxdHJz4JfNIzbP6rMq', '1'),
(41, ' Syeed Khan', 'syeed@gmail.com', '$2y$10$7sH6ma.UTum3j2vkwy0OX.TChHklTB6T66nAAiWtTb//5c3W95j0i', '1'),
(42, 'Mostak', 'mostak@gmail.com', '$2y$10$sGTTeIVqVTHWwbBgF2OeG.3rpDz6q5a4LOrAKTe0Wg5ocx2XiWfY2', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
