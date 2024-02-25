-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 03:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptoolz_ptoolz`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `userAccountId` int(11) NOT NULL,
  `about` varchar(255) NOT NULL DEFAULT 'About ...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `userAccountId`, `about`) VALUES
(10, 498, 'dnnxndn'),
(11, 366, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `acceptedtransaction`
--

CREATE TABLE `acceptedtransaction` (
  `id` int(11) NOT NULL,
  `quotationId` int(11) NOT NULL,
  `spPercentage` float NOT NULL,
  `adminPercentage` float NOT NULL,
  `currencyShare` varchar(10) NOT NULL DEFAULT 'USD',
  `spShare` float NOT NULL,
  `adminShare` float NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acceptedtransaction`
--

INSERT INTO `acceptedtransaction` (`id`, `quotationId`, `spPercentage`, `adminPercentage`, `currencyShare`, `spShare`, `adminShare`, `dateTime`) VALUES
(1, 17, 92, 8, 'USD', 24.1224, 2.0976, '2022-08-08 16:43:31'),
(3, 17, 92, 8, 'USD', 24.1224, 2.0976, '2022-08-08 16:58:59'),
(4, 17, 92, 8, 'USD', 24.1224, 2.0976, '2022-08-08 17:02:11'),
(5, 17, 92, 8, 'USD', 24.1224, 2.0976, '2022-08-08 17:03:29'),
(6, 18, 92, 8, 'USD', 125.856, 10.944, '2022-08-09 14:19:35'),
(7, 19, 92, 8, 'USD', 209.76, 18.24, '2022-08-14 15:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `accessorycategory`
--

CREATE TABLE `accessorycategory` (
  `id` int(11) NOT NULL,
  `accessoryCategoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accessorycategory`
--

INSERT INTO `accessorycategory` (`id`, `accessoryCategoryName`) VALUES
(1, 'Crane'),
(2, 'Lenses'),
(3, 'Stand'),
(4, 'Mic'),
(5, 'Memory'),
(6, 'LightBox');

-- --------------------------------------------------------

--
-- Table structure for table `accessorymultirelation`
--

CREATE TABLE `accessorymultirelation` (
  `id` int(11) NOT NULL,
  `accessory` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `forCamera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accessorymultirelation`
--

INSERT INTO `accessorymultirelation` (`id`, `accessory`, `category`, `forCamera`) VALUES
(6, 4, 1, 0),
(7, 4, 1, 2),
(8, 4, 1, 1),
(9, 1, 6, 1),
(10, 1, 6, 2),
(11, 1, 6, 3),
(12, 1, 6, 4),
(13, 1, 6, 5),
(14, 1, 6, 6),
(15, 1, 6, 7),
(16, 1, 6, 8),
(17, 1, 6, 9),
(18, 1, 6, 10),
(19, 1, 6, 11),
(20, 1, 6, 12),
(21, 1, 6, 13),
(22, 1, 6, 14),
(23, 1, 6, 15),
(24, 1, 6, 16),
(25, 1, 6, 17),
(26, 1, 6, 18),
(27, 1, 6, 19),
(28, 1, 6, 20),
(29, 1, 6, 21),
(30, 1, 6, 22),
(31, 1, 6, 23),
(32, 1, 6, 24),
(33, 1, 6, 25),
(34, 1, 6, 26),
(35, 1, 6, 27),
(36, 1, 6, 28),
(37, 1, 6, 29),
(38, 1, 6, 30),
(39, 1, 6, 31),
(40, 1, 6, 32),
(41, 1, 6, 33),
(42, 1, 6, 34),
(43, 1, 6, 35),
(44, 1, 6, 36),
(45, 1, 6, 37),
(46, 1, 6, 38),
(47, 1, 6, 39),
(48, 1, 6, 40),
(49, 1, 6, 41),
(50, 1, 6, 42),
(51, 1, 6, 43),
(52, 1, 6, 44),
(53, 1, 6, 45),
(54, 1, 6, 46),
(55, 1, 6, 47),
(56, 1, 6, 48),
(57, 1, 6, 49),
(58, 1, 6, 50),
(59, 1, 6, 51),
(60, 1, 6, 52),
(61, 1, 6, 53),
(62, 1, 6, 54),
(63, 1, 6, 55),
(64, 1, 6, 56),
(65, 1, 6, 57),
(66, 3, 5, 1),
(67, 3, 5, 2),
(68, 3, 5, 3),
(69, 3, 5, 4),
(70, 3, 5, 5),
(71, 3, 5, 6),
(72, 3, 5, 7),
(73, 3, 5, 8),
(74, 3, 5, 9),
(75, 3, 5, 10),
(76, 3, 5, 11),
(77, 3, 5, 12),
(78, 3, 5, 13),
(79, 3, 5, 14),
(80, 3, 5, 15),
(81, 3, 5, 16),
(82, 3, 5, 17),
(83, 3, 5, 18),
(84, 3, 5, 19),
(85, 3, 5, 20),
(86, 3, 5, 21),
(87, 3, 5, 22),
(88, 3, 5, 23),
(89, 3, 5, 24),
(90, 3, 5, 25),
(91, 3, 5, 26),
(92, 3, 5, 27),
(93, 3, 5, 28),
(94, 3, 5, 29),
(95, 3, 5, 30),
(96, 3, 5, 31),
(97, 3, 5, 32),
(98, 3, 5, 33),
(99, 3, 5, 34),
(100, 3, 5, 35),
(101, 3, 5, 36),
(102, 3, 5, 37),
(103, 3, 5, 38),
(104, 3, 5, 39),
(105, 3, 5, 40),
(106, 3, 5, 41),
(107, 3, 5, 42),
(108, 3, 5, 43),
(109, 3, 5, 44),
(110, 3, 5, 45),
(111, 3, 5, 46),
(112, 3, 5, 47),
(113, 3, 5, 48),
(114, 3, 5, 49),
(115, 3, 5, 50),
(116, 3, 5, 51),
(117, 3, 5, 52),
(118, 3, 5, 53),
(119, 3, 5, 54),
(120, 3, 5, 55),
(121, 3, 5, 56),
(122, 3, 5, 0),
(123, 8, 3, 1),
(124, 8, 3, 4),
(125, 8, 3, 8),
(126, 8, 3, 12),
(127, 8, 3, 16),
(128, 8, 3, 20),
(129, 8, 3, 24),
(130, 8, 3, 28),
(131, 8, 3, 32),
(132, 8, 3, 36),
(133, 8, 3, 40),
(134, 8, 3, 44),
(135, 8, 3, 48),
(136, 8, 3, 52),
(137, 8, 3, 56),
(138, 10, 4, 0),
(139, 10, 4, 1),
(140, 10, 4, 2),
(141, 10, 4, 3),
(142, 10, 4, 4),
(143, 10, 4, 5),
(144, 10, 4, 6),
(145, 10, 4, 7),
(146, 10, 4, 8),
(147, 10, 4, 9),
(148, 10, 4, 10),
(149, 10, 4, 11),
(150, 10, 4, 12),
(151, 10, 4, 13),
(152, 10, 4, 14),
(153, 10, 4, 15),
(154, 10, 4, 16),
(155, 10, 4, 17),
(156, 10, 4, 18),
(157, 10, 4, 19),
(158, 10, 4, 20),
(159, 10, 4, 21),
(160, 10, 4, 22),
(161, 10, 4, 23),
(162, 10, 4, 24),
(163, 10, 4, 25),
(164, 10, 4, 26),
(165, 10, 4, 27),
(166, 10, 4, 28),
(167, 10, 4, 29),
(168, 10, 4, 30),
(169, 10, 4, 31),
(170, 10, 4, 32),
(171, 10, 4, 33),
(172, 10, 4, 34),
(173, 10, 4, 35),
(174, 10, 4, 36),
(175, 10, 4, 37),
(176, 10, 4, 38),
(177, 10, 4, 39),
(178, 10, 4, 40),
(179, 10, 4, 41),
(180, 10, 4, 42),
(181, 10, 4, 43),
(182, 10, 4, 44),
(183, 10, 4, 45),
(184, 10, 4, 46),
(185, 10, 4, 47),
(186, 10, 4, 48),
(187, 10, 4, 49),
(188, 10, 4, 50),
(189, 10, 4, 51),
(190, 10, 4, 52),
(191, 10, 4, 53),
(192, 10, 4, 54),
(193, 10, 4, 55),
(194, 10, 4, 56),
(195, 10, 4, 57),
(196, 11, 4, 0),
(197, 11, 4, 1),
(198, 11, 4, 2),
(199, 11, 4, 3),
(200, 11, 4, 4),
(201, 11, 4, 5),
(202, 11, 4, 6),
(203, 11, 4, 7),
(204, 11, 4, 8),
(205, 11, 4, 9),
(206, 11, 4, 10),
(207, 11, 4, 11),
(208, 11, 4, 12),
(209, 11, 4, 13),
(210, 11, 4, 14),
(211, 11, 4, 15),
(212, 11, 4, 16),
(213, 11, 4, 17),
(214, 11, 4, 18),
(215, 11, 4, 19),
(216, 11, 4, 20),
(217, 11, 4, 21),
(218, 11, 4, 22),
(219, 11, 4, 23),
(220, 11, 4, 24),
(221, 11, 4, 25),
(222, 11, 4, 26),
(223, 11, 4, 27),
(224, 11, 4, 28),
(225, 11, 4, 29),
(226, 11, 4, 30),
(227, 11, 4, 31),
(228, 11, 4, 32),
(229, 11, 4, 33),
(230, 11, 4, 34),
(231, 11, 4, 35),
(232, 11, 4, 36),
(233, 11, 4, 37),
(234, 11, 4, 38),
(235, 11, 4, 39),
(236, 11, 4, 40),
(237, 11, 4, 41),
(238, 11, 4, 42),
(239, 11, 4, 43),
(240, 11, 4, 44),
(241, 11, 4, 45),
(242, 11, 4, 46),
(243, 11, 4, 47),
(244, 11, 4, 48),
(245, 11, 4, 49),
(246, 11, 4, 50),
(247, 11, 4, 51),
(248, 11, 4, 52),
(249, 11, 4, 53),
(250, 11, 4, 54),
(251, 11, 4, 55),
(252, 11, 4, 56),
(253, 11, 4, 57),
(254, 12, 2, 0),
(255, 12, 2, 1),
(256, 12, 2, 2),
(257, 12, 2, 3),
(258, 12, 2, 4),
(259, 12, 2, 5),
(260, 12, 2, 6),
(261, 12, 2, 7),
(262, 12, 2, 8),
(263, 12, 2, 9),
(264, 12, 2, 10),
(265, 12, 2, 11),
(266, 12, 2, 12),
(267, 12, 2, 13),
(268, 12, 2, 14),
(269, 12, 2, 15),
(270, 12, 2, 16),
(271, 12, 2, 17),
(272, 12, 2, 18),
(273, 12, 2, 19),
(274, 12, 2, 20),
(275, 12, 2, 21),
(276, 12, 2, 22),
(277, 12, 2, 23),
(278, 12, 2, 24),
(279, 12, 2, 25),
(280, 12, 2, 26),
(281, 12, 2, 27),
(282, 12, 2, 28),
(283, 12, 2, 29),
(284, 12, 2, 30),
(285, 12, 2, 31),
(286, 12, 2, 32),
(287, 12, 2, 33),
(288, 12, 2, 34),
(289, 12, 2, 35),
(290, 12, 2, 36),
(291, 12, 2, 37),
(292, 12, 2, 38),
(293, 12, 2, 39),
(294, 12, 2, 40),
(295, 12, 2, 41),
(296, 12, 2, 42),
(297, 12, 2, 43),
(298, 12, 2, 44),
(299, 12, 2, 45),
(300, 12, 2, 46),
(301, 12, 2, 47),
(302, 12, 2, 48),
(303, 12, 2, 49),
(304, 12, 2, 50),
(305, 12, 2, 51),
(306, 12, 2, 52),
(307, 12, 2, 53),
(308, 12, 2, 54),
(309, 12, 2, 55),
(310, 12, 2, 56),
(311, 12, 2, 57),
(312, 13, 2, 0),
(313, 13, 2, 2),
(314, 13, 2, 4),
(315, 13, 2, 6),
(316, 13, 2, 8),
(317, 13, 2, 10),
(318, 13, 2, 12),
(319, 13, 2, 14),
(320, 13, 2, 16),
(321, 13, 2, 18),
(322, 13, 2, 20),
(323, 13, 2, 22),
(324, 13, 2, 24),
(325, 13, 2, 26),
(326, 13, 2, 28),
(327, 13, 2, 30),
(328, 13, 2, 32),
(329, 13, 2, 34),
(330, 13, 2, 36),
(331, 13, 2, 38),
(332, 13, 2, 40),
(333, 13, 2, 42),
(334, 13, 2, 44),
(335, 13, 2, 46),
(336, 13, 2, 48),
(337, 13, 2, 50),
(338, 13, 2, 52),
(339, 13, 2, 54),
(340, 13, 2, 56),
(341, 14, 2, 0),
(342, 14, 2, 7),
(343, 14, 2, 14),
(344, 14, 2, 21),
(345, 14, 2, 28),
(346, 14, 2, 35),
(347, 14, 2, 42),
(348, 14, 2, 49),
(349, 14, 2, 56),
(350, 15, 2, 0),
(351, 15, 2, 1),
(352, 15, 2, 2),
(353, 15, 2, 3),
(354, 15, 2, 4),
(355, 15, 2, 5),
(356, 15, 2, 6),
(357, 15, 2, 7),
(358, 15, 2, 8),
(359, 15, 2, 9),
(360, 15, 2, 10),
(361, 15, 2, 11),
(362, 15, 2, 12),
(363, 15, 2, 13),
(364, 15, 2, 14),
(365, 15, 2, 15),
(366, 15, 2, 16),
(367, 15, 2, 17),
(368, 15, 2, 18),
(369, 15, 2, 19),
(370, 15, 2, 20),
(371, 15, 2, 21),
(372, 15, 2, 22),
(373, 15, 2, 23),
(374, 15, 2, 24),
(375, 15, 2, 25),
(376, 15, 2, 26),
(377, 15, 2, 27),
(378, 15, 2, 28),
(379, 15, 2, 29),
(380, 15, 2, 30),
(381, 15, 2, 31),
(382, 15, 2, 32),
(383, 15, 2, 33),
(384, 15, 2, 34),
(385, 15, 2, 35),
(386, 15, 2, 36),
(387, 15, 2, 37),
(388, 15, 2, 38),
(389, 15, 2, 39),
(390, 15, 2, 40),
(391, 15, 2, 41),
(392, 15, 2, 42),
(393, 15, 2, 43),
(394, 15, 2, 44),
(395, 15, 2, 45),
(396, 15, 2, 46),
(397, 15, 2, 47),
(398, 15, 2, 48),
(399, 15, 2, 49),
(400, 15, 2, 50),
(401, 15, 2, 51),
(402, 15, 2, 52),
(403, 15, 2, 53),
(404, 15, 2, 54),
(405, 15, 2, 55),
(406, 15, 2, 56),
(407, 15, 2, 57);

-- --------------------------------------------------------

--
-- Table structure for table `accounttype`
--

CREATE TABLE `accounttype` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounttype`
--

INSERT INTO `accounttype` (`id`, `type`) VALUES
(1, 'customer'),
(2, 'serviceprovider'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `adminaccount`
--

CREATE TABLE `adminaccount` (
  `id` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `country` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `region` int(11) NOT NULL,
  `address` varchar(255) DEFAULT 'address',
  `secKey` varchar(250) NOT NULL,
  `degree` int(2) NOT NULL,
  `activity` int(4) NOT NULL,
  `registrationDate` datetime NOT NULL,
  `avatar` varchar(250) NOT NULL DEFAULT 'default.png',
  `dateBirth` date NOT NULL,
  `lastSeen` varchar(255) NOT NULL DEFAULT 'last seen',
  `balance` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminaccount`
--

INSERT INTO `adminaccount` (`id`, `userName`, `firstName`, `lastName`, `email`, `mobile`, `country`, `city`, `region`, `address`, `secKey`, `degree`, `activity`, `registrationDate`, `avatar`, `dateBirth`, `lastSeen`, `balance`) VALUES
(1, 'admin', 'admin acc', 'aymen', 'admin@gmail.com', '01001995914', 2, 1, 4, 'address', '25d55ad283aa400af464c76d713c07ad', 1, 1, '2022-02-21 13:57:58', 'default.png', '2021-01-13', 'last seen', 1),
(2, 'bank', 'bank', 'account', 'bank@ptoolz.com', '01001995914', 2, 1, 4, 'address', '25d55ad283aa400af464c76d713c07ad', 1, 1, '2022-02-21 13:57:58', 'default.png', '2021-01-13', 'last seen', 1),
(3, 'fawrypay', 'fawrypay', 'payment', 'fawrypay@ptoolz.com', '01001995914', 2, 1, 4, 'address', '25d55ad283aa400af464c76d713c07ad', 1, 1, '2022-02-21 13:57:58', 'default.png', '2021-01-13', 'last seen', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admintransaction`
--

CREATE TABLE `admintransaction` (
  `id` int(11) NOT NULL,
  `quotationId` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL DEFAULT 'USD',
  `value` float NOT NULL,
  `transactionTypeId` int(11) NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admintransaction`
--

INSERT INTO `admintransaction` (`id`, `quotationId`, `currency`, `value`, `transactionTypeId`, `dateTime`) VALUES
(142, 2, 'USD', 100, 1, '2022-03-26 14:11:05'),
(143, 3, 'USD', 8, 1, '2022-03-26 14:21:48'),
(144, 4, 'USD', 12, 1, '2022-03-26 14:57:21'),
(145, 5, 'USD', 8, 1, '2022-03-26 15:21:26'),
(146, 6, 'USD', 6.4, 1, '2022-03-26 15:21:26'),
(147, 9, 'USD', 184, 1, '2022-03-26 16:19:09'),
(148, 10, 'USD', 16, 1, '2022-03-26 17:20:20'),
(149, 12, 'USD', 16, 1, '2022-03-26 17:20:20'),
(150, 13, 'USD', 4, 1, '2022-03-27 10:25:46'),
(151, 14, 'USD', 4, 1, '2022-03-27 10:33:37'),
(152, 15, 'USD', 4, 1, '2022-03-27 10:41:17'),
(153, 16, 'USD', 4, 1, '2022-03-27 10:41:17'),
(154, 7, 'USD', 8, 1, '2022-03-27 13:16:20'),
(155, 17, 'USD', 20, 1, '2022-03-27 13:30:31'),
(156, 19, 'USD', 1.6, 1, '2022-03-27 13:34:38'),
(157, 20, 'USD', 1.6, 1, '2022-03-27 13:34:38'),
(158, 22, 'USD', 8, 1, '2022-03-27 13:49:36'),
(159, 25, 'USD', 64, 1, '2022-03-27 14:41:02'),
(160, 26, 'USD', 4, 1, '2022-03-27 14:43:29'),
(161, 29, 'USD', 16, 1, '2022-03-27 19:38:38'),
(162, 30, 'USD', 2, 1, '2022-03-27 19:38:38'),
(163, 31, 'USD', 40, 1, '2022-04-07 10:46:11'),
(164, 32, 'USD', 4, 1, '2022-04-07 10:46:11'),
(165, 38, 'USD', 10, 1, '2022-04-13 10:00:38'),
(166, 40, 'USD', 3.2, 1, '2022-04-13 12:41:09'),
(167, 39, 'USD', 1.6, 1, '2022-04-13 12:43:14'),
(168, 41, 'USD', 1.6, 1, '2022-04-20 12:32:26'),
(169, 68, 'USD', 8, 1, '2022-05-12 08:48:05'),
(170, 72, 'USD', 0.8, 1, '2022-05-12 10:16:37'),
(171, 74, 'USD', 2.85, 3, '2022-05-15 09:56:30'),
(172, 74, 'USD', 2.85, 3, '2022-05-15 09:57:35'),
(173, 34, 'USD', 1.425, 3, '2022-05-15 10:02:25'),
(174, 37, 'USD', 5.529, 3, '2022-05-15 14:07:24'),
(175, 78, 'USD', 0.56, 1, '2022-05-15 14:57:10'),
(176, 86, 'USD', 4, 1, '2022-05-16 15:01:07'),
(177, 87, 'USD', 8, 1, '2022-05-16 15:01:07'),
(178, 88, 'USD', 86.4, 1, '2022-05-17 11:55:17'),
(179, 92, 'USD', 40, 1, '2022-05-18 10:17:38'),
(180, 104, 'USD', 8, 1, '2022-05-22 13:33:18'),
(181, 115, 'USD', 4, 1, '2022-05-24 13:16:52'),
(182, 126, 'USD', 40, 1, '2022-05-25 12:09:04'),
(183, 129, 'USD', 16, 1, '2022-05-25 12:32:05'),
(184, 130, 'USD', 4, 1, '2022-05-25 12:32:05'),
(185, 146, 'USD', 5.28, 1, '2022-05-25 15:06:32'),
(186, 161, 'USD', 88, 1, '2022-05-30 17:47:48'),
(187, 162, 'USD', 0.8, 1, '2022-05-31 09:59:18'),
(188, 163, 'USD', 1.6, 1, '2022-05-31 11:20:19'),
(189, 184, 'USD', 80, 1, '2022-06-01 13:23:51'),
(190, 186, 'USD', 6.4, 1, '2022-06-01 13:23:51'),
(191, 185, 'USD', 0.8, 1, '2022-06-01 13:33:30'),
(192, 188, 'USD', 8, 1, '2022-06-01 13:33:30'),
(193, 189, 'USD', 64, 1, '2022-06-01 14:05:39'),
(194, 190, 'USD', 6.4, 1, '2022-06-01 14:05:39'),
(195, 191, 'USD', 4, 1, '2022-06-02 13:20:23'),
(196, 195, 'USD', 4, 1, '2022-06-02 13:20:23'),
(197, 198, 'USD', 96, 1, '2022-06-02 13:54:32'),
(198, 201, 'USD', 4.8, 1, '2022-06-02 16:10:48'),
(199, 202, 'USD', 40, 1, '2022-06-02 16:22:31'),
(200, 209, 'USD', 63.84, 1, '2022-06-06 11:25:57'),
(201, 210, 'USD', 19.2, 1, '2022-06-07 11:13:53'),
(202, 208, 'USD', 0, 4, '2022-06-07 19:51:02'),
(203, 206, 'USD', 5.7, 3, '2022-06-07 19:51:37'),
(204, 206, 'USD', 5.7, 3, '2022-06-07 19:51:42'),
(205, 230, 'USD', 17.76, 1, '2022-06-08 11:46:05'),
(206, 231, 'USD', 19.2, 1, '2022-06-08 11:48:32'),
(207, 238, 'USD', 20, 1, '2022-06-08 14:13:17'),
(208, 241, 'USD', 0, 4, '2022-06-15 13:51:50'),
(209, 237, 'USD', 0, 4, '2022-06-15 14:15:24'),
(210, 227, 'USD', 5.7, 3, '2022-06-15 14:17:39'),
(211, 211, 'USD', 0, 4, '2022-06-15 14:18:29'),
(212, 120, 'USD', 0, 4, '2022-06-15 14:19:02'),
(213, 119, 'USD', 0, 4, '2022-06-15 14:21:35'),
(214, 116, 'USD', 0, 4, '2022-06-15 14:23:38'),
(215, 244, 'USD', 0, 4, '2022-06-27 09:48:39'),
(216, 239, 'USD', 2.85, 3, '2022-06-27 09:48:57'),
(217, 232, 'USD', 6.327, 3, '2022-06-27 15:51:51'),
(218, 205, 'USD', 13.68, 3, '2022-06-27 15:51:59'),
(142, 2, 'USD', 100, 1, '2022-03-26 14:11:05'),
(143, 3, 'USD', 8, 1, '2022-03-26 14:21:48'),
(144, 4, 'USD', 12, 1, '2022-03-26 14:57:21'),
(145, 5, 'USD', 8, 1, '2022-03-26 15:21:26'),
(146, 6, 'USD', 6.4, 1, '2022-03-26 15:21:26'),
(147, 9, 'USD', 184, 1, '2022-03-26 16:19:09'),
(148, 10, 'USD', 16, 1, '2022-03-26 17:20:20'),
(149, 12, 'USD', 16, 1, '2022-03-26 17:20:20'),
(150, 13, 'USD', 4, 1, '2022-03-27 10:25:46'),
(151, 14, 'USD', 4, 1, '2022-03-27 10:33:37'),
(152, 15, 'USD', 4, 1, '2022-03-27 10:41:17'),
(153, 16, 'USD', 4, 1, '2022-03-27 10:41:17'),
(154, 7, 'USD', 8, 1, '2022-03-27 13:16:20'),
(155, 17, 'USD', 20, 1, '2022-03-27 13:30:31'),
(156, 19, 'USD', 1.6, 1, '2022-03-27 13:34:38'),
(157, 20, 'USD', 1.6, 1, '2022-03-27 13:34:38'),
(158, 22, 'USD', 8, 1, '2022-03-27 13:49:36'),
(159, 25, 'USD', 64, 1, '2022-03-27 14:41:02'),
(160, 26, 'USD', 4, 1, '2022-03-27 14:43:29'),
(161, 29, 'USD', 16, 1, '2022-03-27 19:38:38'),
(162, 30, 'USD', 2, 1, '2022-03-27 19:38:38'),
(163, 31, 'USD', 40, 1, '2022-04-07 10:46:11'),
(164, 32, 'USD', 4, 1, '2022-04-07 10:46:11'),
(165, 38, 'USD', 10, 1, '2022-04-13 10:00:38'),
(166, 40, 'USD', 3.2, 1, '2022-04-13 12:41:09'),
(167, 39, 'USD', 1.6, 1, '2022-04-13 12:43:14'),
(168, 41, 'USD', 1.6, 1, '2022-04-20 12:32:26'),
(169, 68, 'USD', 8, 1, '2022-05-12 08:48:05'),
(170, 72, 'USD', 0.8, 1, '2022-05-12 10:16:37'),
(171, 74, 'USD', 2.85, 3, '2022-05-15 09:56:30'),
(172, 74, 'USD', 2.85, 3, '2022-05-15 09:57:35'),
(173, 34, 'USD', 1.425, 3, '2022-05-15 10:02:25'),
(174, 37, 'USD', 5.529, 3, '2022-05-15 14:07:24'),
(175, 78, 'USD', 0.56, 1, '2022-05-15 14:57:10'),
(176, 86, 'USD', 4, 1, '2022-05-16 15:01:07'),
(177, 87, 'USD', 8, 1, '2022-05-16 15:01:07'),
(178, 88, 'USD', 86.4, 1, '2022-05-17 11:55:17'),
(179, 92, 'USD', 40, 1, '2022-05-18 10:17:38'),
(180, 104, 'USD', 8, 1, '2022-05-22 13:33:18'),
(181, 115, 'USD', 4, 1, '2022-05-24 13:16:52'),
(182, 126, 'USD', 40, 1, '2022-05-25 12:09:04'),
(183, 129, 'USD', 16, 1, '2022-05-25 12:32:05'),
(184, 130, 'USD', 4, 1, '2022-05-25 12:32:05'),
(185, 146, 'USD', 5.28, 1, '2022-05-25 15:06:32'),
(186, 161, 'USD', 88, 1, '2022-05-30 17:47:48'),
(187, 162, 'USD', 0.8, 1, '2022-05-31 09:59:18'),
(188, 163, 'USD', 1.6, 1, '2022-05-31 11:20:19'),
(189, 184, 'USD', 80, 1, '2022-06-01 13:23:51'),
(190, 186, 'USD', 6.4, 1, '2022-06-01 13:23:51'),
(191, 185, 'USD', 0.8, 1, '2022-06-01 13:33:30'),
(192, 188, 'USD', 8, 1, '2022-06-01 13:33:30'),
(193, 189, 'USD', 64, 1, '2022-06-01 14:05:39'),
(194, 190, 'USD', 6.4, 1, '2022-06-01 14:05:39'),
(195, 191, 'USD', 4, 1, '2022-06-02 13:20:23'),
(196, 195, 'USD', 4, 1, '2022-06-02 13:20:23'),
(197, 198, 'USD', 96, 1, '2022-06-02 13:54:32'),
(198, 201, 'USD', 4.8, 1, '2022-06-02 16:10:48'),
(199, 202, 'USD', 40, 1, '2022-06-02 16:22:31'),
(200, 209, 'USD', 63.84, 1, '2022-06-06 11:25:57'),
(201, 210, 'USD', 19.2, 1, '2022-06-07 11:13:53'),
(202, 208, 'USD', 0, 4, '2022-06-07 19:51:02'),
(203, 206, 'USD', 5.7, 3, '2022-06-07 19:51:37'),
(204, 206, 'USD', 5.7, 3, '2022-06-07 19:51:42'),
(205, 230, 'USD', 17.76, 1, '2022-06-08 11:46:05'),
(206, 231, 'USD', 19.2, 1, '2022-06-08 11:48:32'),
(207, 238, 'USD', 20, 1, '2022-06-08 14:13:17'),
(208, 241, 'USD', 0, 4, '2022-06-15 13:51:50'),
(209, 237, 'USD', 0, 4, '2022-06-15 14:15:24'),
(210, 227, 'USD', 5.7, 3, '2022-06-15 14:17:39'),
(211, 211, 'USD', 0, 4, '2022-06-15 14:18:29'),
(212, 120, 'USD', 0, 4, '2022-06-15 14:19:02'),
(213, 119, 'USD', 0, 4, '2022-06-15 14:21:35'),
(214, 116, 'USD', 0, 4, '2022-06-15 14:23:38'),
(215, 244, 'USD', 0, 4, '2022-06-27 09:48:39'),
(216, 239, 'USD', 2.85, 3, '2022-06-27 09:48:57'),
(217, 232, 'USD', 6.327, 3, '2022-06-27 15:51:51'),
(218, 205, 'USD', 13.68, 3, '2022-06-27 15:51:59'),
(219, 254, 'USD', 9.68, 1, '2022-07-10 17:29:00'),
(220, 264, 'USD', 100, 1, '2022-03-26 14:11:05'),
(221, 268, 'USD', 33.68, 1, '2022-07-26 14:55:13'),
(222, 272, 'USD', 8, 1, '2022-08-04 13:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `advertismentvideo`
--

CREATE TABLE `advertismentvideo` (
  `AdvertismentVideoId` int(11) NOT NULL,
  `AdvertisementLink` varchar(255) NOT NULL DEFAULT '',
  `ImageLink` varchar(255) NOT NULL DEFAULT '',
  `Views` int(11) NOT NULL DEFAULT 0,
  `Active` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertismentvideo`
--

INSERT INTO `advertismentvideo` (`AdvertismentVideoId`, `AdvertisementLink`, `ImageLink`, `Views`, `Active`) VALUES
(1, 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4', 'http://192.168.1.90/omniati/uploads/advertisment/istockphoto-468433868-1024x1024.jpg', 0, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `appdocuments`
--

CREATE TABLE `appdocuments` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `labelAr` varchar(250) NOT NULL,
  `labelEn` varchar(250) NOT NULL,
  `descriptionAr` text DEFAULT NULL,
  `descriptionEn` text DEFAULT NULL,
  `states` bit(1) NOT NULL DEFAULT b'0',
  `order` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appdocuments`
--

INSERT INTO `appdocuments` (`id`, `type`, `labelAr`, `labelEn`, `descriptionAr`, `descriptionEn`, `states`, `order`) VALUES
(1, 2, 'أ - الإلتزام المالي', 'A - financial commitment', ' يلتزم طالب الخدمة بسداد المبلغ المطلوب منه لتنفيذ الخدمة ويضمن التطبيق\r\nالمبلغ المسدد من للعميل لحين اتمام طلبه ويحق للعميل الغاء طلبه بمدة لاتتجاوز 10% من وقت تنفيذ المشروع وتادية الخدمة بشرط عدم الموافقة على اى تحديث وفى حالة الغاء الخدمة يحق للتطبيق والموقع  تطبيق غرامة على العميل بنسبة 10% لالغاء الخدمة بعد الوقت المتفق عليه بين العميل ومزود الخدمة ويضمن التطبيق المبلغ المسدد من العميل بعد التاكد من ان الخدمة المطلوبة تمت بالشروط المتفق عليها بين العميل ومزود الخدمة وتم تلسيمها \r\nثانيا: شرط خاص بخدمات التصوير من فيديو وفوتوجرافر لايحق للعميل الغاء الخدمة قبل البدء فى تنفيذها بحد اقصى يوم من التاريخ المتفق عليه وفى حالة الالغاء يتم تطبيق غرامة 10% على العميل من قيمة المبلغ المسدد للتطبيق و الموقع مع ضمان تادية الخدمة للعميل بشروط المتفق عليها بعد سداد المبلغ ', 'The applicant is committed to pay the amount required of him to perform the service, and the application is guarantees the amount paid by the customer until the completion of his request, and the customer has the right to cancel his request for a period not exceeding 10% from the time of implementing the project and performing the service, provided that no update is approved. In case of cancellation of the service, the application and the website shall apply a fine of 10% to the customer to cancel the service after the time agreed between the customer and the service provider. The application guarantees the payment from the customer after confirming that the requested service was performed on the terms agreed between the customer and the service provider and the requested service has been delivered. ', b'0', '1'),
(2, 2, 'ب - خدمات التصوير ', 'B - photography services', 'شرط خاص بخدمات التصوير من فيديو وفوتوجرافر لايحق للعميل الغاء الخدمة قبل البدء فى تنفيذها بحد اقصى يوم من التاريخ المتفق عليه وفى حالة الالغاء يتم تطبيق غرامة 10% على العميل من قيمة المبلغ المسدد للتطبيق و الموقع مع ضمان تادية الخدمة للعميل بشروط المتفق عليها بعد سداد المبلغ ', 'A special requirement for video and photography services, the customer does not entitle to cancel the service before starting its implementation, up to the maximum day of the agreed date. In case of cancellation, a fine of 10% shall be applied to the customer of the amount paid for the application and the website with a guarantee that the service will be performed for the customer on the terms agreed upon after Pay the amount.', b'0', '2'),
(3, 2, 'ت - مصداقية البيانات', 'C - data reliability', ' يلتزم المستخدم باستخدام بيانات حقيقية فى حسابه', 'The user is obligated to use real data in his account', b'0', '3'),
(4, 2, 'جـ - ايقاف الحساب', 'D - account suspended', 'ايقاف حساب المستخدم فى اى خدمة اومنتج من خدمات الشركة فى حالة التخريبب او الضرر بالمستخدمين او بمنتجات الشركة ', ' Deactivate the user account in any service or product of the company in case of sabotage or damage to the users or the company\'s products.', b'0', '4'),
(5, 2, 'حـ -انتهاك حقوق الملكية', 'E - copyright infringement', ' يمنع استخدام الحساب فى انتهاك حقوق الملكية الفكرية او تعمد نشر اى معلومات تسبب ضرر لشركة او شخص او دولة او جماعة وضع مواد قرصنه او برامج مسروقة وجميع ما يخالف الاعراف والقوانين الدولية ويكون المشترك مسؤلا مسؤولية كاملة عن كل مايقدمة عبر حسابة ', 'It is forbidden to use the account to infringe intellectual property rights or intentionally publish any information that causes harm to a company, person, country or hacking material group, or stolen programs and all that violates international norms and laws, and the subscriber is fully responsible for everything submitted through his account.', b'0', '5'),
(6, 2, 'خـ - قبول الأحكام و الشروط', 'F - Accept terms and conditions', 'هذه سياسة وشروط واحكام التطبيق والموقع  طبقا لاحكام القانون المدنى المصرى والسعودى وملزمة للمشتركين بالتطبيق والموقع و يعتبر قبول هذه الشروط والاحكام موافقة وقبول من العميل ومزود الخدمة للتطبيق والموقع', ' P.Toolz has the right to amend the policy, terms and conditions according to what it deems to be in the interest of both parties without referring to the other. \r\nThis is the policy, terms and conditions of the application and the website in accordance with the provisions of the Egyptian and Saudi civil law and it is binding on subscribers of the application and the website, and the acceptance of these terms and conditions is considered approval and acceptance by the customer and the service provider for the application and the website.', b'0', '6'),
(7, 3, 'مقدمة', 'introduction', 'نحن موقع بي تولز ملتزمون بتامين خصوصيتك حين تزور موقعنا وتتواصل معانا الكترونيا و هذه الصفحة توضح لك الوجه الذى يتم عليه استخدام اى معلومات شخصية تزودنا بها والتى نجمعها عنك خلال تسجيلك بالتطبيق ', 'We are P.Toolz Application committed to ensuring your privacy when you visit our website and communicate with us electronically, and this page shows you how any personal information you provide to us that we collect about you during your registration with the application.', b'0', '1'),
(8, 3, 'أ - المعلومات التى يتم جمعها', 'A - Collected information', '1:جميع المعلومات التى يزودها المستخدم عند التسجيل كالاسم اسم المستخدم \r\nالبريد الالكترونى رقم الهاتف على سبيل  المثال لا الحصر \r\n2:المواد التى يساهم بها المستخدم من مواضيع روابط وتعليقات ', '1: All the information that the user provides when registering, such as the name and the username, E-mail, phone number without limiting\r\n2: The materials that the user shares including topics, links, and comments.', b'0', '2'),
(9, 3, 'ب - المعلومات التى تخزن على جهاز المستخدم ', ' B - the information stored on the user\'s device', '1: يتم تخزين معلومات تعريف الرابط cookiesعند تسجيل دخولك للموقع هذه الملفات ضرورية لتعريف كل مستخدم ويتم ازلتها عند تسجيل خروج من الموقع ', '1: The cookies are stored when you log in to the website. These cookies are necessary to identify each user and are removed when you log out from the website.', b'0', '3'),
(10, 3, 'ت - استخدام ومشاركة المعلومات ', 'C - Use and share information', '1:يحق لموقع بيتولز استخدام الموقع الجغرافى للعميل طالب الخدمة \r\nومزود الخدمة للعميل وذلك لتسهيل توصيل الخدمات المطلوبة لعملاء \r\n2:يحق للتطبيق تسجيل بيانات العميل ومزود الخدمة وهى رقم الهاتف والاسم \r\nوذلك للتواصل يتم مشاركة البيانات التى يرسلها العميل لمزود الخدمة لتنفيذ الخدمة وتوصليها للعميل وهى تكون \r\n3:اسم العميل ورقم الهاتف وموقع العميل  مع العميل ومزود الخدمة وذلك بعد الالتزام بعدم مشاركة اى معلومات تتعارض مع بيان الخصوصية هذ \r\nالموافقة على بيان الخصوصية\r\nباستخدامك للتطبيق فانت توافق على بيان الخصوصية هذا \r\nنقوم بتحديث هذا البيان من حين لاخر لذلك نرجوان تراجع صفحة بيان الخصوصية باستمرار لتبقى  ملما بالتحديثات', '1: P.Toolz has the right to use the geographic location of the customer requesting the service and the service provider to the customer in order to facilitate the delivery of the required services to customers\r\n2: The application has the right to register the customer and service provider data, which is (the phone number and name), and that to communicate, the data sent by the customer to the service provider to implement the service and delivered to the customer, and it is:\r\n(The customer\'s name, phone number, and the customer\'s location) with the customer and the service provider, after committing not to share any information that contradicts this privacy.\r\n3: Agree to the privacy statement\r\nBy using the application, you agree to this privacy statement, we update this statement from time to time, so please review the privacy statement page frequently to stay aware of updates.', b'0', '4'),
(11, 4, 'أ - الإلتزام المالي', 'A - financial obligation', ' يلتزم بنسبة التطبيق والموقع فى تسويق خدمته للعملاء وهى تكون نسبة 10% المبلغ المتفق عليه بين العميل ومزود الخدمة ', 'He is committed to the percentage of the application and the website in marketing his service to customers, and it is 10% of the amount agreed between the customer and the service provider.', b'0', '1'),
(12, 4, ' ب - جودة الخدمة', 'B - quality of service', 'يلتزم ويتعهد مزود الخدمة بضمان جودة الخدمة لعملاء ومستخدمين الموقع والتطبيق ', 'The service provider commits and undertakes to ensure the quality of service for the customers and users of the website and application.', b'0', '2'),
(13, 4, ' ت - الإلتزام بالوقت', 'C - time commitment', 'يلتزم مزود الخدمة بالوقت المقدم منه للعميل لانهاء وتادية الخدمة للعميل', 'The service provider shall comply with the time provided by him to the customer to finish and perform the service for the customer.', b'0', '3'),
(14, 4, ' جـ - الضريبة', 'D - tax', ' يلتزم مزود الخدمة بسداد الضريبة المستحقة عن الخدمة المقدمة وفقا لاحكام الضريبية لكل دولة ', 'The service provider is committed to pay the tax due for the service provided in accordance with each country\'s tax provisions.', b'0', '4'),
(15, 4, ' حـ - العقد', 'E - the contract', ' يحق لمزود الخدمة طلب عقد بينه وبين شركة سجال الوسائل للمحتوى الالكترونى صاحبة التطبيق لضمان جدية التنفيذ بين مزود الخدمة والتطبيق والموقع ', 'The service provider has the right to request a contract between him and Sejall Al-Wasail Company for electronic content, the owner of the application, to ensure the seriousness of implementation between the service provider, the application, and the website.', b'0', '5'),
(16, 4, ' خـ - الالتزلم بالشروط', 'G - Compliance with the conditions', 'فى حالة عدم التزام مزود الخدمة بالشروط السابقة يتم توقيع غرامه علية بقدر الضرر الواقع على العميل والتطبيق والموقع يصل الى حذف الحساب من على التطبيق والموقع', 'if the service provider fails to comply with the previous terms, a fine will be imposed on him as much as the damage caused to the customer, the application and the website, up to the deletion of the account from the application and the website.', b'0', '6'),
(17, 5, ' أ - إلتزام التسجيل', 'A - Obligation to register', 'يلتزم المسوق بتسجيل مقدمين خدمة للتطبيق بحد ادنى عشرة شهريا وفى حالة \r\nعدم تقديم مقدم خدمة خلال شهر يتم حذف المسوق من التطبيق ', 'The marketer is committed to register service providers for the application with a minimum ten providers in the month. in case the marketer does not provide a service providers within one month the marketer will be deleted from the app.', b'0', '1'),
(18, 5, ' ب - مصداقية البيانات', 'B - data reliability', 'يلتزم المستخدم باستخدام بيانات حقيقية فى حسابه', 'The user is obligated to use real data in his account', b'0', '2'),
(19, 5, 'ت - إنتهاك الحقوق الملكية', 'C - Copyright infringement', ' يمنع استخدام الحساب فى انتهاك حقوق الملكية الفكرية او تعمد نشر اى معلومات تسبب ضرر لشركة او شخص او دولة او جماعة وضع مواد قرصنه او برامج مسروقة وجميع ما يخالف الاعراف والقوانين الدولية ويكون المشترك مسؤلا مسؤولية كاملة عن كل مايقدمة عبر حسابة', ' It is forbidden to use the account to infringe intellectual property rights or intentionally publish any information that causes harm to a company, person, country or hacking material group, or stolen programs and all that violates international norms and laws, and the subscriber is fully responsible for everything submitted through his account.', b'0', '3'),
(20, 5, 'جـ - الإلتزام بالسرية', 'D - Commitment to confidentiality', ' يلتزم المسوق بالحفاظ على سرية اي معلومات حصل عليها عن التطبيق خلال عمله ', 'The marketer is committed to keeping confidential any information obtained about the application during his work', b'0', '4'),
(21, 5, 'حـ - تسويق التطبيق و الموقع', 'E - Application & Web Marketing', 'يلتزم المسوق بالعمل على تسويق التطبيق من خلال السوشيال ميديا التي يمتلكها  \r\nهذه سياسة وشروط واحكام التطبيق والموقع  طبقا لاحكام القانون المدنى المصرى والسعودى وملزمة للمشتركين بالتطبيق والموقع و يعتبر قبول هذه الشروط والاحكام موافقة وقبول من العميل ومزود الخدمة للتطبيق والموقع', 'The marketer is committed to work on marketing the application through his own accounts on the social media.\r\nThis is the policy, terms and conditions of the application and the website in accordance with the provisions of the Egyptian and Saudi civil law and it is binding on subscribers of the application and the website, and the acceptance of these terms and conditions is considered approval and acceptance by the customer and the service provider for the application and the website.', b'0', '5'),
(22, 6, ' أ - مقدمة', 'A - Introduction', 'نحن موقع بي تولزماركتينج ملتزمون بتامين خصوصيتك حين تزور موقعنا وتتواصل معانا الكترونيا و هذه الصفحة توضح لك الوجه الذى يتم عليه استخدام اى معلومات شخصية تزودنا بها والتى نجمعها عنك خلال تسجيلك بالتطبيق ', 'We are P.Toolz Application committed to ensuring your privacy when you visit our website and communicate with us electronically, and this page shows you how any personal information you provide to us that we collect about you during your registration with the application.', b'0', '1'),
(23, 6, 'ب - جمع المعلومات', 'B - Collected information', 'جميع المعلومات التى يزودها المستخدم عند التسجيل كالاسم اسم المستخدم \r\nالبريد الالكترونى رقم الهاتف الرقم القومى وصورة البطاقة الشخصيةاوالهوية على سبيل  المثال لا الحصرللمسوق ', 'All the information that the user provides when registering, such as the name, the username, E-mail, phone number, national number, ID photo or identity, without limiting to the marketer.', b'0', '2'),
(24, 6, 'ت - المعلومات التى تخزن على جهاز المستخدم ', 'C - the information stored on the user\'s device', ' يتم تخزين معلومات تعريف الرابط عند تسجيل دخولك للتطبيق هذه الملفات ضرورية لتعريف كل مستخدم ويتم ازلتها عند تسجيل خروج من التطبيق ', 'The link identification information is stored when you log in to the application, These files are necessary to identify each user and are removed when you log out of the application.', b'0', '3'),
(25, 6, 'جـ - استخدام ومشاركة المعلومات ', 'D - Use and share information', 'يضمن التطبيق عدم مشاركة البيانات الخاصه بك للغير او \r\nمشاركة اى معلومات تتعارض مع بيان الخصوصية السابقه \r\nالموافقة على بيان الخصوصية\r\nباستخدامك للتطبيق فانت توافق على بيان الخصوصية هذا', 'The application ensures not to share your data with others or share any information that contradicts the previous privacy statement.\r\nAgree to the privacy statement\r\nBy using the application, you agree to this privacy statement.', b'0', '4'),
(26, 1, 'مقدمة', 'Introduction', 'شركة سجال للمحتوى الإلكتروني ', 'Sejall for Electronic Content Company', b'0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `appdocumentstype`
--

CREATE TABLE `appdocumentstype` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appdocumentstype`
--

INSERT INTO `appdocumentstype` (`id`, `name`) VALUES
(1, 'about'),
(2, 'terms and conditions'),
(3, 'privacy and policy'),
(4, 'service provider'),
(5, 's terms&conditions'),
(6, 's privacy and policy');

-- --------------------------------------------------------

--
-- Table structure for table `cameraaccessorylist`
--

CREATE TABLE `cameraaccessorylist` (
  `id` int(11) NOT NULL,
  `AccessoryName` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ' ',
  `image` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cameraaccessorylist`
--

INSERT INTO `cameraaccessorylist` (`id`, `AccessoryName`, `description`, `image`) VALUES
(1, 'Light Box', 'Photography Rectangle Continuous SoftBox Lighting Kit', 'https://cf2.s3.souqcdn.com/item/2018/10/25/39/81/31/86/item_XL_39813186_157252000.jpg'),
(2, 'Flash', 'COOPIC LC-1200 5800K LED studio Photography light with Stand kit and V-mount battery plate 1200pcs LED', 'https://cf4.s3.souqcdn.com/item/2018/06/07/35/58/94/41/item_XL_35589441_139189507.jpg'),
(3, 'Memory', 'SanDisk 128 GB Extreme PRO UHS-I SDXC Memory Card 170MB/s -SDSDXXY-128G-GN4IN', 'https://cf5.s3.souqcdn.com/item/2019/01/28/44/10/69/06/item_XL_44106906_0cddce4e7f851.jpg'),
(4, 'CobraCrane', ' CobraCrane BackPacker with 3 Extension Kit (8)', 'https://static.bhphoto.com/images/images500x500/cobracrane_6095_backpacker_with_3_extension_1357209984_908098.jpg'),
(8, 'Stand', '  https://images-na.ssl-images-amazon.com/images/I/51U44BBZ9cL._AC_UL160_SR160,160_.jpg', 'https://images-na.ssl-images-amazon.com/images/I/51U44BBZ9cL._AC_UL160_SR160,160_.jpg'),
(10, 'mic pro', 'http://www.wobileapp.com/src/img/mic1.jpg', 'https://www.adorama.com/images/Large/rdvideomicpr.jpg'),
(11, 'mic public', 'http://www.wobileapp.com/src/img/mic2.jpg', 'https://www.adorama.com/images/Large/rdvideomicpr.jpg'),
(12, 'lenss 1', 'http://www.wobileapp.com/src/img/lenss1.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs='),
(13, 'lenss 2', 'http://www.wobileapp.com/src/img/lenss2.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs='),
(14, 'lenss 3', 'http://www.wobileapp.com/src/img/lenss3.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs='),
(15, 'lenss 4', 'http://www.wobileapp.com/src/img/lenss4.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs='),
(1, 'Light Box', 'Photography Rectangle Continuous SoftBox Lighting Kit', 'https://cf2.s3.souqcdn.com/item/2018/10/25/39/81/31/86/item_XL_39813186_157252000.jpg'),
(2, 'Flash', 'COOPIC LC-1200 5800K LED studio Photography light with Stand kit and V-mount battery plate 1200pcs LED', 'https://cf4.s3.souqcdn.com/item/2018/06/07/35/58/94/41/item_XL_35589441_139189507.jpg'),
(3, 'Memory', 'SanDisk 128 GB Extreme PRO UHS-I SDXC Memory Card 170MB/s -SDSDXXY-128G-GN4IN', 'https://cf5.s3.souqcdn.com/item/2019/01/28/44/10/69/06/item_XL_44106906_0cddce4e7f851.jpg'),
(4, 'CobraCrane', ' CobraCrane BackPacker with 3 Extension Kit (8)', 'https://static.bhphoto.com/images/images500x500/cobracrane_6095_backpacker_with_3_extension_1357209984_908098.jpg'),
(8, 'Stand', '  https://images-na.ssl-images-amazon.com/images/I/51U44BBZ9cL._AC_UL160_SR160,160_.jpg', 'https://images-na.ssl-images-amazon.com/images/I/51U44BBZ9cL._AC_UL160_SR160,160_.jpg'),
(10, 'mic pro', 'http://www.wobileapp.com/src/img/mic1.jpg', 'https://5.imimg.com/data5/KQ/JO/VF/SELLER-100724901/won-professional-camera-camcorder-shotgun-mic-500x500.jpg'),
(11, 'mic public', 'http://www.wobileapp.com/src/img/mic2.jpg', 'https://5.imimg.com/data5/KQ/JO/VF/SELLER-100724901/won-professional-camera-camcorder-shotgun-mic-500x500.jpg'),
(12, 'lenss 1', 'http://www.wobileapp.com/src/img/lenss1.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs='),
(13, 'lenss 2', 'http://www.wobileapp.com/src/img/lenss2.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs='),
(14, 'lenss 3', 'http://www.wobileapp.com/src/img/lenss3.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs='),
(15, 'lenss 4', 'http://www.wobileapp.com/src/img/lenss4.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs=');

-- --------------------------------------------------------

--
-- Table structure for table `cameraccessorylist`
--

CREATE TABLE `cameraccessorylist` (
  `id` int(11) NOT NULL,
  `AccessoryName` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ' ',
  `image` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cameraccessorylist`
--

INSERT INTO `cameraccessorylist` (`id`, `AccessoryName`, `description`, `image`) VALUES
(1, 'Light Box', 'Photography Rectangle Continuous SoftBox Lighting Kit', 'https://cf2.s3.souqcdn.com/item/2018/10/25/39/81/31/86/item_XL_39813186_157252000.jpg'),
(2, 'Flash', 'COOPIC LC-1200 5800K LED studio Photography light with Stand kit and V-mount battery plate 1200pcs LED', 'https://cf4.s3.souqcdn.com/item/2018/06/07/35/58/94/41/item_XL_35589441_139189507.jpg'),
(3, 'Memory', 'SanDisk 128 GB Extreme PRO UHS-I SDXC Memory Card 170MB/s -SDSDXXY-128G-GN4IN', 'https://cf5.s3.souqcdn.com/item/2019/01/28/44/10/69/06/item_XL_44106906_0cddce4e7f851.jpg'),
(4, 'CobraCrane', ' CobraCrane BackPacker with 3 Extension Kit (8)', 'https://static.bhphoto.com/images/images500x500/cobracrane_6095_backpacker_with_3_extension_1357209984_908098.jpg'),
(8, 'Stand', '  https://images-na.ssl-images-amazon.com/images/I/51U44BBZ9cL._AC_UL160_SR160,160_.jpg', 'https://images-na.ssl-images-amazon.com/images/I/51U44BBZ9cL._AC_UL160_SR160,160_.jpg'),
(10, 'mic pro', 'http://www.wobileapp.com/src/img/mic1.jpg', 'https://www.adorama.com/images/Large/rdvideomicpr.jpg'),
(11, 'mic public', 'http://www.wobileapp.com/src/img/mic2.jpg', 'https://www.adorama.com/images/Large/rdvideomicpr.jpg'),
(12, 'lenss 1', 'http://www.wobileapp.com/src/img/lenss1.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs='),
(13, 'lenss 2', 'http://www.wobileapp.com/src/img/lenss2.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs='),
(14, 'lenss 3', 'http://www.wobileapp.com/src/img/lenss3.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs='),
(15, 'lenss 4', 'http://www.wobileapp.com/src/img/lenss4.jpg', 'https://media.istockphoto.com/vectors/camera-lens-vector-id467079637?k=20&m=467079637&s=612x612&w=0&h=k83qhT_FIFiMHU9xsi9mwEEsAFxzsird2uxZLUUkbHs=');

-- --------------------------------------------------------

--
-- Table structure for table `cameralist`
--

CREATE TABLE `cameralist` (
  `id` int(11) NOT NULL,
  `cameraName` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ' ',
  `description_ar` varchar(255) NOT NULL DEFAULT ' ',
  `image` varchar(255) NOT NULL DEFAULT ''' '''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cameralist`
--

INSERT INTO `cameralist` (`id`, `cameraName`, `description`, `description_ar`, `image`) VALUES
(0, 'any', 'No Selected', ' غير محدد', 'https://ptoolz.com/View/assets/images/any.jpg'),
(1, 'Nikon D750 ', 'Nikon D750 Camera Without Lens - 24.3 MP, DSLR, Black', 'كاميرا من دون عدسة نيكون D750 - 24.3 ميجابيكسل, DSLR, اسود', 'https://cf4.s3.souqcdn.com/item/2015/07/14/73/58/65/6/item_L_7358656_8603570.jpg'),
(2, 'Canon EOS 2000D', 'Canon EOS 2000D 18-55 IS Lens, 24.1 Megapixels Resolution, DSLR Camera, Black', 'كانون كاميرا اي او اس بعدسات 2000 دي 18-55 اي اس، دقة وضوح 24.1 ميجا بكسل، كاميرا دي اس ال ار، اسود', 'https://cf4.s3.souqcdn.com/item/2018/11/27/35/09/24/24/item_L_35092424_d796878e37ef9.jpg'),
(3, 'Canon PowerShot SX620', 'Canon PowerShot SX620 HS Portable Camera - 20 MP, Black', 'كاميرا محمولة كانون باور شوت SX620 HS - دقة 20ميجا بكسل ، اسود', 'https://cf2.s3.souqcdn.com/item/2016/08/17/11/39/32/01/item_L_11393201_15950753.jpg'),
(4, 'Canon mirrorless -M5', 'Canon mirrorless cameras, 24.1, other optical zoom and 3 sc,reen -M50', 'كانون كاميرات بدون مراة,24.1,تكبير بصري اخرى وشاشة 3 -M50', 'https://cf3.s3.souqcdn.com/item/2018/05/24/35/23/96/32/item_L_35239632_137296967.jpg'),
(5, ' Nikon FX-format D750', 'Nikon FX-format D750 - 24.3 Megapixel, SLR Camera, 24-120mm Lens, Black', 'نيكون FX-format D750 - 24.3 ميجابيكسيل,كاميرا اس ال ار , عدسه 24-120 ملم, اسود', 'https://cf2.s3.souqcdn.com/item/2015/04/12/75/82/15/6/item_L_7582156_7501823.jpg'),
(6, 'Nikon SLR 24.5MP', 'Nikon SLR Camera, 24.5 MP, No Optical Zoom, 3.2 Inch Screen - D780', 'نيكون كاميرا اس ال ار,24.5 ميجابكسل,تكبير بصري بدون تكبيير بصري وشاشة 3.2 بوصة -D780', 'https://cf5.s3.souqcdn.com/item/2020/09/10/13/17/77/00/4/item_L_131777004_f73636444a308.jpg'),
(7, 'Canon PowerShot G9', 'Canon PowerShot G9 X Mark II - 20.1 MP Lens, Point Camera shot, black', 'كانون باور شوت G9 X Mark II - عدسة 20.1 ميجابكسل، كاميرا بوينت شوت، اسود', 'https://cf4.s3.souqcdn.com/item/2017/02/01/21/98/20/59/item_L_21982059_28394572.jpg'),
(8, 'Nikon Mirrorless 24.3MP', 'Nikon Mirrorless Cameras, 24.3 MP, 28x Optical Zoom, 3.2 Inch Screen - Z5,', 'نيكون كاميرات بدون مراة,24.3 ميجابكسل,تكبير بصري 28x وشاشة 3.2 بوصة -Z5', 'https://cf3.s3.souqcdn.com/item/2020/10/12/13/18/96/53/6/item_L_131896536_38db55b12312d.jpg'),
(9, 'Nikon Z6 FX-format', 'Nikon Z6 FX-format 24.5 MP Mirrorless Camera Body - Black', 'جسم كاميرا زد 6 اف اكس-فورمات 24.5 ميجابكسل بدون مراة من نيكون - اسود', 'https://cf2.s3.souqcdn.com/item/2018/09/27/38/91/51/40/item_L_38915140_151626335.jpg'),
(10, 'Nikon Long Range', 'Nikon Long Range Cameras, 16 MP, 83x Optical Zoom, 3.2 Inch Screen - Nikon P950', 'نيكون كاميرات بعيدة المدى,16 ميجابكسل,تكبير بصري 83x وشاشة 3.2 بوصة -Nikon P950', 'https://cf3.s3.souqcdn.com/item/2021/01/31/13/23/27/45/7/item_L_132327457_c979e271c625f.jpg'),
(11, 'Nikon D7500 Body Only', 'Nikon D7500 Body Only - 20.9 MP, 4K, SLR Camera, Black', 'نيكون D7500 كاميرا هيكل فقط - 20.9 ميجابكسل، 4 كيه، كاميرا اس ال ار، اسود', 'https://cf2.s3.souqcdn.com/item/2017/07/16/22/61/84/26/item_L_22618426_33339321.jpg'),
(12, 'Canon EOS 4000D SLR', 'Canon EOS 4000D SLR Camera EF-S 18-55mm Lens III - Black', 'كانون EOS 4000D كاميرا اس ال ار عدسة EF-S 18-55 مم III - اسود', 'https://cf2.s3.souqcdn.com/item/2018/05/24/35/23/96/29/item_L_35239629_137296950.jpg'),
(13, 'Sony DSC-W800', 'Sony Cyber-shot DSC-W800 -20.1 Megapixel, Black,', 'سوني سايبر شوت DSC-W800 -20.1 ميجابيكسل, اسود', 'https://cf2.s3.souqcdn.com/item/2015/01/19/77/64/72/5/item_L_7764725_6699646.jpg'),
(14, 'Canon EOS 800D', 'Canon EOS 800D EF-S 18-55mm F4-5.6 IS STM Lens - 24.2 MP, DSLR Camera, Black', 'كانون اي او اس 800D EF-S 18-55mm F4-5.6 IS STM عدسة - 24.2 ميجابكسل، كاميرا دي اس ال ار، اسود', 'https://cf5.s3.souqcdn.com/item/2017/04/20/22/26/54/70/item_L_22265470_30806714.jpg'),
(15, 'Canon EOS 80D', 'Canon EOS 80D Lens Kit - 24.2 MP, SLR Camera, 18 - 135mm IS USM, Black', 'كانون اي او اس 80D طقم عدسات - 24.2 ميجابيكسل، اس ال ار كاميرا، 18 - 135 مم IS USM، اسود', 'https://cf4.s3.souqcdn.com/item/2016/03/22/10/34/19/69/item_L_10341969_13194192.jpg'),
(16, 'Nikon SLR Camera 16M', 'Nikon SLR Camera, 16 Megapixel, 60x Optical Zoom, 3 Inch Screen - B60,0', 'نيكون كاميرا اس ال ار,16 ميجابيكسل,تكبير بصري 60x وشاشة 3 انش -B600', 'https://cf4.s3.souqcdn.com/item/2020/04/15/12/28/74/57/4/item_L_122874574_a71b9860908ac.jpg'),
(17, 'Nikon SLR Camera 24M', 'Nikon SLR Camera, 24.5 MP, No Optical Zoom, 3.2 Inch Screen, Body Only - D780', 'نيكون كاميرا اس ال ار,24.5 ميجابكسل,تكبير بصري بدون تكبيير بصري وشاشة 3.2 بوصة الجسم فقط -D780', 'https://cf1.s3.souqcdn.com/item/2020/09/10/13/17/76/86/1/item_L_131776861_feb07339aff23.jpg'),
(18, 'Canon Point and Shoot 20M', 'Canon Point and Shoot Camera 20 MP - Black, Ixus 185', 'كاميرا بوينت اند شوت 20 ميجابكسل من كانون - اسود، Ixus 185', 'https://cf2.s3.souqcdn.com/item/2017/06/06/23/00/88/06/item_L_23008806_32326837.jpg'),
(19, 'Nikon AF-P', 'Nikon AF-P 18-55mm 3.5-5.6G VR Lens - 24.2 MP DSLR', 'نيكون AF-P 18-55mm 3.5-5.6G عدسات في ار - 24.2 ميجابكسل دي اس ال ر', 'https://cf5.s3.souqcdn.com/item/2017/01/31/18/69/56/05/item_L_18695605_28379467.jpg'),
(20, 'Canon EOS 5D', 'Canon EOS 5D Mark IV Camera Only - 30.4 Megapixel Lens, DSLR Camera, Black', 'كانون اي او اس 5D Mark IV كاميار فقط - عدسة 30.4 ميجابيكسل، كاميرا دي اس ال ار، اسود', 'https://cf5.s3.souqcdn.com/item/2016/09/01/11/49/54/75/item_L_11495475_16248544.jpg'),
(21, 'Canon 90D', 'Canon 90D Cut with 18-135 Lens, Black,', 'كانون 90 دي كت مع عدسة 18-135، اسود', 'https://cf1.s3.souqcdn.com/item/2019/11/28/92/30/48/29/item_L_92304829_1865aeb8c85b0.jpg'),
(22, 'Canon Compact', 'Canon Compact Camera - Blue,', 'كانون كاميرا مدمجه - ازرق', 'https://cf5.s3.souqcdn.com/item/2019/07/02/55/27/23/13/item_L_55272313_27fab5d13c12c.jpg'),
(23, 'Canon G7X', 'Canon G7X Mark 3, Black', 'كانون جي 7 اكس مارك 3، اسود', 'https://cf2.s3.souqcdn.com/item/2019/11/28/92/30/48/30/item_L_92304830_a05646c86a216.jpg'),
(24, 'Nikon Mirrorless 20.4M', 'Nikon Mirrorless Cameras,20.4 Megapixel,Non-Optical Zoom, 2.3 Inch Screen - Z50', 'نيكون كاميرات بدون مراة,20.4 ميجابيكسل,تكبير بصري بدون تكبيير بصري وشاشة 2.3 انش -Z50', 'https://cf3.s3.souqcdn.com/item/2020/03/19/12/13/10/42/4/item_L_121310424_71747095d9d1e.jpg'),
(25, 'Canon EF-S 18-55', 'Canon EF-S 18-55 Canon EOS 77D F4-5.6 IS STM Lens 24.2 MP DSLR Lens - Black', 'عدسة كانون اي او اس 77D ملم F4-5.6  بتقنية اي اس اس تي ام بدقة 24.2 ميجابكسل دي اس ال ار - اسود، EF-S 18-55‎', 'https://cf3.s3.souqcdn.com/item/2017/03/20/22/26/54/75/item_L_22265475_29985667.jpg'),
(26, 'Canon PowerShot SX720', 'Canon PowerShot SX720 HS Portable Camera - 20 MP, Black', 'كاميرا محمولة كانون باور شوت SX720 HS - دقة 20ميجا بكسل ، اسود', 'https://cf1.s3.souqcdn.com/item/2016/08/23/11/38/08/60/item_L_11380860_16043660.jpg'),
(27, 'Canon 1897C002', 'Canon Camera Without Lens, 26.2 MP, Other Optical Zoom And 3 Inch Scree,n - 1897C002', 'كانون كاميرات بدون عدسة,26.2 MP,تكبير بصري اخرى وشاشة 3 انش -1897C002', 'https://cf5.s3.souqcdn.com/item/2017/08/09/23/74/21/15/item_L_23742115_34258434.jpg'),
(28, 'Canon EOS 4000D 18-55 MM', 'Canon EOS 4000D EF-S 18-55mm III Lens with Tripod, DSLR Bag and 16GB SDHC Memory Card', 'Canon EOS 4000D EF-S 18-55mm III Lens with Tripod, DSLR Bag and 16GB SDHC Memory Card', 'https://cf1.s3.souqcdn.com/item/2018/07/10/36/43/62/79/item_L_36436279_143058194.jpg'),
(29, 'Canon EOS 250D', 'Canon EOS 250D Digital Camera, 18 - 55mm, 24.1 MP, Black', 'كانون كاميرا رقمية اي او اس 250D، 18 - 55 ملم، 24.1 ميجابكسل، اسود', 'https://cf2.s3.souqcdn.com/item/2019/06/19/55/20/22/60/item_L_55202260_eeda08c0b4bd0.jpg'),
(30, 'Nikon D3500', 'Nikon D3500 Af-P 18-55mm DSLR Camera with 24.2 MP VR Lens, Gold', 'كاميرا دي اس ال ار 18-55 ملم مع عدسة تقليل الاهتزاز 24.2 ميجابكسل من نيكون، ذهبي، D3500 Af-P', 'https://cf1.s3.souqcdn.com/item/2018/09/27/38/91/53/30/item_L_38915330_151626786.jpg'),
(31, 'Sony 20.1M', 'Sony 20.1 Megapixel Digital Camera - Black (DSC-W800) With 8GB Memory Card (SF-8N4) With Camera Bag (LCS-BDE)', 'سوني 20.1 ميجابيكسل كاميرا ديجيتال - اسود (DSC-W800) مع 8 جيجابايت ميموري كارد (SF-8N4) مع حقيبة كاميرا (LCS-BDE)', 'https://cf3.s3.souqcdn.com/item/2014/12/07/76/19/14/7/item_L_7619147_6365924.jpg'),
(32, 'Nikon D7500 18-140m', 'Nikon D7500 with AF-S 18-140mm f/3.5-5.6G ED VR Lens - SLR Camera, Black', 'نيكون D7500 كاميرا مع عدسة AF-S 18-140mm f/3.5-5.6G ED VR -  كاميرا اس ال ار، اسود', 'https://cf2.s3.souqcdn.com/item/2017/07/16/22/61/84/43/item_L_22618443_33343743.jpg'),
(33, 'Nikon Z 6II Mirrorless', 'Nikon Z 6II Mirrorless Digital Camera (Body Only)', 'Nikon Z 6II Mirrorless Digital Camera (Body Only)', 'https://cf5.s3.souqcdn.com/item/2021/04/19/13/26/77/83/0/item_L_132677830_10f4e5f3bc70c.jpg'),
(34, 'Nikon Mirrorless 24.3M', 'Nikon Mirrorless Cameras, 24.3 MP, 17x Optical Zoom, 3.2 Inch Screen - Z5,', 'نيكون كاميرات بدون مراة,24.3 ميجابكسل,تكبير بصري 17x وشاشة 3.2 بوصة -Z5', 'https://cf4.s3.souqcdn.com/item/2020/10/12/13/18/96/53/5/item_L_131896535_ed51110622d55.jpg'),
(35, 'Canon EOS 6D', 'Canon EOS 6D Body - 20.2 MP, SLR Camera, Black', 'كاميرا كانون EOS 6D هيكل - 20.2 ميجابكسل، اس ال ار، اسود', 'https://cf5.s3.souqcdn.com/item/2015/11/09/53/37/84/6/item_L_5337846_10692772.jpg'),
(36, 'Canon EOS 1D', 'Canon EOS 1D X Mark II Body Only - 20.2 MP, Full Frame, DSLR Camera, Black', 'كاميرا كانون EOS 1D X Mark II هيكل فقط - 20.2 ميجابكسل، اطار كامل، دي اس ال ار، اسود', 'https://cf4.s3.souqcdn.com/item/2017/02/19/10/34/19/68/item_L_10341968_28693258.jpg'),
(37, 'Nikon CoolPix A100', 'Nikon CoolPix A100 Portable Camera - 20 MP, Purple', 'كاميرا محمولة نيكون كوول بكس A100 - دقة 20ميجا بكسل ، ارجواني', 'https://cf1.s3.souqcdn.com/item/2016/08/23/11/38/08/43/item_L_11380843_16043498.jpg'),
(38, 'Nikon Coolpix B700', 'Nikon Coolpix B700 - 20 MP, Compact Camera, Black', 'نيكون كول بكس بي 700 - 20 ميجابيكسل، كاميرا مدمجة، اسود', 'https://cf4.s3.souqcdn.com/item/2016/03/12/10/26/19/02/item_L_10261902_12928800.jpg'),
(39, 'Canon Mirrorless 30.3M', 'Canon Mirrorless Cameras,30.3 Megapixel,Optical Zoom Without Optical Zoom And 3.15 Inch Scree,n -3075C002', 'كانون كاميرات بدون مراة,30.3 ميجابيكسل,تكبير بصري بدون تكبيير بصري وشاشة 3.15 انش -3075C002', 'https://cf2.s3.souqcdn.com/item/2018/10/21/39/67/48/60/item_L_39674860_155833750.jpg'),
(40, 'Canon Point and Shoot 20M', 'Canon Point and Shoot, 20 Megapixel, 8x Optical Zoom, 2.7 Inch Screen -, IXUS185', 'كانون بوينت اند شوت,20 ميجابيكسل,تكبير بصري 8x وشاشة 2.7 انش -IXUS185', 'https://cf2.s3.souqcdn.com/item/2017/04/02/22/34/92/59/item_L_22349259_30332976.jpg'),
(41, 'Canon EOS 77D 24.2M', 'Canon EOS 77D , 24.2 MP Body Only DSLR Camera, Black', 'Canon EOS 77D , 24.2 MP Body Only DSLR Camera, Black', 'https://cf1.s3.souqcdn.com/item/2017/03/20/22/26/54/89/item_L_22265489_29985717.jpg'),
(42, 'Canon EOS M5 Mirrorless DSLR', 'Canon EOS M5 Mirrorless DSLR Camera with EF-M 15-45mm F3.5-6.3 IS STM Lens Kit - 24.2 MP Lens, Black', 'كانون EOS M5 كاميرا بدون مراة دي اس ال ار مع طقم عدسات EF-M 15-45mm F3.5-6.3 IS STM - عدسة 24.2 ميجابكسل، اسود', 'https://cf2.s3.souqcdn.com/item/2017/02/01/21/98/20/52/item_L_21982052_28393943.jpg'),
(43, 'Canon PowerShot SX70', 'Canon PowerShot SX70 HS 4k Camera Black 20.3 MP', 'كاميرا كانون باورشوت SX70 HS 4k اسود 20.3 ميجا بكسل', 'https://cf5.s3.souqcdn.com/item/2019/02/11/45/11/23/57/item_L_45112357_59a338384472c.jpg'),
(44, 'Canon IXUS185', 'Canon Point and Shoot, 20 Megapixel, 8x Optical Zoom, 2.7 Inch Screen -, IXUS185', 'كانون بوينت اند شوت,20 ميجابيكسل,تكبير بصري 8x وشاشة 2.7 انش -IXUS185', 'https://cf2.s3.souqcdn.com/item/2017/04/02/22/34/92/57/item_L_22349257_30332947.jpg'),
(45, 'Canon PowerShot SX540 HS', 'Canon PowerShot SX540 HS, 20.3MP Digital Camera - Black', 'Canon PowerShot SX540 HS, 20.3MP Digital Camera - Black', 'https://cf5.s3.souqcdn.com/item/2017/06/12/23/05/69/62/item_L_23056962_32446495.jpg'),
(46, 'Canon SLR 18M', 'Canon SLR Camera, 18 Megapixel, 3x Optical Zoom, 2.7 Inch Screen - EOS 4000,D', 'كانون كاميرا اس ال ار,18 ميجابيكسل,تكبير بصري 3x وشاشة 2.7 انش -EOS 4000D', 'https://cf2.s3.souqcdn.com/item/2018/09/25/38/87/10/12/item_L_38871012_151525680.jpg'),
(47, 'Nikon D850', 'Nikon D850 Digital Camera - 45.7 MP, Body Only, Black', 'نيكون D850 كاميرا رقمية - 45.7 ميجابكسل، هيكل فقط، اسود', 'https://cf2.s3.souqcdn.com/item/2017/10/02/24/47/06/50/item_L_24470650_35989404.jpg'),
(48, 'Nikon D7500 Professional', 'Nikon D7500 Professional Camera, 20 Megapixel, 4K - Black', 'كاميرا احترافية من نيكون , 20 ميقابيكسل, فور كيه - D7500 اسود', 'https://cf4.s3.souqcdn.com/item/2018/04/24/33/53/02/19/item_L_33530219_131416234.jpg'),
(49, 'Canon Mirrorless 26.2 M', 'Canon Mirrorless Cameras,26.2 Megapixels,Optical Zoom Without Optical Zoom And 3 Inch Scre,en - CANON RP', 'كانون كاميرات بدون مراة,26.2 ميجابيكسل,تكبير بصري بدون تكبيير بصري وشاشة 3 انش -CANON RP', 'https://cf5.s3.souqcdn.com/item/2019/11/13/90/17/02/98/item_L_90170298_f63fd02e5cd55.jpg'),
(50, 'Nikon D750 24.3 MP', 'Nikon D750 - 24.3 MP, SLR Camera Body Only, Black', 'Nikon D750 - 24.3 MP, SLR Camera Body Only, Black', 'https://cf5.s3.souqcdn.com/item/2016/01/28/99/77/01/7/item_L_9977017_12029077.jpg'),
(51, 'Canon Zoemini', 'Canon Zoemini C Mint Green', 'Canon Zoemini C Mint Green', 'https://cf5.s3.souqcdn.com/item/2019/09/19/68/49/23/37/item_L_68492337_a1fd63d6bda4a.jpg'),
(52, 'Nikon Mirrorless', 'Mirrorless Cameras, 24.3 MP, Other Optical Zoom, 3.2 Inch Screen - Z,5', 'نيكون كاميرات بدون مراة,24.3 ميجابكسل,تكبير بصري اخرى وشاشة 3.2 بوصة -Z5', 'https://cf4.s3.souqcdn.com/item/2020/10/12/13/18/96/53/4/item_L_131896534_c741d7b8caa3e.jpg'),
(53, 'Nikon Point and Shoot 20.1', 'Nikon Point and Shoot, 20.1 Megapixel, 8x Optical Zoom, 2.3 Inch Scree,n - A300', 'نيكون بوينت اند شوت,20.1 ميجابيكسل,تكبير بصري 8x وشاشة 2.3 انش -A300', 'https://cf3.s3.souqcdn.com/item/2020/03/22/23/78/68/16/item_L_23786816_3eb272dc0ab41.jpg'),
(54, 'Canon PowerShot G7', 'Canon PowerShot G7 X Mark II Camera - 20.1 MP, Point and Shoot Camera, Black', 'كاميرا كانون باور شوت G7 X Mark II - بدقة 20.1 ميجابكسل، كاميرا بوينت اند شوت، اسود', 'https://cf2.s3.souqcdn.com/item/2017/02/19/10/34/20/05/item_L_10342005_28693303.jpg'),
(55, 'Nikon SLR 45.7M', 'Nikon SLR Camera, 45.7 Megapixel, Other Optical Zoom, 3.2 Inch Screen - D8,50', 'نيكون كاميرا اس ال ار,45.7 ميجابيكسل,تكبير بصري اخرى وشاشة 3.2 انش -D850', 'https://cf5.s3.souqcdn.com/item/2017/11/01/27/36/00/49/item_L_27360049_64063565.jpg'),
(56, 'Nikon Mirrorless 20.9M', 'Nikon Mirrorless Cameras,20.9 Megapixels,Optical Zoom Without Optical Zoom And 3.2 Inch, Screen - Z50', 'نيكون كاميرات بدون مراة,20.9 ميجابيكسل,تكبير بصري بدون تكبيير بصري وشاشة 3.2 انش -Z50', 'https://cf4.s3.souqcdn.com/item/2020/03/16/12/10/30/62/5/item_L_121030625_3a5377cda20d9.jpg'),
(57, 'Nikon D610 24.3M', 'Nikon D610 Without Extra Lenses (24.3 Megapixel, DSLR Camera, Black)', 'نيكون D610 بدون عدسات اضافية (24.3 ميجابيكسل، كاميرا رقمية مفردة العدسة عاكسة ، اسود)', 'https://cf5.s3.souqcdn.com/item/2017/04/03/63/76/21/9/item_L_6376219_30364349.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cancelationtransaction`
--

CREATE TABLE `cancelationtransaction` (
  `id` int(11) NOT NULL,
  `quotationId` int(11) NOT NULL,
  `spCancelPercentage` float NOT NULL,
  `adminCancelPercentage` float NOT NULL,
  `currencyShare` varchar(10) NOT NULL DEFAULT 'USD',
  `spCancelShare` float NOT NULL,
  `adminCancelShare` float NOT NULL,
  `holdValue` float NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancelationtransaction`
--

INSERT INTO `cancelationtransaction` (`id`, `quotationId`, `spCancelPercentage`, `adminCancelPercentage`, `currencyShare`, `spCancelShare`, `adminCancelShare`, `holdValue`, `dateTime`) VALUES
(1, 74, 20, 5, 'USD', 11.4, 2.85, 57, '2022-05-15 09:56:30'),
(2, 74, 20, 5, 'USD', 11.4, 2.85, 57, '2022-05-15 09:57:35'),
(3, 34, 20, 5, 'USD', 5.7, 1.425, 28.5, '2022-05-15 10:02:25'),
(4, 37, 20, 5, 'USD', 22.116, 5.529, 110.58, '2022-05-15 14:07:24'),
(5, 208, 0, 0, 'USD', 0, 0, 37.62, '2022-06-07 19:51:02'),
(6, 206, 20, 5, 'USD', 22.8, 5.7, 114, '2022-06-07 19:51:37'),
(7, 206, 20, 5, 'USD', 22.8, 5.7, 114, '2022-06-07 19:51:42'),
(8, 241, 0, 0, 'USD', 0, 0, 114, '2022-06-15 13:51:50'),
(9, 237, 0, 0, 'USD', 0, 0, 114, '2022-06-15 14:15:24'),
(10, 227, 20, 5, 'USD', 22.8, 5.7, 114, '2022-06-15 14:17:39'),
(11, 211, 0, 0, 'USD', 0, 0, 114, '2022-06-15 14:18:29'),
(12, 120, 0, 0, 'USD', 0, 0, 68.4, '2022-06-15 14:19:02'),
(13, 119, 0, 0, 'USD', 0, 0, 68.4, '2022-06-15 14:21:35'),
(14, 116, 0, 0, 'USD', 0, 0, 114, '2022-06-15 14:23:38'),
(15, 244, 0, 0, 'USD', 0, 0, 228, '2022-06-27 09:48:39'),
(16, 239, 20, 5, 'USD', 11.4, 2.85, 57, '2022-06-27 09:48:57'),
(17, 232, 20, 5, 'USD', 25.308, 6.327, 126.54, '2022-06-27 15:51:51'),
(18, 205, 20, 5, 'USD', 54.72, 13.68, 273.6, '2022-06-27 15:51:59'),
(1, 74, 20, 5, 'USD', 11.4, 2.85, 57, '2022-05-15 09:56:30'),
(2, 74, 20, 5, 'USD', 11.4, 2.85, 57, '2022-05-15 09:57:35'),
(3, 34, 20, 5, 'USD', 5.7, 1.425, 28.5, '2022-05-15 10:02:25'),
(4, 37, 20, 5, 'USD', 22.116, 5.529, 110.58, '2022-05-15 14:07:24'),
(5, 208, 0, 0, 'USD', 0, 0, 37.62, '2022-06-07 19:51:02'),
(6, 206, 20, 5, 'USD', 22.8, 5.7, 114, '2022-06-07 19:51:37'),
(7, 206, 20, 5, 'USD', 22.8, 5.7, 114, '2022-06-07 19:51:42'),
(8, 241, 0, 0, 'USD', 0, 0, 114, '2022-06-15 13:51:50'),
(9, 237, 0, 0, 'USD', 0, 0, 114, '2022-06-15 14:15:24'),
(10, 227, 20, 5, 'USD', 22.8, 5.7, 114, '2022-06-15 14:17:39'),
(11, 211, 0, 0, 'USD', 0, 0, 114, '2022-06-15 14:18:29'),
(12, 120, 0, 0, 'USD', 0, 0, 68.4, '2022-06-15 14:19:02'),
(13, 119, 0, 0, 'USD', 0, 0, 68.4, '2022-06-15 14:21:35'),
(14, 116, 0, 0, 'USD', 0, 0, 114, '2022-06-15 14:23:38'),
(15, 244, 0, 0, 'USD', 0, 0, 228, '2022-06-27 09:48:39'),
(16, 239, 20, 5, 'USD', 11.4, 2.85, 57, '2022-06-27 09:48:57'),
(17, 232, 20, 5, 'USD', 25.308, 6.327, 126.54, '2022-06-27 15:51:51'),
(18, 205, 20, 5, 'USD', 54.72, 13.68, 273.6, '2022-06-27 15:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `departmentName` varchar(50) NOT NULL,
  `departmentNameAr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `departmentName`, `departmentNameAr`) VALUES
(-1, 'customer', 'عميل'),
(1, 'print', 'طباعة'),
(2, 'edit', 'مونتاج'),
(3, 'photography', 'تصوير'),
(4, 'RentCamera', 'استئجار'),
(5, 'Translate', 'ترجمه'),
(6, 'delivery', 'توصيل'),
(7, 'gifts', 'هدايا'),
(8, 'Corporate Services', 'خدمات الشركات');

-- --------------------------------------------------------

--
-- Table structure for table `chargetransaction`
--

CREATE TABLE `chargetransaction` (
  `id` int(11) NOT NULL,
  `userAccountId` int(11) NOT NULL,
  `accountTypeId` int(11) NOT NULL DEFAULT 1,
  `currency` varchar(10) NOT NULL DEFAULT 'USD',
  `value` float NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chargetransaction`
--

INSERT INTO `chargetransaction` (`id`, `userAccountId`, `accountTypeId`, `currency`, `value`, `status`, `description`, `dateTime`) VALUES
(169, 7, 1, 'USD', 1000, 1, 'charge', '2022-08-02 13:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `cityEn` varchar(255) NOT NULL,
  `cityAr` varchar(255) NOT NULL,
  `countryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `cityEn`, `cityAr`, `countryId`) VALUES
(0, 'other', 'آخرى', 53),
(1, 'Cairo', 'القاهرة', 53),
(2, 'Giza', 'الجيزة', 53),
(3, 'Riyadh', 'الرياض', 152),
(4, 'khartoum', 'الخرطوم', 166),
(5, 'Atbara', 'عطبرة', 53),
(6, 'Qalyubia', 'القليوبية', 53),
(7, 'Alexandria', 'الإسكندرية', 53),
(8, 'Albuhayra', 'البحيرة', 53),
(9, 'Matrouh', 'مطروح', 53),
(10, 'Damietta', 'دمياط', 53),
(11, 'Dakahlia', 'الدقهلية', 53),
(12, 'Kafr El-Sheikh', 'كفر الشيخ', 53),
(13, 'Algharbia', 'الغربية', 53),
(14, 'Menoufia', 'المنوفية', 53),
(15, 'Alsharqia', 'الشرقية', 53),
(16, 'Port Said', 'بور سعيد', 53),
(17, 'Ismailia', 'الإسماعيلية', 53),
(18, 'Suez', 'السويس', 53),
(19, 'North Sinai', 'شمال سيناء', 53),
(20, 'South of Sinaa', 'جنوب سيناء', 53),
(21, 'Bani Sweif', 'بني سويف', 53),
(22, 'Fayoum', 'الفيوم', 53),
(23, 'Minya', 'المنيا', 53),
(24, 'Asyut', 'أسيوط', 53),
(25, 'Alwadi Aljadid', 'الوادي الجديد', 53),
(26, 'Red Sea', 'البحر الأحمر', 53),
(27, 'Sohag', 'سوهاج', 53),
(28, 'Qana', 'قنا', 53),
(29, 'ِAluqsar', 'الأقصر', 53),
(30, 'Aswan', 'أسوان', 53);

-- --------------------------------------------------------

--
-- Table structure for table `clientaccounttransaction`
--

CREATE TABLE `clientaccounttransaction` (
  `id` int(11) NOT NULL,
  `quotationId` int(11) NOT NULL,
  `userAccountId` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL DEFAULT 'USD',
  `value` float NOT NULL,
  `transactionTypeId` int(11) NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientaccounttransaction`
--

INSERT INTO `clientaccounttransaction` (`id`, `quotationId`, `userAccountId`, `currency`, `value`, `transactionTypeId`, `dateTime`) VALUES
(359, 17, 7, 'USD', 26.22, 2, '2022-08-08 16:44:41'),
(360, 17, 7, 'USD', 26.22, 2, '2022-08-08 16:58:59'),
(361, 17, 7, 'USD', 26.22, 2, '2022-08-08 17:02:11'),
(362, 17, 7, 'USD', 26.22, 2, '2022-08-08 17:03:29'),
(363, 18, 7, 'USD', 136.8, 2, '2022-08-09 14:19:35'),
(364, 19, 7, 'USD', 228, 2, '2022-08-14 15:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `accountType` int(11) NOT NULL,
  `email` varchar(80) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `accountId`, `accountType`, `email`, `title`, `description`, `dateTime`) VALUES
(1, 1, 1, '0', '0', '', '2022-07-03 13:34:37'),
(2, 482, 1, 'coco@gmail.com', 'now', 'wwww', '2022-07-03 14:31:09'),
(3, 482, 1, 'coco@gmail.com', 'now', 'wwww', '2022-07-03 14:31:09'),
(4, 482, 1, 'coco@gmail.com', 'now', 'wwww', '2022-07-03 14:31:09'),
(5, 482, 1, 'coco@gmail.com', 'sdsd', 'sdsd', '2022-07-03 14:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countryEn` varchar(80) NOT NULL,
  `countryAr` varchar(80) NOT NULL,
  `fullname` varchar(80) NOT NULL,
  `fullname_ar` varchar(80) NOT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `currencyName` varchar(30) DEFAULT NULL,
  `dialKey` varchar(10) DEFAULT NULL,
  `ISO3` varchar(10) NOT NULL,
  `ISO2` varchar(10) NOT NULL,
  `UNI` int(11) NOT NULL,
  `UNDP` varchar(10) NOT NULL,
  `FAOSTAT` int(11) NOT NULL,
  `GAUL` int(11) NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countryEn`, `countryAr`, `fullname`, `fullname_ar`, `currency`, `currencyName`, `dialKey`, `ISO3`, `ISO2`, `UNI`, `UNDP`, `FAOSTAT`, `GAUL`, `dateTime`, `status`) VALUES
(1, 'Albania', 'ألبانيا', 'the Republic of Albania', 'جمهورية ألبانيا', 'ALL', 'Lek', '355', 'ALB', 'AL', 8, 'ALB', 3, 3, '2021-09-01 16:00:53', 0),
(2, 'Algeria', 'الجزائر', 'the People\'s Democratic Republic of Algeria', 'الجمهورية الجزائرية الديمقراطية الشعبية', 'DZD', 'Dinar', '213', 'DZA', 'DZ', 12, 'DZA', 4, 4, '2021-09-01 16:00:53', 0),
(3, 'Andorra', 'أندورا', 'the Principality of Andorra', 'إمارة أندورا', 'FAF / ADP', 'Franc / Peseta', '376', 'AND', 'AD', 20, 'AND', 6, 7, '2021-09-01 16:00:53', 0),
(4, 'Angola', 'أنغولا', 'the Republic of Angola', 'جمهورية أنغولا', 'AON', 'New Kwanza', '244', 'AGO', 'AO', 24, 'AGO', 7, 8, '2021-09-01 16:00:53', 0),
(5, 'Antigua and Barbuda', 'أنتيغوا وبربودا', 'Antigua and Barbuda', 'أنتيغوا وبربودا', 'XCD', 'East Caribb. Dollar', '1 268', 'ATG', 'AG', 28, 'ATG', 8, 11, '2021-09-01 16:00:53', 0),
(6, 'Argentina', 'الأرجنتين', 'the Argentine Republic', 'جمهورية الأرجنتين', 'ARS', 'Peso', '54', 'ARG', 'AR', 32, 'ARG', 9, 12, '2021-09-01 16:00:53', 0),
(7, 'Armenia', 'أرمينيا', 'the Republic of Armenia', 'جمهورية أرمينيا', 'AMD', 'Dram', '374', 'ARM', 'AM', 51, 'ARM', 1, 13, '2021-09-01 16:00:53', 0),
(8, 'Australia', 'أستراليا', 'Australia', 'أستراليا', 'AUD', 'Australia Dollar', '61', 'AUS', 'AU', 36, 'AUS', 10, 17, '2021-09-01 16:00:53', 0),
(9, 'Austria', 'النمسا', 'the Republic of Austria', 'جمهورية النمسا', 'ATS', 'Schilling', '43', 'AUT', 'AT', 40, 'AUT', 11, 18, '2021-09-01 16:00:53', 0),
(10, 'Azerbaijan', 'أذربيجان', 'the Republic of Azerbaijan', 'جمهورية أذربيجان', 'AZM', 'Manet', '994', 'AZE', 'AZ', 31, 'AZE', 52, 19, '2021-09-01 16:00:53', 0),
(11, 'Bahamas', 'جزر البهاما', 'the Commonwealth of the Bahamas', 'كومنولث جزر البهاما', 'BSD', 'Bahamas Dollar', '1 242', 'BHS', 'BS', 44, 'BHS', 12, 20, '2021-09-01 16:00:53', 0),
(12, 'Bahrain', 'البحرين', 'the Kingdom of Bahrain', 'مملكة البحرين', 'BHD', 'Dinar', '973', 'BHR', 'BH', 48, 'BHR', 13, 21, '2021-09-01 16:00:53', 0),
(13, 'Bangladesh', 'بنغلاديش', 'the People\'s Republic of Bangladesh', 'جمهورية بنغلاديش الشعبية', 'BDT', 'Taka', '880', 'BGD', 'BD', 50, 'BGD', 16, 23, '2021-09-01 16:00:53', 0),
(14, 'Barbados', 'بربادوس', 'Barbados', 'بربادوس', 'BBD', 'Dollar', '1 246', 'BRB', 'BB', 52, 'BRB', 14, 24, '2021-09-01 16:00:53', 0),
(15, 'Belarus', 'بيلاروسيا', 'the Republic of Belarus', 'جمهورية بيلاروسيا', 'BYB', 'Belarussian Rouble', '375', 'BLR', 'BY', 112, 'BLR', 57, 26, '2021-09-01 16:00:53', 0),
(16, 'Belgium', 'بلجيكا', 'the Kingdom of Belgium', 'مملكة بلجيكا', 'BEF', 'Franc', '32', 'BEL', 'BE', 56, 'BEL', 255, 27, '2021-09-01 16:00:53', 0),
(17, 'Belize', 'بليز', 'Belize', 'بليز', 'BZD', 'Dollar', '501', 'BLZ', 'BZ', 84, 'BLZ', 23, 28, '2021-09-01 16:00:53', 0),
(18, 'Benin', 'بنين', 'the Republic of Benin', 'جمهورية بنين', 'XOF', 'C.F.A. Franc', '229', 'BEN', 'BJ', 204, 'BEN', 53, 29, '2021-09-01 16:00:53', 0),
(19, 'Bhutan', 'بوتان', 'the Kingdom of Bhutan', 'مملكة بوتان', 'INR / BTN', 'Ngultrum / Ind. Rupee', '975', 'BTN', 'BT', 64, 'BTN', 18, 31, '2021-09-01 16:00:53', 0),
(20, 'Bolivia (Plurinational State of)', 'بوليفيا (دولة متعددة القوميات)', 'the Plurinational State of Bolivia', 'دولة بوليفيا المتعددة القوميات', 'BOB', 'Boliviano', '591', 'BOL', 'BO', 68, 'BOL', 19, 33, '2021-09-01 16:00:53', 0),
(21, 'Bosnia and Herzegovina', 'البوسنة والهرسك', 'Bosnia and Herzegovina', 'البوسنة والهرسك', 'USD', 'Dollar', '387', 'BIH', 'BA', 70, 'BIH', 80, 34, '2021-09-01 16:00:53', 0),
(22, 'Botswana', 'بوتسوانا', 'the Republic of Botswana', 'جمهورية بوتسوانا', 'BWP', 'Pula', '267', 'BWA', 'BW', 72, 'BWA', 20, 35, '2021-09-01 16:00:53', 0),
(23, 'Brazil', 'البرازيل', 'the Federative Republic of Brazil', 'جمهورية البرازيل الاتحادية', 'BRL', 'Real', '55', 'BRA', 'BR', 76, 'BRA', 21, 37, '2021-09-01 16:00:53', 0),
(24, 'Brunei Darussalam', 'بروناي دار السلام', 'Brunei Darussalam', 'بروناي دار السلام', 'BND', 'Dollar', '673', 'BRN', 'BN', 96, 'BRN', 26, 40, '2021-09-01 16:00:53', 0),
(25, 'Bulgaria', 'بلغاريا', 'the Republic of Bulgaria', 'جمهورية بلغاريا', 'BGL', 'Lev', '359', 'BGR', 'BG', 100, 'BGR', 27, 41, '2021-09-01 16:00:53', 0),
(26, 'Burkina Faso', 'بوركينا فاسو', 'Burkina Faso', 'بوركينا فاسو', 'XOF', 'C.F.A. Franc', '226', 'BFA', 'BF', 854, 'BFA', 233, 42, '2021-09-01 16:00:53', 0),
(27, 'Burundi', 'بوروندي', 'the Republic of Burundi', 'جمهورية بوروندي', 'BIF', 'Franc', '257', 'BDI', 'BI', 108, 'BDI', 29, 43, '2021-09-01 16:00:53', 0),
(28, 'Cabo Verde', 'كابو فيردي', 'the Republic of Cabo Verde', 'جمهورية كابو فيردي', 'CVE', 'Escudo', '238', 'CPV', 'CV', 132, 'CPV', 35, 47, '2021-09-01 16:00:53', 0),
(29, 'Cambodia', 'كمبوديا', 'the Kingdom of Cambodia', 'مملكة كمبوديا', 'KHR', 'Riel', '855', 'KHM', 'KH', 116, 'KHM', 115, 44, '2021-09-01 16:00:53', 0),
(30, 'Cameroon', 'الكاميرون', 'the Republic of Cameroon', 'جمهورية الكاميرون', 'XAF', 'C.F.A. Franc', '237', 'CMR', 'CM', 120, 'CMR', 32, 45, '2021-09-01 16:00:53', 0),
(31, 'Canada', 'كندا', 'Canada', 'كندا', 'CAD', 'Dollar', '1', 'CAN', 'CA', 124, 'CAN', 33, 46, '2021-09-01 16:00:53', 0),
(32, 'Central African Republic', 'جمهورية افريقيا الوسطى', 'the Central African Republic', 'جمهورية أفريقيا الوسطى', 'XAF', 'C.F.A. Franc', '236', 'CAF', 'CF', 140, 'CAF', 37, 49, '2021-09-01 16:00:53', 0),
(33, 'Chad', 'تشاد', 'the Republic of Chad', 'جمهورية تشاد', 'XAF', 'C.F.A. Franc', '235', 'TCD', 'TD', 148, 'TCD', 39, 50, '2021-09-01 16:00:53', 0),
(34, 'Chile', 'تشيلي', 'the Republic of Chile', 'جمهورية تشيلي', 'CLP', 'Peso', '56', 'CHL', 'CL', 152, 'CHL', 40, 51, '2021-09-01 16:00:53', 0),
(35, 'China', 'الصين', 'the People\'s Republic of China', 'جمهورية الصين الشعبية', 'CNY', 'Renminbi Yuan', '86', 'CHN', 'CN', 156, 'CHN', 41, 53, '2021-09-01 16:00:53', 0),
(36, 'Colombia', 'كولومبيا', 'the Republic of Colombia', 'جمهورية كولومبيا', 'COP', 'Peso', '57', 'COL', 'CO', 170, 'COL', 44, 57, '2021-09-01 16:00:53', 0),
(37, 'Comoros', 'جزر القمر', 'the Union of the Comoros', 'اتحاد جزر القمر', 'KMF', 'Franc', '269', 'COM', 'KM', 174, 'COM', 45, 58, '2021-09-01 16:00:53', 0),
(38, 'Congo', 'الكونغو', 'the Republic of the Congo', 'جمهورية الكونغو', 'XAF', 'C.F.A. Franc', '242', 'COG', 'CG', 178, 'COG', 46, 59, '2021-09-01 16:00:53', 0),
(39, 'Cook Islands', 'جزر كوك', 'the Cook Islands', 'جزر كوك', 'NZD', 'N.Z. Dollar', '682', 'COK', 'CK', 184, 'COK', 47, 60, '2021-09-01 16:00:53', 0),
(40, 'Costa Rica', 'كوستا ريكا', 'the Republic of Costa Rica', 'جمهورية كوستاريكا', 'CRC', 'Colon', '506', 'CRI', 'CR', 188, 'CRI', 48, 61, '2021-09-01 16:00:53', 0),
(41, 'Croatia', 'كرواتيا', 'the Republic of Croatia', 'جمهورية كرواتيا', 'HRK', 'Kuna', '385', 'HRV', 'HR', 191, 'HRV', 98, 62, '2021-09-01 16:00:53', 0),
(42, 'Cuba', 'كوبا', 'the Republic of Cuba', 'جمهورية كوبا', 'CUP', 'Peso', '53', 'CUB', 'CU', 192, 'CUB', 49, 63, '2021-09-01 16:00:53', 0),
(43, 'Cyprus', 'قبرص', 'the Republic of Cyprus', 'جمهورية قبرص', 'CYP', 'Pound', '357', 'CYP', 'CY', 196, 'CYP', 50, 64, '2021-09-01 16:00:53', 0),
(44, 'Czechia', 'التشيك', 'the Czech Republic', 'الجمهورية التشيكية', 'CZK', 'Koruna', '420', 'CZE', 'CZ', 203, 'CZE', 167, 65, '2021-09-01 16:00:53', 0),
(45, 'Côte d\'Ivoire', 'كوت ديفوار', 'the Republic of Côte d\'Ivoire', 'جمهورية كوت ديفوار', 'XOF', 'C.F.A. Franc', '225', 'CIV', 'CI', 384, 'CIV', 107, 66, '2021-09-01 16:00:53', 0),
(46, 'Democratic People\'s Republic of Korea', 'جمهورية كوريا الديمقراطية االشعبية', 'the Democratic People\'s Republic of Korea', 'جمهورية كوريا الشعبية الديمقراطية', 'KPW', 'Won', '850', 'PRK', 'KP', 408, 'PRK', 116, 67, '2021-09-01 16:00:53', 0),
(47, 'Democratic Republic of the Congo', 'جمهورية الكونغو الديموقراطية', 'the Democratic Republic of the Congo', 'جمهورية الكونغو الديمقراطية', 'USD', 'Dollar', '243', 'COD', 'CD', 180, 'COD', 250, 68, '2021-09-01 16:00:53', 0),
(48, 'Denmark', 'الدنمارك', 'the Kingdom of Denmark', 'مملكة الدنمارك', 'DKK', 'Danish Krone', '45', 'DNK', 'DK', 208, 'DNK', 54, 69, '2021-09-01 16:00:53', 0),
(49, 'Djibouti', 'جيبوتي', 'the Republic of Djibouti', 'جمهورية جيبوتي', 'DJF', 'Djibouti Franc', '253', 'DJI', 'DJ', 262, 'DJI', 72, 70, '2021-09-01 16:00:53', 0),
(50, 'Dominica', 'دومينيكا', 'the Commonwealth of Dominica', 'كومنولث دومينيكا', 'XCD', 'East Caribb. Dollar', '1 767', 'DMA', 'DM', 212, 'DMA', 55, 71, '2021-09-01 16:00:53', 0),
(51, 'Dominican Republic', 'جمهورية الدومينيكان', 'the Dominican Republic', 'جمهورية الدومينيكان', 'DOP', 'Peso', '1 809', 'DOM', 'DO', 214, 'DOM', 56, 72, '2021-09-01 16:00:53', 0),
(52, 'Ecuador', 'الاكوادور', 'the Republic of Ecuador', 'جمهورية الإكوادور', 'ECS', 'Sucre', '593', 'ECU', 'EC', 218, 'ECU', 58, 73, '2021-09-01 16:00:53', 0),
(53, 'Egypt', 'مصر', 'the Arab Republic of Egypt', 'جمهورية مصر العربية', 'EGP', 'Pound', '20', 'EGY', 'EG', 818, 'EGY', 59, 40765, '2021-09-01 16:00:53', 1),
(54, 'El Salvador', 'السلفادور', 'the Republic of El Salvador', 'جمهورية السلفادور', 'SVC', 'Colon', '503', 'SLV', 'SV', 222, 'SLV', 60, 75, '2021-09-01 16:00:53', 0),
(55, 'Equatorial Guinea', 'غينيا الإستوائية', 'the Republic of Equatorial Guinea', 'جمهورية غينيا الاستوائية', 'XAF', 'C.F.A. Franc', '240', 'GNQ', 'GQ', 226, 'GNQ', 61, 76, '2021-09-01 16:00:53', 0),
(56, 'Eritrea', 'إريتريا', 'the State of Eritrea', 'دولة إريتريا', 'USD', 'Dollar', '291', 'ERI', 'ER', 232, 'ERI', 178, 77, '2021-09-01 16:00:53', 0),
(57, 'Estonia', 'إستونيا', 'the Republic of Estonia', 'جمهورية إستونيا', 'EEK', 'Kroon', '372', 'EST', 'EE', 233, 'EST', 63, 78, '2021-09-01 16:00:53', 0),
(58, 'Eswatini', 'إيسواتيني', 'the Kingdom of Eswatini', 'مملكة اسواتيني', 'SZL', 'Lilangeni', '268', 'SWZ', 'SZ', 748, 'SWZ', 209, 235, '2021-09-01 16:00:53', 0),
(59, 'Ethiopia', 'أثيوبيا', 'the Federal Democratic Republic of Ethiopia', 'جمهورية إثيوبيا الديمقراطية الاتحادية', 'ETB', 'Birr', '251', 'ETH', 'ET', 231, 'ETH', 238, 79, '2021-09-01 16:00:53', 0),
(60, 'Faroe Islands', 'جزر فاروس', 'the Faroe Islands', 'جزر فارو', 'DKK', 'Danish Krone', '298', 'FRO', 'FO', 234, 'FRO', 64, 82, '2021-09-01 16:00:53', 0),
(61, 'Fiji', 'فيجي', 'the Republic of Fiji', 'جمهورية فيجي', 'FJD', 'Dollar', '679', 'FJI', 'FJ', 242, 'FJI', 66, 83, '2021-09-01 16:00:53', 0),
(62, 'Finland', 'فنلندا', 'the Republic of Finland', 'جمهورية فنلندا', 'FIM', 'Markka', '358', 'FIN', 'FI', 246, 'FIN', 67, 84, '2021-09-01 16:00:53', 0),
(63, 'France', 'فرنسا', 'the French Republic', 'الجمهورية الفرنسية', 'FRF', 'Franc', '33', 'FRA', 'FR', 250, 'FRA', 68, 85, '2021-09-01 16:00:53', 0),
(64, 'Gabon', 'الجابون', 'the Gabonese Republic', 'جمهورية الجابون', 'XAF', 'C.F.A. Franc', '241', 'GAB', 'GA', 266, 'GAB', 74, 89, '2021-09-01 16:00:53', 0),
(65, 'Gambia', 'غامبيا', 'the Republic of the Gambia', 'جمهورية غامبيا', 'GMD', 'Dalasi', '220', 'GMB', 'GM', 270, 'GMB', 75, 90, '2021-09-01 16:00:53', 0),
(66, 'Georgia', 'جورجيا', 'Georgia', 'جورجيا', 'GEL', 'Lari', '995', 'GEO', 'GE', 268, 'GEO', 73, 92, '2021-09-01 16:00:53', 0),
(67, 'Germany', 'ألمانيا', 'the Federal Republic of Germany', 'جمهورية ألمانيا الاتحادية', 'DEM', 'Mark', '49', 'DEU', 'DE', 276, 'DEU', 79, 93, '2021-09-01 16:00:53', 0),
(68, 'Ghana', 'غانا', 'the Republic of Ghana', 'جمهورية غانا', 'GHC', 'Cedi', '233', 'GHA', 'GH', 288, 'GHA', 81, 94, '2021-09-01 16:00:53', 0),
(69, 'Greece', 'اليونان', 'the Hellenic Republic', 'الجمهورية الهيلينية', 'GRD', 'Drachma', '30', 'GRC', 'GR', 300, 'GRC', 84, 97, '2021-09-01 16:00:53', 0),
(70, 'Grenada', 'غرينادا', 'Grenada', 'غرينادا', 'XCD', 'East Caribb. Dollar', '1 473', 'GRD', 'GD', 308, 'GRD', 86, 99, '2021-09-01 16:00:53', 0),
(71, 'Guatemala', 'غواتيمالا', 'the Republic of Guatemala', 'جمهورية غواتيمالا', 'GTQ', 'Quetzal', '502', 'GTM', 'GT', 320, 'GTM', 89, 103, '2021-09-01 16:00:53', 0),
(72, 'Guinea', 'غينيا', 'the Republic of Guinea', 'جمهورية غينيا', 'GNF', 'Franc', '224', 'GIN', 'GN', 324, 'GIN', 90, 106, '2021-09-01 16:00:53', 0),
(73, 'Guinea-Bissau', 'غينيا بيساو', 'the Republic of Guinea-Bissau', 'جمهورية غينيا بيساو', 'GWP', 'Peso', '245', 'GNB', 'GW', 624, 'GNB', 175, 105, '2021-09-01 16:00:53', 0),
(74, 'Guyana', 'غيانا', 'the Co-operative Republic of Guyana', 'جمهورية غيانا التعاونية', 'GYD', 'Guyana Dollar', '592', 'GUY', 'GY', 328, 'GUY', 91, 107, '2021-09-01 16:00:53', 0),
(75, 'Haiti', 'هايتي', 'the Republic of Haiti', 'جمهورية هايتي', 'HTG / USD', 'Gourde / Dollar', '509', 'HTI', 'HT', 332, 'HTI', 93, 108, '2021-09-01 16:00:53', 0),
(76, 'Honduras', 'هندوراس', 'the Republic of Honduras', 'جمهورية هندوراس', 'HNL', 'Lempira', '504', 'HND', 'HN', 340, 'HND', 95, 111, '2021-09-01 16:00:53', 0),
(77, 'Hungary', 'هنغاريا', 'Hungary', 'هنغاريا', 'HUF', 'Forint', '36', 'HUN', 'HU', 348, 'HUN', 97, 113, '2021-09-01 16:00:53', 0),
(78, 'Iceland', 'أيسلندا', 'the Republic of Iceland', 'جمهورية ايسلندا', 'ISK', 'Krona', '354', 'ISL', 'IS', 352, 'ISL', 99, 114, '2021-09-01 16:00:53', 0),
(79, 'India', 'الهند', 'the Republic of India', 'جمهورية الهند', 'INR', 'Rupee', '91', 'IND', 'IN', 356, 'IND', 100, 115, '2021-09-01 16:00:53', 0),
(80, 'Indonesia', 'إندونيسيا', 'the Republic of Indonesia', 'جمهورية إندونيسيا', 'IDR', 'Rupiah', '62', 'IDN', 'ID', 360, 'IDN', 101, 116, '2021-09-01 16:00:53', 0),
(81, 'Iran (Islamic Republic of)', 'إيران (جمهورية - الإسلامية)', 'the Islamic Republic of Iran', 'جمهورية إيران الإسلامية', 'IRR', 'Rial', '98', 'IRN', 'IR', 364, 'IRN', 102, 117, '2021-09-01 16:00:53', 0),
(82, 'Iraq', 'العراق', 'the Republic of Iraq', 'جمهورية العراق', 'IQD', 'Dinar', '964', 'IRQ', 'IQ', 368, 'IRQ', 103, 118, '2021-09-01 16:00:53', 0),
(83, 'Ireland', 'أيرلندا', 'Ireland', 'أيرلندا', 'IRP', 'Punt', '353', 'IRL', 'IE', 372, 'IRL', 104, 119, '2021-09-01 16:00:53', 0),
(84, 'Israel', 'إسرائيل', 'the State of Israel', 'دولة اسرائيل', 'ILS', 'New Shekel', '972', 'ISR', 'IL', 376, 'ISR', 105, 121, '2021-09-01 16:00:53', 0),
(85, 'Italy', 'إيطاليا', 'the Republic of Italy', 'جمهورية ايطاليا', 'ITL', 'Lira', '39', 'ITA', 'IT', 380, 'ITA', 106, 122, '2021-09-01 16:00:53', 0),
(86, 'Jamaica', 'جامايكا', 'Jamaica', 'جامايكا', 'JMD', 'Dollar', '1 876', 'JAM', 'JM', 388, 'JAM', 109, 123, '2021-09-01 16:00:53', 0),
(87, 'Japan', 'اليابان', 'Japan', 'اليابان', 'JPY', 'Yen', '81', 'JPN', 'JP', 392, 'JPN', 110, 126, '2021-09-01 16:00:53', 0),
(88, 'Jordan', 'الأردن', 'the Hashemite Kingdom of Jordan', 'المملكة الأردنية الهاشمية', 'JOD', 'Dinar', '962', 'JOR', 'JO', 400, 'JOR', 112, 130, '2021-09-01 16:00:53', 0),
(89, 'Kazakhstan', 'كازاخستان', 'the Republic of Kazakhstan', 'جمهورية كازاخستان', 'KZT', 'Tongo', '7', 'KAZ', 'KZ', 398, 'KAZ', 108, 132, '2021-09-01 16:00:53', 0),
(90, 'Kenya', 'كينيا', 'the Republic of Kenya', 'جمهورية كينيا', 'KES', 'Shilling', '254', 'KEN', 'KE', 404, 'KEN', 114, 133, '2021-09-01 16:00:53', 0),
(91, 'Kiribati', 'كيريباتي', 'the Republic of Kiribati', 'جمهورية كيريباتي', 'AUD', 'Australia Dollar', '686', 'KIR', 'KI', 296, 'KIR', 83, 135, '2021-09-01 16:00:53', 0),
(92, 'Kuwait', 'الكويت', 'the State of Kuwait', 'دولة الكويت', 'KWD', 'Dinar', '965', 'KWT', 'KW', 414, 'KWT', 118, 137, '2021-09-01 16:00:53', 0),
(93, 'Kyrgyzstan', 'قيرغيزستان', 'the Kyrgyz Republic', 'جمهورية قيرغيزستان', 'KGS', 'Som', '996', 'KGZ', 'KG', 417, 'KGZ', 113, 138, '2021-09-01 16:00:53', 0),
(94, 'Lao People\'s Democratic Republic', 'جمهورية لاو الديمقراطية الشعبية', 'the Lao People\'s Democratic Republic', 'جمهورية لاو الديمقراطية الشعبية', 'LAK', 'Kip', '856', 'LAO', 'LA', 418, 'LAO', 120, 139, '2021-09-01 16:00:53', 0),
(95, 'Latvia', 'لاتفيا', 'the Republic of Latvia', 'جمهورية لاتفيا', 'LVL / LVR', 'Lat / Latv. Rouble', '371', 'LVA', 'LV', 428, 'LVA', 119, 140, '2021-09-01 16:00:53', 0),
(96, 'Lebanon', 'لبنان', 'the Lebanese Republic', 'الجمهورية اللبنانية', 'LBP', 'Pound', '961', 'LBN', 'LB', 422, 'LBN', 121, 141, '2021-09-01 16:00:53', 0),
(97, 'Lesotho', 'ليسوتو', 'the Kingdom of Lesotho', 'مملكة ليسوتو', 'ZAR / ZAL', 'Rand / Loti', '266', 'LSO', 'LS', 426, 'LSO', 122, 142, '2021-09-01 16:00:53', 0),
(98, 'Liberia', 'ليبيريا', 'the Republic of Liberia', 'جمهورية ليبيريا', 'LBD', 'Dollar', '231', 'LBR', 'LR', 430, 'LBR', 123, 144, '2021-09-01 16:00:53', 0),
(99, 'Libya', 'ليبيا', 'the State of Libya', 'دولة ليبيا', 'LYD', 'Dinar', '218', 'LBY', 'LY', 434, 'LBY', 124, 145, '2021-09-01 16:00:53', 0),
(100, 'Lithuania', 'ليتوانيا', 'the Republic of Lithuania', 'جمهورية ليتوانيا', 'LTL', 'Litas', '370', 'LTU', 'LT', 440, 'LTU', 126, 147, '2021-09-01 16:01:24', 0),
(101, 'Luxembourg', 'لوكسمبورغ', 'the Grand Duchy of Luxembourg', 'دوقية لوكسمبورغ الكبرى', 'LUF', 'Lux. Franc', '352', 'LUX', 'LU', 442, 'LUX', 256, 148, '2021-09-01 16:01:24', 0),
(102, 'Madagascar', 'مدغشقر', 'the Republic of Madagascar', 'جمهورية مدغشقر', 'MGF', 'Franc', '261', 'MDG', 'MG', 450, 'MDG', 129, 150, '2021-09-01 16:01:24', 0),
(103, 'Malawi', 'ملاوي', 'the Republic of Malawi', 'جمهورية ملاوي', 'MWK', 'Kwacha', '265', 'MWI', 'MW', 454, 'MWI', 130, 152, '2021-09-01 16:01:24', 0),
(104, 'Malaysia', 'ماليزيا', 'Malaysia', 'ماليزيا', 'MYR', 'Ringgit', '60', 'MYS', 'MY', 458, 'MYS', 131, 153, '2021-09-01 16:01:24', 0),
(105, 'Maldives', 'جزر المالديف', 'the Republic of Maldives', 'جمهورية جزر المالديف', 'MVR', 'Rufiyaa', '960', 'MDV', 'MV', 462, 'MDV', 132, 154, '2021-09-01 16:01:24', 0),
(106, 'Mali', 'مالي', 'the Republic of Mali', 'جمهورية مالي', 'XOF', 'C.F.A. Franc', '223', 'MLI', 'ML', 466, 'MLI', 133, 155, '2021-09-01 16:01:24', 0),
(107, 'Malta', 'مالطا', 'the Republic of Malta', 'جمهورية مالطا', 'MTL', 'Lira', '356', 'MLT', 'MT', 470, 'MLT', 134, 156, '2021-09-01 16:01:24', 0),
(108, 'Marshall Islands', 'جزر مارشال', 'the Republic of the Marshall Islands', 'جمهورية جزر مارشال', 'USD', 'Dollar', '692', 'MHL', 'MH', 584, 'MHL', 127, 157, '2021-09-01 16:01:24', 0),
(109, 'Mauritania', 'موريتانيا', 'the Islamic Republic of Mauritania', 'جمهورية موريتانيا الإسلامية', 'MRO', 'Ouguiya', '222', 'MRT', 'MR', 478, 'MRT', 136, 159, '2021-09-01 16:01:24', 0),
(110, 'Mauritius', 'موريشيوس', 'the Republic of Mauritius', 'جمهورية موريشيوس', 'MUR', 'Rupee', '230', 'MUS', 'MU', 480, 'MUS', 137, 160, '2021-09-01 16:01:24', 0),
(111, 'Mexico', 'المكسيك', 'the United Mexican States', 'الولايات المتحدة المكسيكية', 'MXN', 'New Peso', '52', 'MEX', 'MX', 484, 'MEX', 138, 162, '2021-09-01 16:01:24', 0),
(112, 'Micronesia (Federated States of)', 'ميكرونيزيا (ولايات - الموحدة)', 'the Federated States of Micronesia', 'ولايات ميكرونيزيا الموحدة', 'USD', 'Dollar', '691', 'FSM', 'FM', 583, 'FSM', 145, 163, '2021-09-01 16:01:24', 0),
(113, 'Monaco', 'موناكو', 'the Principality of Monaco', 'إمارة موناكو', 'FRF', 'Franc', '377', 'MCO', 'MC', 492, 'MCO', 140, 166, '2021-09-01 16:01:24', 0),
(114, 'Mongolia', 'منغوليا', 'Mongolia', 'منغوليا', 'MNT', 'Tugrik', '976', 'MNG', 'MN', 496, 'MNG', 141, 167, '2021-09-01 16:01:24', 0),
(115, 'Montenegro', 'الجبل الأسود', 'Montenegro', 'الجبل الأسود', 'USD', 'Dollar', '382', 'MNE', 'ME', 499, 'MNE', 273, 2647, '2021-09-01 16:01:24', 0),
(116, 'Morocco', 'المغرب', 'the Kingdom of Morocco', 'المملكة المغربية', 'MAD', 'Dirham', '212', 'MAR', 'MA', 504, 'MAR', 143, 169, '2021-09-01 16:01:24', 0),
(117, 'Mozambique', 'موزمبيق', 'the Republic of Mozambique', 'جمهورية موزمبيق', 'MZM', 'Metical', '258', 'MOZ', 'MZ', 508, 'MOZ', 144, 170, '2021-09-01 16:01:24', 0),
(118, 'Myanmar', 'ميانمار', 'the Republic of the Union of Myanmar', 'جمهورية اتحاد ميانمار', 'USD', 'Dollar', '95', 'MMR', 'MM', 104, 'MMR', 28, 171, '2021-09-01 16:01:24', 0),
(119, 'Namibia', 'ناميبيا', 'the Republic of Namibia', 'جمهورية ناميبيا', 'ZAR / NAD', 'Rand / Nam. Dollar', '264', 'NAM', 'NA', 516, 'NAM', 147, 172, '2021-09-01 16:01:24', 0),
(120, 'Nauru', 'ناورو', 'the Republic of Nauru', 'جمهورية ناورو', 'AUD', 'Australia Dollar', '674', 'NRU', 'NR', 520, 'NRU', 148, 173, '2021-09-01 16:01:24', 0),
(121, 'Nepal', 'نيبال', 'the Federal Democratic Republic of Nepal', 'جمهورية نيبال الديمقراطية الاتحادية', 'NPR', 'Rupee', '977', 'NPL', 'NP', 524, 'NPL', 149, 175, '2021-09-01 16:01:24', 0),
(122, 'Netherlands', 'هولندا', 'the Kingdom of the Netherlands', 'مملكة هولندا', 'NLG', 'Guilder', '31', 'NLD', 'NL', 528, 'NLD', 150, 177, '2021-09-01 16:01:24', 0),
(123, 'New Zealand', 'نيوزيلاندا', 'New Zealand', 'نيوزيلاندا', 'NZD', 'N.Z. Dollar', '64', 'NZL', 'NZ', 554, 'NZL', 156, 179, '2021-09-01 16:01:24', 0),
(124, 'Nicaragua', 'نيكاراغوا', 'the Republic of Nicaragua', 'جمهورية نيكاراغوا', 'NIO', 'Gold Cordoba', '505', 'NIC', 'NI', 558, 'NIC', 157, 180, '2021-09-01 16:01:24', 0),
(125, 'Niger', 'النيجر', 'the Republic of the Niger', 'جمهورية النيجر', 'XOF', 'C.F.A. Franc', '227', 'NER', 'NE', 562, 'NER', 158, 181, '2021-09-01 16:01:24', 0),
(126, 'Nigeria', 'نيجيريا', 'the Federal Republic of Nigeria', 'جمهورية نيجيريا الاتحادية', 'NGN', 'Naira', '234', 'NGA', 'NG', 566, 'NGA', 159, 182, '2021-09-01 16:01:24', 0),
(127, 'Niue', 'نيوي', 'Niue', 'نيوي', 'NZD', 'N.Z. Dollar', '683', 'NIU', 'NU', 570, 'NIU', 160, 183, '2021-09-01 16:01:24', 0),
(128, 'North Macedonia', 'مقدونيا الشمالية', 'the Republic of North Macedonia', 'جمهورية مقدونيا الشمالية', 'MKD', 'Macedonia Denar', '389', 'MKD', 'MK', 807, 'MKD', 154, 241, '2021-09-01 16:01:24', 0),
(129, 'Norway', 'النرويج', 'the Kingdom of Norway', 'مملكة النرويج', 'NOK', 'Norwegian Krone', '47', 'NOR', 'NO', 578, 'NOR', 162, 186, '2021-09-01 16:01:24', 0),
(130, 'Oman', 'سلطنة عمان', 'the Sultanate of Oman', 'سلطنة عمان', 'OMR', 'Rial', '968', 'OMN', 'OM', 512, 'OMN', 221, 187, '2021-09-01 16:01:24', 0),
(131, 'Pakistan', 'باكستان', 'the Islamic Republic of Pakistan', 'جمهورية باكستان الإسلامية', 'PKR', 'Rupee', '92', 'PAK', 'PK', 586, 'PAK', 165, 188, '2021-09-01 16:01:24', 0),
(132, 'Palau', 'بالاو', 'the Republic of Palau', 'جمهورية بالاو', 'USD', 'Dollar', '680', 'PLW', 'PW', 585, 'PLW', 180, 189, '2021-09-01 16:01:24', 0),
(133, 'Panama', 'بنما', 'the Republic of Panama', 'جمهورية بنما', 'PAB / USD', 'Balboa / Dollar', '507', 'PAN', 'PA', 591, 'PAN', 166, 191, '2021-09-01 16:01:24', 0),
(134, 'Papua New Guinea', 'بابوا غينيا الجديدة', 'Independent State of Papua New Guinea', 'دولة بابوا غينيا الجديدة المستقلة', 'PGK', 'Kina', '675', 'PNG', 'PG', 598, 'PNG', 168, 192, '2021-09-01 16:01:24', 0),
(135, 'Paraguay', 'باراغواي', 'the Republic of Paraguay', 'جمهورية باراغواي', 'PYG', 'Guarani', '595', 'PRY', 'PY', 600, 'PRY', 169, 194, '2021-09-01 16:01:24', 0),
(136, 'Peru', 'بيرو', 'the Republic of Peru', 'جمهورية بيرو', 'PEN', 'New Sol', '51', 'PER', 'PE', 604, 'PER', 170, 195, '2021-09-01 16:01:24', 0),
(137, 'Philippines', 'فيلبيني', 'the Republic of the Philippines', 'جمهورية الفلبين', 'PHP', 'Peso', '63', 'PHL', 'PH', 608, 'PHL', 171, 196, '2021-09-01 16:01:24', 0),
(138, 'Poland', 'بولندا', 'the Republic of Poland', 'جمهورية بولندا', 'PLZ', 'Zloty', '48', 'POL', 'PL', 616, 'POL', 173, 198, '2021-09-01 16:01:24', 0),
(139, 'Portugal', 'البرتغال', 'the Portuguese Republic', 'الجمهورية البرتغالية', 'PTE', 'Escudo', '351', 'PRT', 'PT', 620, 'PRT', 174, 199, '2021-09-01 16:01:24', 0),
(140, 'Qatar', 'دولة قطر', 'the State of Qatar', 'دولة قطر', 'QAR', 'Riyal', '974', 'QAT', 'QA', 634, 'QAT', 179, 201, '2021-09-01 16:01:24', 0),
(141, 'Republic of Korea', 'جمهورية كوريا', 'the Republic of Korea', 'جمهورية كوريا', 'KRW', 'Won', '82', 'KOR', 'KR', 410, 'KOR', 117, 202, '2021-09-01 16:01:24', 0),
(142, 'Republic of Moldova', 'جمهورية مولدوفا', 'the Republic of Moldova', 'جمهورية مولدوفا', 'MDL', 'Lou', '373', 'MDA', 'MD', 498, 'MDA', 146, 165, '2021-09-01 16:01:24', 0),
(143, 'Romania', 'رومانيا', 'Romania', 'رومانيا', 'USD', 'Dollar', '40', 'ROU', 'RO', 642, 'ROU', 183, 203, '2021-09-01 16:01:24', 0),
(144, 'Russian Federation', 'الاتحاد الروسي', 'the Russian Federation', 'الاتحاد الروسي', 'RUR', 'Rouble', '7', 'RUS', 'RU', 643, 'RUS', 185, 204, '2021-09-01 16:01:24', 0),
(145, 'Rwanda', 'رواندا', 'the Republic of Rwanda', 'جمهورية رواندا', 'RWF', 'Franc', '250', 'RWA', 'RW', 646, 'RWA', 184, 205, '2021-09-01 16:01:24', 0),
(146, 'Saint Kitts and Nevis', 'سانت كيتس ونيفيس', 'Saint Kitts and Nevis', 'سانت كيتس ونيفيس', 'XCD', 'East Caribb. Dollar', '1 869', 'KNA', 'KN', 659, 'KNA', 188, 208, '2021-09-01 16:01:24', 0),
(147, 'Saint Lucia', 'القديسة لوسيا', 'Saint Lucia', 'القديسة لوسيا', 'XCD', 'East Caribb. Dollar', '1 758', 'LCA', 'LC', 662, 'LCA', 189, 209, '2021-09-01 16:01:24', 0),
(148, 'Saint Vincent and the Grenadines', 'سانت فنسنت وجزر غرينادين', 'Saint Vincent and the Grenadines', 'سانت فنسنت وجزر غرينادين', 'XCD', 'East Caribb. Dollar', '1 784', 'VCT', 'VC', 670, 'VCT', 191, 211, '2021-09-01 16:01:24', 0),
(149, 'Samoa', 'ساموا', 'the Independent State of Samoa', 'دولة ساموا المستقلة', 'WST', 'Tala', '685', 'WSM', 'WS', 882, 'WSM', 244, 212, '2021-09-01 16:01:24', 0),
(150, 'San Marino', 'سان مارينو', 'the Republic of San Marino', 'جمهورية سان مارينو', 'ITL', 'Lira', '378', 'SMR', 'SM', 674, 'SMR', 192, 213, '2021-09-01 16:01:24', 0),
(151, 'Sao Tome and Principe', 'ساو تومي وبرينسيبي', 'the Democratic Republic of Sao Tome and Principe', 'جمهورية ساو تومي وبرينسيبي الديمقراطية', 'STD', 'Dobra', '239', 'STP', 'ST', 678, 'STP', 193, 214, '2021-09-01 16:01:24', 0),
(152, 'Saudi Arabia', 'المملكة العربية السعودية', 'the Kingdom of Saudi Arabia', 'المملكة العربية السعودية', 'SAR', 'Riyal', '966', 'SAU', 'SA', 682, 'SAU', 194, 215, '2021-09-01 16:01:24', 1),
(153, 'Senegal', 'السنغال', 'the Republic of Senegal', 'جمهورية السنغال', 'XOF', 'C.F.A. Franc', '221', 'SEN', 'SN', 686, 'SEN', 195, 217, '2021-09-01 16:01:24', 0),
(154, 'Serbia', 'صربيا', 'the Republic of Serbia', 'جمهورية صربيا', 'USD', 'Dollar', '381', 'SRB', 'RS', 688, 'SRB', 272, 2648, '2021-09-01 16:01:24', 0),
(155, 'Seychelles', 'سيشيل', 'the Republic of Seychelles', 'جمهورية سيشيل', 'SCR', 'Rupee', '248', 'SYC', 'SC', 690, 'SYC', 196, 220, '2021-09-01 16:01:24', 0),
(156, 'Sierra Leone', 'سيرا ليون', 'the Republic of Sierra Leone', 'جمهورية سيراليون', 'SLL', 'Leone', '232', 'SLE', 'SL', 694, 'SLE', 197, 221, '2021-09-01 16:01:24', 0),
(157, 'Singapore', 'سنغافورة', 'the Republic of Singapore', 'جمهورية سنغافورة', 'SGD', 'Dollar', '65', 'SGP', 'SG', 702, 'SGP', 200, 222, '2021-09-01 16:01:24', 0),
(158, 'Slovakia', 'سلوفاكيا', 'the Slovak Republic', 'جمهورية سلوفاكيا', 'SKK', 'Koruna', '421', 'SVK', 'SK', 703, 'SVK', 199, 223, '2021-09-01 16:01:24', 0),
(159, 'Slovenia', 'سلوفينيا', 'the Republic of Slovenia', 'جمهورية سلوفينيا', 'SIT', 'Tolar', '386', 'SVN', 'SI', 705, 'SVN', 198, 224, '2021-09-01 16:01:24', 0),
(160, 'Solomon Islands', 'جزر سليمان', 'Solomon Islands', 'جزر سليمان', 'SBD', 'Solom. Dollar', '677', 'SLB', 'SB', 90, 'SLB', 25, 225, '2021-09-01 16:01:24', 0),
(161, 'Somalia', 'الصومال', 'the Federal Republic of Somalia', 'جمهورية الصومال الفيدرالية', 'SOS', 'Shilling', '252', 'SOM', 'SO', 706, 'SOM', 201, 226, '2021-09-01 16:01:24', 0),
(162, 'South Africa', 'جنوب أفريقيا', 'the Republic of South Africa', 'جمهورية جنوب افريقيا', 'ZAR', 'Rand', '27', 'ZAF', 'ZA', 710, 'ZAF', 202, 227, '2021-09-01 16:01:24', 0),
(163, 'South Sudan', 'جنوب السودان', 'the Republic of South Sudan', 'جمهورية جنوب السودان', 'USD', 'Dollar', '211', 'SSD', 'SS', 728, 'SSD', 277, 74, '2021-09-01 16:01:24', 0),
(164, 'Spain', 'إسبانيا', 'the Kingdom of Spain', 'مملكة اسبانيا', 'ESP', 'Peseta', '34', 'ESP', 'ES', 724, 'ESP', 203, 229, '2021-09-01 16:01:24', 0),
(165, 'Sri Lanka', 'سيريلانكا', 'the Democratic Socialist Republic of Sri Lanka', 'جمهورية سريلانكا الديمقراطية الاشتراكية', 'LKR', 'Rupee', '94', 'LKA', 'LK', 144, 'LKA', 38, 231, '2021-09-01 16:01:24', 0),
(166, 'Sudan', 'السودان', 'the Republic of the Sudan', 'جمهورية السودان', 'SDG', 'Pound', '249', 'SDN', 'SD', 729, 'SDN', 276, 40764, '2021-09-01 16:01:24', 0),
(167, 'Suriname', 'سورينام', 'the Republic of Suriname', 'جمهورية سورينام', 'SRG', 'Guilder', '597', 'SUR', 'SR', 740, 'SUR', 207, 233, '2021-09-01 16:01:24', 0),
(168, 'Sweden', 'السويد', 'the Kingdom of Sweden', 'مملكة السويد', 'SEK', 'Krona', '46', 'SWE', 'SE', 752, 'SWE', 210, 236, '2021-09-01 16:01:24', 0),
(169, 'Switzerland', 'سويسرا', 'the Swiss Confederation', 'الاتحاد السويسري', 'CHF', 'Franc', '41', 'CHE', 'CH', 756, 'CHE', 211, 237, '2021-09-01 16:01:24', 0),
(170, 'Syrian Arab Republic', 'الجمهورية العربية السورية', 'the Syrian Arab Republic', 'الجمهورية العربية السورية', 'SYP', 'Pound', '963', 'SYR', 'SY', 760, 'SYR', 212, 238, '2021-09-01 16:01:24', 0),
(171, 'Tajikistan', 'طاجيكستان', 'the Republic of Tajikistan', 'جمهورية طاجيكستان', 'RUR', 'Russian Rouble', '992', 'TJK', 'TJ', 762, 'TJK', 208, 239, '2021-09-01 16:01:24', 0),
(172, 'Thailand', 'تايلاند', 'the Kingdom of Thailand', 'مملكة تايلاند', 'THB', 'Baht', '66', 'THA', 'TH', 764, 'THA', 216, 240, '2021-09-01 16:01:24', 0),
(173, 'Timor-Leste', 'تيمور ليشتي', 'the Democratic Republic of Timor-Leste', 'جمهورية تيمور الشرقية الديمقراطية', 'USD', 'Dollar', '670', 'TLS', 'TL', 626, 'TLS', 176, 242, '2021-09-01 16:01:24', 0),
(174, 'Togo', 'توجو', 'the Togolese Republic', 'جمهورية توغو', 'XOF', 'C.F.A. Franc', '228', 'TGO', 'TG', 768, 'TGO', 217, 243, '2021-09-01 16:01:24', 0),
(175, 'Tokelau', 'توكيلاو', 'Tokelau', 'توكيلاو', 'NZD', 'N.Z. Dollar', '690', 'TKL', 'TK', 772, 'TKL', 218, 244, '2021-09-01 16:01:24', 0),
(176, 'Tonga', 'تونغا', 'the Kingdom of Tonga', 'مملكة تونجا', 'TOP', 'Pa\'anga', '676', 'TON', 'TO', 776, 'TON', 219, 245, '2021-09-01 16:01:24', 0),
(177, 'Trinidad and Tobago', 'ترينداد وتوباغو', 'the Republic of Trinidad and Tobago', 'جمهورية ترينيداد وتوباغو', 'TTD', 'T.T. Dollar', '1 868', 'TTO', 'TT', 780, 'TTO', 220, 246, '2021-09-01 16:01:24', 0),
(178, 'Tunisia', 'تونس', 'the Republic of Tunisia', 'الجمهورية التونسية', 'TND', 'Dinar', '216', 'TUN', 'TN', 788, 'TUN', 222, 248, '2021-09-01 16:01:24', 0),
(179, 'Turkey', 'ديك رومى', 'the Republic of Turkey', 'جمهورية تركيا', 'TRL', 'Lira', '90', 'TUR', 'TR', 792, 'TUR', 223, 249, '2021-09-01 16:01:24', 0),
(180, 'Turkmenistan', 'تركمانستان', 'Turkmenistan', 'تركمانستان', 'TMM', 'Manat', '993', 'TKM', 'TM', 795, 'TKM', 213, 250, '2021-09-01 16:01:24', 0),
(181, 'Tuvalu', 'توفالو', 'Tuvalu', 'توفالو', 'AUD', 'Australia Dollar', '688', 'TUV', 'TV', 798, 'TUV', 227, 252, '2021-09-01 16:01:24', 0),
(182, 'Uganda', 'أوغندا', 'the Republic of Uganda', 'جمهورية أوغندا', 'UGX', 'Shilling', '256', 'UGA', 'UG', 800, 'UGA', 226, 253, '2021-09-01 16:01:24', 0),
(183, 'Ukraine', 'أوكرانيا', 'Ukraine', 'أوكرانيا', 'UAK', 'Karbovanet', '380', 'UKR', 'UA', 804, 'UKR', 230, 254, '2021-09-01 16:01:24', 0),
(184, 'United Arab Emirates', 'الإمارات العربية المتحدة', 'the United Arab Emirates', 'الإمارات العربية المتحدة', 'AED', 'Dirham', '971', 'ARE', 'AE', 784, 'ARE', 225, 255, '2021-09-01 16:01:24', 0),
(185, 'United Kingdom of Great Britain and Northern Ireland', 'المملكة المتحدة لبريطانيا العظمى وأيرلندا الشمالية', 'the United Kingdom of Great Britain and Northern Ireland', 'المملكة المتحدة لبريطانيا العظمى وأيرلندا الشمالية', 'GBP', 'Pound Sterling', '44', 'GBR', 'GB', 826, 'GBR', 229, 256, '2021-09-01 16:01:24', 0),
(186, 'United Republic of Tanzania', 'جمهورية تنزانيا المتحدة', 'the United Republic of Tanzania', 'جمهورية تنزانيا المتحدة', 'TZS', 'Shilling', '255', 'TZA', 'TZ', 834, 'TZA', 215, 257, '2021-09-01 16:01:24', 0),
(187, 'United States of America', 'الولايات المتحدة الأمريكية', 'the United States of America', 'الولايات المتحدة الأمريكية', 'USD', 'Dollar', '1', 'USA', 'US', 840, 'USA', 231, 259, '2021-09-01 16:01:24', 0),
(188, 'Uruguay', 'أوروغواي', 'the Eastern Republic of Uruguay', 'جمهورية أوروغواي الشرقية', 'UYU', 'Peso', '598', 'URY', 'UY', 858, 'URY', 234, 260, '2021-09-01 16:01:24', 0),
(189, 'Uzbekistan', 'أوزبكستان', 'the Republic of Uzbekistan', 'جمهورية أوزبكستان', 'UZS', 'Sum', '998', 'UZB', 'UZ', 860, 'UZB', 235, 261, '2021-09-01 16:01:24', 0),
(190, 'Vanuatu', 'فانواتو', 'the Republic of Vanuatu', 'جمهورية فانواتو', 'VUV', 'Vatu', '678', 'VUT', 'VU', 548, 'VUT', 155, 262, '2021-09-01 16:01:24', 0),
(191, 'Venezuela (Bolivarian Republic of)', 'فنزويلا (جمهورية البوليفارية)', 'the Bolivarian Republic of Venezuela', 'جمهورية فنزويلا البوليفارية', 'VEB', 'Bolivar', '58', 'VEN', 'VE', 862, 'VEN', 236, 263, '2021-09-01 16:01:24', 0),
(192, 'Viet Nam', 'فييت نام', 'the Socialist Republic of Viet Nam', 'جمهورية فيتنام الاشتراكية', 'VND', 'Dong', '84', 'VNM', 'VN', 704, 'VNM', 237, 264, '2021-09-01 16:01:24', 0),
(193, 'Yemen', 'اليمن', 'the Republic of Yemen', 'الجمهورية اليمنية', 'YER', 'Riyal', '967', 'YEM', 'YE', 887, 'YEM', 249, 269, '2021-09-01 16:01:24', 0),
(194, 'Zambia', 'زامبيا', 'the Republic of Zambia', 'جمهورية زامبيا', 'ZMK', 'Kwacha', '260', 'ZMB', 'ZM', 894, 'ZMB', 251, 270, '2021-09-01 16:01:24', 0),
(195, 'Zimbabwe', 'زيمبابوي', 'the Republic of Zimbabwe', 'جمهورية زيمبابوي', 'ZWD', 'Zimb. Dollar', '263', 'ZWE', 'ZW', 716, 'ZWE', 181, 271, '2021-09-01 16:01:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customeraccount`
--

CREATE TABLE `customeraccount` (
  `id` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `country` int(11) NOT NULL,
  `city` int(11) DEFAULT NULL,
  `region` int(11) NOT NULL,
  `address` varchar(255) DEFAULT '',
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `password` varchar(250) NOT NULL,
  `activity` int(4) NOT NULL DEFAULT 0,
  `delivery` bit(1) NOT NULL DEFAULT b'0',
  `registrationDate` datetime NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(250) NOT NULL DEFAULT 'default.png',
  `dateBirth` date NOT NULL DEFAULT '1000-01-01',
  `lastSeen` varchar(255) NOT NULL DEFAULT '0',
  `balance` float NOT NULL DEFAULT 0,
  `accountTypeId` int(11) NOT NULL DEFAULT 1,
  `student` int(11) NOT NULL DEFAULT 0,
  `universityContractId` int(11) NOT NULL DEFAULT 0,
  `numberOfUse` int(3) NOT NULL DEFAULT 0,
  `deleted` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customeraccount`
--

INSERT INTO `customeraccount` (`id`, `userName`, `fullName`, `email`, `mobile`, `country`, `city`, `region`, `address`, `latitude`, `longitude`, `password`, `activity`, `delivery`, `registrationDate`, `avatar`, `dateBirth`, `lastSeen`, `balance`, `accountTypeId`, `student`, `universityContractId`, `numberOfUse`, `deleted`) VALUES
(7, 'ahmed123', 'adadaete', 'test@test.com', '133242424', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$AH4C52MebH4uqBhnPEcruuT/xEu9EZuMImiGUZub7PhddPYVQmL3a', 0, b'0', '2022-07-05 13:34:32', 'default.png', '1000-01-01', '0', 0, 1, 0, 0, 0, b'0'),
(8, 'ahmed12', 'ahmedashraf', 'testtest@test.com', '12345678901', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$CRiWzFXr2M7N8OttO/OIW.qFRrhyidOdMmoxCh8M599fhj19UpJI2', 0, b'0', '2022-07-26 13:33:33', 'default.png', '1000-01-01', '0', 0, 1, 0, 0, 0, b'0'),
(9, 'ahmed13', 'adadaad', 'testttest@test.com', '24242424', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$GLF.ipmxJlHg/BkhsTAs3OoElztexvgRTp0lJcqcqGyoKSn4ggGqK', 0, b'0', '2022-07-27 12:37:16', 'default.png', '1000-01-01', '0', 0, 1, 0, 0, 0, b'0'),
(13, 'ahmed322', 'ahmedAshraf', 'ahmed@gmail.comwdad', '24242', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$bzZqgrRFSmt8iZKFu4XpTuT3MYa6H0dRXcmZ40MvpKPWifanQL/sW', 0, b'0', '2022-08-29 15:16:37', 'default.png', '2022-07-05', '0', 0, 1, 0, 0, 0, b'0'),
(14, 'ahmed3222', 'ahmedAshraf', 'ahmed@gmail.comwdadeq', '24242', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$pMV5e2bb.X/c54KsvEDhkuopjYyGmY4wwAzM8USCvMEAVBsBAUvoC', 0, b'0', '2022-08-29 15:28:17', 'default.png', '2022-07-05', '0', 0, 1, 0, 0, 0, b'0'),
(15, 'boles', 'Boles Nabil', 'boles@gmail.com', '0123456789', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$bzZqgrRFSmt8iZKFu4XpTuT3MYa6H0dRXcmZ40MvpKPWifanQL/sW', 0, b'0', '2022-08-29 20:20:17', 'default.png', '2017-06-15', '0', 0, 1, 0, 0, 0, b'0'),
(16, 'boles12', 'Boles Nabil', 'boles12@gmail.com', '0123456789', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$tuCpzL5EJWcZ7r3DQjgCRONTobzTU5CPjvszGGu6c0Dlbc.h56ccq', 0, b'0', '2022-08-29 20:59:38', 'default.png', '2017-06-15', '0', 0, 1, 0, 0, 0, b'0'),
(17, 'boles1234', 'Boles Nabil', 'boles1234@gmail.com', '0123456789', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$Zf5a32Ok7Pgyb63ItR.Sme0ck9iMrvdM1wuagndPynJ6/1FM1MFR6', 0, b'0', '2022-08-29 22:59:38', 'default.png', '2017-06-15', '0', 0, 1, 0, 0, 0, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `handovertransaction`
--

CREATE TABLE `handovertransaction` (
  `id` int(11) NOT NULL,
  `quotationId` int(11) NOT NULL,
  `spPercentage` float NOT NULL,
  `adminPercentage` float NOT NULL,
  `currencyShare` varchar(10) NOT NULL DEFAULT 'USD',
  `spShare` float NOT NULL,
  `adminShare` float NOT NULL,
  `holdValue` float NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `handovertransaction`
--

INSERT INTO `handovertransaction` (`id`, `quotationId`, `spPercentage`, `adminPercentage`, `currencyShare`, `spShare`, `adminShare`, `holdValue`, `dateTime`) VALUES
(138, 264, 92, 8, 'USD', 1150, 100, 1425, '2022-06-26 14:11:05'),
(139, 3, 92, 8, 'USD', 92, 8, 114, '2022-03-26 14:21:48'),
(140, 4, 92, 8, 'USD', 138, 12, 171, '2022-03-26 14:57:21'),
(141, 5, 92, 8, 'USD', 92, 8, 114, '2022-03-26 15:21:26'),
(142, 6, 92, 8, 'USD', 73.6, 6.4, 91.2, '2022-03-26 15:21:26'),
(143, 9, 92, 8, 'USD', 2116, 184, 2622, '2022-03-26 16:19:09'),
(144, 10, 92, 8, 'USD', 184, 16, 228, '2022-03-26 17:20:20'),
(145, 12, 92, 8, 'USD', 184, 16, 228, '2022-03-26 17:20:20'),
(146, 13, 92, 8, 'USD', 46, 4, 57, '2022-03-27 10:25:46'),
(147, 14, 92, 8, 'USD', 46, 4, 57, '2022-03-27 10:33:37'),
(148, 15, 92, 8, 'USD', 46, 4, 57, '2022-03-27 10:41:17'),
(149, 16, 92, 8, 'USD', 46, 4, 57, '2022-03-27 10:41:17'),
(150, 7, 92, 8, 'USD', 92, 8, 114, '2022-03-27 13:16:20'),
(151, 17, 92, 8, 'USD', 230, 20, 285, '2022-03-27 13:30:31'),
(152, 19, 92, 8, 'USD', 18.4, 1.6, 22.8, '2022-03-27 13:34:38'),
(153, 20, 92, 8, 'USD', 18.4, 1.6, 22.8, '2022-03-27 13:34:38'),
(154, 22, 92, 8, 'USD', 92, 8, 114, '2022-03-27 13:49:36'),
(155, 25, 92, 8, 'USD', 736, 64, 920, '2022-03-27 14:41:02'),
(156, 26, 92, 8, 'USD', 46, 4, 57.5, '2022-03-27 14:43:29'),
(157, 29, 92, 8, 'USD', 184, 16, 228, '2022-03-27 19:38:38'),
(158, 30, 92, 8, 'USD', 23, 2, 28.5, '2022-03-27 19:38:38'),
(159, 31, 92, 8, 'USD', 460, 40, 570, '2022-04-07 10:46:11'),
(160, 32, 92, 8, 'USD', 46, 4, 57, '2022-04-07 10:46:11'),
(161, 38, 92, 8, 'USD', 115, 10, 142.5, '2022-04-13 10:00:38'),
(162, 40, 92, 8, 'USD', 36.8, 3.2, 45.6, '2022-04-13 12:41:09'),
(163, 39, 92, 8, 'USD', 18.4, 1.6, 22.8, '2022-04-13 12:43:14'),
(164, 41, 92, 8, 'USD', 18.4, 1.6, 22.8, '2022-04-20 12:32:26'),
(165, 68, 92, 8, 'USD', 92, 8, 114, '2022-05-12 08:48:05'),
(166, 72, 92, 8, 'USD', 9.2, 0.8, 11.4, '2022-05-12 10:16:37'),
(167, 78, 92, 8, 'USD', 6.44, 0.56, 7.98, '2022-05-15 14:57:10'),
(168, 86, 92, 8, 'USD', 46, 4, 57, '2022-05-16 15:01:07'),
(169, 87, 92, 8, 'USD', 92, 8, 114, '2022-05-16 15:01:07'),
(170, 88, 92, 8, 'USD', 993.6, 86.4, 1231.2, '2022-05-17 11:55:17'),
(171, 92, 92, 8, 'USD', 460, 40, 570, '2022-05-18 10:17:38'),
(172, 104, 92, 8, 'USD', 92, 8, 114, '2022-05-22 13:33:18'),
(173, 115, 92, 8, 'USD', 46, 4, 57, '2022-05-24 13:16:52'),
(174, 126, 92, 8, 'USD', 460, 40, 570, '2022-05-25 12:09:04'),
(175, 129, 92, 8, 'USD', 184, 16, 228, '2022-05-25 12:32:05'),
(176, 130, 92, 8, 'USD', 46, 4, 57, '2022-05-25 12:32:05'),
(177, 146, 92, 8, 'USD', 60.72, 5.28, 75.24, '2022-05-25 15:06:32'),
(178, 161, 92, 8, 'USD', 1012, 88, 1254, '2022-05-30 17:47:48'),
(179, 162, 92, 8, 'USD', 9.2, 0.8, 11.4, '2022-05-31 09:59:18'),
(180, 163, 92, 8, 'USD', 18.4, 1.6, 22.8, '2022-05-31 11:20:19'),
(181, 184, 92, 8, 'USD', 920, 80, 1140, '2022-06-01 13:23:51'),
(182, 186, 92, 8, 'USD', 73.6, 6.4, 91.2, '2022-06-01 13:23:51'),
(183, 185, 92, 8, 'USD', 9.2, 0.8, 11.4, '2022-06-01 13:33:30'),
(184, 188, 92, 8, 'USD', 92, 8, 114, '2022-06-01 13:33:30'),
(185, 189, 92, 8, 'USD', 736, 64, 912, '2022-06-01 14:05:39'),
(186, 190, 92, 8, 'USD', 73.6, 6.4, 91.2, '2022-06-01 14:05:39'),
(187, 191, 92, 8, 'USD', 46, 4, 57, '2022-06-02 13:20:23'),
(188, 195, 92, 8, 'USD', 46, 4, 57, '2022-06-02 13:20:23'),
(189, 198, 92, 8, 'USD', 1104, 96, 1368, '2022-06-02 13:54:32'),
(190, 201, 92, 8, 'USD', 55.2, 4.8, 68.4, '2022-06-02 16:10:48'),
(191, 202, 92, 8, 'USD', 460, 40, 570, '2022-06-02 16:22:31'),
(192, 209, 92, 8, 'USD', 734.16, 63.84, 909.72, '2022-06-06 11:25:57'),
(193, 210, 92, 8, 'USD', 220.8, 19.2, 273.6, '2022-06-07 11:13:53'),
(194, 230, 92, 8, 'USD', 204.24, 17.76, 253.08, '2022-06-08 11:46:05'),
(195, 231, 92, 8, 'USD', 220.8, 19.2, 273.6, '2022-06-08 11:48:32'),
(196, 238, 92, 8, 'USD', 230, 20, 285, '2022-06-08 14:13:17'),
(197, 254, 92, 8, 'USD', 111.32, 9.68, 137.94, '2022-07-10 17:29:00'),
(198, 268, 92, 8, 'USD', 387.32, 33.68, 479.94, '2022-07-26 14:55:13'),
(199, 272, 92, 8, 'USD', 92, 8, 114, '2022-08-04 13:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `holdtransaction`
--

CREATE TABLE `holdtransaction` (
  `id` int(11) NOT NULL,
  `quotationId` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL DEFAULT 'USD',
  `value` float NOT NULL,
  `holded` tinyint(1) NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `holdtransaction`
--

INSERT INTO `holdtransaction` (`id`, `quotationId`, `currency`, `value`, `holded`, `dateTime`) VALUES
(1, 17, 'USD', 26.22, 1, '2022-08-08 16:44:41'),
(2, 17, 'USD', 26.22, 1, '2022-08-08 16:58:59'),
(3, 17, 'USD', 26.22, 1, '2022-08-08 17:02:11'),
(4, 17, 'USD', 26.22, 1, '2022-08-08 17:03:29'),
(5, 18, 'USD', 136.8, 1, '2022-08-09 14:19:35'),
(6, 19, 'USD', 228, 1, '2022-08-14 15:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `languagesName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `languagesName`) VALUES
(1, 'عربي'),
(2, 'English'),
(3, 'French'),
(4, 'Dutch'),
(5, 'اردو'),
(6, 'Spanish');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `occasionlist`
--

CREATE TABLE `occasionlist` (
  `id` int(11) NOT NULL,
  `occasionNameAr` varchar(255) NOT NULL,
  `occasionNameEn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `occasionlist`
--

INSERT INTO `occasionlist` (`id`, `occasionNameAr`, `occasionNameEn`) VALUES
(0, 'اخرى', 'other'),
(1, 'مولود جديد', 'New Baby'),
(2, 'حفل زفاف', 'wedding'),
(3, 'تعازي', 'Condolences'),
(4, 'اجتماع عمل\n', 'business meeting'),
(5, 'عيد الميلاد\n', 'birthday'),
(6, 'حدث خاص', 'special event'),
(7, 'حدث عام\n', 'public event');

-- --------------------------------------------------------

--
-- Table structure for table `orderdocument`
--

CREATE TABLE `orderdocument` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `file` varchar(255) DEFAULT '',
  `city` int(11) NOT NULL DEFAULT 0,
  `region` int(11) DEFAULT 0,
  `address` varchar(255) DEFAULT '',
  `latitude` float NOT NULL DEFAULT 0,
  `longitude` float NOT NULL DEFAULT 0,
  `delivery` int(11) NOT NULL DEFAULT 0,
  `paperSize` int(11) DEFAULT 0,
  `paperType` int(11) NOT NULL DEFAULT 0,
  `printingLayout` int(11) DEFAULT 1,
  `color` int(11) NOT NULL DEFAULT 0,
  `side` int(11) NOT NULL DEFAULT 0,
  `binding` int(11) NOT NULL DEFAULT 0,
  `number` int(11) DEFAULT 0,
  `lcorrection` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderfilm`
--

CREATE TABLE `orderfilm` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `occasionId` int(11) NOT NULL DEFAULT 0,
  `occasion` varchar(255) NOT NULL DEFAULT ' ',
  `arrival` int(11) DEFAULT 0,
  `durationDays` int(11) NOT NULL DEFAULT 0,
  `durationHours` int(11) NOT NULL DEFAULT 0,
  `durationMinutes` int(11) NOT NULL DEFAULT 0,
  `city` int(11) NOT NULL DEFAULT 0,
  `region` int(11) NOT NULL DEFAULT 0,
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `montage` int(11) NOT NULL DEFAULT 0,
  `lighting` int(11) NOT NULL DEFAULT 0,
  `occasionTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderfilmdetails`
--

CREATE TABLE `orderfilmdetails` (
  `id` int(11) NOT NULL,
  `orderId` varchar(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT 0,
  `itemId` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderfilmdetails`
--

INSERT INTO `orderfilmdetails` (`id`, `orderId`, `type`, `itemId`, `count`, `dateTime`) VALUES
(1, '3', 1, 3, 1, '2022-08-01 16:37:44'),
(2, '3', 1, 2, 3, '2022-08-01 16:37:44'),
(3, '3', 2, 4, 1, '2022-08-01 16:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `orderimage`
--

CREATE TABLE `orderimage` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `file` varchar(255) DEFAULT '',
  `urlLink` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderimage`
--

INSERT INTO `orderimage` (`id`, `code`, `file`, `urlLink`) VALUES
(1, '241', 'orders/orderImage/IIiEjI9CQuSIPvAGNWk2p1Bn0FKgzqL3xktUpzCC.jpg', ''),
(2, '242', 'orders/orderImage/SK0xJa3D7ArXiLjSXzx3Ir5sabrxcT5tSZgfltib.jpg', 'https://www.ptoolz.com/viewNew/customerComponent/image.html'),
(3, '243', 'orders/orderImage/PUZEhSRfw7Dr6YphakpsO2LVpLqoimAtUYzBLy4t.jpg', 'http://127.0.0.1:8000/c/order/create/edit/image'),
(4, '244', 'video/X0MVHLWn6m0RraeQxB4cuUI1VVAVMPWxQ63l2CuJ.jpg', ''),
(5, '24', 'orders/orderImage/icZktKfuw2DTr3dLT1QUUSWHXbUymMEXuRWc7X6E.png', '1'),
(6, '46', 'orders/orderImage/ihzf5kPqAeg8Mcxp4o1LK714gbi2NngkpGcD3gFf.png', '1'),
(7, '47', 'orders/orderImage/4CvDTpvQrKgBAWP8NIxreP1vIwgaIXPWJbys1Mtq.png', 'http://192.168.1.16:8000/api/c/orders');

-- --------------------------------------------------------

--
-- Table structure for table `ordermap`
--

CREATE TABLE `ordermap` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `file` varchar(255) DEFAULT '',
  `city` int(11) NOT NULL DEFAULT 0,
  `region` int(11) DEFAULT 0,
  `address` varchar(255) DEFAULT '',
  `latitude` double DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `delivery` int(11) NOT NULL DEFAULT 0,
  `paperSize` int(11) NOT NULL DEFAULT 0,
  `paperType` int(11) NOT NULL DEFAULT 0,
  `color` int(11) NOT NULL DEFAULT 0,
  `side` int(11) NOT NULL DEFAULT 0,
  `number` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordermap`
--

INSERT INTO `ordermap` (`id`, `code`, `file`, `city`, `region`, `address`, `latitude`, `longitude`, `delivery`, `paperSize`, `paperType`, `color`, `side`, `number`) VALUES
(1, '121', 'orders/orderMap/FN3b66oAI0TSe1L14b0TJv40oIZsVCXegOZtIoX8.jpg', 0, 0, '', 0, 0, 0, 1, 3, 0, 2, 2),
(2, '122', 'orders/orderMap/oWUgpVZmwMN5j8xKkreQcymGqqdBU01ix96AQPwd.png', 2, 2, '', 0, 0, 1, 1, 3, 1, 2, 3),
(3, '123', 'orders/orderMap/YzfYiE3isod9TogydHDeuMqf7lmvYMvFqCKQK7ak.png', 2, 2, '', 0, 0, 1, 1, 3, 1, 2, 3),
(4, '124', 'orders/orderMap/ICaKkui8l81Zr4bl6j2vxzI6nO77G5u7DS1s3J7b.jpg', 0, 0, '', 0, 0, 0, 1, 3, 0, 1, 3),
(5, '125', 'orders/orderMap/pH6HEUhPvyUr3wjkNLyZY7pzh0P1UZ1AINzAoRe4.jpg', 0, 0, '', 0, 0, 0, 1, 4, 2, 1, 3),
(6, '126', 'map/QKljeoNt3UlR2gsXuSI6YhT49iXUitqrXopH3eBE.jpg', 0, 0, '', 0, 0, 0, 1, 3, 1, 1, 3),
(7, '127', 'map/QgQ9B6PmHqFEEdgvBrZsbuw9aKLJLSp6MGzkNIsM.jpg', 1, 1, '', 30.166916240925314, 33.163800585937494, 1, 1, 4, 2, 1, 2),
(8, '128', 'map/BoZznKv27OUSIyO3CjKCp2aCduYo7AIEdOSurhTH.jpg', 2, 2, '', 30.535033694836073, 29.795782372460206, 1, 1, 4, 2, 1, 3),
(9, '12', 'a', 0, 0, '', 0, 0, 0, 1, 1, 1, 1, 3),
(10, '40', 'd', 0, 0, '', 0, 0, 0, 1, 1, 1, 1, 3),
(11, '41', 'map/GMqv8QoabSEgmQTXoA4Pd9UDsCGtKT0rMLcCvwgq.jpg', 0, 0, '', 0, 0, 0, 1, 1, 1, 1, 3),
(12, '42', 'map/yrgilkc4EECdsoHxZ4vEW6HtET7gHoWYmHL0biQv.jpg', 0, 0, '', 0, 0, 0, 1, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orderphoto`
--

CREATE TABLE `orderphoto` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `occasionId` int(255) NOT NULL DEFAULT 0,
  `occasion` varchar(255) NOT NULL DEFAULT ' ',
  `arrival` int(11) DEFAULT 0,
  `durationDays` int(11) NOT NULL DEFAULT 0,
  `durationHours` int(11) NOT NULL DEFAULT 0,
  `durationMinutes` int(11) NOT NULL DEFAULT 0,
  `edit` int(11) NOT NULL DEFAULT 0,
  `lighting` int(11) NOT NULL DEFAULT 0,
  `city` int(11) NOT NULL DEFAULT 0,
  `region` int(11) NOT NULL DEFAULT 0,
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `occasionTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderphoto`
--

INSERT INTO `orderphoto` (`id`, `code`, `occasionId`, `occasion`, `arrival`, `durationDays`, `durationHours`, `durationMinutes`, `edit`, `lighting`, `city`, `region`, `latitude`, `longitude`, `occasionTime`) VALUES
(4, '374', 1, 'static occasion', 0, 1, 2, 3, 0, 0, 2, 2, 29.941592225677457, 32.867169726562494, '2022-08-04 15:52:00'),
(5, '375', 2, 'wedding', 0, 3, 3, 1, 0, 0, 1, 1, 29.704052636212484, 35.245709765624994, '2022-08-18 19:06:00'),
(6, '376', 1, 'New Baby', 0, 2, 2, 1, 0, 0, 1, 1, 24.223687878006054, 12.855573046874994, '2022-08-15 16:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `orderphotodetails`
--

CREATE TABLE `orderphotodetails` (
  `id` int(11) NOT NULL,
  `orderId` varchar(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT 0,
  `itemId` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderphotodetails`
--

INSERT INTO `orderphotodetails` (`id`, `orderId`, `type`, `itemId`, `count`, `dateTime`) VALUES
(26, '23', 2, 11, 1, '2022-03-27 11:34:02'),
(27, '29', 1, 1, 1, '2022-05-12 14:38:13'),
(28, '29', 1, 1, 1, '2022-05-12 14:38:13'),
(29, '29', 2, 4, 1, '2022-05-12 14:38:13'),
(30, '29', 2, 15, 1, '2022-05-12 14:38:13'),
(31, '29', 2, 8, 1, '2022-05-12 14:38:13'),
(32, '29', 2, 3, 1, '2022-05-12 14:38:13'),
(33, '29', 2, 1, 1, '2022-05-12 14:38:13'),
(34, '52', 1, 0, 1, '2022-06-02 12:32:20'),
(35, '52', 1, 1, 1, '2022-06-02 12:32:20'),
(36, '52', 2, 4, 1, '2022-06-02 12:32:20'),
(37, '52', 2, 8, 1, '2022-06-02 12:32:20'),
(38, '52', 2, 10, 1, '2022-06-02 12:32:20'),
(39, '52', 2, 3, 1, '2022-06-02 12:32:20'),
(40, '52', 2, 1, 1, '2022-06-02 12:32:20'),
(41, '53', 1, 1, 1, '2022-06-02 16:17:31'),
(42, '53', 1, 1, 1, '2022-06-02 16:17:31'),
(43, '53', 2, 8, 1, '2022-06-02 16:17:31'),
(44, '53', 2, 11, 1, '2022-06-02 16:17:31'),
(45, '53', 2, 10, 1, '2022-06-02 16:17:31'),
(46, '53', 2, 10, 1, '2022-06-02 16:17:31'),
(47, '53', 2, 1, 1, '2022-06-02 16:17:31'),
(48, '53', 2, 1, 1, '2022-06-02 16:17:31'),
(49, '54', 1, 1, 1, '2022-06-23 12:53:55'),
(50, '54', 1, 0, 1, '2022-06-23 12:53:55'),
(51, '54', 2, 4, 1, '2022-06-23 12:53:55'),
(52, '54', 2, 13, 1, '2022-06-23 12:53:55'),
(53, '54', 2, 14, 1, '2022-06-23 12:53:55'),
(54, '54', 2, 12, 1, '2022-06-23 12:53:55'),
(55, '54', 2, 11, 1, '2022-06-23 12:53:55'),
(56, '54', 2, 3, 1, '2022-06-23 12:53:55'),
(57, '169', 2, 0, 1, '2022-06-30 10:47:24'),
(58, '169', 2, 1, 1, '2022-06-30 10:47:24'),
(59, '169', 2, 4, 1, '2022-06-30 10:47:24'),
(60, '169', 2, 15, 1, '2022-06-30 10:47:24'),
(61, '169', 2, 8, 1, '2022-06-30 10:47:24'),
(62, '169', 2, 11, 1, '2022-06-30 10:47:24'),
(63, '169', 2, 11, 1, '2022-06-30 10:47:24'),
(64, '169', 2, 3, 1, '2022-06-30 10:47:24'),
(65, '169', 2, 1, 1, '2022-06-30 10:47:24'),
(66, '169', 2, 1, 1, '2022-06-30 10:47:24'),
(67, '55', 2, 1, 1, '2022-06-30 10:47:24'),
(68, '55', 2, 1, 1, '2022-06-30 10:47:24'),
(69, '56', 2, 1, 1, '2022-06-30 12:12:18'),
(70, '56', 2, 1, 1, '2022-06-30 12:12:18'),
(71, '56', 2, 4, 1, '2022-06-30 12:12:18'),
(72, '56', 2, 15, 1, '2022-06-30 12:12:18'),
(73, '56', 2, 15, 1, '2022-06-30 12:12:18'),
(74, '56', 2, 8, 1, '2022-06-30 12:12:18'),
(75, '56', 2, 8, 1, '2022-06-30 12:12:18'),
(76, '56', 2, 8, 1, '2022-06-30 12:12:18'),
(77, '56', 2, 11, 1, '2022-06-30 12:12:18'),
(78, '56', 2, 3, 1, '2022-06-30 12:12:18'),
(79, '56', 2, 1, 1, '2022-06-30 12:12:18'),
(80, '58', 1, 1, 1, '2022-06-30 12:20:29'),
(81, '58', 1, 1, 1, '2022-06-30 12:20:29'),
(82, '58', 1, 2, 1, '2022-06-30 12:20:29'),
(83, '58', 1, 1, 1, '2022-06-30 12:20:29'),
(84, '58', 1, 1, 1, '2022-06-30 12:20:29'),
(85, '58', 1, 2, 1, '2022-06-30 12:20:29'),
(86, '58', 2, 4, 1, '2022-06-30 12:20:29'),
(87, '58', 2, 4, 1, '2022-06-30 12:20:29'),
(88, '58', 2, 4, 1, '2022-06-30 12:20:29'),
(89, '58', 2, 4, 1, '2022-06-30 12:20:29'),
(90, '58', 2, 13, 1, '2022-06-30 12:20:29'),
(91, '58', 2, 13, 1, '2022-06-30 12:20:29'),
(92, '58', 2, 10, 1, '2022-06-30 12:20:29'),
(93, '58', 2, 11, 1, '2022-06-30 12:20:29'),
(94, '58', 2, 10, 1, '2022-06-30 12:20:29'),
(95, '58', 2, 10, 1, '2022-06-30 12:20:29'),
(96, '58', 2, 3, 1, '2022-06-30 12:20:29'),
(97, '58', 2, 3, 1, '2022-06-30 12:20:29'),
(98, '58', 2, 3, 1, '2022-06-30 12:20:29'),
(99, '58', 2, 3, 1, '2022-06-30 12:20:29'),
(100, '58', 2, 3, 1, '2022-06-30 12:20:29'),
(101, '58', 2, 1, 1, '2022-06-30 12:20:29'),
(102, '58', 2, 1, 1, '2022-06-30 12:20:29'),
(103, '58', 2, 1, 1, '2022-06-30 12:20:29'),
(104, '58', 2, 1, 1, '2022-06-30 12:20:29'),
(105, '73', 1, 1, 1, '2022-06-30 14:22:19'),
(106, '73', 1, 1, 1, '2022-06-30 14:22:19'),
(107, '73', 2, 4, 1, '2022-06-30 14:22:19'),
(108, '73', 2, 11, 1, '2022-06-30 14:22:19'),
(109, '75', 1, 1, 1, '2022-07-06 10:27:53'),
(110, '75', 1, 2, 1, '2022-07-06 10:27:53'),
(111, '75', 1, 0, 1, '2022-07-06 10:27:53'),
(112, '75', 1, 1, 1, '2022-07-06 10:27:53'),
(113, '75', 2, 4, 1, '2022-07-06 10:27:53'),
(114, '75', 2, 4, 1, '2022-07-06 10:27:53'),
(115, '75', 2, 13, 1, '2022-07-06 10:27:53'),
(116, '75', 2, 13, 1, '2022-07-06 10:27:53'),
(117, '75', 2, 8, 1, '2022-07-06 10:27:53'),
(118, '75', 2, 11, 1, '2022-07-06 10:27:53'),
(119, '75', 2, 1, 1, '2022-07-06 10:27:53'),
(120, '3', 1, 3, 1, '2022-08-01 15:51:00'),
(121, '4', 1, 1, 1, '2022-08-01 15:53:11'),
(122, '4', 1, 2, 2, '2022-08-01 15:53:11'),
(123, '4', 2, 4, 3, '2022-08-01 15:53:11'),
(124, '4', 1, 2, 1, '2022-08-01 15:53:11'),
(125, '5', 1, 1, 2, '2022-08-01 16:06:37'),
(126, '5', 2, 4, 1, '2022-08-01 16:06:37'),
(127, '6', 1, 4, 2, '2022-08-01 16:25:20'),
(128, '6', 2, 4, 2, '2022-08-01 16:25:20'),
(129, '6', 1, 2, 1, '2022-08-01 16:25:20'),
(130, '6', 2, 4, 1, '2022-08-01 16:25:20'),
(131, '1', 1, 2, 1, '2022-08-01 16:34:47'),
(132, '1', 2, 4, 1, '2022-08-01 16:34:47'),
(133, '2', 1, 3, 3, '2022-08-01 16:35:39'),
(134, '2', 2, 4, 1, '2022-08-01 16:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `orderpicture`
--

CREATE TABLE `orderpicture` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `file` varchar(255) DEFAULT '',
  `city` int(11) NOT NULL DEFAULT 0,
  `region` int(11) DEFAULT 0,
  `address` varchar(255) DEFAULT '',
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `delivery` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderpicture`
--

INSERT INTO `orderpicture` (`id`, `code`, `file`, `city`, `region`, `address`, `latitude`, `longitude`, `delivery`, `size`, `number`) VALUES
(1, '131', 'orders/orderPicture/DRmBrMKy94MWmCNMd31Q12mISGEFkrIqEZyK11ro.jpg', 0, 0, '', 0, 0, 0, 2, 2),
(2, '132', 'orders/orderPicture/K10jzz1yI68zMDJzRTKO2AZyXtwBXNx1zWUoGAfR.jpg', 1, 1, '', 0, 0, 1, 2, 3),
(3, '133', 'orders/orderPicture/XaWZohJM5NOxrBzCMBLNWLTfMQkdRGSbCN0AQFrb.png', 0, 0, '', 0, 0, 0, 9, 2),
(4, '24', 'orders/orderImage/NajKpiakMEK4oSAEDgBvTYgekXRLFckFk6OwQzeV.jpg', 0, 0, '', 0, 0, 0, 0, 0),
(5, '245', 'orders/orderImage/C9iEOqjVkwXlj7fNoTKjwazcXAMuh9dq4RKrn6pb.jpg', 0, 0, '', 0, 0, 0, 0, 0),
(6, '136', 'orders/orderPicture/5OrxIuNpn9SjmDrULSCq1MkpnmWODBsYQS0YH0he.jpg', 0, 0, '', 0, 0, 0, 1, 2),
(7, '137', 'picture/N733Exsrn0tkf5TNGB8qCgsXR5fF0LHu5hNSBAtc.jpg', 0, 0, '', 0, 0, 0, 1, 2),
(8, '138', 'picture/FBIPe08GqSU3zYPjlyM4Mo32rafoN1eTzvqupkGH.jpg', 1, 1, '', 30.0444, 31.2357, 1, 4, 2),
(9, '13', 'picture/b28GIOAgrodOHgkY97nhRjCfDRI8vplx04x4wipl.png', 0, 0, '', 0, 0, 0, 1, 2),
(10, '45', 'picture/C4giFWyBBTd6scVWEQg2we4RPiQ1vNdHqCWMs9od.png', 0, 0, '', 0, 0, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orderrentcamera`
--

CREATE TABLE `orderrentcamera` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `durationDays` int(11) NOT NULL DEFAULT 0,
  `durationHours` int(11) NOT NULL DEFAULT 0,
  `durationMinutes` int(11) NOT NULL,
  `delivery` int(11) NOT NULL DEFAULT 0,
  `city` int(11) NOT NULL DEFAULT 0,
  `region` int(11) NOT NULL DEFAULT 0,
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `bookingDate` datetime NOT NULL DEFAULT current_timestamp(),
  `customerReceive` int(11) DEFAULT 0,
  `spReceive` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderrentcamera`
--

INSERT INTO `orderrentcamera` (`id`, `code`, `durationDays`, `durationHours`, `durationMinutes`, `delivery`, `city`, `region`, `latitude`, `longitude`, `bookingDate`, `customerReceive`, `spReceive`) VALUES
(2, '482', 1, 3, 3, 0, 1, 1, 28.677831972213504, 34.449200976562494, '2022-08-19 17:11:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderrentcameradetails`
--

CREATE TABLE `orderrentcameradetails` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `itemId` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderrentcameradetails`
--

INSERT INTO `orderrentcameradetails` (`id`, `orderId`, `type`, `itemId`, `count`, `dateTime`) VALUES
(91, 2, 1, 3, 3, '2022-08-01 17:08:08'),
(92, 2, 2, 4, 1, '2022-08-01 17:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `orderTypeId` int(11) DEFAULT NULL,
  `userAccountId` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT ' 0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `orderId` int(20) NOT NULL DEFAULT 0,
  `activeTime` datetime DEFAULT current_timestamp(),
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `categoryId`, `orderTypeId`, `userAccountId`, `title`, `description`, `status`, `orderId`, `activeTime`, `dateTime`) VALUES
(1, '113', 1, 1, 7, 'rwerw', 'dwadad', 1, 3, '2022-07-06 15:01:27', '2022-07-06 15:01:27'),
(2, '114', 1, 1, 7, 'ewrwr', 'aeet', 1, 4, '2022-07-06 15:15:00', '2022-07-06 15:15:00'),
(3, '115', 1, 1, 7, 'ewrwr', 'aeet', 1, 5, '2022-07-06 15:15:48', '2022-07-06 15:15:48'),
(4, '116', 1, 1, 7, '22afsafa', 'asfas', 1, 6, '2022-07-06 15:16:04', '2022-07-06 15:16:04'),
(5, '117', 1, 1, 7, 'test', 'ferwer', 1, 7, '2022-07-06 15:19:38', '2022-07-06 15:19:38'),
(6, '118', 1, 1, 7, 'test', 'ferwer', 1, 8, '2022-07-06 15:19:49', '2022-07-06 15:19:49'),
(7, '119', 1, 1, 7, 'test', 'ssfs', 1, 9, '2022-07-06 15:23:34', '2022-07-06 15:23:34'),
(8, '1110', 1, 1, 7, 'dgsgsdg', 'dsgsdgss', 1, 10, '2022-07-07 11:49:38', '2022-07-07 11:49:38'),
(9, '1111', 1, 1, 7, 'dgsg', 'srttrs', 1, 11, '2022-07-07 13:13:19', '2022-07-07 13:13:19'),
(10, '1212', 1, 2, 7, 'wdaffaf', 'saff', 1, 12, '2022-07-07 13:38:40', '2022-07-07 13:38:40'),
(11, '1213', 1, 2, 7, 'sfdffaf', 'sfdsdf', 1, 13, '2022-07-07 13:40:56', '2022-07-07 13:40:56'),
(12, '1214', 1, 2, 7, 'sfdffaf', 'sfdsdf', 1, 14, '2022-07-07 13:42:03', '2022-07-07 13:42:03'),
(13, '1215', 1, 2, 7, 'sfdffaf', 'sfdsdf', 1, 15, '2022-07-07 13:42:07', '2022-07-07 13:42:07'),
(14, '1216', 1, 2, 7, 'fzfaf', 'fadfaf', 1, 16, '2022-07-07 13:43:17', '2022-07-07 13:43:17'),
(15, '121', 1, 2, 7, 'fzfaf', 'fadfaf', 1, 1, '2022-07-07 13:44:43', '2022-07-07 13:44:43'),
(16, '122', 1, 2, 7, '43', 'ffsdfd', 1, 2, '2022-07-07 13:58:53', '2022-07-07 13:58:53'),
(17, '123', 1, 2, 7, '43', 'ffsdfd', 1, 3, '2022-07-07 13:59:40', '2022-07-07 13:59:40'),
(18, '131', 1, 3, 7, 'sfszfz', 'ffdf', 1, 1, '2022-07-07 14:25:35', '2022-07-07 14:25:35'),
(19, '132', 1, 3, 7, 'dsfsdfd', 'dfdsff', 1, 2, '2022-07-07 14:26:01', '2022-07-07 14:26:01'),
(20, '133', 1, 3, 7, 'fafsa', 'adas', 1, 3, '2022-07-07 14:26:33', '2022-07-07 14:26:33'),
(21, '245', 2, 4, 7, 'sgsgd', 'sfaa', 1, 5, '2022-07-07 16:32:23', '2022-07-07 16:32:23'),
(22, '241', 2, 4, 7, 'sffaf', 'dsgdg', 1, 1, '2022-07-07 16:35:00', '2022-07-07 16:35:00'),
(23, '242', 2, 4, 7, 'ffasfs', 'fasdfgfa', 1, 2, '2022-07-07 16:35:36', '2022-07-07 16:35:36'),
(24, '1117', 1, 1, 7, 'SFASFSA', 'dADadA', 1, 17, '2022-07-25 17:06:58', '2022-07-25 17:06:58'),
(25, '1118', 1, 1, 13, 'fsaf', 'sfafsa', 1, 18, '2022-07-26 13:47:00', '2022-07-26 13:47:00'),
(26, '124', 1, 2, 7, 'sdgsgsdg', 'sdasafsa', 1, 4, '2022-07-26 13:50:59', '2022-07-26 13:50:59'),
(27, '1120', 1, 1, 7, 'dgdg', 'asdgdag', 1, 20, '2022-07-28 12:05:33', '2022-07-28 12:05:33'),
(28, '1121', 1, 1, 7, 'afAFf', 'agdggdgaaasff', 1, 21, '2022-07-28 12:10:47', '2022-07-28 12:10:47'),
(29, '1122', 1, 1, 7, 'test', 'sfzfsfafsf', 1, 22, '2022-07-28 12:12:20', '2022-07-28 12:12:20'),
(30, '125', 1, 2, 7, 'gddgd', 'dgdsgsdgsd', 1, 5, '2022-07-28 12:36:49', '2022-07-28 12:36:49'),
(31, '126', 1, 2, 7, 'dgsdg', 'fsaafasf', 1, 6, '2022-07-28 12:39:22', '2022-07-28 12:39:22'),
(32, '1123', 1, 1, 7, 'fsasfsfas', 'ddada', 1, 23, '2022-07-28 12:41:36', '2022-07-28 12:41:36'),
(33, '136', 1, 3, 7, 'dadda', 'daad', 1, 6, '2022-07-28 13:13:39', '2022-07-28 13:13:39'),
(34, '137', 1, 3, 7, 'rqrqr', 'gsg', 1, 7, '2022-07-28 13:16:02', '2022-07-28 13:16:02'),
(35, '1124', 1, 1, 7, 'fsaf', 'dgsgs', 1, 24, '2022-07-28 16:19:16', '2022-07-28 16:19:16'),
(36, '1125', 1, 1, 7, 'sffsf', 'fsfsafafa', 1, 25, '2022-07-28 16:22:11', '2022-07-28 16:22:11'),
(37, '1126', 1, 1, 7, 'gdfg', 'dgsgsg', 1, 26, '2022-07-28 16:34:43', '2022-07-28 16:34:43'),
(38, '127', 1, 2, 7, 'dada', 'sfsfsf', 1, 7, '2022-07-28 16:36:40', '2022-07-28 16:36:40'),
(39, '128', 1, 2, 7, 'GGGERE', 'DFFSSD', 1, 8, '2022-07-28 16:38:54', '2022-07-28 16:38:54'),
(40, '138', 1, 3, 7, 'fgfs', 'aadddadadaad', 1, 8, '2022-07-28 16:42:08', '2022-07-28 16:42:08'),
(41, '1127', 1, 1, 7, 'dgdgd', 'fsafffsfasffsa', 1, 27, '2022-07-28 16:48:44', '2022-07-28 16:48:44'),
(42, '371', 3, 7, 7, '3fsf', 'fsfsfs', 1, 1, '2022-08-01 15:50:04', '2022-08-01 15:50:04'),
(43, '372', 3, 7, 7, '3fsf', 'fsfsfs', 1, 2, '2022-08-01 15:50:38', '2022-08-01 15:50:38'),
(44, '373', 3, 7, 7, '3fsf', 'fsfsfs', 1, 3, '2022-08-01 15:51:00', '2022-08-01 15:51:00'),
(45, '374', 3, 7, 7, 'test Photo', 'sfsfs', 1, 4, '2022-08-01 15:53:11', '2022-08-01 15:53:11'),
(46, '375', 3, 7, 7, 'sssf', 'fdfsdfgsdg', 1, 5, '2022-08-01 16:06:37', '2022-08-01 16:06:37'),
(47, '376', 3, 7, 7, 'eetewt', 'dggdgd', 1, 6, '2022-08-01 16:25:20', '2022-08-01 16:25:20'),
(48, '361', 3, 6, 7, 'test Film', 'adadad', 1, 1, '2022-08-01 16:34:47', '2022-08-01 16:34:47'),
(49, '362', 3, 6, 7, '22', 'sssfsfs', 1, 2, '2022-08-01 16:35:39', '2022-08-01 16:35:39'),
(50, '363', 3, 6, 13, 'sfsf', 'dgsggd', 1, 3, '2022-08-01 16:37:44', '2022-08-01 16:37:44'),
(51, '371', 3, 7, 13, 'qwqqe', 'daddda', 1, 1, '2022-08-01 17:06:47', '2022-08-01 17:06:47'),
(52, '482', 4, 8, 7, 'cxxzcxZ', 'SSFSF', 2, 2, '2022-08-01 17:08:08', '2022-08-01 17:08:08'),
(53, '243', 2, 4, 7, 'sssfssf', 'fgdfgfdg', 1, 3, '2022-08-02 11:55:27', '2022-08-02 11:55:27'),
(54, '244', 2, 4, 7, 'ffss', 'fsfsfs', 1, 4, '2022-08-02 12:08:05', '2022-08-02 12:08:05'),
(55, '241', 2, 4, 7, 'ssfsfss', 'ssffsf', 1, 1, '2022-08-02 12:11:06', '2022-08-02 12:11:06'),
(56, '242', 2, 4, 7, 'czxczxc', 'czczxc', 1, 2, '2022-08-02 12:12:04', '2022-08-02 12:12:04'),
(57, '253', 2, 5, 7, 'ssfsf', 'sfsfsffsf  sf sfs', 1, 3, '2022-08-02 12:12:37', '2022-08-02 12:12:37'),
(58, '9558', 9, 5, 7, 'translate', 'sffsf ffsdfsdf', 1, 58, '2022-08-02 12:39:31', '2022-08-02 12:39:31'),
(59, '1128', 1, 1, 7, 'bvxb', 'cxbxbcxc', 1, 28, '2022-08-02 12:48:36', '2022-08-02 12:48:36'),
(60, '469', 1, 1, 7, 'vxgd', 'fgdfgfdh', 1, 29, '2022-08-02 12:53:14', '2022-08-02 12:53:14'),
(61, '3d', 1, 1, 7, 'sfff', 'dgsdgsdgsdg', 2, 31, '2022-08-14 13:05:47', '2022-08-02 12:57:01'),
(62, '3e', 1, 1, 7, 'test document', 'ddfggsdgsgsddgsgsdg', 2, 32, '2022-08-09 12:19:35', '2022-08-09 14:13:03'),
(63, '3f', 1, 1, 15, 'fhfffhf', 'fhfhfhfddffdhf', 1, 34, '2022-08-30 17:14:46', '2022-08-30 17:14:46'),
(64, '40', 1, 2, 15, 'fhfffhf', 'fhfhfhfddffdhf', 1, 10, '2022-08-30 17:41:06', '2022-08-30 17:41:06'),
(65, '41', 1, 2, 15, 'fhfffhf', 'fhfhfhfddffdhf', 1, 11, '2022-08-30 17:44:56', '2022-08-30 17:44:56'),
(66, '42', 1, 2, 13, 'fhfffhf', 'fhfhfhfddffdhf', 1, 12, '2022-08-30 17:45:29', '2022-08-30 17:45:29'),
(67, '43', 1, 1, 13, 'fhfffhf', 'fhfhfhfddffdhf', 1, 35, '2022-08-30 17:47:09', '2022-08-30 17:47:09'),
(68, '44', 1, 1, 13, 'fhfffhf', 'fhfhfhfddffdhf', 1, 36, '2022-08-30 17:48:30', '2022-08-30 17:48:30'),
(69, '45', 1, 3, 13, 'cxcx', 'fsfsffsf', 1, 10, '2022-08-30 17:53:29', '2022-08-30 17:53:29'),
(70, '46', 2, 4, 13, 'test', 'fsfsffsf', 1, 6, '2022-08-30 17:59:27', '2022-08-30 17:59:27'),
(71, '47', 2, 4, 13, 'test', 'fsfsffsf', 1, 7, '2022-08-30 18:02:02', '2022-08-30 18:02:02'),
(72, '48', 2, 5, 13, 'test', 'fsfsffsf', 1, 4, '2022-08-30 18:04:16', '2022-08-30 18:04:16'),
(73, '49', 2, 5, 13, 'test', 'fsfsffsf', 1, 5, '2022-08-30 18:05:59', '2022-08-30 18:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `ordertranslate`
--

CREATE TABLE `ordertranslate` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `file` varchar(255) DEFAULT '',
  `from` int(11) NOT NULL DEFAULT 0,
  `to` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertranslate`
--

INSERT INTO `ordertranslate` (`id`, `title`, `code`, `file`, `from`, `to`) VALUES
(3, 'tmm', '7113', '2439_RDH.pdf', 1, 2),
(4, 'tit', '7114', '9457_RDH.pdf', 1, 4),
(5, '55', '7115', '7548_RDH.pdf', 1, 2),
(6, 'fgdfg', '56', '3651_RDH.pdf', 1, 1),
(7, 'dhfgdh', '597', '1038_RDH.pdf', 1, 1),
(8, 'trnslate', '598', '5046_IMG_20220105_121524.jpg', 2, 1),
(9, 'Dolore dolorum nostrh', '599', '3721_RDH.pdf', 1, 6),
(10, 'order translation mobile', '5910', '9165_', 1, 3),
(11, 'translate test', '5911', '9429_مواعيد العمل بقسم التقنية.docx', 5, 1),
(12, 'hhh', '5912', '4898_', 1, 1),
(13, 'new order', '5913', '3786_reveiw.txt', 1, 2),
(14, 'rtrtrt', '5914', '1576_screenshot_2022-02-15T13-19-18-473135.jpg', 6, 1),
(15, 'order now', '5915', '3195_IMG_20220224_124320.jpg', 2, 1),
(16, 'translate', '5916', '9147_pdf-test.pdf', 1, 2),
(17, 'sdgsdf', '1610', '1650405600order38.txt', 3, 3),
(18, 'sofa translateOrder', '33110', '1650405600order73.txt', 4, 1),
(19, 'fgfdg', '39810', '1650405600order46.txt', 1, 1),
(20, 'asdafaf', '20', '293_fawry-er-1q21-e-final1.pdf', 1, 2),
(21, 'tra', '5translate21', '9970_sample.pdf', 1, 2),
(22, 'dfdf', '5922', '9074_', 2, 4),
(23, 'mhgkhk', '5translate23', '4396_PG.docx', 1, 2),
(24, 'mhgkhk', '5translate24', '1036_fawaterk Contract Corporate-2.75+3.pdf', 1, 2),
(25, 'translate', '5925', '4256_الخصوصية.docx', 1, 6),
(26, 'new api', '5926', '3695_IMG_20220609_112156.jpg', 2, 5),
(27, 'new api', '5927', '4012_IMG_20220609_112156.jpg', 2, 5),
(28, 'print doc123', '5translate28', '2260_New Text Document.txt', 3, 1),
(29, 'new api', '5929', '2714_IMG_20220609_112156.jpg', 2, 5),
(30, 'new api', '5930', '3235_IMG_20220609_112156.jpg', 2, 5),
(31, 'order translate', '410482', '1654767579orderFileMobile100.jpg', 3, 2),
(32, 'order translate', '785482', '1654767595orderFileMobile92.jpg', 3, 2),
(33, 'order offf', '232482', '1654767662orderFileMobile89.jpg', 3, 2),
(34, 'order now', '559482', '1654768157orderFileMobile8.jpg', 3, 2),
(35, 'mostafa', '841482', '1654768214orderFileMobile1.jpg', 2, 1),
(36, 'yaaaaaas', '956482', '1654768368orderFileMobile8.jpg', 2, 1),
(37, 'mosssssss', '647482', '1654768443orderFileMobile89.jpg', 1, 3),
(38, 'yarb ne5ls', '172482', '1654768581orderFileMobile73.jpg', 4, 1),
(39, '32', '5939', '', 2, 3),
(40, '32', '40', '', 2, 3),
(41, 'rt5', '5translate41', '6768_AES (2).pdf', 5, 2),
(42, 'tretr', '5translate42', '', 2, 2),
(43, 'rewrew', '570489', '1655935200order46.pdf', 2, 5),
(44, 'sdsad', '903489', '1655935200order96.pdf', 2, 2),
(45, 'up translate', '977504', '1656599594orderFileMobile50.jpg', 1, 2),
(46, 'translate', '28110', '1656799200order70.pdf', 1, 2),
(47, 'transssslate aymen', '558498', '1656972000order60.png', 1, 2),
(48, 'rgrrgr', '578498', '1656972000order42.png', 1, 5),
(49, 'hjkjkg', '722498', '1656972000order4.png', 1, 1),
(50, 'wqewqe', '601501', '1656972000order60.pdf', 2, 3),
(51, 'kjhlku last one', '106498', '1656972000order23.png', 1, 3),
(52, 'kjhlku last one', '226498', '1656972000order23.png', 1, 1),
(53, 'kjhlku last one', '258498', '1656972000order55.docx', 1, 4),
(54, 'kjhlku last one', '892498', '1656972000order55.docx', 1, 1),
(55, 'last pepo', '149526', '1657103677orderFileMobile80.jpg', 2, 4),
(56, 'الروية ', '997529', '1657277424orderFileMobile68.jpg', 1, 2),
(57, 'retret4', '704514', '1658268000order28.pdf', 2, 3),
(58, 'translate', '9558', 'translate/cf4AEywWTVnIc1uig8xCVezcm3L6ltPLHBTUEOgb.pdf', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordertype`
--

CREATE TABLE `ordertype` (
  `id` int(11) NOT NULL,
  `orderTypeName` varchar(255) NOT NULL,
  `orderTypeNameAr` varchar(255) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `tableName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertype`
--

INSERT INTO `ordertype` (`id`, `orderTypeName`, `orderTypeNameAr`, `categoryId`, `tableName`) VALUES
(1, 'file', 'ملف', 1, 'orderDocument'),
(2, 'map', 'خرائط', 1, 'orderMap'),
(3, 'picture', 'صوره', 1, 'orderPicture'),
(4, 'image', 'صوره', 2, 'orderImage'),
(5, 'video', 'فيديو', 2, 'orderVideo'),
(6, 'film', 'فيلم', 3, 'orderFilm'),
(7, 'photo', 'مصور صور', 3, 'orderPhoto'),
(8, 'rentcamera', 'استئجار كاميرا', 4, 'orderRentCamera'),
(9, 'translate', 'ترجمة', 5, 'orderTranslate'),
(10, 'delivery', 'توصيل', 6, 'orderDelivery'),
(11, 'gifts', 'هدايا', 7, 'orderGift'),
(12, 'Annual reports', 'التقارير السنوية', 8, 'orderAnnualReports'),
(13, 'business cards', 'بطاقات العمل', 8, 'orderBusinessCards'),
(14, 'stamp', 'ختم', 8, 'orderStamp');

-- --------------------------------------------------------

--
-- Table structure for table `ordervideo`
--

CREATE TABLE `ordervideo` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `file` varchar(255) DEFAULT '',
  `images` varchar(255) NOT NULL DEFAULT ' ',
  `urlLink` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordervideo`
--

INSERT INTO `ordervideo` (`id`, `code`, `file`, `images`, `urlLink`) VALUES
(1, '241', 'video/eMEXxhxa3oJpY54TAgi5q3yOwNBM5gjS2zsO6qGv.mp4', ' ', ''),
(2, '242', 'video/hkZ9rLcNZabB5ZjqHhRRrGOI6766LrchYuBkLd3t.mp4', 'video/images/YivjrUv86xNDYfUHgonfIuN2g06o5t2SCP9adr3l.jpg', ''),
(3, '253', 'video/uEwaXUhTuBAXNW4RcI5H3GWico0kNwYgGWVcnWzp.mp4', 'video/images/4WfHtQRCxg9iyHfbT6FyGuvVscCGTlsr5MPiUesT.jpg', ''),
(4, '48', 'video/6s8epYpVgvT3yqOlAtDroquYqVGuIf0IKsi0sMuL.webp', 'video/images/gQvKEMGbQEZdrIG4fhEePIAgGQkITsFWg19HbMFy.jpg', ''),
(5, '49', 'video/guTdfZ39wnb58MqjNQfeRNkbuk9KEclzWhjHh06o.jpg', 'video/images/Twrfw9P8dHx5jTqMlwOk2Jaau23HImLzF50NwJwm.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `paperbinding`
--

CREATE TABLE `paperbinding` (
  `id` int(11) NOT NULL,
  `paperBindingName` varchar(255) NOT NULL,
  `noOfPapers` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `forSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paperbinding`
--

INSERT INTO `paperbinding` (`id`, `paperBindingName`, `noOfPapers`, `image`, `forSize`) VALUES
(1, 'No Binding', 'No Binding', 'NoBinding.PNG', 1),
(2, 'Tube case', '1 to 5', 'TubeCase1-5.png', 1),
(3, 'No Binding', 'No Binding', 'NoBinding.PNG', 2),
(4, 'Tube case', '1 to 5', 'TubeCase1-5.png', 2),
(5, 'No Binding', 'No Binding', 'NoBinding.PNG', 3),
(6, 'Tube case', '1 to 5', 'TubeCase1-5.png', 3),
(7, 'No Binding', 'No Binding', 'NoBinding.PNG', 4),
(8, 'Corner stapled', '2 to 100', 'CornerStapled2-100.png', 4),
(9, 'Tube case', '1 to 5', 'TubeCase1-5.png', 4),
(10, 'No Binding', 'No Binding', 'NoBinding.PNG', 5),
(11, 'Plastic Sleeves', '1 to 50', 'PlasticSleeves1-50.png', 5),
(12, 'Corner stapled', '2 to 100', 'CornerStapled2-100.png', 5),
(13, 'Side stapled', '2 to 100', 'SideStapled2-100.png', 5),
(14, 'Wire', '0', '', 5),
(15, 'Spiral', '10 to 200', 'Spiral10-200.png', 5),
(16, 'Stitched Binding', '100 to 600', 'StichedBinding100-600.png', 5),
(17, 'Velo', '15 to 200', 'Velo15-200.png', 5),
(18, 'Strip', '10 to 100', 'Strip10-100.png', 5),
(19, '2-Ring', '1 to 500', '2-Ring1-500.png', 5),
(20, '3-Ring', '1 to 600', '3-Ring1-600.png', 5),
(21, 'No Binding', 'No Binding', 'NoBinding.PNG', 6),
(22, 'Plastic Sleeves', '1 to 50', 'PlasticSleeves1-50.png', 6),
(23, 'Corner stapled', '2 to 100', 'CornerStapled2-100.png', 6),
(24, 'Side stapled', '2 to 100', 'SideStapled2-100.png', 6),
(25, 'Spiral', '10 to 200', 'Spiral10-200.png', 6),
(26, 'Stitched Binding', '100 to 600', 'StichedBinding100-600.png', 6),
(27, 'Velo', '0', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `papersize`
--

CREATE TABLE `papersize` (
  `id` int(11) NOT NULL,
  `paperSizeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `papersize`
--

INSERT INTO `papersize` (`id`, `paperSizeName`) VALUES
(1, 'A0'),
(2, 'A1'),
(3, 'A2'),
(4, 'A3'),
(5, 'A4'),
(6, 'A5');

-- --------------------------------------------------------

--
-- Table structure for table `papertype`
--

CREATE TABLE `papertype` (
  `id` int(11) NOT NULL,
  `paperTypeName` varchar(255) NOT NULL,
  `forSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `papertype`
--

INSERT INTO `papertype` (`id`, `paperTypeName`, `forSize`) VALUES
(1, 'Normal', 1),
(2, 'White film\r\n', 1),
(3, 'Normal', 2),
(4, 'White film', 2),
(5, 'Normal', 3),
(6, 'White film', 3),
(7, 'Normal', 4),
(8, 'Glossy', 4),
(9, 'Sticker', 4),
(10, 'Thick', 4),
(11, 'Normal', 5),
(12, 'Glossy', 5),
(13, 'Sticker', 5),
(14, 'Thick', 5),
(15, 'Normal', 6),
(16, 'Glossy', 6),
(17, 'Thick', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`, `expires_at`) VALUES
(11, 'App\\Models\\sp', 413, 'ptoolz-token', 'fc43c34579e03de76f114c046b9f100f352c7535c91b60c071ce3affdbad6b2a', '[\"*\"]', NULL, '2022-08-28 11:27:59', '2022-08-28 11:27:59', NULL),
(12, 'App\\Models\\sp', 413, 'api-token', 'c788efd1ffb76e87fb9b280445f38943a275df9d1a75a93fbf7608278393e97e', '[\"*\"]', '2022-08-28 11:42:37', '2022-08-28 11:33:43', '2022-08-28 11:42:37', NULL),
(13, 'App\\Models\\sp', 413, 'api-token', '7083b237733e2b39740c9198c44e4d4391c61c908256f4b8c86c23468e325a1c', '[\"*\"]', NULL, '2022-08-28 11:42:58', '2022-08-28 11:42:58', NULL),
(14, 'App\\Models\\sp', 413, 'api-token', '79aff6f94ae5007fa9ea39facd61b5e81eae74612c233d428595a3cefaff4385', '[\"*\"]', NULL, '2022-08-28 11:50:07', '2022-08-28 11:50:07', NULL),
(15, 'App\\Models\\sp', 413, 'api-token', 'f7cae921f1399d55f17b6ef1e6334b4688aa255cfabfcdf12b621c3214efd06a', '[\"*\"]', NULL, '2022-08-28 12:10:12', '2022-08-28 12:10:12', NULL),
(16, 'App\\Models\\sp', 413, 'api-token', '22d2a7663c59bed8be41af6e0140add81e06b1092e392b1c679bda72f1269202', '[\"*\"]', NULL, '2022-08-28 12:10:17', '2022-08-28 12:10:17', NULL),
(17, 'App\\Models\\sp', 413, 'api-token', '1424bb58e7451dc7843a64a8da6197725afa63c5dcae3add6f694593c39163d6', '[\"*\"]', NULL, '2022-08-28 12:44:19', '2022-08-28 12:44:19', NULL),
(18, 'App\\Models\\sp', 413, 'api-token', 'ddb8d203f31985212477ef879f396174c5d157cbf7380a795f60935b06f10559', '[\"*\"]', NULL, '2022-08-28 12:46:40', '2022-08-28 12:46:40', NULL),
(19, 'App\\Models\\sp', 413, 'api-token', 'b1f48745b655c5ea1596cb31d8cd4ec3eb9257a5e5a86619e716bc4296d6eeb6', '[\"*\"]', NULL, '2022-08-28 12:46:47', '2022-08-28 12:46:47', NULL),
(20, 'App\\Models\\sp', 413, 'api-token', '8378ac657889933241e3985a177d519719565fb397eada573d6ca39ad85ef8f2', '[\"*\"]', NULL, '2022-08-28 13:05:48', '2022-08-28 13:05:48', NULL),
(21, 'App\\Models\\sp', 413, 'api-token', '97e6f2c9151db0c78d5f71e5b19ea094fafdbd89a93bfccfa4844b0c2dc14a4f', '[\"*\"]', NULL, '2022-08-28 13:06:44', '2022-08-28 13:06:44', NULL),
(22, 'App\\Models\\sp', 413, 'api-token', '34b88a6e5255774d2db2a81baca50aecabd32b136796aa1dfab987915cbb4cba', '[\"*\"]', NULL, '2022-08-28 13:11:01', '2022-08-28 13:11:01', NULL),
(23, 'App\\Models\\sp', 413, 'api-token', 'c959ca8e3d4ce34778c66ea259d251af3e0acf4e07070a861e656917ce5a7d0a', '[\"*\"]', NULL, '2022-08-28 13:12:05', '2022-08-28 13:12:05', NULL),
(24, 'App\\Models\\sp', 413, 'api-token', '78ac3457050ddfcf3395a9c4cac57adecce7b424dc2c351c9a59966ed582a386', '[\"*\"]', NULL, '2022-08-28 13:12:21', '2022-08-28 13:12:21', NULL),
(25, 'App\\Models\\sp', 413, 'api-token', '3250e720c4b7ee596c5f11446d6ebe67458c69d58688d2a11100045a7f6d3931', '[\"*\"]', NULL, '2022-08-28 13:15:05', '2022-08-28 13:15:05', NULL),
(26, 'App\\Models\\customer', 7, 'api-token', '88c0b887b0e07075e3ae457fbedf3f837769ebd559388300562ccda78db99e39', '[\"*\"]', NULL, '2022-08-28 13:16:50', '2022-08-28 13:16:50', NULL),
(27, 'App\\Models\\sp', 413, 'api-token', 'c66529f81bb116c0c81f9f106ad89514c019668e237db46b951fa2c892719cf3', '[\"*\"]', NULL, '2022-08-28 14:13:31', '2022-08-28 14:13:31', NULL),
(28, 'App\\Models\\customer', 7, 'api-token', 'a9daa2c205c84ec3077b768a3559764f4fbf6f0d05f70b8296c64b63e5699d0f', '[\"*\"]', NULL, '2022-08-28 14:14:50', '2022-08-28 14:14:50', NULL),
(29, 'App\\Models\\customer', 7, 'api-token', 'b2fb99736dc907ae204e6e4fb45c996bc14d166016586c21d2fda82aa34505fc', '[\"*\"]', NULL, '2022-08-28 14:15:21', '2022-08-28 14:15:21', NULL),
(30, 'App\\Models\\customer', 7, 'api-token', '8fd1c683299c5a2d6708550baf1651b19852e926972a8c2abb2436a5c1682631', '[\"*\"]', NULL, '2022-08-28 14:16:34', '2022-08-28 14:16:34', NULL),
(31, 'App\\Models\\customer', 7, 'api-token', '6f4ea4626ec6f569cf3578068272c46123aa8ea57c957f75b2c4568ba7fe42dc', '[\"*\"]', NULL, '2022-08-28 14:17:23', '2022-08-28 14:17:23', NULL),
(32, 'App\\Models\\customer', 7, 'api-token', '1b44e956540bbaa93a3406ef294243ca033c300830c1edc3f47ad063a7273c72', '[\"*\"]', NULL, '2022-08-28 14:17:52', '2022-08-28 14:17:52', NULL),
(33, 'App\\Models\\customer', 7, 'api-token', '930ca756f7d003927783f78d6a5f7b3ed73e61e0ead85255b275eeb4f707ba68', '[\"*\"]', NULL, '2022-08-28 14:18:48', '2022-08-28 14:18:48', NULL),
(34, 'App\\Models\\customer', 7, 'api-token', '7a78f4544175f733e8cb7d581a5c0225e10f41930f8bcf9c6d3bca176654b7a2', '[\"*\"]', NULL, '2022-08-28 14:19:37', '2022-08-28 14:19:37', NULL),
(35, 'App\\Models\\customer', 7, 'api-token', '261bd37d7fb2246dbface81f2dee4f3dd68aec9181db112956739b50e3bf6cba', '[\"*\"]', NULL, '2022-08-28 14:20:26', '2022-08-28 14:20:26', NULL),
(36, 'App\\Models\\customer', 7, 'api-token', 'b75dc7f84f21ab4a2186bfb6314f88beca3f15124e8694e4402effeae2008c4b', '[\"*\"]', NULL, '2022-08-28 14:24:48', '2022-08-28 14:24:48', NULL),
(37, 'App\\Models\\sp', 413, 'api-token', '0fec1cf33bbf43b9d4403b6e856cf3502173d4810f51d443f71a29ebda4966d8', '[\"*\"]', NULL, '2022-08-29 10:05:54', '2022-08-29 10:05:54', NULL),
(38, 'App\\Models\\sp', 413, 'api-token', 'ddf372512f94a020055d78e0174b2f55b90df1ffbcb75568db1ebb83f5f099b3', '[\"*\"]', NULL, '2022-08-29 10:06:51', '2022-08-29 10:06:51', NULL),
(39, 'App\\Models\\customer', 7, 'api-token', '4b87c42a199912947fc465ac79d7065670adbd40713e5c50947ebd9d98f77e84', '[\"*\"]', NULL, '2022-08-29 10:27:54', '2022-08-29 10:27:54', NULL),
(40, 'App\\Models\\customer', 7, 'api-token', 'e72a170465ad869275d4fcbdb1f61345407012ee902024111545ca5a6d3bf017', '[\"*\"]', NULL, '2022-08-29 10:29:53', '2022-08-29 10:29:53', NULL),
(41, 'App\\Models\\sp', 413, 'api-token', 'b8196ed61d138be344371bd8fe21001f1fc8bdf91b39a9a1ead3e48d77cbd70c', '[\"*\"]', NULL, '2022-08-29 10:37:51', '2022-08-29 10:37:51', NULL),
(42, 'App\\Models\\sp', 413, 'api-token', '65712af73bc53f5675491d6a1a941ac6000c8fbf993b40173ed6045fe69d6782', '[\"*\"]', NULL, '2022-08-29 10:37:53', '2022-08-29 10:37:53', NULL),
(43, 'App\\Models\\sp', 414, 'api-token', '8e6fd9ba94d10241e53cdb59842c83d319c15e47cfc9105439c169dd04019acc', '[\"*\"]', NULL, '2022-08-29 11:06:35', '2022-08-29 11:06:35', NULL),
(44, 'App\\Models\\sp', 415, 'api-token', 'e32c281ed36268bd3aba0e2b228ba55b5931fca503bbc775d022479538f71e10', '[\"*\"]', NULL, '2022-08-29 11:07:59', '2022-08-29 11:07:59', NULL),
(45, 'App\\Models\\sp', 416, 'api-token', '1c0d09138f008d3c9925f6fa61a3a901ac42637e093d1de60bfbfa22103b7451', '[\"*\"]', NULL, '2022-08-29 11:08:22', '2022-08-29 11:08:22', NULL),
(46, 'App\\Models\\sp', 417, 'api-token', 'f679303b6b1fee06f00fd01cf097053059a09debeab8fd3ddce5ce929321c8da', '[\"*\"]', NULL, '2022-08-29 11:13:36', '2022-08-29 11:13:36', NULL),
(47, 'App\\Models\\sp', 418, 'api-token', '5ed1085fed5cd8227f90f22b00ec91d1901888f51e2fd8543bfca8eda8f015df', '[\"*\"]', NULL, '2022-08-29 11:15:12', '2022-08-29 11:15:12', NULL),
(48, 'App\\Models\\customer', 13, 'api-token', 'b73ff567919a5d49ed2cf249f2b77dd62612ce1c851a2ba845175c13dfea8257', '[\"*\"]', NULL, '2022-08-29 11:16:37', '2022-08-29 11:16:37', NULL),
(49, 'App\\Models\\customer', 14, 'api-token', '5eabd145427203fbc0d54352a8c53b5be7806e2a4adfe21e7d7279aea7387495', '[\"*\"]', NULL, '2022-08-29 11:28:17', '2022-08-29 11:28:17', NULL),
(50, 'App\\Models\\sp', 419, 'api-token', '1f1422fcbb7b941182b16e1f1f29f3bdcc90ffabd0097ab4ad0d4eade185a0aa', '[\"*\"]', NULL, '2022-08-29 11:28:33', '2022-08-29 11:28:33', NULL),
(51, 'App\\Models\\customer', 15, 'api-token', '6677d3b1b72155ab4506705d14e1d8c2915fd38ccf4e1922fb58d3e17a4fe30d', '[\"*\"]', NULL, '2022-08-29 16:20:17', '2022-08-29 16:20:17', NULL),
(52, 'App\\Models\\sp', 420, 'api-token', '6042de0baa7a6573e0f57280f3f9a7a726aaa37632e5c21a816db610b49c3021', '[\"*\"]', NULL, '2022-08-29 16:23:37', '2022-08-29 16:23:37', NULL),
(53, 'App\\Models\\customer', 16, 'api-token', 'd74210a297d5c15a6935d5a395322e0bb4ee2b7d0028744cb7c3536ac3e573e4', '[\"*\"]', NULL, '2022-08-29 16:59:38', '2022-08-29 16:59:38', NULL),
(54, 'App\\Models\\customer', 15, 'api-token', '124ebec2128c1438495515841b3cad61cb4f11b433cf783d14df121957cc786c', '[\"*\"]', NULL, '2022-08-29 17:42:43', '2022-08-29 17:42:43', NULL),
(55, 'App\\Models\\customer', 15, 'api-token', 'be08525a352362e9339d073eeff06cbc2e57f8a97b0d03656b15025969a2dca3', '[\"*\"]', NULL, '2022-08-29 18:04:05', '2022-08-29 18:04:05', NULL),
(56, 'App\\Models\\customer', 15, 'api-token', '5dc662c365fee22a2f6ab00fa8e714949587543d7a0b98720d399e985c385c54', '[\"*\"]', NULL, '2022-08-29 18:08:36', '2022-08-29 18:08:36', NULL),
(57, 'App\\Models\\customer', 15, 'api-token', '1eed56f4e39a3d4aacee33c304e13fc758dab24f2f9fa54dd300b97ab1d8bc65', '[\"*\"]', NULL, '2022-08-29 18:43:41', '2022-08-29 18:43:41', NULL),
(58, 'App\\Models\\customer', 15, 'api-token', 'fd98592badef6bf454b456aa66e80dcd73109ed96c46ad00ef6c3d6ad7cbab8e', '[\"*\"]', NULL, '2022-08-29 18:44:25', '2022-08-29 18:44:25', NULL),
(59, 'App\\Models\\customer', 15, 'api-token', '28d43fc8e68363c078400cd8d074ab97ac9f9dd9a8ce2bac4c8e82012a0d8e6d', '[\"*\"]', NULL, '2022-08-29 18:59:14', '2022-08-29 18:59:14', NULL),
(60, 'App\\Models\\customer', 17, 'api-token', 'db95eaef9f61ff22e8b509bded61bfa640f54974f1bdb5ff0abe45a248007e05', '[\"*\"]', NULL, '2022-08-29 18:59:38', '2022-08-29 18:59:38', NULL),
(61, 'App\\Models\\customer', 15, 'api-token', '16ebe773d00b9149ec99483fc38791daba324319703121cc575659b35f015e49', '[\"*\"]', NULL, '2022-08-29 18:59:50', '2022-08-29 18:59:50', NULL),
(62, 'App\\Models\\customer', 15, 'api-token', '65f55ce8d1112ca500c2c1677181590c8e83894c834bc58be7307515c8448c24', '[\"*\"]', NULL, '2022-08-29 18:59:57', '2022-08-29 18:59:57', NULL),
(63, 'App\\Models\\customer', 15, 'api-token', 'd8283b6a962e3cc10e5ca719f4f2473a2b65e230206ec7667fe084e914623e1b', '[\"*\"]', NULL, '2022-08-29 19:07:13', '2022-08-29 19:07:13', NULL),
(64, 'App\\Models\\customer', 15, 'api-token', '9ae353431542c42b0c22ec1ce71ce74f183e31b2488f9ccefb9ed2622b12aaac', '[\"*\"]', NULL, '2022-08-29 19:08:44', '2022-08-29 19:08:44', NULL),
(65, 'App\\Models\\customer', 15, 'api-token', '76fb53cadba097ee047e6157d1b2ffbce13df5b9785ecc7e69a5444a2f3e9eb2', '[\"*\"]', NULL, '2022-08-29 19:28:59', '2022-08-29 19:28:59', NULL),
(66, 'App\\Models\\sp', 421, 'api-token', '0b53bf8e7f8b7189411646ec8498f97ac284db539b77f43f657432e307447af7', '[\"*\"]', NULL, '2022-08-30 10:25:13', '2022-08-30 10:25:13', NULL),
(67, 'App\\Models\\customer', 15, 'api-token', '8e78b478f47328d1e3546292215e463addf3f1ec5460e84ad429149ac1f59a56', '[\"*\"]', NULL, '2022-08-30 10:25:49', '2022-08-30 10:25:49', NULL),
(68, 'App\\Models\\customer', 15, 'api-token', '50e0f3f0e1ece9213d1c6d578e2cfd02981ea95f0b4189340a6e90494ee0c12f', '[\"*\"]', NULL, '2022-08-30 10:29:15', '2022-08-30 10:29:15', NULL),
(69, 'App\\Models\\customer', 7, 'api-token', '874c7bcef3688e3136ae4179ab42908c79b57c393be5ecba4f975c0425d3dd28', '[\"*\"]', '2022-08-30 11:38:54', '2022-08-30 11:34:17', '2022-08-30 11:38:54', NULL),
(70, 'App\\Models\\customer', 7, 'api-token', 'e8ae6a20f5623620d2b96f04a320c04310d761d3dcb648d1227ad3be16c1978d', '[\"*\"]', NULL, '2022-08-30 11:35:51', '2022-08-30 11:35:51', NULL),
(71, 'App\\Models\\customer', 13, 'api-token', 'dec399de32d6aed0f3f603c63ea1620fb8125094a800ed8bb54b74fe94fc2f36', '[\"*\"]', NULL, '2022-08-30 11:44:38', '2022-08-30 11:44:38', NULL),
(72, 'App\\Models\\customer', 13, 'api-token', 'c2b1cf3f04e9644922f7572da7fb0ea231e97ae4bb55667150d4446a2051e3b0', '[\"*\"]', NULL, '2022-08-30 11:49:14', '2022-08-30 11:49:14', NULL),
(73, 'App\\Models\\customer', 13, 'api-token', 'e4d2942f9e426c340f3c542aa1e6046943b49be8c9703b4188c3413fcde293f6', '[\"*\"]', NULL, '2022-08-30 11:49:26', '2022-08-30 11:49:26', NULL),
(74, 'App\\Models\\customer', 13, 'api-token', 'f1d8b1b689de0da639d9595d7a0236373b9bf11ef8c7ad4acdd328f5c873440f', '[\"*\"]', '2022-08-31 16:13:09', '2022-08-30 11:51:00', '2022-08-31 16:13:09', NULL),
(75, 'App\\Models\\customer', 13, 'api-token', 'bd52d41be497dcdaef1e8d067758317a82b0c73f8871a5f61e901454248ce348', '[\"*\"]', NULL, '2022-08-30 11:51:30', '2022-08-30 11:51:30', NULL),
(76, 'App\\Models\\sp', 413, 'api-token', 'a230d230291e44a184daed5b959143032feac6304b715986624685525871a86b', '[\"*\"]', NULL, '2022-08-30 12:22:52', '2022-08-30 12:22:52', NULL),
(77, 'App\\Models\\customer', 15, 'api-token', '39bf0711641279d6a65ed6bf7f3b6866ab860675facbc585601287c6d4e53555', '[\"*\"]', NULL, '2022-08-30 14:01:16', '2022-08-30 14:01:16', NULL),
(78, 'App\\Models\\customer', 15, 'api-token', 'c451a275832a03d1d1cbfd5a9d2750d25605119085018fa7de14aedebd09fb87', '[\"*\"]', NULL, '2022-08-30 14:05:39', '2022-08-30 14:05:39', NULL),
(79, 'App\\Models\\sp', 413, 'api-token', '6c7a2ab6b128cec0cfce65cb1113deeb5b4c33304077e65ba48c04153b66dd40', '[\"*\"]', NULL, '2022-08-30 15:43:02', '2022-08-30 15:43:02', NULL),
(80, 'App\\Models\\sp', 413, 'api-token', '75826676ac69cfbaf0be5e678351471189ab84f42296f0a6a024da4715f7a38b', '[\"*\"]', NULL, '2022-08-30 15:52:16', '2022-08-30 15:52:16', NULL),
(81, 'App\\Models\\sp', 413, 'api-token', '29a5802a8860ff58e80e4779399894814dbb00de1e29e0f9b1fdd37719087b86', '[\"*\"]', NULL, '2022-08-30 15:52:47', '2022-08-30 15:52:47', NULL),
(82, 'App\\Models\\sp', 413, 'api-token', 'd8058342c7d9157528264d7a0d38ecd6ea64938ba1aea47d511916e8b485aae1', '[\"*\"]', NULL, '2022-08-30 15:54:13', '2022-08-30 15:54:13', NULL),
(83, 'App\\Models\\sp', 413, 'api-token', '965cc3efd3f20706bd0a2a102a74f3eb15fa816f53bd8da5633d961b396f9251', '[\"*\"]', NULL, '2022-08-30 15:55:56', '2022-08-30 15:55:56', NULL),
(84, 'App\\Models\\sp', 413, 'api-token', 'fed58624126004aeccc109213f160988cfd1b24bf26337e0f19bd98eea125364', '[\"*\"]', NULL, '2022-08-30 15:57:31', '2022-08-30 15:57:31', NULL),
(85, 'App\\Models\\customer', 15, 'api-token', '5b82e0132f6e8340ba28b3e36e6511f897c3522b57979be0b5cfcd60aaf3e843', '[\"*\"]', NULL, '2022-08-30 15:58:13', '2022-08-30 15:58:13', NULL),
(86, 'App\\Models\\customer', 15, 'api-token', '7964669aca05e4ce617e16eafe10ac0526f02b24ad5bae1abc095efa3ea99929', '[\"*\"]', NULL, '2022-08-30 16:39:00', '2022-08-30 16:39:00', NULL),
(87, 'App\\Models\\customer', 15, 'api-token', '0a6cd60a0e5bec4f90e5f858f6408e0aeb3d6ee8660abb00ae7a601b1deadad6', '[\"*\"]', '2022-08-30 19:33:25', '2022-08-30 17:06:51', '2022-08-30 19:33:25', NULL),
(88, 'App\\Models\\customer', 15, 'api-token', '33df0f953c21da979ef953f589942d5b136727d1f1f77839e5e2d8addd0b3b6b', '[\"*\"]', '2022-08-30 20:32:19', '2022-08-30 17:28:28', '2022-08-30 20:32:19', NULL),
(89, 'App\\Models\\customer', 7, 'api-token', '8f237b837c517c43671cf36edf01501085efb5ca3fb9ca6bbb51a776c22abea0', '[\"*\"]', '2022-08-30 19:33:53', '2022-08-30 19:33:45', '2022-08-30 19:33:53', NULL),
(90, 'App\\Models\\customer', 15, 'api-token', '1b8109b098887bdb3264c71a8165a9032602f3b95b5142aeb449567b3947203c', '[\"*\"]', '2022-08-30 19:44:38', '2022-08-30 19:44:25', '2022-08-30 19:44:38', NULL),
(91, 'App\\Models\\customer', 7, 'api-token', '47f8f9d6756be63388ccb4d420ef0afc64aefa321200fca4f8fb314e947b5902', '[\"*\"]', '2022-08-30 19:49:21', '2022-08-30 19:48:58', '2022-08-30 19:49:21', NULL),
(92, 'App\\Models\\customer', 13, 'api-token', 'de7e9a124f9398e673e9aeee1b7c6d6c8f8e18ba068c65f6f4433e138d962c43', '[\"*\"]', '2022-08-30 19:51:55', '2022-08-30 19:51:49', '2022-08-30 19:51:55', NULL),
(93, 'App\\Models\\customer', 7, 'api-token', '2567bb7b7391179f59f57720d080b1e3d3637debb30a064f82f421136b9e9a2d', '[\"*\"]', NULL, '2022-08-30 20:01:11', '2022-08-30 20:01:11', NULL),
(94, 'App\\Models\\customer', 15, 'api-token', 'b92a52332fb6f525d66c5aa0812dd71b25afce82af0c1cd0f5c7ebae5e40f617', '[\"*\"]', NULL, '2022-08-30 20:04:04', '2022-08-30 20:04:04', NULL),
(95, 'App\\Models\\customer', 15, 'api-token', '80b380eba20e65662fd16ca1ecc075541bc24180ca2ca430dff927bebd655e3f', '[\"*\"]', NULL, '2022-08-30 20:05:14', '2022-08-30 20:05:14', NULL),
(96, 'App\\Models\\customer', 7, 'api-token', '52c85b98567a26c297a6b9dd872f0db3069fa23aa7c6522dd9c9c14669c0934a', '[\"*\"]', NULL, '2022-08-30 20:07:05', '2022-08-30 20:07:05', NULL),
(97, 'App\\Models\\customer', 7, 'api-token', 'd11a417acdf1ce380d23ede55c0b9c22666dc1029bb0863156fa01683daf85ea', '[\"*\"]', '2022-08-30 21:18:01', '2022-08-30 20:07:40', '2022-08-30 21:18:01', NULL),
(98, 'App\\Models\\customer', 15, 'api-token', 'dad63d524dc360caff2ee4cf4d30c081767f5937683d60518ea505a98fcba34a', '[\"*\"]', '2022-08-31 12:02:08', '2022-08-30 20:32:51', '2022-08-31 12:02:08', NULL),
(99, 'App\\Models\\customer', 13, 'api-token', '827f29813d4a097a839d6b906eb8fe483ed9e6badaf533d546a7a40c65132e6a', '[\"*\"]', '2022-09-01 12:16:06', '2022-08-31 11:12:17', '2022-09-01 12:16:06', NULL),
(100, 'App\\Models\\customer', 13, 'api-token', 'aa546b3ec04bc0e93b63e75e63c6f9c4235a656c5574da605760ffab39ce2c32', '[\"*\"]', '2022-08-31 12:04:50', '2022-08-31 11:33:58', '2022-08-31 12:04:50', NULL),
(101, 'App\\Models\\customer', 7, 'api-token', '91bf4e1703c7809f7fa2a5bbfd8442e14e681c84a05d975700f2b402057d20ef', '[\"*\"]', '2022-08-31 12:03:33', '2022-08-31 12:02:22', '2022-08-31 12:03:33', NULL),
(102, 'App\\Models\\customer', 13, 'api-token', 'd0e14eb785e7937bbc4cded6481cc73ae482621f9932c7f3c230c13d0d25a37f', '[\"*\"]', '2022-08-31 14:10:09', '2022-08-31 12:45:16', '2022-08-31 14:10:09', NULL),
(103, 'App\\Models\\customer', 13, 'api-token', 'cc619af99bd3bec24b6f7b44bb119ee9a88d0874b3fd14340de4bfff653c2b0e', '[\"*\"]', '2022-09-01 12:13:16', '2022-08-31 14:26:46', '2022-09-01 12:13:16', NULL),
(104, 'App\\Models\\customer', 13, 'api-token', '44445ed9f06e582eb208fb3087197c42ef5aaa7aa281640ec89f89ee4123edc6', '[\"*\"]', '2022-09-01 12:13:17', '2022-08-31 14:31:40', '2022-09-01 12:13:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `picturesize`
--

CREATE TABLE `picturesize` (
  `id` int(11) NOT NULL,
  `picuterSizeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `picturesize`
--

INSERT INTO `picturesize` (`id`, `picuterSizeName`) VALUES
(1, '3x5'),
(2, '4x6'),
(3, '5x7'),
(4, '8x8'),
(5, '8x10'),
(6, '8.5x11'),
(7, '9x16'),
(8, '11x14'),
(9, '11x16');

-- --------------------------------------------------------

--
-- Table structure for table `preview`
--

CREATE TABLE `preview` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `orderId` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `file` varchar(300) NOT NULL,
  `fileCopy` varchar(400) DEFAULT '',
  `userAccountId` int(11) NOT NULL,
  `quotationId` int(11) NOT NULL,
  `accept` int(11) DEFAULT 0,
  `comment` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preview`
--

INSERT INTO `preview` (`id`, `description`, `orderId`, `type`, `status`, `dateTime`, `file`, `fileCopy`, `userAccountId`, `quotationId`, `accept`, `comment`) VALUES
(1, 'ggsdg', 61, 1, 1, '2022-08-17 14:55:35', 'IEA27AgAEtJB7mNAOJA5hmDUcteOLCH8wY8oQe6w.pdf', '', 413, 19, 2, 'sfsff'),
(3, 'fsfaf', 61, 2, 1, '2022-08-17 15:12:52', 'C:\\xampp\\tmp\\phpA516.tmp', 'previews/ZACjSRPoeiojNrLxqdAbtJ68yt91UPLj3WoLcQby.txt', 413, 19, 2, 'daada'),
(4, 'sfsf', 61, 1, 1, '2022-08-17 15:14:15', 'previews/PBAwS4b5uQkvyG7IfS4ShJVSvAEf2LDIahcoCekW.pdf', '', 413, 19, 2, 'fdsfdsf'),
(5, 'dasdsad', 61, 1, 1, '2022-08-18 14:09:24', 'previews/iepI5vQz12skdHC49euAUlAr8r4RWxq0XCYklI60.pdf', '', 413, 19, 2, 'dadadda'),
(6, 'sfsfs', 61, 2, 1, '2022-08-18 14:41:33', 'previews/G3aZdv883LuFe9SgHVf1TQNgHEw5GOiAcRHwsiX4.pdf', 'previews/fLXbTx02vlWeULPcvtQ4bIXmAwqHOuBlg2bSlbxM.pdf', 413, 19, 2, 'zczczc');

-- --------------------------------------------------------

--
-- Table structure for table `printinglayout`
--

CREATE TABLE `printinglayout` (
  `id` int(11) NOT NULL,
  `paperLayoutName` varchar(255) NOT NULL,
  `forSize` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT ''' '''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `printinglayout`
--

INSERT INTO `printinglayout` (`id`, `paperLayoutName`, `forSize`, `image`) VALUES
(1, 'Portrait-1', 5, 'Portrait-1.png'),
(2, 'Landscape-1', 5, 'Landscape-1.png'),
(3, 'Landscape-2', 5, 'Landscape-2.png'),
(4, 'Portrait-2', 5, 'Portrait-2.png'),
(5, 'Landscape-4', 5, 'Landscape-4.png'),
(6, 'Portrait-4', 5, 'Portrait-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `userAccountId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT 0,
  `currency` varchar(10) NOT NULL DEFAULT 'EGP',
  `offerCost` int(11) NOT NULL DEFAULT 0,
  `deliveryCost` int(11) NOT NULL DEFAULT 0,
  `delayCost` int(11) NOT NULL DEFAULT 0,
  `afterFees` float NOT NULL DEFAULT 0,
  `afterDiscount` float NOT NULL DEFAULT 0,
  `delivery` tinyint(2) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `rate` float NOT NULL DEFAULT 0,
  `rateComment` varchar(255) NOT NULL DEFAULT ' 0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`id`, `code`, `userAccountId`, `orderId`, `description`, `duration`, `currency`, `offerCost`, `deliveryCost`, `delayCost`, `afterFees`, `afterDiscount`, `delivery`, `status`, `dateTime`, `rate`, `rateComment`) VALUES
(19, '13', 413, 61, 'dffsaf', 2, 'EGP', 200, 0, 0, 184, 0, 0, 2, '2022-08-14 15:05:33', 0, ' 0'),
(20, '21', 9, 73, 'sfsafasf asdsad', 0, 'EGP', 0, 0, 0, 0, 0, 0, 1, '2022-08-31 16:21:41', 0, ' 0');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `regionEn` varchar(255) NOT NULL,
  `regionAr` varchar(255) NOT NULL,
  `cityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `regionEn`, `regionAr`, `cityId`) VALUES
(0, '', '', 0),
(1, 'Zamalek', 'الزمالك', 1),
(2, 'Maadi', 'المعادى', 1),
(3, 'Garden City', 'جاردن سيتي', 1),
(4, 'Dokki', 'الدقي', 2),
(5, 'Agouza', 'العجوزة', 2),
(6, 'Al Nadheem', 'النظيم', 3),
(7, 'other', 'آخرى', 0);

-- --------------------------------------------------------

--
-- Table structure for table `salesaccounttransaction`
--

CREATE TABLE `salesaccounttransaction` (
  `id` int(11) NOT NULL,
  `salesId` int(11) NOT NULL,
  `spId` int(11) NOT NULL,
  `quotationId` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL DEFAULT 'USD',
  `value` float NOT NULL,
  `orderDateTime` datetime NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spaccount`
--

CREATE TABLE `spaccount` (
  `id` int(11) NOT NULL,
  `spCode` varchar(255) NOT NULL DEFAULT '0',
  `commercialRegistration` varchar(255) NOT NULL DEFAULT '0',
  `userName` varchar(20) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `companyName` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `country` int(11) NOT NULL,
  `city` int(11) DEFAULT NULL,
  `region` int(11) NOT NULL,
  `address` varchar(255) DEFAULT '',
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `password` varchar(250) NOT NULL,
  `activity` int(4) NOT NULL DEFAULT 0,
  `categoryId` int(11) NOT NULL,
  `delivery` int(11) NOT NULL DEFAULT 0,
  `registrationDate` datetime NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(250) NOT NULL DEFAULT 'default.png',
  `dateBirth` date NOT NULL DEFAULT current_timestamp(),
  `lastSeen` varchar(255) NOT NULL DEFAULT '0',
  `balance` float NOT NULL DEFAULT 0,
  `accountTypeId` int(11) NOT NULL DEFAULT 2,
  `spType` int(11) NOT NULL DEFAULT 0,
  `deleted` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spaccount`
--

INSERT INTO `spaccount` (`id`, `spCode`, `commercialRegistration`, `userName`, `fullName`, `companyName`, `email`, `mobile`, `country`, `city`, `region`, `address`, `latitude`, `longitude`, `password`, `activity`, `categoryId`, `delivery`, `registrationDate`, `avatar`, `dateBirth`, `lastSeen`, `balance`, `accountTypeId`, `spType`, `deleted`) VALUES
(413, '0', '0', 'spAccount', 'ahmedashraf', '', 'sp@sp.com', '12345678901', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$Z7/g4AiUX2OMyTZ8pOMQWO/0vWMAmLBxog1aOWaGDgQ9CmKObfRee', 0, 1, 0, '2022-08-03 13:52:44', 'default.png', '1000-01-01', '0', 0, 2, 0, b'0'),
(419, '0', '0', 'ahmed32221', 'ahmedAshraf', '', 'ahmed@gmail.comwdadeq3', '24242', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$vOQfuWLOFwrbGK9TbAbBseGPQ70uIa781wBjHI5XlLFL.TPMdpCXy', 0, 2, 0, '2022-08-29 15:28:33', 'default.png', '2022-07-05', '0', 0, 2, 0, b'0'),
(420, '0', '0', 'boles123', 'Boles Nabil', '', 'boles123@gmail.com', '0123456789', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$XnXDLpw.D/v7IN0mM1YJautWd0iU8ykX05BvIamE1lLALBl5c6hRG', 0, 1, 1, '2022-08-29 20:23:36', 'default.png', '2017-06-15', '0', 0, 2, 0, b'0'),
(421, '0', '0', 'boles12345', 'Boles Nabil', '', 'boles12345@gmail.com', '0123456789', 53, 1, 0, '', 30.0444, 31.2357, '$2y$10$uVjOjS30vYpCTpCgurQ3zuK1/2kynZeAdL9lZNDiMDNVD/ptz3MR6', 0, 1, 1, '2022-08-30 14:25:13', 'default.png', '2017-06-15', '0', 0, 2, 0, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `spaccounttransaction`
--

CREATE TABLE `spaccounttransaction` (
  `id` int(11) NOT NULL,
  `quotationId` int(11) NOT NULL,
  `userAccountId` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL DEFAULT 'USD',
  `value` float NOT NULL,
  `transactionTypeId` int(11) NOT NULL,
  `salesSettlement` int(11) NOT NULL DEFAULT 0,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spaccounttransaction`
--

INSERT INTO `spaccounttransaction` (`id`, `quotationId`, `userAccountId`, `currency`, `value`, `transactionTypeId`, `salesSettlement`, `dateTime`) VALUES
(183, 161, 355, 'USD', 1012, 1, 0, '2022-05-30 17:47:48'),
(184, 162, 356, 'USD', 9.2, 1, 0, '2022-05-31 09:59:18'),
(185, 163, 357, 'USD', 18.4, 1, 0, '2022-05-31 11:20:19'),
(186, 161, 355, 'USD', 500, 1, 0, '2022-05-30 17:47:48'),
(187, 161, 355, 'USD', 200, 1, 0, '2022-05-30 17:47:48'),
(188, 184, 310, 'USD', 920, 1, 0, '2022-06-01 13:23:51'),
(189, 186, 289, 'USD', 73.6, 1, 0, '2022-06-01 13:23:51'),
(190, 185, 356, 'USD', 9.2, 1, 0, '2022-06-01 13:33:30'),
(191, 188, 289, 'USD', 92, 1, 0, '2022-06-01 13:33:30'),
(192, 189, 310, 'USD', 736, 1, 0, '2022-06-01 14:05:39'),
(193, 190, 289, 'USD', 73.6, 1, 0, '2022-06-01 14:05:39'),
(194, 191, 355, 'USD', 46, 1, 0, '2022-06-02 13:20:23'),
(195, 195, 362, 'USD', 46, 1, 0, '2022-06-02 13:20:23'),
(196, 198, 311, 'USD', 1104, 1, 0, '2022-06-02 13:54:32'),
(197, 201, 363, 'USD', 55.2, 1, 0, '2022-06-02 16:10:48'),
(198, 202, 371, 'USD', 460, 1, 0, '2022-06-02 16:22:31'),
(199, 209, 299, 'USD', 734.16, 1, 0, '2022-06-06 11:25:57'),
(200, 210, 299, 'USD', 220.8, 1, 0, '2022-06-07 11:13:53'),
(201, 208, 289, 'USD', 0, 4, 0, '2022-06-07 19:51:02'),
(202, 206, 299, 'USD', 22.8, 3, 0, '2022-06-07 19:51:37'),
(203, 206, 299, 'USD', 22.8, 3, 0, '2022-06-07 19:51:42'),
(204, 230, 299, 'USD', 204.24, 1, 0, '2022-06-08 11:46:05'),
(205, 231, 299, 'USD', 220.8, 1, 0, '2022-06-08 11:48:32'),
(206, 238, 299, 'USD', 230, 1, 0, '2022-06-08 14:13:17'),
(207, 241, 363, 'USD', 0, 4, 0, '2022-06-15 13:51:50'),
(208, 237, 273, 'USD', 0, 4, 0, '2022-06-15 14:15:24'),
(209, 227, 363, 'USD', 22.8, 3, 0, '2022-06-15 14:17:39'),
(210, 211, 273, 'USD', 0, 4, 0, '2022-06-15 14:18:29'),
(211, 120, 340, 'USD', 0, 4, 0, '2022-06-15 14:19:02'),
(212, 119, 340, 'USD', 0, 4, 0, '2022-06-15 14:21:35'),
(213, 116, 340, 'USD', 0, 4, 0, '2022-06-15 14:23:38'),
(214, 244, 299, 'USD', 0, 4, 0, '2022-06-27 09:48:39'),
(215, 239, 299, 'USD', 11.4, 3, 0, '2022-06-27 09:48:57'),
(216, 232, 299, 'USD', 25.308, 3, 0, '2022-06-27 15:51:51'),
(217, 205, 299, 'USD', 54.72, 3, 0, '2022-06-27 15:51:59'),
(218, 254, 402, 'USD', 111.32, 1, 0, '2022-07-10 17:29:00'),
(219, 268, 404, 'USD', 387.32, 1, 0, '2022-07-26 14:55:13'),
(220, 272, 404, 'USD', 92, 1, 0, '2022-08-04 13:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `systemconfiguration`
--

CREATE TABLE `systemconfiguration` (
  `id` int(11) NOT NULL,
  `adminAcceptPercentage` float NOT NULL,
  `spAcceptPercentage` float NOT NULL,
  `adminCancelPercentage` float NOT NULL,
  `spCancelPercentage` float NOT NULL,
  `clientAllowTimePercentage` float NOT NULL,
  `spAllowTimePercentage` float NOT NULL,
  `deadTimePercentage` float NOT NULL,
  `salesAcceptPercentage` float NOT NULL DEFAULT 10,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `systemconfiguration`
--

INSERT INTO `systemconfiguration` (`id`, `adminAcceptPercentage`, `spAcceptPercentage`, `adminCancelPercentage`, `spCancelPercentage`, `clientAllowTimePercentage`, `spAllowTimePercentage`, `deadTimePercentage`, `salesAcceptPercentage`, `dateTime`) VALUES
(1, 10, 90, 5, 20, 25, 20, 15, 5, '1800-01-01 10:57:31'),
(2, 10, 90, 5, 20, 25, 20, 15, 2, '2021-07-29 10:57:31'),
(3, 8, 92, 5, 20, 25, 20, 15, 10, '2021-05-29 10:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `taxPercentage` float NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `country`, `taxPercentage`, `dateTime`) VALUES
(1, 53, 14, '2021-01-01 13:23:33'),
(2, 152, 15, '2021-01-01 13:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `transactiontype`
--

CREATE TABLE `transactiontype` (
  `id` int(11) NOT NULL,
  `transactionTypeName` varchar(255) NOT NULL,
  `transactionTypeNameAr` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactiontype`
--

INSERT INTO `transactiontype` (`id`, `transactionTypeName`, `transactionTypeNameAr`) VALUES
(1, 'Accept', 'عملية مقبولة'),
(2, 'Hold', 'عملية معلقة'),
(3, 'Cancel', 'الغاء العملية '),
(4, 'Free Cancel', 'الغاء بدون رسوم'),
(5, 'Charge', 'شحن المحفظة'),
(6, 'Withdrawal', 'سحب رصيد');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawaltransaction`
--

CREATE TABLE `withdrawaltransaction` (
  `id` int(11) NOT NULL,
  `userAccountId` int(11) NOT NULL,
  `accountTypeId` int(11) NOT NULL DEFAULT 1,
  `currency` varchar(10) NOT NULL DEFAULT 'USD',
  `value` float NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptedtransaction`
--
ALTER TABLE `acceptedtransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chargetransaction`
--
ALTER TABLE `chargetransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientaccounttransaction`
--
ALTER TABLE `clientaccounttransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customeraccount`
--
ALTER TABLE `customeraccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `handovertransaction`
--
ALTER TABLE `handovertransaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotationId` (`quotationId`);

--
-- Indexes for table `holdtransaction`
--
ALTER TABLE `holdtransaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotationId` (`quotationId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdocument`
--
ALTER TABLE `orderdocument`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderfilm`
--
ALTER TABLE `orderfilm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderfilmdetails`
--
ALTER TABLE `orderfilmdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderimage`
--
ALTER TABLE `orderimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordermap`
--
ALTER TABLE `ordermap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderphoto`
--
ALTER TABLE `orderphoto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderphotodetails`
--
ALTER TABLE `orderphotodetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderpicture`
--
ALTER TABLE `orderpicture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderrentcamera`
--
ALTER TABLE `orderrentcamera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderrentcameradetails`
--
ALTER TABLE `orderrentcameradetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertranslate`
--
ALTER TABLE `ordertranslate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`);

--
-- Indexes for table `ordervideo`
--
ALTER TABLE `ordervideo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `preview`
--
ALTER TABLE `preview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesaccounttransaction`
--
ALTER TABLE `salesaccounttransaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotationId` (`quotationId`),
  ADD KEY `spId` (`spId`),
  ADD KEY `salesId` (`salesId`);

--
-- Indexes for table `spaccount`
--
ALTER TABLE `spaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spaccounttransaction`
--
ALTER TABLE `spaccounttransaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotationId` (`quotationId`);

--
-- Indexes for table `transactiontype`
--
ALTER TABLE `transactiontype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdrawaltransaction`
--
ALTER TABLE `withdrawaltransaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptedtransaction`
--
ALTER TABLE `acceptedtransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chargetransaction`
--
ALTER TABLE `chargetransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `clientaccounttransaction`
--
ALTER TABLE `clientaccounttransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `customeraccount`
--
ALTER TABLE `customeraccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `handovertransaction`
--
ALTER TABLE `handovertransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `holdtransaction`
--
ALTER TABLE `holdtransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderdocument`
--
ALTER TABLE `orderdocument`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderfilm`
--
ALTER TABLE `orderfilm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderfilmdetails`
--
ALTER TABLE `orderfilmdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orderimage`
--
ALTER TABLE `orderimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ordermap`
--
ALTER TABLE `ordermap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orderphoto`
--
ALTER TABLE `orderphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orderphotodetails`
--
ALTER TABLE `orderphotodetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `orderpicture`
--
ALTER TABLE `orderpicture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderrentcamera`
--
ALTER TABLE `orderrentcamera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderrentcameradetails`
--
ALTER TABLE `orderrentcameradetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `ordertranslate`
--
ALTER TABLE `ordertranslate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `ordervideo`
--
ALTER TABLE `ordervideo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `preview`
--
ALTER TABLE `preview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `salesaccounttransaction`
--
ALTER TABLE `salesaccounttransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spaccount`
--
ALTER TABLE `spaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `spaccounttransaction`
--
ALTER TABLE `spaccounttransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `transactiontype`
--
ALTER TABLE `transactiontype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawaltransaction`
--
ALTER TABLE `withdrawaltransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
