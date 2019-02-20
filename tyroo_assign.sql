-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2019 at 04:28 AM
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
-- Database: `tyroo_assign`
--

-- --------------------------------------------------------

--
-- Table structure for table `metric`
--

CREATE TABLE `metric` (
  `id` int(100) NOT NULL,
  `campaign` varchar(255) NOT NULL,
  `metric` varchar(255) NOT NULL,
  `metric_value` int(100) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metric`
--

INSERT INTO `metric` (`id`, `campaign`, `metric`, `metric_value`, `date_time`) VALUES
(1, 'Swiggy', 'impressions', 10000, '2019-02-20 00:01:00'),
(2, 'Swiggy', 'Spend', 1000, '2019-02-20 00:02:00'),
(3, 'Swiggy', 'Install', 100, '2019-02-19 12:03:00'),
(4, 'Swiggy', 'Click', 5000, '2019-02-19 12:04:00'),
(5, 'netflix', 'impressions', 10000, '2019-02-19 00:05:00'),
(6, 'netflix', 'Spend', 1000, '2019-02-19 00:06:00'),
(7, 'netflix', 'Install', 100, '2019-02-19 00:07:00'),
(8, 'netflix', 'Click', 5000, '2019-02-19 00:08:00'),
(9, 'Zomato', 'impressions', 10000, '2019-02-19 00:09:00'),
(10, 'Zomato', 'Spend', 1000, '2019-02-19 00:10:00'),
(11, 'Zomato', 'Install', 100, '2019-02-19 00:11:00'),
(12, 'Zomato', 'Click', 5000, '2019-02-19 00:12:00'),
(13, 'Foodpanda', 'impressions', 10000, '2019-02-19 00:13:00'),
(14, 'Foodpanda', 'Spend', 1000, '2019-02-19 00:14:00'),
(15, 'Foodpanda', 'Install', 100, '2019-02-19 00:15:00'),
(16, 'Foodpanda', 'Click', 5000, '2019-02-19 00:16:00'),
(17, 'Ola', 'impressions', 10000, '2019-02-19 00:17:00'),
(18, 'Ola', 'Spend', 1000, '2019-02-19 00:18:00'),
(19, 'Ola', 'Install', 100, '2019-02-19 00:19:00'),
(20, 'Ola', 'Click', 5000, '2019-02-19 00:20:00'),
(21, 'Swiggy', 'impressions', 10010, '2019-02-19 00:21:00'),
(22, 'Swiggy', 'Spend', 1010, '2019-02-19 00:22:00'),
(23, 'Swiggy', 'Install', 110, '2019-02-19 00:23:00'),
(24, 'Swiggy', 'Click', 5010, '2019-02-19 00:24:00'),
(25, 'netflix', 'impressions', 10010, '2019-02-19 00:25:00'),
(26, 'netflix', 'Spend', 1010, '2019-02-19 00:26:00'),
(27, 'netflix', 'Install', 110, '2019-02-19 00:27:00'),
(28, 'netflix', 'Click', 5010, '2019-02-19 00:28:00'),
(29, 'Zomato', 'impressions', 10010, '2019-02-19 00:29:00'),
(30, 'Zomato', 'Spend', 1010, '2019-02-19 00:30:00'),
(31, 'Zomato', 'Install', 110, '2019-02-19 00:31:00'),
(32, 'Zomato', 'Click', 5010, '2019-02-19 00:32:00'),
(33, 'Foodpanda', 'impressions', 10010, '2019-02-19 00:33:00'),
(34, 'Foodpanda', 'Spend', 1010, '2019-02-19 00:34:00'),
(35, 'Foodpanda', 'Install', 110, '2019-02-19 00:35:00'),
(36, 'Foodpanda', 'Click', 5010, '2019-02-19 00:36:00'),
(37, 'Ola', 'impressions', 10010, '2019-02-19 00:37:00'),
(38, 'Ola', 'Spend', 1010, '2019-02-19 00:38:00'),
(39, 'Ola', 'Install', 110, '2019-02-19 00:39:00'),
(40, 'Ola', 'Click', 5010, '2019-02-19 00:40:00'),
(41, 'Swiggy', 'impressions', 10020, '2019-02-19 00:41:00'),
(42, 'Swiggy', 'Spend', 1020, '2019-02-19 00:42:00'),
(43, 'Swiggy', 'Install', 120, '2019-02-19 00:43:00'),
(44, 'Swiggy', 'Click', 5020, '2019-02-19 00:44:00'),
(45, 'netflix', 'impressions', 10020, '2019-02-19 00:45:00'),
(46, 'netflix', 'Spend', 1020, '2019-02-19 00:46:00'),
(47, 'netflix', 'Install', 120, '2019-02-19 00:47:00'),
(48, 'netflix', 'Click', 5020, '2019-02-19 00:48:00'),
(49, 'Zomato', 'impressions', 10020, '2019-02-19 00:49:00'),
(50, 'Zomato', 'Spend', 1020, '2019-02-19 00:50:00'),
(51, 'Zomato', 'Install', 120, '2019-02-19 00:51:00'),
(52, 'Zomato', 'Click', 5020, '2019-02-19 00:52:00'),
(53, 'Foodpanda', 'impressions', 10020, '2019-02-19 00:53:00'),
(54, 'Foodpanda', 'Spend', 1020, '2019-02-19 00:54:00'),
(55, 'Foodpanda', 'Install', 120, '2019-02-19 00:55:00'),
(56, 'Foodpanda', 'Click', 5020, '2019-02-19 00:56:00'),
(57, 'Ola', 'impressions', 10020, '2019-02-19 00:57:00'),
(58, 'Ola', 'Spend', 1020, '2019-02-19 00:58:00'),
(59, 'Ola', 'Install', 120, '2019-02-19 00:59:00'),
(60, 'Ola', 'Click', 5020, '2019-02-19 01:00:00'),
(61, 'Swiggy', 'impressions', 10030, '2019-02-19 01:01:00'),
(62, 'Swiggy', 'Spend', 1030, '2019-02-19 01:02:00'),
(63, 'Swiggy', 'Install', 130, '2019-02-19 01:03:00'),
(64, 'Swiggy', 'Click', 5030, '2019-02-19 01:04:00'),
(65, 'netflix', 'impressions', 10030, '2019-02-19 01:05:00'),
(66, 'netflix', 'Spend', 1030, '2019-02-19 01:06:00'),
(67, 'netflix', 'Install', 130, '2019-02-19 01:07:00'),
(68, 'netflix', 'Click', 5030, '2019-02-19 01:08:00'),
(69, 'Zomato', 'impressions', 10030, '2019-02-19 01:09:00'),
(70, 'Zomato', 'Spend', 1030, '2019-02-19 01:10:00'),
(71, 'Zomato', 'Install', 130, '2019-02-19 01:11:00'),
(72, 'Zomato', 'Click', 5030, '2019-02-19 01:12:00'),
(73, 'Foodpanda', 'impressions', 10030, '2019-02-19 01:13:00'),
(74, 'Foodpanda', 'Spend', 1030, '2019-02-19 01:14:00'),
(75, 'Foodpanda', 'Install', 130, '2019-02-19 01:15:00'),
(76, 'Foodpanda', 'Click', 5030, '2019-02-19 01:16:00'),
(77, 'Ola', 'impressions', 10030, '2019-02-19 01:17:00'),
(78, 'Ola', 'Spend', 1030, '2019-02-19 01:18:00'),
(79, 'Ola', 'Install', 130, '2019-02-19 01:19:00'),
(80, 'Ola', 'Click', 5030, '2019-02-19 01:20:00'),
(81, 'Swiggy', 'impressions', 10040, '2019-02-19 01:21:00'),
(82, 'Swiggy', 'Spend', 1040, '2019-02-19 01:22:00'),
(83, 'Swiggy', 'Install', 140, '2019-02-19 01:23:00'),
(84, 'Swiggy', 'Click', 5040, '2019-02-19 01:24:00'),
(85, 'netflix', 'impressions', 10040, '2019-02-19 01:25:00'),
(86, 'netflix', 'Spend', 1040, '2019-02-19 01:26:00'),
(87, 'netflix', 'Install', 140, '2019-02-19 01:27:00'),
(88, 'netflix', 'Click', 5040, '2019-02-19 01:28:00'),
(89, 'Zomato', 'impressions', 10040, '2019-02-19 01:29:00'),
(90, 'Zomato', 'Spend', 1040, '2019-02-19 01:30:00'),
(91, 'Zomato', 'Install', 140, '2019-02-19 01:31:00'),
(92, 'Zomato', 'Click', 5040, '2019-02-19 01:32:00'),
(93, 'Foodpanda', 'impressions', 10040, '2019-02-19 01:33:00'),
(94, 'Foodpanda', 'Spend', 1040, '2019-02-19 01:34:00'),
(95, 'Foodpanda', 'Install', 140, '2019-02-19 01:35:00'),
(96, 'Foodpanda', 'Click', 5040, '2019-02-19 01:36:00'),
(97, 'Ola', 'impressions', 10040, '2019-02-19 01:37:00'),
(98, 'Ola', 'Spend', 1040, '2019-02-19 01:38:00'),
(99, 'Ola', 'Install', 140, '2019-02-19 01:39:00'),
(100, 'Ola', 'Click', 5040, '2019-02-19 01:40:00'),
(101, 'Swiggy', 'impressions', 10050, '2019-02-19 01:40:00'),
(102, 'Swiggy', 'Spend', 1050, '2019-02-19 01:41:00'),
(103, 'Swiggy', 'Install', 150, '2019-02-19 01:42:00'),
(104, 'Swiggy', 'Click', 5050, '2019-02-19 01:43:00'),
(105, 'netflix', 'impressions', 10050, '2019-02-19 01:44:00'),
(106, 'netflix', 'Spend', 1050, '2019-02-19 01:45:00'),
(107, 'netflix', 'Install', 150, '2019-02-19 01:46:00'),
(108, 'netflix', 'Click', 5050, '2019-02-19 01:47:00'),
(109, 'Zomato', 'impressions', 10050, '2019-02-19 01:48:00'),
(110, 'Zomato', 'Spend', 1050, '2019-02-19 01:49:00'),
(111, 'Zomato', 'Install', 150, '2019-02-19 01:50:00'),
(112, 'Zomato', 'Click', 5050, '2019-02-19 01:51:00'),
(113, 'Foodpanda', 'impressions', 10050, '2019-02-19 01:52:00'),
(114, 'Foodpanda', 'Spend', 1050, '2019-02-19 01:53:00'),
(115, 'Foodpanda', 'Install', 150, '2019-02-19 01:54:00'),
(116, 'Foodpanda', 'Click', 5050, '2019-02-19 01:55:00'),
(117, 'Ola', 'impressions', 10050, '2019-02-19 01:56:00'),
(118, 'Ola', 'Spend', 1050, '2019-02-19 01:57:00'),
(119, 'Ola', 'Install', 150, '2019-02-19 01:58:00'),
(120, 'Ola', 'Click', 5050, '2019-02-19 01:59:00'),
(121, 'Swiggy', 'impressions', 10060, '2019-02-19 02:00:00'),
(122, 'Swiggy', 'Spend', 1060, '2019-02-19 02:01:00'),
(123, 'Swiggy', 'Install', 160, '2019-02-19 02:02:00'),
(124, 'Swiggy', 'Click', 5060, '2019-02-19 02:03:00'),
(125, 'netflix', 'impressions', 10060, '2019-02-19 02:04:00'),
(126, 'netflix', 'Spend', 1060, '2019-02-19 02:05:00'),
(127, 'netflix', 'Install', 160, '2019-02-19 02:06:00'),
(128, 'netflix', 'Click', 5060, '2019-02-19 02:07:00'),
(129, 'Zomato', 'impressions', 10060, '2019-02-19 02:08:00'),
(130, 'Zomato', 'Spend', 1060, '2019-02-19 02:09:00'),
(131, 'Zomato', 'Install', 160, '2019-02-19 02:10:00'),
(132, 'Zomato', 'Click', 5060, '2019-02-19 02:11:00'),
(133, 'Foodpanda', 'impressions', 10060, '2019-02-19 02:12:00'),
(134, 'Foodpanda', 'Spend', 1060, '2019-02-19 02:13:00'),
(135, 'Foodpanda', 'Install', 160, '2019-02-19 02:14:00'),
(136, 'Foodpanda', 'Click', 5060, '2019-02-19 02:15:00'),
(137, 'Ola', 'impressions', 10060, '2019-02-19 02:16:00'),
(138, 'Ola', 'Spend', 1060, '2019-02-19 02:17:00'),
(139, 'Ola', 'Install', 160, '2019-02-19 02:18:00'),
(140, 'Ola', 'Click', 5060, '2019-02-19 02:19:00'),
(141, 'Swiggy', 'impressions', 10070, '2019-02-20 02:20:00'),
(142, 'Swiggy', 'Spend', 1070, '2019-02-20 02:21:00'),
(143, 'Swiggy', 'Install', 170, '2019-02-20 02:22:00'),
(144, 'Swiggy', 'Click', 5070, '2019-02-20 02:23:00'),
(145, 'netflix', 'impressions', 10070, '2019-02-20 02:24:00'),
(146, 'netflix', 'Spend', 1070, '2019-02-20 02:25:00'),
(147, 'netflix', 'Install', 170, '2019-02-20 02:26:00'),
(148, 'netflix', 'Click', 5070, '2019-02-20 02:27:00'),
(149, 'Zomato', 'impressions', 10070, '2019-02-20 02:28:00'),
(150, 'Zomato', 'Spend', 1070, '2019-02-20 02:29:00'),
(151, 'Zomato', 'Install', 170, '2019-02-20 02:30:00'),
(152, 'Zomato', 'Click', 5070, '2019-02-20 02:31:00'),
(153, 'Foodpanda', 'impressions', 10070, '2019-02-20 02:32:00'),
(154, 'Foodpanda', 'Spend', 1070, '2019-02-20 02:33:00'),
(155, 'Foodpanda', 'Install', 170, '2019-02-20 02:34:00'),
(156, 'Foodpanda', 'Click', 5070, '2019-02-20 02:35:00'),
(157, 'Bigbasket', 'impressions', 10070, '2019-02-20 02:36:00'),
(158, 'Bigbasket', 'Spend', 1070, '2019-02-20 02:37:00'),
(159, 'Bigbasket', 'Install', 170, '2019-02-20 02:38:00'),
(160, 'Bigbasket', 'Click', 5070, '2019-02-20 02:39:00'),
(161, 'Swiggy', 'impressions', 10080, '2019-02-20 02:40:00'),
(162, 'Swiggy', 'Spend', 1080, '2019-02-20 02:41:00'),
(163, 'Swiggy', 'Install', 180, '2019-02-20 02:42:00'),
(164, 'Swiggy', 'Click', 5080, '2019-02-20 02:43:00'),
(165, 'netflix', 'impressions', 10080, '2019-02-20 02:44:00'),
(166, 'netflix', 'Spend', 1080, '2019-02-20 02:45:00'),
(167, 'netflix', 'Install', 180, '2019-02-20 02:46:00'),
(168, 'netflix', 'Click', 5080, '2019-02-20 02:47:00'),
(169, 'Zomato', 'impressions', 10080, '2019-02-20 02:48:00'),
(170, 'Zomato', 'Spend', 1080, '2019-02-20 02:49:00'),
(171, 'Zomato', 'Install', 180, '2019-02-20 02:50:00'),
(172, 'Zomato', 'Click', 5080, '2019-02-20 02:51:00'),
(173, 'Foodpanda', 'impressions', 10080, '2019-02-20 02:52:00'),
(174, 'Foodpanda', 'Spend', 1080, '2019-02-20 02:53:00'),
(175, 'Foodpanda', 'Install', 180, '2019-02-20 02:54:00'),
(176, 'Foodpanda', 'Click', 5080, '2019-02-20 02:55:00'),
(177, 'Bigbasket', 'impressions', 10080, '2019-02-20 02:56:00'),
(178, 'Bigbasket', 'Spend', 1080, '2019-02-20 02:57:00'),
(179, 'Bigbasket', 'Install', 180, '2019-02-20 02:58:00'),
(180, 'Bigbasket', 'Click', 5080, '2019-02-20 02:59:00'),
(181, 'Swiggy', 'impressions', 10090, '2019-02-20 03:00:00'),
(182, 'Swiggy', 'Spend', 1090, '2019-02-20 03:01:00'),
(183, 'Swiggy', 'Install', 190, '2019-02-20 03:02:00'),
(184, 'Swiggy', 'Click', 5090, '2019-02-20 03:03:00'),
(185, 'netflix', 'impressions', 10090, '2019-02-20 03:04:00'),
(186, 'netflix', 'Spend', 1090, '2019-02-20 03:05:00'),
(187, 'netflix', 'Install', 190, '2019-02-20 03:06:00'),
(188, 'netflix', 'Click', 5090, '2019-02-20 03:07:00'),
(189, 'Zomato', 'impressions', 10090, '2019-02-20 03:08:00'),
(190, 'Zomato', 'Spend', 1090, '2019-02-20 03:09:00'),
(191, 'Zomato', 'Install', 190, '2019-02-20 03:10:00'),
(192, 'Zomato', 'Click', 5090, '2019-02-20 03:11:00'),
(193, 'Foodpanda', 'impressions', 10090, '2019-02-20 03:12:00'),
(194, 'Foodpanda', 'Spend', 1090, '2019-02-20 03:13:00'),
(195, 'Foodpanda', 'Install', 190, '2019-02-20 03:14:00'),
(196, 'Foodpanda', 'Click', 5090, '2019-02-20 03:15:00'),
(197, 'Bigbasket', 'impressions', 10090, '2019-02-20 03:16:00'),
(198, 'Bigbasket', 'Spend', 1090, '2019-02-20 03:17:00'),
(199, 'Bigbasket', 'Install', 190, '2019-02-20 03:18:00'),
(200, 'Bigbasket', 'Click', 5090, '2019-02-20 03:19:00'),
(201, 'Swiggy', 'impressions', 10100, '2019-02-20 03:20:00'),
(202, 'Swiggy', 'Spend', 1100, '2019-02-20 03:21:00'),
(203, 'Swiggy', 'Install', 200, '2019-02-20 03:22:00'),
(204, 'Swiggy', 'Click', 5100, '2019-02-20 03:23:00'),
(205, 'netflix', 'impressions', 10100, '2019-02-20 03:24:00'),
(206, 'netflix', 'Spend', 1100, '2019-02-20 03:25:00'),
(207, 'netflix', 'Install', 200, '2019-02-20 03:26:00'),
(208, 'netflix', 'Click', 5100, '2019-02-20 03:27:00'),
(209, 'Zomato', 'impressions', 10100, '2019-02-20 03:28:00'),
(210, 'Zomato', 'Spend', 1100, '2019-02-20 03:29:00'),
(211, 'Zomato', 'Install', 200, '2019-02-20 03:30:00'),
(212, 'Zomato', 'Click', 5100, '2019-02-20 03:31:00'),
(213, 'Foodpanda', 'impressions', 10100, '2019-02-20 03:32:00'),
(214, 'Foodpanda', 'Spend', 1100, '2019-02-20 03:33:00'),
(215, 'Foodpanda', 'Install', 200, '2019-02-20 03:34:00'),
(216, 'Foodpanda', 'Click', 5100, '2019-02-20 03:35:00'),
(217, 'Bigbasket', 'impressions', 10100, '2019-02-20 03:36:00'),
(218, 'Bigbasket', 'Spend', 1100, '2019-02-20 03:37:00'),
(219, 'Bigbasket', 'Install', 200, '2019-02-20 03:38:00'),
(220, 'Bigbasket', 'Click', 5100, '2019-02-20 03:39:00'),
(221, 'Swiggy', 'impressions', 10110, '2019-02-20 03:40:00'),
(222, 'Swiggy', 'Spend', 1110, '2019-02-20 03:41:00'),
(223, 'Swiggy', 'Install', 210, '2019-02-20 03:42:00'),
(224, 'Swiggy', 'Click', 5110, '2019-02-20 03:43:00'),
(225, 'netflix', 'impressions', 10110, '2019-02-20 03:44:00'),
(226, 'netflix', 'Spend', 1110, '2019-02-20 03:45:00'),
(227, 'netflix', 'Install', 210, '2019-02-20 03:46:00'),
(228, 'netflix', 'Click', 5110, '2019-02-20 03:47:00'),
(229, 'Zomato', 'impressions', 10110, '2019-02-20 03:48:00'),
(230, 'Zomato', 'Spend', 1110, '2019-02-20 03:49:00'),
(231, 'Zomato', 'Install', 210, '2019-02-20 03:50:00'),
(232, 'Zomato', 'Click', 5110, '2019-02-20 03:51:00'),
(233, 'Foodpanda', 'impressions', 10110, '2019-02-20 03:52:00'),
(234, 'Foodpanda', 'Spend', 1110, '2019-02-20 03:53:00'),
(235, 'Foodpanda', 'Install', 210, '2019-02-20 03:54:00'),
(236, 'Foodpanda', 'Click', 5110, '2019-02-20 03:55:00'),
(237, 'Bigbasket', 'impressions', 10110, '2019-02-20 03:56:00'),
(238, 'Bigbasket', 'Spend', 1110, '2019-02-20 03:57:00'),
(239, 'Bigbasket', 'Install', 210, '2019-02-20 03:58:00'),
(240, 'Bigbasket', 'Click', 5110, '2019-02-20 03:59:00'),
(241, 'Swiggy', 'impressions', 10120, '2019-02-20 04:00:00'),
(242, 'Swiggy', 'Spend', 1120, '2019-02-20 04:01:00'),
(243, 'Swiggy', 'Install', 220, '2019-02-20 04:02:00'),
(244, 'Swiggy', 'Click', 5120, '2019-02-20 04:03:00'),
(245, 'netflix', 'impressions', 10120, '2019-02-20 04:04:00'),
(246, 'netflix', 'Spend', 1120, '2019-02-20 04:05:00'),
(247, 'netflix', 'Install', 220, '2019-02-20 04:06:00'),
(248, 'netflix', 'Click', 5120, '2019-02-20 04:07:00'),
(249, 'Zomato', 'impressions', 10120, '2019-02-20 04:08:00'),
(250, 'Zomato', 'Spend', 1120, '2019-02-20 04:09:00'),
(251, 'Zomato', 'Install', 220, '2019-02-20 04:10:00'),
(252, 'Zomato', 'Click', 5120, '2019-02-20 04:11:00'),
(253, 'Foodpanda', 'impressions', 10120, '2019-02-20 04:12:00'),
(254, 'Foodpanda', 'Spend', 1120, '2019-02-20 04:13:00'),
(255, 'Foodpanda', 'Install', 220, '2019-02-20 04:14:00'),
(256, 'Foodpanda', 'Click', 5120, '2019-02-20 04:15:00'),
(257, 'Bigbasket', 'impressions', 10120, '2019-02-20 04:16:00'),
(258, 'Bigbasket', 'Spend', 1120, '2019-02-20 04:17:00'),
(259, 'Bigbasket', 'Install', 220, '2019-02-20 04:18:00'),
(260, 'Bigbasket', 'Click', 5120, '2019-02-20 04:19:00'),
(261, 'Swiggy', 'impressions', 10130, '2019-02-20 04:20:00'),
(262, 'Swiggy', 'Spend', 1130, '2019-02-20 04:21:00'),
(263, 'Swiggy', 'Install', 230, '2019-02-20 04:22:00'),
(264, 'Swiggy', 'Click', 5130, '2019-02-20 04:23:00'),
(265, 'netflix', 'impressions', 10130, '2019-02-20 04:24:00'),
(266, 'netflix', 'Spend', 1130, '2019-02-20 04:25:00'),
(267, 'netflix', 'Install', 230, '2019-02-20 04:26:00'),
(268, 'netflix', 'Click', 5130, '2019-02-20 04:27:00'),
(269, 'Zomato', 'impressions', 10130, '2019-02-20 04:28:00'),
(270, 'Zomato', 'Spend', 1130, '2019-02-20 04:29:00'),
(271, 'Zomato', 'Install', 230, '2019-02-20 04:30:00'),
(272, 'Zomato', 'Click', 5130, '2019-02-20 04:31:00'),
(273, 'Foodpanda', 'impressions', 10130, '2019-02-20 04:32:00'),
(274, 'Foodpanda', 'Spend', 1130, '2019-02-20 04:33:00'),
(275, 'Foodpanda', 'Install', 230, '2019-02-20 04:34:00'),
(276, 'Foodpanda', 'Click', 5130, '2019-02-20 04:35:00'),
(277, 'Bigbasket', 'impressions', 10130, '2019-02-20 04:36:00'),
(278, 'Bigbasket', 'Spend', 1130, '2019-02-20 04:37:00'),
(279, 'Bigbasket', 'Install', 230, '2019-02-20 04:38:00'),
(280, 'Bigbasket', 'Click', 5130, '2019-02-20 04:39:00'),
(281, 'Swiggy', 'impressions', 10140, '2019-02-20 04:40:00'),
(282, 'Swiggy', 'Spend', 1140, '2019-02-20 04:41:00'),
(283, 'Swiggy', 'Install', 240, '2019-02-20 04:42:00'),
(284, 'Swiggy', 'Click', 5140, '2019-02-20 04:43:00'),
(285, 'netflix', 'impressions', 10140, '2019-02-20 04:44:00'),
(286, 'netflix', 'Spend', 1140, '2019-02-20 04:45:00'),
(287, 'netflix', 'Install', 240, '2019-02-20 04:46:00'),
(288, 'netflix', 'Click', 5140, '2019-02-20 04:47:00'),
(289, 'Zomato', 'impressions', 10140, '2019-02-20 04:48:00'),
(290, 'Zomato', 'Spend', 1140, '2019-02-20 04:49:00'),
(291, 'Zomato', 'Install', 240, '2019-02-20 04:50:00'),
(292, 'Zomato', 'Click', 5140, '2019-02-20 04:51:00'),
(293, 'Foodpanda', 'impressions', 10140, '2019-02-20 04:52:00'),
(294, 'Foodpanda', 'Spend', 1140, '2019-02-20 04:53:00'),
(295, 'Foodpanda', 'Install', 240, '2019-02-20 04:54:00'),
(296, 'Foodpanda', 'Click', 5140, '2019-02-20 04:55:00'),
(297, 'Bigbasket', 'impressions', 10140, '2019-02-20 04:56:00'),
(298, 'Bigbasket', 'Spend', 1140, '2019-02-20 04:57:00'),
(299, 'Bigbasket', 'Install', 240, '2019-02-20 04:58:00'),
(300, 'Bigbasket', 'Click', 5140, '2019-02-20 04:59:00'),
(301, 'Swiggy', 'impressions', 10150, '2019-02-20 05:00:00'),
(302, 'Swiggy', 'Spend', 1150, '2019-02-20 05:01:00'),
(303, 'Swiggy', 'Install', 250, '2019-02-20 05:02:00'),
(304, 'Swiggy', 'Click', 5150, '2019-02-20 05:03:00'),
(305, 'netflix', 'impressions', 10150, '2019-02-20 05:04:00'),
(306, 'netflix', 'Spend', 1150, '2019-02-20 05:05:00'),
(307, 'netflix', 'Install', 250, '2019-02-20 05:06:00'),
(308, 'netflix', 'Click', 5150, '2019-02-20 05:07:00'),
(309, 'Zomato', 'impressions', 10150, '2019-02-20 05:08:00'),
(310, 'Zomato', 'Spend', 1150, '2019-02-20 05:09:00'),
(311, 'Zomato', 'Install', 250, '2019-02-20 05:10:00'),
(312, 'Zomato', 'Click', 5150, '2019-02-20 05:11:00'),
(313, 'Foodpanda', 'impressions', 10150, '2019-02-20 05:12:00'),
(314, 'Foodpanda', 'Spend', 1150, '2019-02-20 05:13:00'),
(315, 'Foodpanda', 'Install', 250, '2019-02-20 05:14:00'),
(316, 'Foodpanda', 'Click', 5150, '2019-02-20 05:15:00'),
(317, 'Bigbasket', 'impressions', 10150, '2019-02-20 05:16:00'),
(318, 'Bigbasket', 'Spend', 1150, '2019-02-20 05:17:00'),
(319, 'Bigbasket', 'Install', 250, '2019-02-20 05:18:00'),
(320, 'Bigbasket', 'Click', 5150, '2019-02-20 05:19:00'),
(321, 'Swiggy', 'impressions', 10160, '2019-02-20 05:20:00'),
(322, 'Swiggy', 'Spend', 1160, '2019-02-20 05:21:00'),
(323, 'Swiggy', 'Install', 260, '2019-02-20 05:22:00'),
(324, 'Swiggy', 'Click', 5160, '2019-02-20 05:23:00'),
(325, 'netflix', 'impressions', 10160, '2019-02-20 05:24:00'),
(326, 'netflix', 'Spend', 1160, '2019-02-20 05:25:00'),
(327, 'netflix', 'Install', 260, '2019-02-20 05:26:00'),
(328, 'netflix', 'Click', 5160, '2019-02-20 05:27:00'),
(329, 'Zomato', 'impressions', 10160, '2019-02-20 05:28:00'),
(330, 'Zomato', 'Spend', 1160, '2019-02-20 05:29:00'),
(331, 'Zomato', 'Install', 260, '2019-02-20 05:30:00'),
(332, 'Zomato', 'Click', 5160, '2019-02-20 05:31:00'),
(333, 'Foodpanda', 'impressions', 10160, '2019-02-20 05:32:00'),
(334, 'Foodpanda', 'Spend', 1160, '2019-02-20 05:33:00'),
(335, 'Foodpanda', 'Install', 260, '2019-02-20 05:34:00'),
(336, 'Foodpanda', 'Click', 5160, '2019-02-20 05:35:00'),
(337, 'Bigbasket', 'impressions', 10160, '2019-02-20 05:36:00'),
(338, 'Bigbasket', 'Spend', 1160, '2019-02-20 05:37:00'),
(339, 'Bigbasket', 'Install', 260, '2019-02-20 05:38:00'),
(340, 'Bigbasket', 'Click', 5160, '2019-02-20 05:39:00'),
(341, 'Swiggy', 'impressions', 10170, '2019-02-20 05:40:00'),
(342, 'Swiggy', 'Spend', 1170, '2019-02-20 05:41:00'),
(343, 'Swiggy', 'Install', 270, '2019-02-20 05:42:00'),
(344, 'Swiggy', 'Click', 5170, '2019-02-20 05:43:00'),
(345, 'netflix', 'impressions', 10170, '2019-02-20 05:44:00'),
(346, 'netflix', 'Spend', 1170, '2019-02-20 05:45:00'),
(347, 'netflix', 'Install', 270, '2019-02-20 05:46:00'),
(348, 'netflix', 'Click', 5170, '2019-02-20 05:47:00'),
(349, 'Zomato', 'impressions', 10170, '2019-02-20 05:48:00'),
(350, 'Zomato', 'Spend', 1170, '2019-02-20 05:49:00'),
(351, 'Zomato', 'Install', 270, '2019-02-20 05:50:00'),
(352, 'Zomato', 'Click', 5170, '2019-02-20 05:51:00'),
(353, 'Foodpanda', 'impressions', 10170, '2019-02-20 05:52:00'),
(354, 'Foodpanda', 'Spend', 1170, '2019-02-20 05:53:00'),
(355, 'Foodpanda', 'Install', 270, '2019-02-20 05:54:00'),
(356, 'Foodpanda', 'Click', 5170, '2019-02-20 05:55:00'),
(357, 'Bigbasket', 'impressions', 10170, '2019-02-20 05:56:00'),
(358, 'Bigbasket', 'Spend', 1170, '2019-02-20 05:57:00'),
(359, 'Bigbasket', 'Install', 270, '2019-02-20 05:58:00'),
(360, 'Bigbasket', 'Click', 5170, '2019-02-20 05:59:00'),
(361, 'Swiggy', 'impressions', 10180, '2019-02-20 06:00:00'),
(362, 'Swiggy', 'Spend', 1180, '2019-02-20 06:01:00'),
(363, 'Swiggy', 'Install', 280, '2019-02-20 06:02:00'),
(364, 'Swiggy', 'Click', 5180, '2019-02-20 06:03:00'),
(365, 'netflix', 'impressions', 10180, '2019-02-20 06:04:00'),
(366, 'netflix', 'Spend', 1180, '2019-02-20 06:05:00'),
(367, 'netflix', 'Install', 280, '2019-02-20 06:06:00'),
(368, 'netflix', 'Click', 5180, '2019-02-20 06:07:00'),
(369, 'Zomato', 'impressions', 10180, '2019-02-20 06:08:00'),
(370, 'Zomato', 'Spend', 1180, '2019-02-20 06:09:00'),
(371, 'Zomato', 'Install', 280, '2019-02-20 06:10:00'),
(372, 'Zomato', 'Click', 5180, '2019-02-20 06:11:00'),
(373, 'Foodpanda', 'impressions', 10180, '2019-02-20 06:12:00'),
(374, 'Foodpanda', 'Spend', 1180, '2019-02-20 06:13:00'),
(375, 'Foodpanda', 'Install', 280, '2019-02-20 06:14:00'),
(376, 'Foodpanda', 'Click', 5180, '2019-02-20 06:15:00'),
(377, 'Bigbasket', 'impressions', 10180, '2019-02-20 06:16:00'),
(378, 'Bigbasket', 'Spend', 1180, '2019-02-20 06:17:00'),
(379, 'Bigbasket', 'Install', 280, '2019-02-20 06:18:00'),
(380, 'Bigbasket', 'Click', 5180, '2019-02-20 06:19:00'),
(381, 'Swiggy', 'impressions', 10190, '2019-02-20 06:20:00'),
(382, 'Swiggy', 'Spend', 1190, '2019-02-20 06:21:00'),
(383, 'Swiggy', 'Install', 290, '2019-02-20 06:22:00'),
(384, 'Swiggy', 'Click', 5190, '2019-02-20 06:23:00'),
(385, 'netflix', 'impressions', 10190, '2019-02-20 06:24:00'),
(386, 'netflix', 'Spend', 1190, '2019-02-20 06:25:00'),
(387, 'netflix', 'Install', 290, '2019-02-20 06:26:00'),
(388, 'netflix', 'Click', 5190, '2019-02-20 06:27:00'),
(389, 'Zomato', 'impressions', 10190, '2019-02-20 06:28:00'),
(390, 'Zomato', 'Spend', 1190, '2019-02-20 06:29:00'),
(391, 'Zomato', 'Install', 290, '2019-02-20 06:30:00'),
(392, 'Zomato', 'Click', 5190, '2019-02-20 06:31:00'),
(393, 'Foodpanda', 'impressions', 10190, '2019-02-20 06:32:00'),
(394, 'Foodpanda', 'Spend', 1190, '2019-02-20 06:33:00'),
(395, 'Foodpanda', 'Install', 290, '2019-02-20 06:34:00'),
(396, 'Foodpanda', 'Click', 5190, '2019-02-20 06:35:00'),
(397, 'Bigbasket', 'impressions', 10190, '2019-02-20 06:36:00'),
(398, 'Bigbasket', 'Spend', 1190, '2019-02-20 06:37:00'),
(399, 'Bigbasket', 'Install', 290, '2019-02-20 06:38:00'),
(400, 'Bigbasket', 'Click', 5190, '2019-02-20 06:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` tinyint(3) NOT NULL,
  `user_id` tinyint(3) NOT NULL,
  `rule_name` varchar(255) NOT NULL,
  `campaigns` varchar(255) NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `conditions` varchar(255) NOT NULL,
  `actions` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `user_id`, `rule_name`, `campaigns`, `schedule`, `conditions`, `actions`, `status`, `last_update`) VALUES
(50, 1, 'Test11', 'BigBasket,FoodPanda', 'every_15_minutes', 'eCPI is_less_than_or_equal_to 111 AND Impressions is_less_than_or_equal_to 11', 'start_campaign', 1, '2019-02-20 08:56:12'),
(53, 1, 'test2', 'FoodPanda', 'every_hour', 'Impressions is_greater_than 1 AND Clicks is_greater_than 1', 'start_campaign', 1, '2019-02-20 08:56:19'),
(54, 1, 'Test3', 'FoodPanda', 'every_day_at_12:00AM', 'eCPI is_greater_than_or_equal_to 1 AND eCPI is_greater_than_or_equal_to 1', 'start_campaign', 1, '2019-02-20 12:03:10'),
(56, 1, 'Test4', 'FoodPanda', 'every_15_minutes', 'eCPI is_less_than_or_equal_to 0 AND eCPI is_less_than_or_equal_to 0', 'start_campaign', 1, '2019-02-20 08:56:19'),
(57, 1, 'ABC', 'BigBasket,Zomato,FoodPanda', 'every_15_minutes', 'Impressions is_greater_than 4 AND Clicks is_greater_than 5', 'start_campaign', 1, '2019-02-20 08:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` tinyint(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(1, 'dimpledimple41@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `metric`
--
ALTER TABLE `metric`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `campaign` (`campaign`),
  ADD KEY `metric` (`metric`),
  ADD KEY `date_time` (`date_time`),
  ADD KEY `metric_2` (`metric`),
  ADD KEY `metric_value` (`metric_value`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `campaigns` (`campaigns`),
  ADD KEY `conditions` (`conditions`),
  ADD KEY `conditions_2` (`conditions`),
  ADD KEY `conditions_3` (`conditions`),
  ADD KEY `last_update` (`last_update`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `metric`
--
ALTER TABLE `metric`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
