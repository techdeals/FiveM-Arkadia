-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 25 août 2019 à 05:14
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `essentialmode`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

DROP TABLE IF EXISTS `addon_account`;
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Livret Bleu', 0),
('caution', 'Caution', 0),
('hotel_black_money', 'Argent Sale Hotel', 0),
('motels_bed_black_money', 'Motels Black Money Bed', 0),
('motels_black_money', 'Motels Black Money ', 0),
('organisation_biker', 'biker', 1),
('organisation_cartel', 'cartel', 1),
('organisation_gang', 'gang', 1),
('organisation_mafia', 'mafia', 1),
('property_black_money', 'Argent Sale Propriété', 0),
('society_aircraftdealer', 'Airliner', 1),
('society_ambulance', 'Ambulance', 1),
('society_ammu', 'ammu', 1),
('society_avocat', 'Avocat', 1),
('society_bahama', 'Bahama Mas', 1),
('society_baladins', 'baladins', 1),
('society_ballas', 'Ballas', 1),
('society_ballas_black', 'ballas black', 1),
('society_banker', 'Banque', 1),
('society_boatdealer', 'Marina', 1),
('society_bratva', 'Bratva', 1),
('society_bratva_black', 'bratva black', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_cartel', 'Cartel', 1),
('society_casino', 'Casino', 1),
('society_dock', 'Marina', 1),
('society_famillies', 'Famillies', 1),
('society_famillies_black', 'famillies black', 1),
('society_fib', 'Fib', 1),
('society_fueler', 'Raffineur', 1),
('society_illegal', 'Illegal', 1),
('society_illegal_black', 'illegal black', 1),
('society_immo', 'Immo', 1),
('society_journaliste', 'journaliste', 1),
('society_kano', 'Kano', 1),
('society_kano_black', 'kano black', 1),
('society_lazone', 'lazone', 1),
('society_lazone_black', 'lazone black', 1),
('society_mafia', 'Mafia', 1),
('society_mecano', 'Mécano', 1),
('society_mercenaire', 'mercenaire', 1),
('society_mercenaire_black', 'mercenaire black', 1),
('society_ms13', 'ms13', 1),
('society_ms13_black', 'ms13 black', 1),
('society_nightclub', 'Nightclub', 1),
('society_pecheur', 'Pecheur', 1),
('society_podolskaia', 'podolskaia', 1),
('society_podolskaia_black', 'podolskaia black', 1),
('society_police', 'Police', 1),
('society_pompiste', 'Pompiste', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_securoserv', 'SecuroServ', 1),
('society_state', 'State', 1),
('society_syndicat', 'syndicat', 1),
('society_syndicat_black', 'syndicat black', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vagos_black', 'vagos black', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

DROP TABLE IF EXISTS `addon_account_data`;
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1358 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'organisation_biker', 0, NULL),
(2, 'organisation_cartel', 0, NULL),
(3, 'organisation_gang', 0, NULL),
(4, 'organisation_mafia', 0, NULL),
(5, 'society_aircraftdealer', 0, NULL),
(6, 'society_ambulance', 635019, NULL),
(7, 'society_ammu', 394341, NULL),
(8, 'society_avocat', 49540, NULL),
(9, 'society_bahama', 4, NULL),
(10, 'society_baladins', 0, NULL),
(11, 'society_ballas', 0, NULL),
(12, 'society_ballas_black', 0, NULL),
(13, 'society_banker', 0, NULL),
(14, 'society_boatdealer', 0, NULL),
(15, 'society_bratva', 0, NULL),
(16, 'society_bratva_black', 0, NULL),
(17, 'society_cardealer', 1070498, NULL),
(18, 'society_cartel', 0, NULL),
(19, 'society_dock', 0, NULL),
(20, 'society_famillies', 0, NULL),
(21, 'society_famillies_black', 0, NULL),
(22, 'society_fib', 0, NULL),
(23, 'society_fueler', 0, NULL),
(24, 'society_illegal', 483764, NULL),
(25, 'society_illegal_black', 0, NULL),
(26, 'society_immo', 0, NULL),
(27, 'society_journaliste', 0, NULL),
(28, 'society_kano', 1, NULL),
(29, 'society_kano_black', 0, NULL),
(30, 'society_lazone', 0, NULL),
(31, 'society_lazone_black', 0, NULL),
(32, 'society_mafia', 0, NULL),
(33, 'society_mecano', 125784, NULL),
(34, 'society_ms13', 0, NULL),
(35, 'society_ms13_black', 0, NULL),
(36, 'society_nightclub', 104388, NULL),
(37, 'society_pecheur', 0, NULL),
(38, 'society_police', 5658050, NULL),
(39, 'society_pompiste', 535027, NULL),
(40, 'society_realestateagent', 479282, NULL),
(41, 'society_securoserv', 116298, NULL),
(42, 'society_state', 1167901, NULL),
(43, 'society_tabac', 6867562, NULL),
(44, 'society_taxi', 0, NULL),
(45, 'society_unicorn', 0, NULL),
(46, 'society_vigne', 4107728, NULL),
(47, 'bank_savings', 0, 'steam:11000010ceb5021'),
(48, 'motels_bed_black_money', 0, 'steam:11000010ceb5021'),
(49, 'caution', 0, 'steam:11000010ceb5021'),
(50, 'hotel_black_money', 0, 'steam:11000010ceb5021'),
(51, 'motels_black_money', 0, 'steam:11000010ceb5021'),
(52, 'property_black_money', 0, 'steam:11000010ceb5021'),
(53, 'caution', 0, 'steam:11000010ed7d593'),
(54, 'bank_savings', 0, 'steam:11000010ed7d593'),
(55, 'motels_black_money', 0, 'steam:11000010ed7d593'),
(56, 'hotel_black_money', 0, 'steam:11000010ed7d593'),
(57, 'motels_bed_black_money', 0, 'steam:11000010ed7d593'),
(58, 'property_black_money', 0, 'steam:11000010ed7d593'),
(59, 'bank_savings', 0, 'steam:11000013c08dc41'),
(60, 'caution', 0, 'steam:11000013c08dc41'),
(61, 'hotel_black_money', 0, 'steam:11000013c08dc41'),
(62, 'motels_bed_black_money', 0, 'steam:11000013c08dc41'),
(63, 'motels_black_money', 0, 'steam:11000013c08dc41'),
(64, 'property_black_money', 0, 'steam:11000013c08dc41'),
(77, 'bank_savings', 0, 'steam:11000013a87b963'),
(78, 'hotel_black_money', 0, 'steam:11000013a87b963'),
(79, 'caution', 0, 'steam:11000013a87b963'),
(80, 'motels_bed_black_money', 0, 'steam:11000013a87b963'),
(81, 'motels_black_money', 0, 'steam:11000013a87b963'),
(82, 'property_black_money', 0, 'steam:11000013a87b963'),
(83, 'caution', 0, 'steam:11000011737e7cd'),
(84, 'motels_bed_black_money', 0, 'steam:11000011737e7cd'),
(85, 'bank_savings', 0, 'steam:11000011737e7cd'),
(86, 'hotel_black_money', 0, 'steam:11000011737e7cd'),
(87, 'motels_black_money', 0, 'steam:11000011737e7cd'),
(88, 'property_black_money', 0, 'steam:11000011737e7cd'),
(89, 'bank_savings', 0, 'steam:1100001071b0f24'),
(90, 'caution', 0, 'steam:1100001071b0f24'),
(91, 'motels_black_money', 0, 'steam:1100001071b0f24'),
(92, 'hotel_black_money', 0, 'steam:1100001071b0f24'),
(93, 'motels_bed_black_money', 0, 'steam:1100001071b0f24'),
(94, 'property_black_money', 0, 'steam:1100001071b0f24'),
(101, 'bank_savings', 0, 'steam:110000117ef1727'),
(102, 'motels_bed_black_money', 0, 'steam:110000117ef1727'),
(103, 'caution', 0, 'steam:110000117ef1727'),
(104, 'hotel_black_money', 0, 'steam:110000117ef1727'),
(105, 'motels_black_money', 0, 'steam:110000117ef1727'),
(106, 'property_black_money', 0, 'steam:110000117ef1727'),
(107, 'caution', 0, 'steam:1100001144e6219'),
(108, 'bank_savings', 0, 'steam:1100001144e6219'),
(109, 'hotel_black_money', 0, 'steam:1100001144e6219'),
(110, 'motels_bed_black_money', 0, 'steam:1100001144e6219'),
(111, 'motels_black_money', 0, 'steam:1100001144e6219'),
(112, 'property_black_money', 0, 'steam:1100001144e6219'),
(113, 'bank_savings', 0, 'steam:110000133ffa537'),
(114, 'motels_black_money', 0, 'steam:110000133ffa537'),
(115, 'caution', 0, 'steam:110000133ffa537'),
(116, 'hotel_black_money', 0, 'steam:110000133ffa537'),
(117, 'motels_bed_black_money', 0, 'steam:110000133ffa537'),
(118, 'property_black_money', 0, 'steam:110000133ffa537'),
(119, 'bank_savings', 0, 'steam:110000135e1795e'),
(120, 'hotel_black_money', 0, 'steam:110000135e1795e'),
(121, 'motels_bed_black_money', 0, 'steam:110000135e1795e'),
(122, 'property_black_money', 0, 'steam:110000135e1795e'),
(123, 'caution', 0, 'steam:110000135e1795e'),
(124, 'motels_black_money', 0, 'steam:110000135e1795e'),
(125, 'bank_savings', 0, 'steam:11000013208337d'),
(126, 'hotel_black_money', 0, 'steam:11000013208337d'),
(127, 'motels_bed_black_money', 0, 'steam:11000013208337d'),
(128, 'motels_black_money', 0, 'steam:11000013208337d'),
(129, 'property_black_money', 0, 'steam:11000013208337d'),
(130, 'caution', 0, 'steam:11000013208337d'),
(131, 'bank_savings', 0, 'steam:11000011afca3e5'),
(132, 'hotel_black_money', 0, 'steam:11000011afca3e5'),
(133, 'motels_black_money', 0, 'steam:11000011afca3e5'),
(134, 'caution', 0, 'steam:11000011afca3e5'),
(135, 'motels_bed_black_money', 0, 'steam:11000011afca3e5'),
(136, 'property_black_money', 0, 'steam:11000011afca3e5'),
(137, 'caution', 0, 'steam:110000134510d19'),
(138, 'motels_bed_black_money', 0, 'steam:110000134510d19'),
(139, 'bank_savings', 0, 'steam:110000134510d19'),
(140, 'hotel_black_money', 0, 'steam:110000134510d19'),
(141, 'motels_black_money', 0, 'steam:110000134510d19'),
(142, 'property_black_money', 0, 'steam:110000134510d19'),
(143, 'caution', 0, 'steam:11000013b2539ff'),
(144, 'bank_savings', 0, 'steam:11000013b2539ff'),
(145, 'hotel_black_money', 0, 'steam:11000013b2539ff'),
(146, 'motels_bed_black_money', 0, 'steam:11000013b2539ff'),
(147, 'motels_black_money', 0, 'steam:11000013b2539ff'),
(148, 'property_black_money', 0, 'steam:11000013b2539ff'),
(149, 'caution', 0, 'steam:11000013c403a31'),
(150, 'bank_savings', 0, 'steam:11000013c403a31'),
(151, 'hotel_black_money', 0, 'steam:11000013c403a31'),
(152, 'motels_bed_black_money', 0, 'steam:11000013c403a31'),
(153, 'motels_black_money', 0, 'steam:11000013c403a31'),
(154, 'property_black_money', 0, 'steam:11000013c403a31'),
(155, 'caution', 0, 'steam:110000139d15539'),
(156, 'bank_savings', 0, 'steam:110000139d15539'),
(157, 'hotel_black_money', 0, 'steam:110000139d15539'),
(158, 'motels_bed_black_money', 0, 'steam:110000139d15539'),
(159, 'motels_black_money', 0, 'steam:110000139d15539'),
(160, 'property_black_money', 0, 'steam:110000139d15539'),
(167, 'bank_savings', 0, 'steam:11000013cee8c1c'),
(168, 'caution', 0, 'steam:11000013cee8c1c'),
(169, 'motels_bed_black_money', 0, 'steam:11000013cee8c1c'),
(170, 'motels_black_money', 0, 'steam:11000013cee8c1c'),
(171, 'property_black_money', 0, 'steam:11000013cee8c1c'),
(172, 'hotel_black_money', 0, 'steam:11000013cee8c1c'),
(173, 'bank_savings', 0, 'steam:11000013c2e72ca'),
(174, 'caution', 0, 'steam:11000013c2e72ca'),
(175, 'motels_bed_black_money', 0, 'steam:11000013c2e72ca'),
(176, 'motels_black_money', 0, 'steam:11000013c2e72ca'),
(177, 'hotel_black_money', 0, 'steam:11000013c2e72ca'),
(178, 'property_black_money', 0, 'steam:11000013c2e72ca'),
(179, 'caution', 0, 'steam:1100001025e506a'),
(180, 'bank_savings', 0, 'steam:1100001025e506a'),
(181, 'motels_bed_black_money', 0, 'steam:1100001025e506a'),
(182, 'hotel_black_money', 0, 'steam:1100001025e506a'),
(183, 'motels_black_money', 0, 'steam:1100001025e506a'),
(184, 'property_black_money', 0, 'steam:1100001025e506a'),
(191, 'bank_savings', 0, 'steam:11000010b599941'),
(192, 'caution', 0, 'steam:11000010b599941'),
(193, 'motels_bed_black_money', 0, 'steam:11000010b599941'),
(194, 'hotel_black_money', 0, 'steam:11000010b599941'),
(195, 'motels_black_money', 0, 'steam:11000010b599941'),
(196, 'property_black_money', 0, 'steam:11000010b599941'),
(197, 'bank_savings', 0, 'steam:11000013ce81d9f'),
(198, 'caution', 0, 'steam:11000013ce81d9f'),
(199, 'hotel_black_money', 0, 'steam:11000013ce81d9f'),
(200, 'motels_bed_black_money', 0, 'steam:11000013ce81d9f'),
(201, 'motels_black_money', 0, 'steam:11000013ce81d9f'),
(202, 'property_black_money', 0, 'steam:11000013ce81d9f'),
(209, 'bank_savings', 0, 'steam:110000111c15df3'),
(210, 'motels_black_money', 0, 'steam:110000111c15df3'),
(211, 'property_black_money', 0, 'steam:110000111c15df3'),
(212, 'caution', 0, 'steam:110000111c15df3'),
(213, 'hotel_black_money', 0, 'steam:110000111c15df3'),
(214, 'motels_bed_black_money', 0, 'steam:110000111c15df3'),
(215, 'bank_savings', 0, 'steam:1100001119cb229'),
(216, 'hotel_black_money', 0, 'steam:1100001119cb229'),
(217, 'motels_bed_black_money', 0, 'steam:1100001119cb229'),
(218, 'motels_black_money', 0, 'steam:1100001119cb229'),
(219, 'property_black_money', 0, 'steam:1100001119cb229'),
(220, 'caution', 0, 'steam:1100001119cb229'),
(221, 'bank_savings', 0, 'steam:1100001014b172a'),
(222, 'caution', 0, 'steam:1100001014b172a'),
(223, 'motels_black_money', 0, 'steam:1100001014b172a'),
(224, 'hotel_black_money', 0, 'steam:1100001014b172a'),
(225, 'motels_bed_black_money', 0, 'steam:1100001014b172a'),
(226, 'property_black_money', 0, 'steam:1100001014b172a'),
(227, 'bank_savings', 0, 'steam:11000011896c872'),
(228, 'caution', 0, 'steam:11000011896c872'),
(229, 'motels_bed_black_money', 0, 'steam:11000011896c872'),
(230, 'hotel_black_money', 0, 'steam:11000011896c872'),
(231, 'motels_black_money', 0, 'steam:11000011896c872'),
(232, 'property_black_money', 0, 'steam:11000011896c872'),
(233, 'bank_savings', 0, 'steam:110000102b9d911'),
(234, 'hotel_black_money', 0, 'steam:110000102b9d911'),
(235, 'motels_black_money', 0, 'steam:110000102b9d911'),
(236, 'caution', 0, 'steam:110000102b9d911'),
(237, 'motels_bed_black_money', 0, 'steam:110000102b9d911'),
(238, 'property_black_money', 0, 'steam:110000102b9d911'),
(239, 'caution', 0, 'steam:110000133afe01a'),
(240, 'bank_savings', 0, 'steam:110000133afe01a'),
(241, 'hotel_black_money', 0, 'steam:110000133afe01a'),
(242, 'motels_bed_black_money', 0, 'steam:110000133afe01a'),
(243, 'motels_black_money', 0, 'steam:110000133afe01a'),
(244, 'property_black_money', 0, 'steam:110000133afe01a'),
(245, 'bank_savings', 0, 'steam:110000112c06cbb'),
(246, 'caution', 0, 'steam:110000112c06cbb'),
(247, 'hotel_black_money', 0, 'steam:110000112c06cbb'),
(248, 'motels_bed_black_money', 0, 'steam:110000112c06cbb'),
(249, 'motels_black_money', 0, 'steam:110000112c06cbb'),
(250, 'property_black_money', 0, 'steam:110000112c06cbb'),
(251, 'bank_savings', 0, 'steam:110000119125a33'),
(252, 'hotel_black_money', 0, 'steam:110000119125a33'),
(253, 'motels_bed_black_money', 0, 'steam:110000119125a33'),
(254, 'motels_black_money', 0, 'steam:110000119125a33'),
(255, 'property_black_money', 0, 'steam:110000119125a33'),
(256, 'caution', 0, 'steam:110000119125a33'),
(263, 'bank_savings', 0, 'steam:11000010607514e'),
(264, 'caution', 0, 'steam:11000010607514e'),
(265, 'hotel_black_money', 0, 'steam:11000010607514e'),
(266, 'motels_bed_black_money', 0, 'steam:11000010607514e'),
(267, 'motels_black_money', 0, 'steam:11000010607514e'),
(268, 'property_black_money', 0, 'steam:11000010607514e'),
(269, 'caution', 0, 'steam:11000011abbf0e6'),
(270, 'bank_savings', 0, 'steam:11000011abbf0e6'),
(271, 'hotel_black_money', 0, 'steam:11000011abbf0e6'),
(272, 'motels_bed_black_money', 0, 'steam:11000011abbf0e6'),
(273, 'motels_black_money', 0, 'steam:11000011abbf0e6'),
(274, 'property_black_money', 0, 'steam:11000011abbf0e6'),
(275, 'bank_savings', 0, 'steam:1100001185b03b9'),
(276, 'caution', 0, 'steam:1100001185b03b9'),
(277, 'hotel_black_money', 0, 'steam:1100001185b03b9'),
(278, 'motels_bed_black_money', 0, 'steam:1100001185b03b9'),
(279, 'motels_black_money', 0, 'steam:1100001185b03b9'),
(280, 'property_black_money', 0, 'steam:1100001185b03b9'),
(287, 'caution', 0, 'steam:110000109c28f87'),
(288, 'bank_savings', 0, 'steam:110000109c28f87'),
(289, 'hotel_black_money', 0, 'steam:110000109c28f87'),
(290, 'motels_bed_black_money', 0, 'steam:110000109c28f87'),
(291, 'motels_black_money', 0, 'steam:110000109c28f87'),
(292, 'property_black_money', 0, 'steam:110000109c28f87'),
(293, 'bank_savings', 0, 'steam:11000013cf2892d'),
(294, 'caution', 0, 'steam:11000013cf2892d'),
(295, 'hotel_black_money', 0, 'steam:11000013cf2892d'),
(296, 'motels_bed_black_money', 0, 'steam:11000013cf2892d'),
(297, 'motels_black_money', 0, 'steam:11000013cf2892d'),
(298, 'property_black_money', 0, 'steam:11000013cf2892d'),
(299, 'bank_savings', 0, 'steam:110000111ee8a77'),
(300, 'caution', 0, 'steam:110000111ee8a77'),
(301, 'hotel_black_money', 0, 'steam:110000111ee8a77'),
(302, 'motels_bed_black_money', 0, 'steam:110000111ee8a77'),
(303, 'motels_black_money', 0, 'steam:110000111ee8a77'),
(304, 'property_black_money', 0, 'steam:110000111ee8a77'),
(305, 'bank_savings', 0, 'steam:11000013c3a7013'),
(306, 'caution', 0, 'steam:11000013c3a7013'),
(307, 'hotel_black_money', 0, 'steam:11000013c3a7013'),
(308, 'motels_bed_black_money', 0, 'steam:11000013c3a7013'),
(309, 'motels_black_money', 0, 'steam:11000013c3a7013'),
(310, 'property_black_money', 0, 'steam:11000013c3a7013'),
(311, 'bank_savings', 0, 'steam:11000013bd0fa8e'),
(312, 'caution', 0, 'steam:11000013bd0fa8e'),
(313, 'property_black_money', 0, 'steam:11000013bd0fa8e'),
(314, 'hotel_black_money', 0, 'steam:11000013bd0fa8e'),
(315, 'motels_bed_black_money', 0, 'steam:11000013bd0fa8e'),
(316, 'motels_black_money', 0, 'steam:11000013bd0fa8e'),
(317, 'bank_savings', 0, 'steam:11000013c102b99'),
(318, 'caution', 0, 'steam:11000013c102b99'),
(319, 'motels_bed_black_money', 0, 'steam:11000013c102b99'),
(320, 'hotel_black_money', 0, 'steam:11000013c102b99'),
(321, 'motels_black_money', 0, 'steam:11000013c102b99'),
(322, 'property_black_money', 0, 'steam:11000013c102b99'),
(323, 'bank_savings', 0, 'steam:110000112235808'),
(324, 'caution', 0, 'steam:110000112235808'),
(325, 'motels_bed_black_money', 0, 'steam:110000112235808'),
(326, 'hotel_black_money', 0, 'steam:110000112235808'),
(327, 'motels_black_money', 0, 'steam:110000112235808'),
(328, 'property_black_money', 0, 'steam:110000112235808'),
(329, 'bank_savings', 0, 'steam:11000011b57fdd2'),
(330, 'caution', 0, 'steam:11000011b57fdd2'),
(331, 'motels_bed_black_money', 0, 'steam:11000011b57fdd2'),
(332, 'hotel_black_money', 0, 'steam:11000011b57fdd2'),
(333, 'motels_black_money', 0, 'steam:11000011b57fdd2'),
(334, 'property_black_money', 0, 'steam:11000011b57fdd2'),
(335, 'bank_savings', 0, 'steam:110000114687a8c'),
(336, 'caution', 0, 'steam:110000114687a8c'),
(337, 'hotel_black_money', 0, 'steam:110000114687a8c'),
(338, 'motels_bed_black_money', 0, 'steam:110000114687a8c'),
(339, 'motels_black_money', 0, 'steam:110000114687a8c'),
(340, 'property_black_money', 0, 'steam:110000114687a8c'),
(341, 'bank_savings', 0, 'steam:110000114600261'),
(342, 'caution', 0, 'steam:110000114600261'),
(343, 'hotel_black_money', 0, 'steam:110000114600261'),
(344, 'motels_bed_black_money', 0, 'steam:110000114600261'),
(345, 'motels_black_money', 0, 'steam:110000114600261'),
(346, 'property_black_money', 0, 'steam:110000114600261'),
(347, 'bank_savings', 0, 'steam:11000010abd7288'),
(348, 'caution', 0, 'steam:11000010abd7288'),
(349, 'hotel_black_money', 0, 'steam:11000010abd7288'),
(350, 'motels_bed_black_money', 0, 'steam:11000010abd7288'),
(351, 'motels_black_money', 0, 'steam:11000010abd7288'),
(352, 'property_black_money', 0, 'steam:11000010abd7288'),
(353, 'caution', 0, 'steam:110000134fc7523'),
(354, 'bank_savings', 0, 'steam:110000134fc7523'),
(355, 'hotel_black_money', 0, 'steam:110000134fc7523'),
(356, 'motels_bed_black_money', 0, 'steam:110000134fc7523'),
(357, 'motels_black_money', 0, 'steam:110000134fc7523'),
(358, 'property_black_money', 0, 'steam:110000134fc7523'),
(359, 'bank_savings', 0, 'steam:11000013c5449fc'),
(360, 'caution', 0, 'steam:11000013c5449fc'),
(361, 'hotel_black_money', 0, 'steam:11000013c5449fc'),
(362, 'motels_bed_black_money', 0, 'steam:11000013c5449fc'),
(363, 'motels_black_money', 0, 'steam:11000013c5449fc'),
(364, 'property_black_money', 0, 'steam:11000013c5449fc'),
(365, 'bank_savings', 0, 'steam:11000011531ef67'),
(366, 'hotel_black_money', 0, 'steam:11000011531ef67'),
(367, 'property_black_money', 0, 'steam:11000011531ef67'),
(368, 'caution', 0, 'steam:11000011531ef67'),
(369, 'motels_bed_black_money', 0, 'steam:11000011531ef67'),
(370, 'motels_black_money', 0, 'steam:11000011531ef67'),
(371, 'caution', 0, 'steam:11000010f3901f5'),
(372, 'bank_savings', 0, 'steam:11000010f3901f5'),
(373, 'hotel_black_money', 0, 'steam:11000010f3901f5'),
(374, 'motels_bed_black_money', 0, 'steam:11000010f3901f5'),
(375, 'motels_black_money', 0, 'steam:11000010f3901f5'),
(376, 'property_black_money', 0, 'steam:11000010f3901f5'),
(377, 'bank_savings', 0, 'steam:1100001050593ff'),
(378, 'caution', 0, 'steam:1100001050593ff'),
(379, 'hotel_black_money', 0, 'steam:1100001050593ff'),
(380, 'motels_bed_black_money', 0, 'steam:1100001050593ff'),
(381, 'motels_black_money', 0, 'steam:1100001050593ff'),
(382, 'property_black_money', 0, 'steam:1100001050593ff'),
(383, 'bank_savings', 0, 'steam:110000135546581'),
(384, 'caution', 0, 'steam:110000135546581'),
(385, 'motels_bed_black_money', 0, 'steam:110000135546581'),
(386, 'hotel_black_money', 0, 'steam:110000135546581'),
(387, 'motels_black_money', 0, 'steam:110000135546581'),
(388, 'property_black_money', 0, 'steam:110000135546581'),
(389, 'caution', 0, 'steam:11000013ccc3224'),
(390, 'bank_savings', 0, 'steam:11000013ccc3224'),
(391, 'hotel_black_money', 0, 'steam:11000013ccc3224'),
(392, 'motels_bed_black_money', 0, 'steam:11000013ccc3224'),
(393, 'motels_black_money', 0, 'steam:11000013ccc3224'),
(394, 'property_black_money', 0, 'steam:11000013ccc3224'),
(395, 'bank_savings', 0, 'steam:110000137bfb29e'),
(396, 'caution', 0, 'steam:110000137bfb29e'),
(397, 'hotel_black_money', 0, 'steam:110000137bfb29e'),
(398, 'motels_bed_black_money', 0, 'steam:110000137bfb29e'),
(399, 'motels_black_money', 0, 'steam:110000137bfb29e'),
(400, 'property_black_money', 0, 'steam:110000137bfb29e'),
(401, 'bank_savings', 0, 'steam:110000106488f5e'),
(402, 'motels_bed_black_money', 0, 'steam:110000106488f5e'),
(403, 'caution', 0, 'steam:110000106488f5e'),
(404, 'hotel_black_money', 0, 'steam:110000106488f5e'),
(405, 'motels_black_money', 0, 'steam:110000106488f5e'),
(406, 'property_black_money', 0, 'steam:110000106488f5e'),
(407, 'bank_savings', 0, 'steam:11000013bc5d396'),
(408, 'caution', 0, 'steam:11000013bc5d396'),
(409, 'hotel_black_money', 0, 'steam:11000013bc5d396'),
(410, 'motels_black_money', 0, 'steam:11000013bc5d396'),
(411, 'motels_bed_black_money', 0, 'steam:11000013bc5d396'),
(412, 'property_black_money', 0, 'steam:11000013bc5d396'),
(413, 'bank_savings', 0, 'steam:110000114b4c389'),
(414, 'motels_bed_black_money', 0, 'steam:110000114b4c389'),
(415, 'hotel_black_money', 0, 'steam:110000114b4c389'),
(416, 'caution', 0, 'steam:110000114b4c389'),
(417, 'motels_black_money', 0, 'steam:110000114b4c389'),
(418, 'property_black_money', 0, 'steam:110000114b4c389'),
(419, 'bank_savings', 0, 'steam:110000138fb74f4'),
(420, 'motels_black_money', 0, 'steam:110000138fb74f4'),
(421, 'caution', 0, 'steam:110000138fb74f4'),
(422, 'hotel_black_money', 0, 'steam:110000138fb74f4'),
(423, 'motels_bed_black_money', 0, 'steam:110000138fb74f4'),
(424, 'property_black_money', 0, 'steam:110000138fb74f4'),
(425, 'bank_savings', 0, 'steam:11000013c8f6d21'),
(426, 'hotel_black_money', 0, 'steam:11000013c8f6d21'),
(427, 'motels_bed_black_money', 0, 'steam:11000013c8f6d21'),
(428, 'property_black_money', 0, 'steam:11000013c8f6d21'),
(429, 'caution', 0, 'steam:11000013c8f6d21'),
(430, 'motels_black_money', 0, 'steam:11000013c8f6d21'),
(431, 'bank_savings', 0, 'steam:11000013c8d5645'),
(432, 'caution', 0, 'steam:11000013c8d5645'),
(433, 'hotel_black_money', 0, 'steam:11000013c8d5645'),
(434, 'motels_bed_black_money', 0, 'steam:11000013c8d5645'),
(435, 'motels_black_money', 0, 'steam:11000013c8d5645'),
(436, 'property_black_money', 0, 'steam:11000013c8d5645'),
(437, 'bank_savings', 0, 'steam:110000139b3e324'),
(438, 'caution', 0, 'steam:110000139b3e324'),
(439, 'hotel_black_money', 0, 'steam:110000139b3e324'),
(440, 'motels_bed_black_money', 0, 'steam:110000139b3e324'),
(441, 'motels_black_money', 0, 'steam:110000139b3e324'),
(442, 'property_black_money', 0, 'steam:110000139b3e324'),
(443, 'bank_savings', 0, 'steam:11000011096a090'),
(444, 'caution', 0, 'steam:11000011096a090'),
(445, 'hotel_black_money', 0, 'steam:11000011096a090'),
(446, 'motels_bed_black_money', 0, 'steam:11000011096a090'),
(447, 'motels_black_money', 0, 'steam:11000011096a090'),
(448, 'property_black_money', 0, 'steam:11000011096a090'),
(449, 'bank_savings', 0, 'steam:1100001193c3bf3'),
(450, 'caution', 0, 'steam:1100001193c3bf3'),
(451, 'hotel_black_money', 0, 'steam:1100001193c3bf3'),
(452, 'motels_bed_black_money', 0, 'steam:1100001193c3bf3'),
(453, 'motels_black_money', 0, 'steam:1100001193c3bf3'),
(454, 'property_black_money', 0, 'steam:1100001193c3bf3'),
(455, 'bank_savings', 0, 'steam:110000106c0224f'),
(456, 'caution', 0, 'steam:110000106c0224f'),
(457, 'property_black_money', 0, 'steam:110000106c0224f'),
(458, 'hotel_black_money', 0, 'steam:110000106c0224f'),
(459, 'motels_bed_black_money', 0, 'steam:110000106c0224f'),
(460, 'motels_black_money', 0, 'steam:110000106c0224f'),
(461, 'bank_savings', 0, 'steam:110000109c4e456'),
(462, 'hotel_black_money', 0, 'steam:110000109c4e456'),
(463, 'property_black_money', 0, 'steam:110000109c4e456'),
(464, 'caution', 0, 'steam:110000109c4e456'),
(465, 'motels_bed_black_money', 0, 'steam:110000109c4e456'),
(466, 'motels_black_money', 0, 'steam:110000109c4e456'),
(467, 'bank_savings', 0, 'steam:110000112d9f293'),
(468, 'caution', 0, 'steam:110000112d9f293'),
(469, 'hotel_black_money', 0, 'steam:110000112d9f293'),
(470, 'motels_bed_black_money', 0, 'steam:110000112d9f293'),
(471, 'motels_black_money', 0, 'steam:110000112d9f293'),
(472, 'property_black_money', 0, 'steam:110000112d9f293'),
(473, 'bank_savings', 0, 'steam:1100001169d91d3'),
(474, 'hotel_black_money', 0, 'steam:1100001169d91d3'),
(475, 'caution', 0, 'steam:1100001169d91d3'),
(476, 'motels_bed_black_money', 0, 'steam:1100001169d91d3'),
(477, 'motels_black_money', 0, 'steam:1100001169d91d3'),
(478, 'property_black_money', 0, 'steam:1100001169d91d3'),
(485, 'caution', 0, 'steam:11000013306873c'),
(486, 'bank_savings', 0, 'steam:11000013306873c'),
(487, 'motels_bed_black_money', 0, 'steam:11000013306873c'),
(488, 'hotel_black_money', 0, 'steam:11000013306873c'),
(489, 'motels_black_money', 0, 'steam:11000013306873c'),
(490, 'property_black_money', 0, 'steam:11000013306873c'),
(491, 'bank_savings', 0, 'steam:11000011b78848e'),
(492, 'hotel_black_money', 0, 'steam:11000011b78848e'),
(493, 'motels_black_money', 0, 'steam:11000011b78848e'),
(494, 'caution', 0, 'steam:11000011b78848e'),
(495, 'motels_bed_black_money', 0, 'steam:11000011b78848e'),
(496, 'property_black_money', 0, 'steam:11000011b78848e'),
(503, 'bank_savings', 0, 'steam:11000011624a078'),
(504, 'caution', 0, 'steam:11000011624a078'),
(505, 'hotel_black_money', 0, 'steam:11000011624a078'),
(506, 'property_black_money', 0, 'steam:11000011624a078'),
(507, 'motels_bed_black_money', 0, 'steam:11000011624a078'),
(508, 'motels_black_money', 0, 'steam:11000011624a078'),
(509, 'bank_savings', 0, 'steam:11000010a6eab62'),
(510, 'caution', 0, 'steam:11000010a6eab62'),
(511, 'motels_bed_black_money', 0, 'steam:11000010a6eab62'),
(512, 'hotel_black_money', 0, 'steam:11000010a6eab62'),
(513, 'motels_black_money', 0, 'steam:11000010a6eab62'),
(514, 'property_black_money', 0, 'steam:11000010a6eab62'),
(515, 'bank_savings', 0, 'steam:110000111b1e04e'),
(516, 'caution', 0, 'steam:110000111b1e04e'),
(517, 'hotel_black_money', 0, 'steam:110000111b1e04e'),
(518, 'motels_bed_black_money', 0, 'steam:110000111b1e04e'),
(519, 'motels_black_money', 0, 'steam:110000111b1e04e'),
(520, 'property_black_money', 0, 'steam:110000111b1e04e'),
(521, 'hotel_black_money', 0, 'steam:11000010bbe8cb7'),
(522, 'motels_black_money', 0, 'steam:11000010bbe8cb7'),
(523, 'property_black_money', 0, 'steam:11000010bbe8cb7'),
(524, 'bank_savings', 0, 'steam:11000010bbe8cb7'),
(525, 'caution', 0, 'steam:11000010bbe8cb7'),
(526, 'motels_bed_black_money', 0, 'steam:11000010bbe8cb7'),
(527, 'bank_savings', 0, 'steam:11000011a688450'),
(528, 'motels_black_money', 0, 'steam:11000011a688450'),
(529, 'caution', 0, 'steam:11000011a688450'),
(530, 'hotel_black_money', 0, 'steam:11000011a688450'),
(531, 'motels_bed_black_money', 0, 'steam:11000011a688450'),
(532, 'property_black_money', 0, 'steam:11000011a688450'),
(533, 'bank_savings', 0, 'steam:110000138e1d27b'),
(534, 'hotel_black_money', 0, 'steam:110000138e1d27b'),
(535, 'caution', 0, 'steam:110000138e1d27b'),
(536, 'motels_bed_black_money', 0, 'steam:110000138e1d27b'),
(537, 'property_black_money', 0, 'steam:110000138e1d27b'),
(538, 'motels_black_money', 0, 'steam:110000138e1d27b'),
(539, 'bank_savings', 0, 'steam:11000011ac5bca8'),
(540, 'caution', 0, 'steam:11000011ac5bca8'),
(541, 'motels_bed_black_money', 0, 'steam:11000011ac5bca8'),
(542, 'motels_black_money', 0, 'steam:11000011ac5bca8'),
(543, 'property_black_money', 0, 'steam:11000011ac5bca8'),
(544, 'hotel_black_money', 0, 'steam:11000011ac5bca8'),
(545, 'bank_savings', 0, 'steam:110000133958a7c'),
(546, 'caution', 0, 'steam:110000133958a7c'),
(547, 'hotel_black_money', 0, 'steam:110000133958a7c'),
(548, 'motels_black_money', 0, 'steam:110000133958a7c'),
(549, 'motels_bed_black_money', 0, 'steam:110000133958a7c'),
(550, 'property_black_money', 0, 'steam:110000133958a7c'),
(551, 'caution', 0, 'steam:1100001162f8a9b'),
(552, 'bank_savings', 0, 'steam:1100001162f8a9b'),
(553, 'hotel_black_money', 0, 'steam:1100001162f8a9b'),
(554, 'motels_bed_black_money', 0, 'steam:1100001162f8a9b'),
(555, 'motels_black_money', 0, 'steam:1100001162f8a9b'),
(556, 'property_black_money', 0, 'steam:1100001162f8a9b'),
(557, 'bank_savings', 0, 'steam:11000013c9f6953'),
(558, 'caution', 0, 'steam:11000013c9f6953'),
(559, 'motels_bed_black_money', 0, 'steam:11000013c9f6953'),
(560, 'hotel_black_money', 0, 'steam:11000013c9f6953'),
(561, 'motels_black_money', 0, 'steam:11000013c9f6953'),
(562, 'property_black_money', 0, 'steam:11000013c9f6953'),
(563, 'bank_savings', 0, 'steam:110000132770e73'),
(564, 'caution', 0, 'steam:110000132770e73'),
(565, 'property_black_money', 0, 'steam:110000132770e73'),
(566, 'hotel_black_money', 0, 'steam:110000132770e73'),
(567, 'motels_bed_black_money', 0, 'steam:110000132770e73'),
(568, 'motels_black_money', 0, 'steam:110000132770e73'),
(569, 'bank_savings', 0, 'steam:110000113a53c85'),
(570, 'caution', 0, 'steam:110000113a53c85'),
(571, 'hotel_black_money', 0, 'steam:110000113a53c85'),
(572, 'motels_bed_black_money', 0, 'steam:110000113a53c85'),
(573, 'motels_black_money', 0, 'steam:110000113a53c85'),
(574, 'property_black_money', 0, 'steam:110000113a53c85'),
(575, 'bank_savings', 0, 'steam:11000010644b7c2'),
(576, 'caution', 0, 'steam:11000010644b7c2'),
(577, 'motels_bed_black_money', 0, 'steam:11000010644b7c2'),
(578, 'hotel_black_money', 0, 'steam:11000010644b7c2'),
(579, 'motels_black_money', 0, 'steam:11000010644b7c2'),
(580, 'property_black_money', 0, 'steam:11000010644b7c2'),
(581, 'bank_savings', 0, 'steam:110000119c48be1'),
(582, 'caution', 0, 'steam:110000119c48be1'),
(583, 'hotel_black_money', 0, 'steam:110000119c48be1'),
(584, 'motels_bed_black_money', 0, 'steam:110000119c48be1'),
(585, 'motels_black_money', 0, 'steam:110000119c48be1'),
(586, 'property_black_money', 0, 'steam:110000119c48be1'),
(587, 'caution', 0, 'steam:110000132d9fcfa'),
(588, 'bank_savings', 0, 'steam:110000132d9fcfa'),
(589, 'hotel_black_money', 0, 'steam:110000132d9fcfa'),
(590, 'motels_black_money', 0, 'steam:110000132d9fcfa'),
(591, 'motels_bed_black_money', 0, 'steam:110000132d9fcfa'),
(592, 'property_black_money', 0, 'steam:110000132d9fcfa'),
(593, 'hotel_black_money', 0, 'steam:11000011c8515bb'),
(594, 'bank_savings', 0, 'steam:11000011c8515bb'),
(595, 'caution', 0, 'steam:11000011c8515bb'),
(596, 'motels_black_money', 0, 'steam:11000011c8515bb'),
(597, 'property_black_money', 0, 'steam:11000011c8515bb'),
(598, 'motels_bed_black_money', 0, 'steam:11000011c8515bb'),
(599, 'bank_savings', 0, 'steam:110000132105c1a'),
(600, 'caution', 0, 'steam:110000132105c1a'),
(601, 'motels_black_money', 0, 'steam:110000132105c1a'),
(602, 'property_black_money', 0, 'steam:110000132105c1a'),
(603, 'hotel_black_money', 0, 'steam:110000132105c1a'),
(604, 'motels_bed_black_money', 0, 'steam:110000132105c1a'),
(605, 'bank_savings', 0, 'steam:110000113340909'),
(606, 'caution', 0, 'steam:110000113340909'),
(607, 'hotel_black_money', 0, 'steam:110000113340909'),
(608, 'motels_bed_black_money', 0, 'steam:110000113340909'),
(609, 'motels_black_money', 0, 'steam:110000113340909'),
(610, 'property_black_money', 0, 'steam:110000113340909'),
(611, 'bank_savings', 0, 'steam:11000011577b7d3'),
(612, 'caution', 0, 'steam:11000011577b7d3'),
(613, 'hotel_black_money', 0, 'steam:11000011577b7d3'),
(614, 'motels_bed_black_money', 0, 'steam:11000011577b7d3'),
(615, 'motels_black_money', 0, 'steam:11000011577b7d3'),
(616, 'property_black_money', 0, 'steam:11000011577b7d3'),
(617, 'bank_savings', 0, 'steam:110000113342746'),
(618, 'motels_bed_black_money', 0, 'steam:110000113342746'),
(619, 'caution', 0, 'steam:110000113342746'),
(620, 'hotel_black_money', 0, 'steam:110000113342746'),
(621, 'motels_black_money', 0, 'steam:110000113342746'),
(622, 'property_black_money', 0, 'steam:110000113342746'),
(623, 'bank_savings', 0, 'steam:110000109688f28'),
(624, 'motels_black_money', 0, 'steam:110000109688f28'),
(625, 'property_black_money', 0, 'steam:110000109688f28'),
(626, 'caution', 0, 'steam:110000109688f28'),
(627, 'hotel_black_money', 0, 'steam:110000109688f28'),
(628, 'motels_bed_black_money', 0, 'steam:110000109688f28'),
(629, 'bank_savings', 0, 'steam:110000131cd6c01'),
(630, 'caution', 0, 'steam:110000131cd6c01'),
(631, 'motels_bed_black_money', 0, 'steam:110000131cd6c01'),
(632, 'hotel_black_money', 0, 'steam:110000131cd6c01'),
(633, 'motels_black_money', 0, 'steam:110000131cd6c01'),
(634, 'property_black_money', 0, 'steam:110000131cd6c01'),
(635, 'bank_savings', 0, 'steam:11000010c0e76cd'),
(636, 'caution', 0, 'steam:11000010c0e76cd'),
(637, 'hotel_black_money', 0, 'steam:11000010c0e76cd'),
(638, 'motels_bed_black_money', 0, 'steam:11000010c0e76cd'),
(639, 'motels_black_money', 0, 'steam:11000010c0e76cd'),
(640, 'property_black_money', 0, 'steam:11000010c0e76cd'),
(641, 'bank_savings', 0, 'steam:11000013b4f5861'),
(642, 'hotel_black_money', 0, 'steam:11000013b4f5861'),
(643, 'motels_bed_black_money', 0, 'steam:11000013b4f5861'),
(644, 'caution', 0, 'steam:11000013b4f5861'),
(645, 'motels_black_money', 0, 'steam:11000013b4f5861'),
(646, 'property_black_money', 0, 'steam:11000013b4f5861'),
(647, 'bank_savings', 0, 'steam:1100001125f7ba4'),
(648, 'caution', 0, 'steam:1100001125f7ba4'),
(649, 'hotel_black_money', 0, 'steam:1100001125f7ba4'),
(650, 'motels_bed_black_money', 0, 'steam:1100001125f7ba4'),
(651, 'motels_black_money', 0, 'steam:1100001125f7ba4'),
(652, 'property_black_money', 0, 'steam:1100001125f7ba4'),
(653, 'bank_savings', 0, 'steam:11000013c025f3a'),
(654, 'hotel_black_money', 0, 'steam:11000013c025f3a'),
(655, 'caution', 0, 'steam:11000013c025f3a'),
(656, 'motels_bed_black_money', 0, 'steam:11000013c025f3a'),
(657, 'motels_black_money', 0, 'steam:11000013c025f3a'),
(658, 'property_black_money', 0, 'steam:11000013c025f3a'),
(659, 'bank_savings', 0, 'steam:11000011aa73a9d'),
(660, 'caution', 0, 'steam:11000011aa73a9d'),
(661, 'hotel_black_money', 0, 'steam:11000011aa73a9d'),
(662, 'motels_bed_black_money', 0, 'steam:11000011aa73a9d'),
(663, 'motels_black_money', 0, 'steam:11000011aa73a9d'),
(664, 'property_black_money', 0, 'steam:11000011aa73a9d'),
(665, 'bank_savings', 0, 'steam:11000011936f79b'),
(666, 'caution', 0, 'steam:11000011936f79b'),
(667, 'hotel_black_money', 0, 'steam:11000011936f79b'),
(668, 'motels_bed_black_money', 0, 'steam:11000011936f79b'),
(669, 'property_black_money', 0, 'steam:11000011936f79b'),
(670, 'motels_black_money', 0, 'steam:11000011936f79b'),
(671, 'caution', 0, 'steam:110000131d78ba2'),
(672, 'bank_savings', 0, 'steam:110000131d78ba2'),
(673, 'hotel_black_money', 0, 'steam:110000131d78ba2'),
(674, 'motels_bed_black_money', 0, 'steam:110000131d78ba2'),
(675, 'motels_black_money', 0, 'steam:110000131d78ba2'),
(676, 'property_black_money', 0, 'steam:110000131d78ba2'),
(677, 'bank_savings', 0, 'steam:11000013c474201'),
(678, 'caution', 0, 'steam:11000013c474201'),
(679, 'hotel_black_money', 0, 'steam:11000013c474201'),
(680, 'motels_bed_black_money', 0, 'steam:11000013c474201'),
(681, 'property_black_money', 0, 'steam:11000013c474201'),
(682, 'motels_black_money', 0, 'steam:11000013c474201'),
(683, 'caution', 0, 'steam:110000114488e0e'),
(684, 'bank_savings', 0, 'steam:110000114488e0e'),
(685, 'motels_black_money', 0, 'steam:110000114488e0e'),
(686, 'hotel_black_money', 0, 'steam:110000114488e0e'),
(687, 'motels_bed_black_money', 0, 'steam:110000114488e0e'),
(688, 'property_black_money', 0, 'steam:110000114488e0e'),
(689, 'bank_savings', 0, 'steam:11000010f31f6bf'),
(690, 'caution', 0, 'steam:11000010f31f6bf'),
(691, 'hotel_black_money', 0, 'steam:11000010f31f6bf'),
(692, 'motels_bed_black_money', 0, 'steam:11000010f31f6bf'),
(693, 'motels_black_money', 0, 'steam:11000010f31f6bf'),
(694, 'property_black_money', 0, 'steam:11000010f31f6bf'),
(695, 'bank_savings', 0, 'steam:110000135132b6c'),
(696, 'caution', 0, 'steam:110000135132b6c'),
(697, 'hotel_black_money', 0, 'steam:110000135132b6c'),
(698, 'motels_bed_black_money', 0, 'steam:110000135132b6c'),
(699, 'motels_black_money', 0, 'steam:110000135132b6c'),
(700, 'property_black_money', 0, 'steam:110000135132b6c'),
(701, 'bank_savings', 0, 'steam:11000013c2f0e94'),
(702, 'hotel_black_money', 0, 'steam:11000013c2f0e94'),
(703, 'motels_bed_black_money', 0, 'steam:11000013c2f0e94'),
(704, 'caution', 0, 'steam:11000013c2f0e94'),
(705, 'motels_black_money', 0, 'steam:11000013c2f0e94'),
(706, 'property_black_money', 0, 'steam:11000013c2f0e94'),
(707, 'caution', 0, 'steam:110000111e19998'),
(708, 'bank_savings', 0, 'steam:110000111e19998'),
(709, 'hotel_black_money', 0, 'steam:110000111e19998'),
(710, 'motels_bed_black_money', 0, 'steam:110000111e19998'),
(711, 'motels_black_money', 0, 'steam:110000111e19998'),
(712, 'property_black_money', 0, 'steam:110000111e19998'),
(713, 'caution', 0, 'steam:11000013c67e18a'),
(714, 'bank_savings', 0, 'steam:11000013c67e18a'),
(715, 'hotel_black_money', 0, 'steam:11000013c67e18a'),
(716, 'motels_black_money', 0, 'steam:11000013c67e18a'),
(717, 'motels_bed_black_money', 0, 'steam:11000013c67e18a'),
(718, 'property_black_money', 0, 'steam:11000013c67e18a'),
(719, 'bank_savings', 0, 'steam:11000013cdbdd26'),
(720, 'property_black_money', 0, 'steam:11000013cdbdd26'),
(721, 'caution', 0, 'steam:11000013cdbdd26'),
(722, 'hotel_black_money', 0, 'steam:11000013cdbdd26'),
(723, 'motels_bed_black_money', 0, 'steam:11000013cdbdd26'),
(724, 'motels_black_money', 0, 'steam:11000013cdbdd26'),
(725, 'society_casino', 305300.2, NULL),
(726, 'bank_savings', 0, 'steam:11000011217ac10'),
(727, 'motels_black_money', 0, 'steam:11000011217ac10'),
(728, 'caution', 0, 'steam:11000011217ac10'),
(729, 'hotel_black_money', 0, 'steam:11000011217ac10'),
(730, 'motels_bed_black_money', 0, 'steam:11000011217ac10'),
(731, 'property_black_money', 0, 'steam:11000011217ac10'),
(732, 'bank_savings', 0, 'steam:110000101c383d4'),
(733, 'hotel_black_money', 0, 'steam:110000101c383d4'),
(734, 'caution', 0, 'steam:110000101c383d4'),
(735, 'motels_bed_black_money', 0, 'steam:110000101c383d4'),
(736, 'motels_black_money', 0, 'steam:110000101c383d4'),
(737, 'property_black_money', 0, 'steam:110000101c383d4'),
(738, 'bank_savings', 0, 'steam:1100001366e03a5'),
(739, 'caution', 0, 'steam:1100001366e03a5'),
(740, 'hotel_black_money', 0, 'steam:1100001366e03a5'),
(741, 'motels_bed_black_money', 0, 'steam:1100001366e03a5'),
(742, 'motels_black_money', 0, 'steam:1100001366e03a5'),
(743, 'property_black_money', 0, 'steam:1100001366e03a5'),
(744, 'bank_savings', 0, 'steam:110000112cd9140'),
(745, 'motels_bed_black_money', 0, 'steam:110000112cd9140'),
(746, 'motels_black_money', 0, 'steam:110000112cd9140'),
(747, 'caution', 0, 'steam:110000112cd9140'),
(748, 'hotel_black_money', 0, 'steam:110000112cd9140'),
(749, 'property_black_money', 0, 'steam:110000112cd9140'),
(750, 'bank_savings', 0, 'steam:1100001359b83bb'),
(751, 'hotel_black_money', 0, 'steam:1100001359b83bb'),
(752, 'caution', 0, 'steam:1100001359b83bb'),
(753, 'motels_bed_black_money', 0, 'steam:1100001359b83bb'),
(754, 'motels_black_money', 0, 'steam:1100001359b83bb'),
(755, 'property_black_money', 0, 'steam:1100001359b83bb'),
(756, 'bank_savings', 0, 'steam:11000011ac15cc6'),
(757, 'caution', 0, 'steam:11000011ac15cc6'),
(758, 'hotel_black_money', 0, 'steam:11000011ac15cc6'),
(759, 'motels_black_money', 0, 'steam:11000011ac15cc6'),
(760, 'property_black_money', 0, 'steam:11000011ac15cc6'),
(761, 'motels_bed_black_money', 0, 'steam:11000011ac15cc6'),
(768, 'bank_savings', 0, 'steam:11000013730fb81'),
(769, 'hotel_black_money', 0, 'steam:11000013730fb81'),
(770, 'caution', 0, 'steam:11000013730fb81'),
(771, 'motels_bed_black_money', 0, 'steam:11000013730fb81'),
(772, 'motels_black_money', 0, 'steam:11000013730fb81'),
(773, 'property_black_money', 0, 'steam:11000013730fb81'),
(774, 'bank_savings', 0, 'steam:110000111d8287b'),
(775, 'caution', 0, 'steam:110000111d8287b'),
(776, 'hotel_black_money', 0, 'steam:110000111d8287b'),
(777, 'motels_bed_black_money', 0, 'steam:110000111d8287b'),
(778, 'motels_black_money', 0, 'steam:110000111d8287b'),
(779, 'property_black_money', 0, 'steam:110000111d8287b'),
(780, 'bank_savings', 0, 'steam:110000116406beb'),
(781, 'caution', 0, 'steam:110000116406beb'),
(782, 'hotel_black_money', 0, 'steam:110000116406beb'),
(783, 'motels_bed_black_money', 0, 'steam:110000116406beb'),
(784, 'motels_black_money', 0, 'steam:110000116406beb'),
(785, 'property_black_money', 0, 'steam:110000116406beb'),
(786, 'bank_savings', 0, 'steam:110000109054fa2'),
(787, 'caution', 0, 'steam:110000109054fa2'),
(788, 'hotel_black_money', 0, 'steam:110000109054fa2'),
(789, 'motels_bed_black_money', 0, 'steam:110000109054fa2'),
(790, 'motels_black_money', 0, 'steam:110000109054fa2'),
(791, 'property_black_money', 0, 'steam:110000109054fa2'),
(792, 'hotel_black_money', 0, 'steam:110000101b96986'),
(793, 'motels_bed_black_money', 0, 'steam:110000101b96986'),
(794, 'bank_savings', 0, 'steam:110000101b96986'),
(795, 'caution', 0, 'steam:110000101b96986'),
(796, 'motels_black_money', 0, 'steam:110000101b96986'),
(797, 'property_black_money', 0, 'steam:110000101b96986'),
(798, 'bank_savings', 0, 'steam:110000131fcd6c1'),
(799, 'caution', 0, 'steam:110000131fcd6c1'),
(800, 'hotel_black_money', 0, 'steam:110000131fcd6c1'),
(801, 'motels_bed_black_money', 0, 'steam:110000131fcd6c1'),
(802, 'motels_black_money', 0, 'steam:110000131fcd6c1'),
(803, 'property_black_money', 0, 'steam:110000131fcd6c1'),
(804, 'hotel_black_money', 0, 'steam:110000111119704'),
(805, 'bank_savings', 0, 'steam:110000111119704'),
(806, 'caution', 0, 'steam:110000111119704'),
(807, 'motels_black_money', 0, 'steam:110000111119704'),
(808, 'motels_bed_black_money', 0, 'steam:110000111119704'),
(809, 'property_black_money', 0, 'steam:110000111119704'),
(810, 'bank_savings', 0, 'steam:110000107dd6714'),
(811, 'caution', 0, 'steam:110000107dd6714'),
(812, 'hotel_black_money', 0, 'steam:110000107dd6714'),
(813, 'motels_bed_black_money', 0, 'steam:110000107dd6714'),
(814, 'motels_black_money', 0, 'steam:110000107dd6714'),
(815, 'property_black_money', 0, 'steam:110000107dd6714'),
(816, 'bank_savings', 0, 'steam:110000119d777ce'),
(817, 'caution', 0, 'steam:110000119d777ce'),
(818, 'motels_bed_black_money', 0, 'steam:110000119d777ce'),
(819, 'motels_black_money', 0, 'steam:110000119d777ce'),
(820, 'hotel_black_money', 0, 'steam:110000119d777ce'),
(821, 'property_black_money', 0, 'steam:110000119d777ce'),
(822, 'bank_savings', 0, 'steam:110000107a63842'),
(823, 'hotel_black_money', 0, 'steam:110000107a63842'),
(824, 'caution', 0, 'steam:110000107a63842'),
(825, 'motels_bed_black_money', 0, 'steam:110000107a63842'),
(826, 'motels_black_money', 0, 'steam:110000107a63842'),
(827, 'property_black_money', 0, 'steam:110000107a63842'),
(828, 'bank_savings', 0, 'steam:110000103443878'),
(829, 'caution', 0, 'steam:110000103443878'),
(830, 'hotel_black_money', 0, 'steam:110000103443878'),
(831, 'motels_bed_black_money', 0, 'steam:110000103443878'),
(832, 'motels_black_money', 0, 'steam:110000103443878'),
(833, 'property_black_money', 0, 'steam:110000103443878'),
(834, 'caution', 0, 'steam:11000011042c894'),
(835, 'bank_savings', 0, 'steam:11000011042c894'),
(836, 'property_black_money', 0, 'steam:11000011042c894'),
(837, 'hotel_black_money', 0, 'steam:11000011042c894'),
(838, 'motels_bed_black_money', 0, 'steam:11000011042c894'),
(839, 'motels_black_money', 0, 'steam:11000011042c894'),
(840, 'bank_savings', 0, 'steam:110000115c9d654'),
(841, 'caution', 0, 'steam:110000115c9d654'),
(842, 'hotel_black_money', 0, 'steam:110000115c9d654'),
(843, 'motels_bed_black_money', 0, 'steam:110000115c9d654'),
(844, 'motels_black_money', 0, 'steam:110000115c9d654'),
(845, 'property_black_money', 0, 'steam:110000115c9d654'),
(846, 'bank_savings', 0, 'steam:110000107d9c6d5'),
(847, 'caution', 0, 'steam:110000107d9c6d5'),
(848, 'motels_black_money', 0, 'steam:110000107d9c6d5'),
(849, 'hotel_black_money', 0, 'steam:110000107d9c6d5'),
(850, 'motels_bed_black_money', 0, 'steam:110000107d9c6d5'),
(851, 'property_black_money', 0, 'steam:110000107d9c6d5'),
(852, 'caution', 0, 'steam:11000013cb98fee'),
(853, 'bank_savings', 0, 'steam:11000013cb98fee'),
(854, 'hotel_black_money', 0, 'steam:11000013cb98fee'),
(855, 'motels_bed_black_money', 0, 'steam:11000013cb98fee'),
(856, 'motels_black_money', 0, 'steam:11000013cb98fee'),
(857, 'property_black_money', 0, 'steam:11000013cb98fee'),
(858, 'hotel_black_money', 0, 'steam:11000010c282bb8'),
(859, 'bank_savings', 0, 'steam:11000010c282bb8'),
(860, 'caution', 0, 'steam:11000010c282bb8'),
(861, 'motels_black_money', 0, 'steam:11000010c282bb8'),
(862, 'motels_bed_black_money', 0, 'steam:11000010c282bb8'),
(863, 'property_black_money', 0, 'steam:11000010c282bb8'),
(864, 'hotel_black_money', 0, 'steam:110000108536209'),
(865, 'motels_bed_black_money', 0, 'steam:110000108536209'),
(866, 'motels_black_money', 0, 'steam:110000108536209'),
(867, 'bank_savings', 0, 'steam:110000108536209'),
(868, 'caution', 0, 'steam:110000108536209'),
(869, 'property_black_money', 0, 'steam:110000108536209'),
(870, 'bank_savings', 0, 'steam:1100001149553fe'),
(871, 'caution', 0, 'steam:1100001149553fe'),
(872, 'hotel_black_money', 0, 'steam:1100001149553fe'),
(873, 'motels_black_money', 0, 'steam:1100001149553fe'),
(874, 'property_black_money', 0, 'steam:1100001149553fe'),
(875, 'motels_bed_black_money', 0, 'steam:1100001149553fe'),
(876, 'caution', 0, 'steam:110000113a39857'),
(877, 'bank_savings', 0, 'steam:110000113a39857'),
(878, 'hotel_black_money', 0, 'steam:110000113a39857'),
(879, 'motels_bed_black_money', 0, 'steam:110000113a39857'),
(880, 'motels_black_money', 0, 'steam:110000113a39857'),
(881, 'property_black_money', 0, 'steam:110000113a39857'),
(882, 'bank_savings', 0, 'steam:11000013c515a15'),
(883, 'caution', 0, 'steam:11000013c515a15'),
(884, 'hotel_black_money', 0, 'steam:11000013c515a15'),
(885, 'property_black_money', 0, 'steam:11000013c515a15'),
(886, 'motels_bed_black_money', 0, 'steam:11000013c515a15'),
(887, 'motels_black_money', 0, 'steam:11000013c515a15'),
(888, 'caution', 0, 'steam:11000011748b954'),
(889, 'bank_savings', 0, 'steam:11000011748b954'),
(890, 'motels_black_money', 0, 'steam:11000011748b954'),
(891, 'hotel_black_money', 0, 'steam:11000011748b954'),
(892, 'motels_bed_black_money', 0, 'steam:11000011748b954'),
(893, 'property_black_money', 0, 'steam:11000011748b954'),
(894, 'caution', 0, 'steam:11000010afa5283'),
(895, 'bank_savings', 0, 'steam:11000010afa5283'),
(896, 'hotel_black_money', 0, 'steam:11000010afa5283'),
(897, 'motels_bed_black_money', 0, 'steam:11000010afa5283'),
(898, 'motels_black_money', 0, 'steam:11000010afa5283'),
(899, 'property_black_money', 0, 'steam:11000010afa5283'),
(900, 'bank_savings', 0, 'steam:1100001348301ac'),
(901, 'caution', 0, 'steam:1100001348301ac'),
(902, 'hotel_black_money', 0, 'steam:1100001348301ac'),
(903, 'motels_bed_black_money', 0, 'steam:1100001348301ac'),
(904, 'motels_black_money', 0, 'steam:1100001348301ac'),
(905, 'property_black_money', 0, 'steam:1100001348301ac'),
(906, 'bank_savings', 0, 'steam:110000138d29e10'),
(907, 'caution', 0, 'steam:110000138d29e10'),
(908, 'motels_black_money', 0, 'steam:110000138d29e10'),
(909, 'property_black_money', 0, 'steam:110000138d29e10'),
(910, 'hotel_black_money', 0, 'steam:110000138d29e10'),
(911, 'motels_bed_black_money', 0, 'steam:110000138d29e10'),
(912, 'caution', 0, 'steam:11000013ce7a31c'),
(913, 'hotel_black_money', 0, 'steam:11000013ce7a31c'),
(914, 'bank_savings', 0, 'steam:11000013ce7a31c'),
(915, 'motels_bed_black_money', 0, 'steam:11000013ce7a31c'),
(916, 'motels_black_money', 0, 'steam:11000013ce7a31c'),
(917, 'property_black_money', 0, 'steam:11000013ce7a31c'),
(918, 'caution', 0, 'steam:11000013553845f'),
(919, 'bank_savings', 0, 'steam:11000013553845f'),
(920, 'motels_bed_black_money', 0, 'steam:11000013553845f'),
(921, 'motels_black_money', 0, 'steam:11000013553845f'),
(922, 'property_black_money', 0, 'steam:11000013553845f'),
(923, 'hotel_black_money', 0, 'steam:11000013553845f'),
(924, 'caution', 0, 'steam:11000013a4cbd71'),
(925, 'motels_black_money', 0, 'steam:11000013a4cbd71'),
(926, 'bank_savings', 0, 'steam:11000013a4cbd71'),
(927, 'hotel_black_money', 0, 'steam:11000013a4cbd71'),
(928, 'motels_bed_black_money', 0, 'steam:11000013a4cbd71'),
(929, 'property_black_money', 0, 'steam:11000013a4cbd71'),
(930, 'bank_savings', 0, 'steam:110000137a8daf3'),
(931, 'caution', 0, 'steam:110000137a8daf3'),
(932, 'hotel_black_money', 0, 'steam:110000137a8daf3'),
(933, 'motels_bed_black_money', 0, 'steam:110000137a8daf3'),
(934, 'motels_black_money', 0, 'steam:110000137a8daf3'),
(935, 'property_black_money', 0, 'steam:110000137a8daf3'),
(936, 'bank_savings', 0, 'steam:110000137291fda'),
(937, 'caution', 0, 'steam:110000137291fda'),
(938, 'hotel_black_money', 0, 'steam:110000137291fda'),
(939, 'motels_bed_black_money', 0, 'steam:110000137291fda'),
(940, 'motels_black_money', 0, 'steam:110000137291fda'),
(941, 'property_black_money', 0, 'steam:110000137291fda'),
(942, 'bank_savings', 0, 'steam:110000111d838e4'),
(943, 'motels_black_money', 0, 'steam:110000111d838e4'),
(944, 'caution', 0, 'steam:110000111d838e4'),
(945, 'hotel_black_money', 0, 'steam:110000111d838e4'),
(946, 'motels_bed_black_money', 0, 'steam:110000111d838e4'),
(947, 'property_black_money', 0, 'steam:110000111d838e4'),
(948, 'bank_savings', 0, 'steam:1100001166bc144'),
(949, 'caution', 0, 'steam:1100001166bc144'),
(950, 'hotel_black_money', 0, 'steam:1100001166bc144'),
(951, 'motels_bed_black_money', 0, 'steam:1100001166bc144'),
(952, 'motels_black_money', 0, 'steam:1100001166bc144'),
(953, 'property_black_money', 0, 'steam:1100001166bc144'),
(960, 'bank_savings', 0, 'steam:11000010e9c4ba3'),
(961, 'caution', 0, 'steam:11000010e9c4ba3'),
(962, 'hotel_black_money', 0, 'steam:11000010e9c4ba3'),
(963, 'motels_bed_black_money', 0, 'steam:11000010e9c4ba3'),
(964, 'motels_black_money', 0, 'steam:11000010e9c4ba3'),
(965, 'property_black_money', 0, 'steam:11000010e9c4ba3'),
(966, 'caution', 0, 'steam:110000135462c28'),
(967, 'bank_savings', 0, 'steam:110000135462c28'),
(968, 'motels_bed_black_money', 0, 'steam:110000135462c28'),
(969, 'motels_black_money', 0, 'steam:110000135462c28'),
(970, 'hotel_black_money', 0, 'steam:110000135462c28'),
(971, 'property_black_money', 0, 'steam:110000135462c28'),
(972, 'hotel_black_money', 0, 'steam:11000013bfb8ac1'),
(973, 'bank_savings', 0, 'steam:11000013bfb8ac1'),
(974, 'caution', 0, 'steam:11000013bfb8ac1'),
(975, 'motels_bed_black_money', 0, 'steam:11000013bfb8ac1'),
(976, 'motels_black_money', 0, 'steam:11000013bfb8ac1'),
(977, 'property_black_money', 0, 'steam:11000013bfb8ac1'),
(978, 'bank_savings', 0, 'steam:1100001129c41eb'),
(979, 'caution', 0, 'steam:1100001129c41eb'),
(980, 'hotel_black_money', 0, 'steam:1100001129c41eb'),
(981, 'motels_bed_black_money', 0, 'steam:1100001129c41eb'),
(982, 'motels_black_money', 0, 'steam:1100001129c41eb'),
(983, 'property_black_money', 0, 'steam:1100001129c41eb'),
(984, 'caution', 0, 'steam:110000117ade868'),
(985, 'bank_savings', 0, 'steam:110000117ade868'),
(986, 'hotel_black_money', 0, 'steam:110000117ade868'),
(987, 'motels_black_money', 0, 'steam:110000117ade868'),
(988, 'motels_bed_black_money', 0, 'steam:110000117ade868'),
(989, 'property_black_money', 0, 'steam:110000117ade868'),
(990, 'caution', 0, 'steam:11000011463756e'),
(991, 'bank_savings', 0, 'steam:11000011463756e'),
(992, 'motels_bed_black_money', 0, 'steam:11000011463756e'),
(993, 'motels_black_money', 0, 'steam:11000011463756e'),
(994, 'property_black_money', 0, 'steam:11000011463756e'),
(995, 'hotel_black_money', 0, 'steam:11000011463756e'),
(996, 'bank_savings', 0, 'steam:110000111f9662a'),
(997, 'caution', 0, 'steam:110000111f9662a'),
(998, 'hotel_black_money', 0, 'steam:110000111f9662a'),
(999, 'motels_bed_black_money', 0, 'steam:110000111f9662a'),
(1000, 'motels_black_money', 0, 'steam:110000111f9662a'),
(1001, 'property_black_money', 0, 'steam:110000111f9662a'),
(1002, 'bank_savings', 0, 'steam:11000011a8ce5a0'),
(1003, 'caution', 0, 'steam:11000011a8ce5a0'),
(1004, 'motels_black_money', 0, 'steam:11000011a8ce5a0'),
(1005, 'hotel_black_money', 0, 'steam:11000011a8ce5a0'),
(1006, 'motels_bed_black_money', 0, 'steam:11000011a8ce5a0'),
(1007, 'property_black_money', 0, 'steam:11000011a8ce5a0'),
(1008, 'bank_savings', 0, 'steam:1100001165063fc'),
(1009, 'caution', 0, 'steam:1100001165063fc'),
(1010, 'motels_bed_black_money', 0, 'steam:1100001165063fc'),
(1011, 'hotel_black_money', 0, 'steam:1100001165063fc'),
(1012, 'motels_black_money', 0, 'steam:1100001165063fc'),
(1013, 'property_black_money', 0, 'steam:1100001165063fc'),
(1014, 'caution', 0, 'steam:11000011a3faaec'),
(1015, 'bank_savings', 0, 'steam:11000011a3faaec'),
(1016, 'hotel_black_money', 0, 'steam:11000011a3faaec'),
(1017, 'motels_black_money', 0, 'steam:11000011a3faaec'),
(1018, 'motels_bed_black_money', 0, 'steam:11000011a3faaec'),
(1019, 'property_black_money', 0, 'steam:11000011a3faaec'),
(1020, 'caution', 0, 'steam:110000117c9842a'),
(1021, 'hotel_black_money', 0, 'steam:110000117c9842a'),
(1022, 'motels_bed_black_money', 0, 'steam:110000117c9842a'),
(1023, 'bank_savings', 0, 'steam:110000117c9842a'),
(1024, 'motels_black_money', 0, 'steam:110000117c9842a'),
(1025, 'property_black_money', 0, 'steam:110000117c9842a'),
(1026, 'caution', 0, 'steam:110000113e69d4f'),
(1027, 'bank_savings', 0, 'steam:110000113e69d4f'),
(1028, 'motels_bed_black_money', 0, 'steam:110000113e69d4f'),
(1029, 'property_black_money', 0, 'steam:110000113e69d4f'),
(1030, 'hotel_black_money', 0, 'steam:110000113e69d4f');
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1031, 'motels_black_money', 0, 'steam:110000113e69d4f'),
(1032, 'caution', 0, 'steam:110000134d0d786'),
(1033, 'hotel_black_money', 0, 'steam:110000134d0d786'),
(1034, 'bank_savings', 0, 'steam:110000134d0d786'),
(1035, 'motels_bed_black_money', 0, 'steam:110000134d0d786'),
(1036, 'motels_black_money', 0, 'steam:110000134d0d786'),
(1037, 'property_black_money', 0, 'steam:110000134d0d786'),
(1038, 'caution', 0, 'steam:1100001141baadc'),
(1039, 'bank_savings', 0, 'steam:1100001141baadc'),
(1040, 'hotel_black_money', 0, 'steam:1100001141baadc'),
(1041, 'motels_bed_black_money', 0, 'steam:1100001141baadc'),
(1042, 'motels_black_money', 0, 'steam:1100001141baadc'),
(1043, 'property_black_money', 0, 'steam:1100001141baadc'),
(1044, 'bank_savings', 0, 'steam:1100001381473b8'),
(1045, 'caution', 0, 'steam:1100001381473b8'),
(1046, 'hotel_black_money', 0, 'steam:1100001381473b8'),
(1047, 'motels_bed_black_money', 0, 'steam:1100001381473b8'),
(1048, 'motels_black_money', 0, 'steam:1100001381473b8'),
(1049, 'property_black_money', 0, 'steam:1100001381473b8'),
(1050, 'bank_savings', 0, 'steam:11000010c6c280c'),
(1051, 'hotel_black_money', 0, 'steam:11000010c6c280c'),
(1052, 'motels_bed_black_money', 0, 'steam:11000010c6c280c'),
(1053, 'motels_black_money', 0, 'steam:11000010c6c280c'),
(1054, 'caution', 0, 'steam:11000010c6c280c'),
(1055, 'property_black_money', 0, 'steam:11000010c6c280c'),
(1056, 'bank_savings', 0, 'steam:11000013cafc916'),
(1057, 'caution', 0, 'steam:11000013cafc916'),
(1058, 'hotel_black_money', 0, 'steam:11000013cafc916'),
(1059, 'motels_bed_black_money', 0, 'steam:11000013cafc916'),
(1060, 'motels_black_money', 0, 'steam:11000013cafc916'),
(1061, 'property_black_money', 0, 'steam:11000013cafc916'),
(1062, 'caution', 0, 'steam:110000112cb93fa'),
(1063, 'hotel_black_money', 0, 'steam:110000112cb93fa'),
(1064, 'motels_bed_black_money', 0, 'steam:110000112cb93fa'),
(1065, 'property_black_money', 0, 'steam:110000112cb93fa'),
(1066, 'bank_savings', 0, 'steam:110000112cb93fa'),
(1067, 'motels_black_money', 0, 'steam:110000112cb93fa'),
(1068, 'bank_savings', 0, 'steam:11000010dbee8b6'),
(1069, 'caution', 0, 'steam:11000010dbee8b6'),
(1070, 'hotel_black_money', 0, 'steam:11000010dbee8b6'),
(1071, 'motels_black_money', 0, 'steam:11000010dbee8b6'),
(1072, 'property_black_money', 0, 'steam:11000010dbee8b6'),
(1073, 'motels_bed_black_money', 0, 'steam:11000010dbee8b6'),
(1074, 'bank_savings', 0, 'steam:11000013d02d0e8'),
(1075, 'caution', 0, 'steam:11000013d02d0e8'),
(1076, 'hotel_black_money', 0, 'steam:11000013d02d0e8'),
(1077, 'motels_bed_black_money', 0, 'steam:11000013d02d0e8'),
(1078, 'motels_black_money', 0, 'steam:11000013d02d0e8'),
(1079, 'property_black_money', 0, 'steam:11000013d02d0e8'),
(1080, 'property_black_money', 0, 'steam:1100001333ee0d5'),
(1081, 'bank_savings', 0, 'steam:1100001333ee0d5'),
(1082, 'caution', 0, 'steam:1100001333ee0d5'),
(1083, 'hotel_black_money', 0, 'steam:1100001333ee0d5'),
(1084, 'motels_bed_black_money', 0, 'steam:1100001333ee0d5'),
(1085, 'motels_black_money', 0, 'steam:1100001333ee0d5'),
(1086, 'bank_savings', 0, 'steam:11000010d5a8e59'),
(1087, 'caution', 0, 'steam:11000010d5a8e59'),
(1088, 'hotel_black_money', 0, 'steam:11000010d5a8e59'),
(1089, 'motels_bed_black_money', 0, 'steam:11000010d5a8e59'),
(1090, 'motels_black_money', 0, 'steam:11000010d5a8e59'),
(1091, 'property_black_money', 0, 'steam:11000010d5a8e59'),
(1092, 'bank_savings', 0, 'steam:11000011a7467b4'),
(1093, 'caution', 0, 'steam:11000011a7467b4'),
(1094, 'motels_bed_black_money', 0, 'steam:11000011a7467b4'),
(1095, 'motels_black_money', 0, 'steam:11000011a7467b4'),
(1096, 'property_black_money', 0, 'steam:11000011a7467b4'),
(1097, 'hotel_black_money', 0, 'steam:11000011a7467b4'),
(1098, 'bank_savings', 0, 'steam:1100001067c812c'),
(1099, 'caution', 0, 'steam:1100001067c812c'),
(1100, 'property_black_money', 0, 'steam:1100001067c812c'),
(1101, 'hotel_black_money', 0, 'steam:1100001067c812c'),
(1102, 'motels_bed_black_money', 0, 'steam:1100001067c812c'),
(1103, 'motels_black_money', 0, 'steam:1100001067c812c'),
(1104, 'bank_savings', 0, 'steam:110000134f03fc6'),
(1105, 'property_black_money', 0, 'steam:110000134f03fc6'),
(1106, 'caution', 0, 'steam:110000134f03fc6'),
(1107, 'hotel_black_money', 0, 'steam:110000134f03fc6'),
(1108, 'motels_bed_black_money', 0, 'steam:110000134f03fc6'),
(1109, 'motels_black_money', 0, 'steam:110000134f03fc6'),
(1110, 'bank_savings', 0, 'steam:11000010002a37a'),
(1111, 'caution', 0, 'steam:11000010002a37a'),
(1112, 'hotel_black_money', 0, 'steam:11000010002a37a'),
(1113, 'property_black_money', 0, 'steam:11000010002a37a'),
(1114, 'motels_bed_black_money', 0, 'steam:11000010002a37a'),
(1115, 'motels_black_money', 0, 'steam:11000010002a37a'),
(1116, 'bank_savings', 0, 'steam:110000134cc17d8'),
(1117, 'motels_bed_black_money', 0, 'steam:110000134cc17d8'),
(1118, 'caution', 0, 'steam:110000134cc17d8'),
(1119, 'hotel_black_money', 0, 'steam:110000134cc17d8'),
(1120, 'motels_black_money', 0, 'steam:110000134cc17d8'),
(1121, 'property_black_money', 0, 'steam:110000134cc17d8'),
(1122, 'bank_savings', 0, 'steam:110000111a5e7ed'),
(1123, 'motels_black_money', 0, 'steam:110000111a5e7ed'),
(1124, 'caution', 0, 'steam:110000111a5e7ed'),
(1125, 'hotel_black_money', 0, 'steam:110000111a5e7ed'),
(1126, 'motels_bed_black_money', 0, 'steam:110000111a5e7ed'),
(1127, 'property_black_money', 0, 'steam:110000111a5e7ed'),
(1128, 'bank_savings', 0, 'steam:11000013507567e'),
(1129, 'caution', 0, 'steam:11000013507567e'),
(1130, 'hotel_black_money', 0, 'steam:11000013507567e'),
(1131, 'motels_bed_black_money', 0, 'steam:11000013507567e'),
(1132, 'motels_black_money', 0, 'steam:11000013507567e'),
(1133, 'property_black_money', 0, 'steam:11000013507567e'),
(1134, 'motels_bed_black_money', 0, 'steam:1100001079395fb'),
(1135, 'bank_savings', 0, 'steam:1100001079395fb'),
(1136, 'caution', 0, 'steam:1100001079395fb'),
(1137, 'hotel_black_money', 0, 'steam:1100001079395fb'),
(1138, 'motels_black_money', 0, 'steam:1100001079395fb'),
(1139, 'property_black_money', 0, 'steam:1100001079395fb'),
(1140, 'bank_savings', 0, 'steam:110000113c94b8d'),
(1141, 'caution', 0, 'steam:110000113c94b8d'),
(1142, 'hotel_black_money', 0, 'steam:110000113c94b8d'),
(1143, 'motels_bed_black_money', 0, 'steam:110000113c94b8d'),
(1144, 'motels_black_money', 0, 'steam:110000113c94b8d'),
(1145, 'property_black_money', 0, 'steam:110000113c94b8d'),
(1146, 'bank_savings', 0, 'steam:11000013cb191e8'),
(1147, 'caution', 0, 'steam:11000013cb191e8'),
(1148, 'property_black_money', 0, 'steam:11000013cb191e8'),
(1149, 'hotel_black_money', 0, 'steam:11000013cb191e8'),
(1150, 'motels_bed_black_money', 0, 'steam:11000013cb191e8'),
(1151, 'motels_black_money', 0, 'steam:11000013cb191e8'),
(1152, 'hotel_black_money', 0, 'steam:11000010c2f3f31'),
(1153, 'bank_savings', 0, 'steam:11000010c2f3f31'),
(1154, 'caution', 0, 'steam:11000010c2f3f31'),
(1155, 'motels_bed_black_money', 0, 'steam:11000010c2f3f31'),
(1156, 'motels_black_money', 0, 'steam:11000010c2f3f31'),
(1157, 'property_black_money', 0, 'steam:11000010c2f3f31'),
(1158, 'bank_savings', 0, 'steam:11000011432cbc1'),
(1159, 'caution', 0, 'steam:11000011432cbc1'),
(1160, 'hotel_black_money', 0, 'steam:11000011432cbc1'),
(1161, 'motels_bed_black_money', 0, 'steam:11000011432cbc1'),
(1162, 'motels_black_money', 0, 'steam:11000011432cbc1'),
(1163, 'property_black_money', 0, 'steam:11000011432cbc1'),
(1164, 'bank_savings', 0, 'steam:110000117613d66'),
(1165, 'caution', 0, 'steam:110000117613d66'),
(1166, 'hotel_black_money', 0, 'steam:110000117613d66'),
(1167, 'motels_bed_black_money', 0, 'steam:110000117613d66'),
(1168, 'motels_black_money', 0, 'steam:110000117613d66'),
(1169, 'property_black_money', 0, 'steam:110000117613d66'),
(1170, 'bank_savings', 0, 'steam:1100001004bf05f'),
(1171, 'caution', 0, 'steam:1100001004bf05f'),
(1172, 'motels_black_money', 0, 'steam:1100001004bf05f'),
(1173, 'property_black_money', 0, 'steam:1100001004bf05f'),
(1174, 'hotel_black_money', 0, 'steam:1100001004bf05f'),
(1175, 'motels_bed_black_money', 0, 'steam:1100001004bf05f'),
(1176, 'bank_savings', 0, 'steam:11000010e8fde3f'),
(1177, 'caution', 0, 'steam:11000010e8fde3f'),
(1178, 'hotel_black_money', 0, 'steam:11000010e8fde3f'),
(1179, 'motels_bed_black_money', 0, 'steam:11000010e8fde3f'),
(1180, 'motels_black_money', 0, 'steam:11000010e8fde3f'),
(1181, 'property_black_money', 0, 'steam:11000010e8fde3f'),
(1182, 'motels_bed_black_money', 0, 'steam:1100001350175d9'),
(1183, 'motels_black_money', 0, 'steam:1100001350175d9'),
(1184, 'bank_savings', 0, 'steam:1100001350175d9'),
(1185, 'caution', 0, 'steam:1100001350175d9'),
(1186, 'hotel_black_money', 0, 'steam:1100001350175d9'),
(1187, 'property_black_money', 0, 'steam:1100001350175d9'),
(1188, 'bank_savings', 0, 'steam:110000136dfa5fb'),
(1189, 'caution', 0, 'steam:110000136dfa5fb'),
(1190, 'hotel_black_money', 0, 'steam:110000136dfa5fb'),
(1191, 'property_black_money', 0, 'steam:110000136dfa5fb'),
(1192, 'motels_bed_black_money', 0, 'steam:110000136dfa5fb'),
(1193, 'motels_black_money', 0, 'steam:110000136dfa5fb'),
(1194, 'bank_savings', 0, 'steam:11000013c85cd8c'),
(1195, 'caution', 0, 'steam:11000013c85cd8c'),
(1196, 'hotel_black_money', 0, 'steam:11000013c85cd8c'),
(1197, 'motels_bed_black_money', 0, 'steam:11000013c85cd8c'),
(1198, 'motels_black_money', 0, 'steam:11000013c85cd8c'),
(1199, 'property_black_money', 0, 'steam:11000013c85cd8c'),
(1200, 'bank_savings', 0, 'steam:11000010e476172'),
(1201, 'hotel_black_money', 0, 'steam:11000010e476172'),
(1202, 'caution', 0, 'steam:11000010e476172'),
(1203, 'property_black_money', 0, 'steam:11000010e476172'),
(1204, 'motels_bed_black_money', 0, 'steam:11000010e476172'),
(1205, 'motels_black_money', 0, 'steam:11000010e476172'),
(1206, 'bank_savings', 0, 'steam:1100001329de1f0'),
(1207, 'motels_bed_black_money', 0, 'steam:1100001329de1f0'),
(1208, 'caution', 0, 'steam:1100001329de1f0'),
(1209, 'hotel_black_money', 0, 'steam:1100001329de1f0'),
(1210, 'motels_black_money', 0, 'steam:1100001329de1f0'),
(1211, 'property_black_money', 0, 'steam:1100001329de1f0'),
(1212, 'bank_savings', 0, 'steam:11000013c1cc7b2'),
(1213, 'caution', 0, 'steam:11000013c1cc7b2'),
(1214, 'motels_bed_black_money', 0, 'steam:11000013c1cc7b2'),
(1215, 'hotel_black_money', 0, 'steam:11000013c1cc7b2'),
(1216, 'motels_black_money', 0, 'steam:11000013c1cc7b2'),
(1217, 'property_black_money', 0, 'steam:11000013c1cc7b2'),
(1218, 'bank_savings', 0, 'steam:1100001106f6ea8'),
(1219, 'caution', 0, 'steam:1100001106f6ea8'),
(1220, 'hotel_black_money', 0, 'steam:1100001106f6ea8'),
(1221, 'motels_bed_black_money', 0, 'steam:1100001106f6ea8'),
(1222, 'motels_black_money', 0, 'steam:1100001106f6ea8'),
(1223, 'property_black_money', 0, 'steam:1100001106f6ea8'),
(1224, 'bank_savings', 0, 'steam:11000010c087680'),
(1225, 'caution', 0, 'steam:11000010c087680'),
(1226, 'hotel_black_money', 0, 'steam:11000010c087680'),
(1227, 'motels_bed_black_money', 0, 'steam:11000010c087680'),
(1228, 'motels_black_money', 0, 'steam:11000010c087680'),
(1229, 'property_black_money', 0, 'steam:11000010c087680'),
(1230, 'society_mercenaire', 0, NULL),
(1231, 'society_mercenaire_black', 0, NULL),
(1232, 'society_podolskaia', 627331, NULL),
(1233, 'society_podolskaia_black', 0, NULL),
(1234, 'society_syndicat', 0, NULL),
(1235, 'society_syndicat_black', 0, NULL),
(1236, 'society_vagos', 0, NULL),
(1237, 'society_vagos_black', 100, NULL),
(1238, 'caution', 0, 'steam:11000013d1625e4'),
(1239, 'bank_savings', 0, 'steam:11000013d1625e4'),
(1240, 'hotel_black_money', 0, 'steam:11000013d1625e4'),
(1241, 'motels_bed_black_money', 0, 'steam:11000013d1625e4'),
(1242, 'property_black_money', 0, 'steam:11000013d1625e4'),
(1243, 'motels_black_money', 0, 'steam:11000013d1625e4'),
(1244, 'bank_savings', 0, 'steam:110000137707bc5'),
(1245, 'caution', 0, 'steam:110000137707bc5'),
(1246, 'hotel_black_money', 0, 'steam:110000137707bc5'),
(1247, 'motels_bed_black_money', 0, 'steam:110000137707bc5'),
(1248, 'motels_black_money', 0, 'steam:110000137707bc5'),
(1249, 'property_black_money', 0, 'steam:110000137707bc5'),
(1250, 'bank_savings', 0, 'steam:1100001125fcc1d'),
(1251, 'caution', 0, 'steam:1100001125fcc1d'),
(1252, 'hotel_black_money', 0, 'steam:1100001125fcc1d'),
(1253, 'motels_bed_black_money', 0, 'steam:1100001125fcc1d'),
(1254, 'motels_black_money', 0, 'steam:1100001125fcc1d'),
(1255, 'property_black_money', 0, 'steam:1100001125fcc1d'),
(1256, 'bank_savings', 0, 'steam:1100001124a22dc'),
(1257, 'caution', 0, 'steam:1100001124a22dc'),
(1258, 'hotel_black_money', 0, 'steam:1100001124a22dc'),
(1259, 'motels_bed_black_money', 0, 'steam:1100001124a22dc'),
(1260, 'motels_black_money', 0, 'steam:1100001124a22dc'),
(1261, 'property_black_money', 0, 'steam:1100001124a22dc'),
(1262, 'bank_savings', 0, 'steam:11000013749d770'),
(1263, 'motels_bed_black_money', 0, 'steam:11000013749d770'),
(1264, 'motels_black_money', 0, 'steam:11000013749d770'),
(1265, 'property_black_money', 0, 'steam:11000013749d770'),
(1266, 'caution', 0, 'steam:11000013749d770'),
(1267, 'hotel_black_money', 0, 'steam:11000013749d770'),
(1268, 'bank_savings', 0, 'steam:11000010ca47eae'),
(1269, 'caution', 0, 'steam:11000010ca47eae'),
(1270, 'motels_bed_black_money', 0, 'steam:11000010ca47eae'),
(1271, 'hotel_black_money', 0, 'steam:11000010ca47eae'),
(1272, 'motels_black_money', 0, 'steam:11000010ca47eae'),
(1273, 'property_black_money', 0, 'steam:11000010ca47eae'),
(1274, 'bank_savings', 0, 'steam:11000013c919f3a'),
(1275, 'property_black_money', 0, 'steam:11000013c919f3a'),
(1276, 'caution', 0, 'steam:11000013c919f3a'),
(1277, 'hotel_black_money', 0, 'steam:11000013c919f3a'),
(1278, 'motels_bed_black_money', 0, 'steam:11000013c919f3a'),
(1279, 'motels_black_money', 0, 'steam:11000013c919f3a'),
(1280, 'caution', 0, 'steam:110000116ac93f4'),
(1281, 'hotel_black_money', 0, 'steam:110000116ac93f4'),
(1282, 'motels_bed_black_money', 0, 'steam:110000116ac93f4'),
(1283, 'bank_savings', 0, 'steam:110000116ac93f4'),
(1284, 'motels_black_money', 0, 'steam:110000116ac93f4'),
(1285, 'property_black_money', 0, 'steam:110000116ac93f4'),
(1286, 'hotel_black_money', 0, 'steam:11000010e69d9ab'),
(1287, 'motels_black_money', 0, 'steam:11000010e69d9ab'),
(1288, 'bank_savings', 0, 'steam:11000010e69d9ab'),
(1289, 'caution', 0, 'steam:11000010e69d9ab'),
(1290, 'motels_bed_black_money', 0, 'steam:11000010e69d9ab'),
(1291, 'property_black_money', 0, 'steam:11000010e69d9ab'),
(1292, 'caution', 0, 'steam:110000136d58ffb'),
(1293, 'hotel_black_money', 0, 'steam:110000136d58ffb'),
(1294, 'bank_savings', 0, 'steam:110000136d58ffb'),
(1295, 'motels_bed_black_money', 0, 'steam:110000136d58ffb'),
(1296, 'motels_black_money', 0, 'steam:110000136d58ffb'),
(1297, 'property_black_money', 0, 'steam:110000136d58ffb'),
(1298, 'bank_savings', 0, 'steam:1100001366b8729'),
(1299, 'caution', 0, 'steam:1100001366b8729'),
(1300, 'hotel_black_money', 0, 'steam:1100001366b8729'),
(1301, 'motels_bed_black_money', 0, 'steam:1100001366b8729'),
(1302, 'motels_black_money', 0, 'steam:1100001366b8729'),
(1303, 'property_black_money', 0, 'steam:1100001366b8729'),
(1304, 'bank_savings', 0, 'steam:11000010c5ba7c6'),
(1305, 'caution', 0, 'steam:11000010c5ba7c6'),
(1306, 'hotel_black_money', 0, 'steam:11000010c5ba7c6'),
(1307, 'motels_bed_black_money', 0, 'steam:11000010c5ba7c6'),
(1308, 'motels_black_money', 0, 'steam:11000010c5ba7c6'),
(1309, 'property_black_money', 0, 'steam:11000010c5ba7c6'),
(1310, 'bank_savings', 0, 'steam:11000013cb30961'),
(1311, 'motels_bed_black_money', 0, 'steam:11000013cb30961'),
(1312, 'property_black_money', 0, 'steam:11000013cb30961'),
(1313, 'caution', 0, 'steam:11000013cb30961'),
(1314, 'hotel_black_money', 0, 'steam:11000013cb30961'),
(1315, 'motels_black_money', 0, 'steam:11000013cb30961'),
(1316, 'bank_savings', 0, 'steam:11000013c781d26'),
(1317, 'caution', 0, 'steam:11000013c781d26'),
(1318, 'motels_bed_black_money', 0, 'steam:11000013c781d26'),
(1319, 'hotel_black_money', 0, 'steam:11000013c781d26'),
(1320, 'motels_black_money', 0, 'steam:11000013c781d26'),
(1321, 'property_black_money', 0, 'steam:11000013c781d26'),
(1322, 'bank_savings', 0, 'steam:11000011254f7db'),
(1323, 'caution', 0, 'steam:11000011254f7db'),
(1324, 'hotel_black_money', 0, 'steam:11000011254f7db'),
(1325, 'motels_bed_black_money', 0, 'steam:11000011254f7db'),
(1326, 'motels_black_money', 0, 'steam:11000011254f7db'),
(1327, 'property_black_money', 0, 'steam:11000011254f7db'),
(1328, 'motels_bed_black_money', 0, 'steam:1100001145464ea'),
(1329, 'motels_black_money', 0, 'steam:1100001145464ea'),
(1330, 'bank_savings', 0, 'steam:1100001145464ea'),
(1331, 'caution', 0, 'steam:1100001145464ea'),
(1332, 'hotel_black_money', 0, 'steam:1100001145464ea'),
(1333, 'property_black_money', 0, 'steam:1100001145464ea'),
(1334, 'bank_savings', 0, 'steam:11000010f2b763f'),
(1335, 'caution', 0, 'steam:11000010f2b763f'),
(1336, 'hotel_black_money', 0, 'steam:11000010f2b763f'),
(1337, 'motels_bed_black_money', 0, 'steam:11000010f2b763f'),
(1338, 'motels_black_money', 0, 'steam:11000010f2b763f'),
(1339, 'property_black_money', 0, 'steam:11000010f2b763f'),
(1340, 'hotel_black_money', 0, 'steam:11000010e6fbb9d'),
(1341, 'bank_savings', 0, 'steam:11000010e6fbb9d'),
(1342, 'caution', 0, 'steam:11000010e6fbb9d'),
(1343, 'motels_bed_black_money', 0, 'steam:11000010e6fbb9d'),
(1344, 'motels_black_money', 0, 'steam:11000010e6fbb9d'),
(1345, 'property_black_money', 0, 'steam:11000010e6fbb9d'),
(1346, 'bank_savings', 0, 'steam:11000010b1187e9'),
(1347, 'hotel_black_money', 0, 'steam:11000010b1187e9'),
(1348, 'motels_bed_black_money', 0, 'steam:11000010b1187e9'),
(1349, 'motels_black_money', 0, 'steam:11000010b1187e9'),
(1350, 'caution', 0, 'steam:11000010b1187e9'),
(1351, 'property_black_money', 0, 'steam:11000010b1187e9'),
(1352, 'bank_savings', 0, 'steam:11000013327c85c'),
(1353, 'caution', 0, 'steam:11000013327c85c'),
(1354, 'hotel_black_money', 0, 'steam:11000013327c85c'),
(1355, 'motels_black_money', 0, 'steam:11000013327c85c'),
(1356, 'motels_bed_black_money', 0, 'steam:11000013327c85c'),
(1357, 'property_black_money', 0, 'steam:11000013327c85c');

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

DROP TABLE IF EXISTS `addon_inventory`;
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('organisation_biker', 'Biker', 1),
('organisation_cartel', 'Cartel', 1),
('organisation_gang', 'Gang', 1),
('organisation_mafia', 'Mafia', 1),
('property', 'Propriété', 0),
('society_aircraftdealer', 'Airliner', 1),
('society_ambulance', 'Ambulance', 1),
('society_ammu', 'Ammu', 1),
('society_avocat', 'Avocat', 1),
('society_bahama', 'Bahama Mas', 1),
('society_bahama_fridge', 'bahama (frigo)', 1),
('society_ballas', 'Ballas', 1),
('society_boatdealer', 'Marina', 1),
('society_bratva', 'Bratva', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_casino', 'Casino', 1),
('society_casino_fridge', 'Casino (Frigo)', 1),
('society_dock', 'Marina', 1),
('society_famillies', 'Famillies', 1),
('society_fib', 'Fib', 1),
('society_fueler', 'Raffineur', 1),
('society_fueler1', 'Gold Luxuary', 1),
('society_illegal', 'Illegal', 1),
('society_immo', 'Immo', 1),
('society_journaliste', 'journaliste', 1),
('society_kano', 'Kano', 1),
('society_lazone', 'lazone', 1),
('society_mecano', 'Mécano', 1),
('society_mercenaire', 'mercenaire', 1),
('society_moto', 'Moto', 1),
('society_moto_fridge', 'Moto (fridge)', 1),
('society_ms13', 'ms13', 1),
('society_nightclub', 'Nightclub', 1),
('society_nightclub_fridge', 'Nightclub (frigo)', 1),
('society_orjob', 'Gold Luxury', 1),
('society_pecheur', 'Pecheur', 1),
('society_podolskaia', 'podolskaia', 1),
('society_police', 'Police', 1),
('society_police1', 'PoliceInv', 1),
('society_pompiste', 'Pompiste', 1),
('society_securoserv', 'SecuroServ', 1),
('society_state', 'State', 1),
('society_syndicat', 'syndicat', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_vagos', 'Vagos', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

DROP TABLE IF EXISTS `addon_inventory_items`;
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'society_police1', 'clip', 8, NULL),
(2, 'society_police1', 'ppa', 0, NULL),
(3, 'society_vigne', 'water', 0, NULL),
(4, 'society_mecano', 'medikit', 0, NULL),
(5, 'society_mecano', 'fixkit', 2116, NULL),
(6, 'society_mecano', 'carokit', 2514, NULL),
(7, 'society_illegal', 'coke', 24, NULL),
(8, 'society_ballas', 'fixkit', 4743, NULL),
(9, 'society_bratva', 'fixkit', 0, NULL),
(10, 'society_kano', 'fixkit', 0, NULL),
(11, 'society_lazone', 'fixkit', 0, NULL),
(12, 'society_ms13', 'fixkit', 0, NULL),
(13, 'society_ballas', 'coke', 276, NULL),
(14, 'society_bratva', 'coke', 0, NULL),
(15, 'society_kano', 'coke', 0, NULL),
(16, 'society_lazone', 'coke', 0, NULL),
(17, 'society_ms13', 'coke', 0, NULL),
(18, 'society_ballas', 'TINT_03', 1, NULL),
(19, 'society_bratva', 'TINT_03', 0, NULL),
(20, 'society_kano', 'TINT_03', 0, NULL),
(21, 'society_lazone', 'TINT_03', 0, NULL),
(22, 'society_ms13', 'TINT_03', 0, NULL),
(23, 'society_ballas', 'hamburgerplate', 1, NULL),
(24, 'society_bratva', 'hamburgerplate', 0, NULL),
(25, 'society_kano', 'hamburgerplate', 0, NULL),
(26, 'society_lazone', 'hamburgerplate', 0, NULL),
(27, 'society_ms13', 'hamburgerplate', 0, NULL),
(28, 'society_ballas', 'bread', 15, NULL),
(29, 'society_bratva', 'bread', 5, NULL),
(30, 'society_kano', 'bread', 5, NULL),
(31, 'society_lazone', 'bread', 0, NULL),
(32, 'society_ms13', 'bread', 0, NULL),
(33, 'society_ballas', 'bandage', 3, NULL),
(34, 'society_bratva', 'bandage', 0, NULL),
(35, 'society_kano', 'bandage', 0, NULL),
(36, 'society_lazone', 'bandage', 0, NULL),
(37, 'society_ms13', 'bandage', 0, NULL),
(38, 'society_ballas', 'hamburger', 1005, NULL),
(39, 'society_bratva', 'hamburger', 3, NULL),
(40, 'society_kano', 'hamburger', 0, NULL),
(41, 'society_lazone', 'hamburger', 0, NULL),
(42, 'society_ms13', 'hamburger', 0, NULL),
(43, 'society_ballas', 'medikit', 3, NULL),
(44, 'society_bratva', 'medikit', 0, NULL),
(45, 'society_kano', 'medikit', 0, NULL),
(46, 'society_lazone', 'medikit', 0, NULL),
(47, 'society_ms13', 'medikit', 0, NULL),
(48, 'society_ballas', 'water', 7, NULL),
(49, 'society_bratva', 'water', 0, NULL),
(50, 'society_kano', 'water', 0, NULL),
(51, 'society_lazone', 'water', 0, NULL),
(52, 'society_ms13', 'water', 0, NULL),
(53, 'society_ballas', 'breadsaucisson', 6, NULL),
(54, 'society_bratva', 'breadsaucisson', 0, NULL),
(55, 'society_kano', 'breadsaucisson', 0, NULL),
(56, 'society_lazone', 'breadsaucisson', 0, NULL),
(57, 'society_ms13', 'breadsaucisson', 0, NULL),
(58, 'society_ballas', 'cocacola', 23, NULL),
(59, 'society_bratva', 'cocacola', 0, NULL),
(60, 'society_kano', 'cocacola', 0, NULL),
(61, 'society_lazone', 'cocacola', 0, NULL),
(62, 'society_ms13', 'cocacola', 0, NULL),
(63, 'society_bahama_fridge', 'mojito', 28, NULL),
(64, 'society_bahama_fridge', 'rhum', 0, NULL),
(65, 'society_bahama_fridge', 'menthe', 15, NULL),
(66, 'society_bahama_fridge', 'limonade', 0, NULL),
(67, 'society_illegal', 'coke_pooch', 0, NULL),
(68, 'society_bahama_fridge', 'ice', 0, NULL),
(69, 'society_police', 'coke_pooch', 976, NULL),
(70, 'society_bahama_fridge', 'grapperaisin', 50, NULL),
(71, 'society_bahama_fridge', 'saucisson', 29, NULL),
(72, 'society_bahama_fridge', 'bolcacahuetes', 30, NULL),
(73, 'society_bahama_fridge', 'bolpistache', 30, NULL),
(74, 'society_bahama_fridge', 'bolnoixcajou', 29, NULL),
(75, 'society_bahama_fridge', 'bolchips', 30, NULL),
(76, 'society_bahama_fridge', 'metreshooter', 19, NULL),
(77, 'society_bahama_fridge', 'whiskycoca', 30, NULL),
(78, 'society_bahama_fridge', 'vodkafruit', 11, NULL),
(79, 'society_bahama_fridge', 'vodkaenergy', 20, NULL),
(80, 'society_bahama_fridge', 'rhumfruit', 10, NULL),
(81, 'society_bahama_fridge', 'vine', 98, NULL),
(82, 'society_bahama_fridge', 'grand_cru', 1, NULL),
(83, 'society_bahama_fridge', 'teqpaf', 25, NULL),
(84, 'society_bahama_fridge', 'energy', 2, NULL),
(85, 'society_bahama_fridge', 'raisin', 53, NULL),
(86, 'society_illegal', 'COMPONENT_AT_SCOPE_MACRO', 0, NULL),
(87, 'society_illegal', 'COMPONENT_AT_AR_CLIP_02', 0, NULL),
(88, 'society_illegal', 'COMPONENT_AT_AR_SUPP_02', 0, NULL),
(89, 'society_mecano', 'COMPONENT_AT_AR_FLSH', 1, NULL),
(90, 'society_mecano', 'beef', 0, NULL),
(91, 'society_mecano', 'bread', 2, NULL),
(92, 'society_mecano', 'hamburger', 0, NULL),
(93, 'society_mecano', 'chocolat', 9, NULL),
(94, 'society_mecano', 'cupcake', 5, NULL),
(95, 'society_nightclub', 'medikit', 0, NULL),
(96, 'society_nightclub', 'bandage', 0, NULL),
(97, 'society_cardealer', 'fixkit', 37, NULL),
(98, 'society_nightclub_fridge', 'vine', 47, NULL),
(99, 'society_nightclub_fridge', 'grand_cru', 109, NULL),
(100, 'society_ballas', 'coke_pooch', 112, NULL),
(101, 'society_bratva', 'coke_pooch', 0, NULL),
(102, 'society_kano', 'coke_pooch', 0, NULL),
(103, 'society_lazone', 'coke_pooch', 0, NULL),
(104, 'society_ms13', 'coke_pooch', 0, NULL),
(105, 'society_mecano', 'bandage', 15, NULL),
(106, 'society_mecano', 'clip', 38, NULL),
(107, 'society_vigne', 'raisin', 0, NULL),
(108, 'society_pompiste', 'cocacola', 4, NULL),
(109, 'society_pompiste', 'hamburger', 3, NULL),
(110, 'society_pompiste', 'bandage', 1, NULL),
(111, 'society_pompiste', 'medikit', 1, NULL),
(112, 'society_nightclub', 'coke_pooch', 0, NULL),
(113, 'society_police', 'coke', 1148, NULL),
(114, 'society_police1', 'coke', 23, NULL),
(115, 'society_ballas', 'jusfruit', 1, NULL),
(116, 'society_bratva', 'jusfruit', 1, NULL),
(117, 'society_kano', 'jusfruit', 0, NULL),
(118, 'society_ms13', 'jusfruit', 0, NULL),
(119, 'society_nightclub', 'coke', 200, NULL),
(120, 'society_police', 'tenuecasa', 1, NULL),
(121, 'society_tabac', 'coke', 100, NULL),
(122, 'society_nightclub', 'grand_cru', 0, NULL),
(123, 'property', 'tenuecasa', 0, 'steam:110000112cd9140'),
(124, 'property', 'tenuebraquage', 1, 'steam:110000112cd9140'),
(125, 'property', 'energy', 1, 'steam:110000106488f5e'),
(126, 'property', 'COMPONENT_AT_AR_SUPP_02', 1, 'steam:110000106488f5e'),
(127, 'property', 'carokit', 2, 'steam:11000013ce81d9f'),
(128, 'property', 'blowpipe', 8, 'steam:11000013ce81d9f'),
(129, 'property', 'clip', 40, 'steam:11000013ce81d9f'),
(130, 'property', 'carokit', 0, 'steam:110000111ee8a77'),
(131, 'property', 'water', 6, 'steam:110000111ee8a77'),
(132, 'property', 'hamburgerplate', 10, 'steam:110000111ee8a77'),
(134, 'property', 'medikit', 8, 'steam:110000111ee8a77'),
(135, 'property', 'medikit', 37, 'steam:11000013c2e72ca'),
(136, 'property', 'COMPONENT_AT_PI_SUPP', 1, 'steam:11000013c2e72ca'),
(137, 'property', 'clip', 1, 'steam:11000013c2e72ca'),
(138, 'property', 'bandage', 1, 'steam:11000013c2e72ca'),
(139, 'property', 'tenuecasa', 1, 'steam:11000013c2e72ca'),
(140, 'society_journaliste', 'raisin', 540, NULL),
(141, 'society_journaliste', 'grand_cru', 63, NULL),
(142, 'property', 'water', 0, 'steam:11000013507567e'),
(143, 'society_ammu', 'clip', 0, NULL),
(144, 'society_ammu', 'COMPONENT_AT_AR_AFGRIP', 1, NULL),
(145, 'society_ammu', 'COMPONENT_AT_AR_SUPP_02', 1, NULL),
(146, 'society_ammu', 'COMPONENT_AT_PI_SUPP', 2, NULL),
(147, 'society_ammu', 'TINT_04', 1, NULL),
(148, 'society_ammu', 'vine', 9, NULL),
(149, 'society_vigne', 'coke_pooch', 100, NULL),
(150, 'society_vigne', 'coke', 0, NULL),
(151, 'society_syndicat', 'fixkit', 0, NULL),
(152, 'society_podolskaia', 'fixkit', 0, NULL),
(153, 'society_illegal', 'fixkit', 0, NULL),
(154, 'society_mercenaire', 'fixkit', 0, NULL),
(155, 'society_vagos', 'fixkit', 0, NULL),
(156, 'society_syndicat', 'headbag', 0, NULL),
(157, 'society_podolskaia', 'headbag', 0, NULL),
(158, 'society_illegal', 'headbag', 0, NULL),
(159, 'society_mercenaire', 'headbag', 0, NULL),
(160, 'society_vagos', 'headbag', 0, NULL),
(161, 'society_syndicat', 'tenuecasa', 0, NULL),
(162, 'society_podolskaia', 'tenuecasa', 0, NULL),
(163, 'society_illegal', 'tenuecasa', 0, NULL),
(164, 'society_mercenaire', 'tenuecasa', 0, NULL),
(165, 'society_vagos', 'tenuecasa', 0, NULL),
(166, 'society_syndicat', 'coke', 981, NULL),
(167, 'society_podolskaia', 'coke', 0, NULL),
(168, 'society_mercenaire', 'coke', 0, NULL),
(169, 'society_vagos', 'coke', 0, NULL),
(170, 'property', 'TINT_03', 1, 'steam:11000013c2e72ca'),
(171, 'property', 'coke', 348, 'steam:11000013507567e'),
(172, 'society_journaliste', 'coke_pooch', 100, NULL),
(173, 'property', 'coke_pooch', 11, 'steam:11000013507567e'),
(174, 'society_syndicat', 'cutted_wood', 50, NULL),
(175, 'society_podolskaia', 'cutted_wood', 0, NULL),
(176, 'society_illegal', 'cutted_wood', 0, NULL),
(177, 'society_mercenaire', 'cutted_wood', 0, NULL),
(178, 'society_vagos', 'cutted_wood', 0, NULL),
(179, 'property', 'tenuebraquage', 1, 'steam:110000109c4e456'),
(180, 'property', 'tenuecasa', 2, 'steam:110000109c4e456'),
(181, 'society_syndicat', 'coke_pooch', 0, NULL),
(182, 'society_podolskaia', 'coke_pooch', 0, NULL),
(183, 'society_mercenaire', 'coke_pooch', 0, NULL),
(184, 'society_podolskaia', 'pacificidcard', 1, NULL),
(185, 'society_podolskaia', 'lockpick', 4, NULL),
(186, 'society_podolskaia', 'oxycutter', 1, NULL),
(187, 'society_nightclub', 'carokit', 0, NULL),
(188, 'society_nightclub', 'fixkit', 0, NULL),
(189, 'property', 'tenuecasa', 1, 'steam:11000013507567e'),
(190, 'society_mercenaire', 'pacificidcard', 6, NULL),
(191, 'society_mercenaire', 'lockpick', 6, NULL),
(192, 'society_mercenaire', 'oxycutter', 25, NULL),
(193, 'property', 'fixkit', 12, 'steam:110000112235808'),
(194, 'property', 'coke', 24, 'steam:1100001125fcc1d'),
(195, 'society_nightclub_fridge', 'vodka', 1, NULL),
(196, 'society_nightclub_fridge', 'soda', 130, NULL),
(197, 'society_nightclub_fridge', 'water', 8, NULL),
(198, 'society_nightclub_fridge', 'whisky', 1, NULL),
(199, 'society_nightclub_fridge', 'whiskycoca', 10, NULL),
(200, 'society_nightclub_fridge', 'rhum', 5, NULL),
(201, 'society_nightclub_fridge', 'cocacola', 105, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `aircraftdealer_aircrafts`
--

DROP TABLE IF EXISTS `aircraftdealer_aircrafts`;
CREATE TABLE IF NOT EXISTS `aircraftdealer_aircrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `aircrafts`
--

DROP TABLE IF EXISTS `aircrafts`;
CREATE TABLE IF NOT EXISTS `aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `aircrafts`
--

INSERT INTO `aircrafts` (`name`, `model`, `price`, `category`) VALUES
('Alpha Z1', 'alphaz1', 1121000, 'plane'),
('Besra', 'besra', 1000000, 'plane'),
('Cuban 800', 'cuban800', 240000, 'plane'),
('Dodo', 'dodo', 500000, 'plane'),
('Duster', 'duster', 175000, 'plane'),
('Howard NX25', 'howard', 975000, 'plane'),
('Luxor', 'luxor', 1500000, 'plane'),
('Luxor Deluxe ', 'luxor2', 1750000, 'plane'),
('Mallard', 'stunt', 250000, 'plane'),
('Mammatus', 'mammatus', 300000, 'plane'),
('Nimbus', 'nimbus', 900000, 'plane'),
('Rogue', 'rogue', 1000000, 'plane'),
('Sea Breeze', 'seabreeze', 850000, 'plane'),
('Shamal', 'shamal', 1150000, 'plane'),
('Ultra Light', 'microlight', 50000, 'plane'),
('Velum', 'velum2', 450000, 'plane'),
('Vestra', 'vestra', 950000, 'plane'),
('Buzzard', 'buzzard2', 500000, 'heli'),
('Frogger', 'frogger', 800000, 'heli'),
('Havok', 'havok', 250000, 'heli'),
('Maverick', 'maverick', 750000, 'heli'),
('Sea Sparrow', 'seasparrow', 815000, 'heli'),
('SuperVolito', 'supervolito', 1000000, 'heli'),
('SuperVolito Carbon', 'supervolito2', 1250000, 'heli'),
('Swift', 'swift', 1000000, 'heli'),
('Swift Deluxe', 'swift2', 1250000, 'heli'),
('Volatus', 'volatus', 1250000, 'heli');

-- --------------------------------------------------------

--
-- Structure de la table `aircraft_categories`
--

DROP TABLE IF EXISTS `aircraft_categories`;
CREATE TABLE IF NOT EXISTS `aircraft_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `aircraft_categories`
--

INSERT INTO `aircraft_categories` (`name`, `label`) VALUES
('plane', 'Planes'),
('heli', 'Helicopters');

-- --------------------------------------------------------

--
-- Structure de la table `baninfo`
--


DROP TABLE IF EXISTS `baninfo`;
CREATE TABLE IF NOT EXISTS `baninfo` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT "no info",
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT "no info",
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT "no info",
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT "no info",
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT "no info",
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT "0.0.0.0",
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT "no info"
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlist`
--

DROP TABLE IF EXISTS `banlist`;
CREATE TABLE IF NOT EXISTS `banlist` (
  `identifier` varchar(25) COLLATE utf8mb4_bin PRIMARY KEY,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) NOT NULL,
  `timeat` varchar(50) NOT NULL,
  `expiration` varchar(50) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `banlisthistory`
--

DROP TABLE IF EXISTS `banlisthistory`;
CREATE TABLE IF NOT EXISTS `banlisthistory` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `identifier` varchar(25) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4509 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `boatdealer_boats`
--

DROP TABLE IF EXISTS `boatdealer_boats`;
CREATE TABLE IF NOT EXISTS `boatdealer_boats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `boats`
--

DROP TABLE IF EXISTS `boats`;
CREATE TABLE IF NOT EXISTS `boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `boats`
--

INSERT INTO `boats` (`name`, `model`, `price`, `category`) VALUES
('Seashark', 'seashark', 245000, 'boat'),
('Seashark2', 'seashark2', 255000, 'boat'),
('Yacht Seashark', 'seashark3', 260000, 'boat'),
('Suntrap', 'suntrap', 2210500, 'boat'),
('Dinghy', 'dinghy', 3652500, 'boat'),
('Dinghy2 ', 'dinghy2', 3735500, 'boat'),
('Yacht Dinghy', 'dinghy4', 3841500, 'boat'),
('Tropic', 'tropic', 2260000, 'boat'),
('Yacht Tropic', 'tropic2', 2310000, 'boat'),
('Squalo', 'squalo', 2412000, 'boat'),
('Yacht Toro', 'toro2', 2718000, 'boat'),
('Toro', 'toro', 2815000, 'boat'),
('Jetmax', 'jetmax', 3900000, 'boat'),
('Voilier Marquis', 'marquis', 2375000, 'boat');

-- --------------------------------------------------------

--
-- Structure de la table `boat_categories`
--

DROP TABLE IF EXISTS `boat_categories`;
CREATE TABLE IF NOT EXISTS `boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `boat_categories`
--

INSERT INTO `boat_categories` (`name`, `label`) VALUES
('boat', 'Boats');

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

DROP TABLE IF EXISTS `cardealer_vehicles`;
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1043 DEFAULT CHARSET=latin1;

--
-- Structure de la table `datastore`
--

DROP TABLE IF EXISTS `datastore`;
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('hotel', 'Hotel', 0),
('motels', 'Motels Datastore', 0),
('motels_bed', 'Motels Bed Datastore', 0),
('organisation_biker', 'Biker', 1),
('organisation_cartel', 'Cartel', 1),
('organisation_gang', 'Gang', 1),
('organisation_mafia', 'Mafia', 1),
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ammu', 'Ammu', 1),
('society_avocat', 'Avocat', 1),
('society_baladins', 'baladins', 1),
('society_ballas', 'Ballas', 1),
('society_ballas_weapons', 'ballas weapon', 1),
('society_biker', 'Biker', 1),
('society_bratva', 'Bratva', 1),
('society_bratva_weapons', 'bratva weapon', 1),
('society_cartel', 'Cartel', 1),
('society_casino', 'Casino', 1),
('society_famillies', 'famillies', 1),
('society_famillies_weapons', 'famillies weapon', 1),
('society_fib', 'Fib', 1),
('society_fueler', 'Raffineur', 1),
('society_gang', 'Gang', 1),
('society_illegal', 'Illegal', 1),
('society_illegal_weapons', 'illegal weapon', 1),
('society_immo', 'Immo', 1),
('society_journaliste', 'journaliste', 1),
('society_kano', 'Kano', 1),
('society_kano_weapons', 'kano weapon', 1),
('society_lazone', 'LaZone', 1),
('society_lazone_weapons', 'lazone weapon', 1),
('society_mafia', 'Mafia', 1),
('society_mercenaire', 'mercenaire', 1),
('society_mercenaire_weapons', 'mercenaire Weapon', 1),
('society_ms13', 'ms13 Weapon', 1),
('society_ms13_weapons', 'ms13 weapon', 1),
('society_nightclub', 'Nightclub', 1),
('society_pecheur', 'Pecheur', 1),
('society_podolskaia', 'podolskaia', 1),
('society_podolskaia_weapons', 'podolskaia Weapon', 1),
('society_police', 'Police', 1),
('society_pompiste', 'Pompiste', 1),
('society_securoserv', 'SecuroServ', 1),
('society_state', 'State', 1),
('society_syndicat', 'syndicat', 1),
('society_syndicat_weapons', 'syndicat Weapon', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vagos_weapons', 'Vagos Weapon', 1),
('society_vigne', 'Vigneron', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

DROP TABLE IF EXISTS `datastore_data`;
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1786 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dock`
--

DROP TABLE IF EXISTS `dock`;
CREATE TABLE IF NOT EXISTS `dock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dock`
--

INSERT INTO `dock` (`id`, `name`, `model`, `price`, `category`) VALUES
(1, 'Seashark', 'seashark', 245000, 'dock'),
(2, 'Seashark2', 'seashark2', 255000, 'dock'),
(3, 'Yacht Seashark', 'seashark3', 260000, 'dock'),
(4, 'Suntrap', 'suntrap', 2210500, 'dock'),
(5, 'Dinghy', 'dinghy', 3652500, 'dock'),
(6, 'Dinghy2 ', 'dinghy2', 3735500, 'dock'),
(7, 'Yacht Dinghy', 'dinghy4', 3841500, 'dock'),
(8, 'Tropic', 'tropic', 2260000, 'dock'),
(9, 'Yacht Tropic', 'tropic2', 2310000, 'dock'),
(10, 'Squalo', 'squalo', 2412000, 'dock'),
(11, 'Yacht Toro', 'toro2', 2718000, 'dock'),
(12, 'Toro', 'toro', 2815000, 'dock'),
(13, 'Jetmax', 'jetmax', 3900000, 'dock'),
(14, 'Voilier Marquis', 'marquis', 2375000, 'dock');

-- --------------------------------------------------------

--
-- Structure de la table `dock_categories`
--

DROP TABLE IF EXISTS `dock_categories`;
CREATE TABLE IF NOT EXISTS `dock_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dock_categories`
--

INSERT INTO `dock_categories` (`id`, `name`, `label`) VALUES
(1, 'dock', 'Bateaux');

-- --------------------------------------------------------

--
-- Structure de la table `dock_vehicles`
--

DROP TABLE IF EXISTS `dock_vehicles`;
CREATE TABLE IF NOT EXISTS `dock_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 300, 0),
(2, 'Franchir une ligne continue', 300, 0),
(3, 'Circulation à contresens', 1500, 0),
(4, 'Demi-tour non autorisé', 1000, 0),
(5, 'Circulation hors-route', 1200, 0),
(6, 'Non-respect des distances de sécurité', 1100, 0),
(7, 'Arrêt dangereux / interdit', 1000, 0),
(8, 'Stationnement gênant / interdit', 500, 0),
(9, 'Non respect de la priorité à droite', 1000, 0),
(10, 'Non-respect à un véhicule prioritaire', 1500, 0),
(11, 'Non-respect d\'un stop', 1200, 0),
(12, 'Non-respect d\'un feu rouge', 1500, 0),
(13, 'Dépassement dangereux', 3000, 0),
(14, 'Véhicule non en état', 5000, 0),
(15, 'Conduite sans permis', 10000, 0),
(16, 'Délit de fuite', 20000, 0),
(17, 'Excès de vitesse - 5 kmh', 500, 0),
(18, 'Excès de vitesse + 5-15 kmh', 1000, 0),
(19, 'Excès de vitesse + 15-30 kmh', 2000, 0),
(20, 'Excès de vitesse + 30 kmh', 5000, 0),
(21, 'Entrave de la circulation', 1000, 1),
(22, 'Dégradation de la voie publique', 1000, 1),
(23, 'Trouble à l\'ordre publique', 2000, 1),
(24, 'Entrave opération de police', 12000, 1),
(25, 'Insulte envers / entre civils', 4000, 1),
(26, 'Outrage à agent de police', 18000, 1),
(27, 'Menace verbale ou intimidation envers civil', 20000, 1),
(28, 'Menace verbale ou intimidation envers agent de police', 34000, 1),
(29, 'Manifestation illégale', 15000, 1),
(30, 'Tentative de corruption', 40000, 1),
(31, 'Arme blanche sortie en ville', 5000, 2),
(32, 'Arme léthale sortie en ville', 15000, 2),
(33, 'License PPA', 20000, 2),
(34, 'Port d\'arme illégal', 50000, 2),
(35, 'Carjacking', 10000, 2),
(36, 'Vol de véhicule', 20000, 2),
(37, 'Vente de drogue', 30000, 2),
(38, 'Fabrication de drogue', 60000, 2),
(39, 'Possession de drogue < 100', 30000, 2),
(40, 'Prise d\'otage civil', 50000, 2),
(41, 'Prise d\'otage agent de l\'état', 100000, 2),
(42, 'Braquage particulier', 10000, 3),
(43, 'Braquage magasin', 50000, 3),
(44, 'Braquage de banque', 85000, 3),
(45, 'Tir sur civil', 50000, 3),
(46, 'Tir sur agent de l\'état', 80000, 3),
(47, 'Tentative de meurtre sur civil', 40000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 150000, 3),
(49, 'Meurtre sur civil', 200000, 3),
(50, 'Meurtre sur agent de l\'état', 300000, 3),
(51, 'Meurtre involontaire', 100000, 3),
(53, 'Achat d\'armes illégal\r\n', 200000, 3),
(54, 'Port d\'arme sans PPA', 80000, 2),
(55, 'Escroquerie à l\'entreprise\r\n', 50000, 3),
(56, 'Excès de vitesse + 50kmh + retrait de permis', 10000, 0),
(58, 'Menace de mort envers civils', 50000, 2),
(59, 'Menace de mort envers agent de l\'état', 75000, 2),
(60, 'Possession de drogue > 100', 20000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('acier', 'Acier', -1, 0, 1),
('adrenaline', 'Adrénaline', 15, 0, 1),
('alcool', '🍺 Alcool', 150, 0, 1),
('alcool_cargo', '🍺 Cargaison d\'Alcool', 150, 0, 1),
('alive_chicken', '🍗 Poulet vivant', 150, 0, 1),
('arAmmo', 'Boite Munition Fusil Assaut', 5, 0, 1),
('bag', 'Sac de Sport', 1, 0, 1),
('bandage', 'Bandage', 15, 0, 1),
('beef', '🥩 Morceau de Boeuf', 15, 0, 1),
('beer', '🍺 Bière', -1, 0, 1),
('billet', '🛢️ Bidon d\'Essence', 150, 0, 1),
('blowpipe', 'Chalumeaux', 10, 0, 1),
('blowtorch', 'Chalumeau', 1, 0, 1),
('bolcacahuetes', '🥜 Bol de cacahuètes', 15, 0, 1),
('bolchips', '🥜 Bol de chips', 15, 0, 1),
('bolnoixcajou', '🥜 Bol de noix de cajou', 15, 0, 1),
('bolpistache', '🥜 Bol de pistaches', 15, 0, 1),
('bread', '🥖 Pain', 15, 0, 1),
('lighter', 'Briquet', 15, 0, 1),
('cigarett', 'Cigarette', 15, 0, 1),
('breadsaucisson', '🌭 HotDog', 15, 0, 1),
('c4_bank', 'C4 de 10 kilos', 1, 0, 1),
('cagoule', 'Cagoule', 5, 0, 1),
('carbon', 'Carbone', -1, 0, 1),
('carokit', '🔧 Kit carosserie', 3, 0, 1),
('carotool', '🔧 outils carosserie', 4, 0, 1),
('chocolat', '🍫 Barre de chocolat', 15, 0, 1),
('clip', 'Chargeur', 15, 0, 1),
('clothe', '👔 Vêtement', 150, 0, 1),
('cocacola', 'Canette de Coca-Cola', 15, 0, 1),
('coffee', '☕ Café', 15, 0, 1),
('coke', '💊 Coke', 100, 0, 1),
('coke_pooch', '💊 Pochon de coke', 100, 0, 1),
('COMPONENT_AT_AR_AFGRIP', '[acc] Poignée (Fusils)', 5, 0, 1),
('COMPONENT_AT_AR_CLIP_02', '[acc] Magasin étendu (Fusils)', 5, 0, 1),
('COMPONENT_AT_AR_CLIP_03', '[acc] Magasin très étendu (Fusils)', 5, 0, 1),
('COMPONENT_AT_AR_FLSH', '[acc] Lampe torche (Fusils)', 5, 0, 1),
('COMPONENT_AT_AR_SUPP_02', '[acc] Silencieux (Fusils)', 5, 0, 1),
('COMPONENT_AT_PI_CLIP_02', '[acc] Magasin étendu (Pistolets)', 5, 0, 1),
('COMPONENT_AT_PI_FLSH', '[acc] Lampe torche (Pistolets)', 5, 0, 1),
('COMPONENT_AT_PI_SUPP', '[acc] Silencieux (Pistolets)', 5, 0, 1),
('COMPONENT_AT_SCOPE_MACRO', '[acc] Lunette (Fusils)', 5, 0, 1),
('COMPONENT_KNUCKLE_VARMOD_BALLAS', '[skin] Poing américain - Ballas', 5, 0, 1),
('COMPONENT_KNUCKLE_VARMOD_DIAMOND', '[skin] Poing américain - Diamant', 5, 0, 1),
('COMPONENT_KNUCKLE_VARMOD_DOLLAR', '[skin] Poing américain - Dollar', 5, 0, 1),
('COMPONENT_KNUCKLE_VARMOD_HATE', '[skin] Poing américain - Haine', 5, 0, 1),
('COMPONENT_KNUCKLE_VARMOD_KING', '[skin] Poing américain - King', 5, 0, 1),
('COMPONENT_KNUCKLE_VARMOD_LOVE', '[skin] Poing américain - Amour', 5, 0, 1),
('COMPONENT_KNUCKLE_VARMOD_PIMP', '[skin] Poing américain - Pimp', 5, 0, 1),
('COMPONENT_KNUCKLE_VARMOD_PLAYER', '[skin] Poing américain - Joueur', 5, 0, 1),
('COMPONENT_KNUCKLE_VARMOD_VAGOS', '[skin] Poing américain - Vagos', 5, 0, 1),
('COMPONENT_REVOLVER_VARMOD_BOSS', '[skin] Revolver - Boss', 5, 0, 1),
('COMPONENT_REVOLVER_VARMOD_GOON', '[skin] Revolver - Voyou', 5, 0, 1),
('COMPONENT_SWITCHBLADE_VARMOD_VAR1', '[skin] Couteau à cran d\'arrêt - VIP', 5, 0, 1),
('COMPONENT_SWITCHBLADE_VARMOD_VAR2', '[skin] Couteau à cran d\'arrêt - Bois', 5, 0, 1),
('COMPONENT_VARMOD_LOWRIDER', '[skin] Finition - Lowrider', 5, 0, 1),
('COMPONENT_VARMOD_LUXE', '[skin] Finition - Luxe', 5, 0, 1),
('copper', 'Cuivre', 56, 0, 1),
('croquettes', 'Croquettes', -1, 0, 1),
('cryptedphone', 'Téléphone Crypté', 25, 0, 1),
('cupcake', '🧁 CupCake', 15, 0, 1),
('cutted_wood', '🌳 Bois coupé', 150, 0, 1),
('diamond', '💎 Diamant', 5, 0, 1),
('doliprane', 'Doliprane', 15, 0, 1),
('douille', 'Boite de douille', -1, 0, 1),
('drill', 'Perceuse (Banque)', 1, 0, 1),
('drpepper', 'Dr. Pepper', 5, 0, 1),
('energy', 'Energy Drink', 5, 0, 1),
('essence', '⛽ Essence', 150, 0, 1),
('essence1', '🥃 Whiskey', 150, 0, 1),
('fabric', '🧶 Tissu', 150, 0, 1),
('fish', '🐟 Poisson', 150, 0, 1),
('fishbait', 'Appât à Poisson', 30, 0, 1),
('fishingknife', 'Couteau de pêche', 1, 0, 1),
('fishingrod', 'Canne à pêche', 2, 0, 1),
('fish_traiter', 'Poisson Découpé', 150, 0, 1),
('fixkit', '🔧 Kit réparation', 5, 0, 1),
('fixtool', 'outils réparation', 6, 0, 1),
('flashlight', '🔦 Lampe', 5, 0, 1),
('gazbottle', 'bouteille de gaz', 11, 0, 1),
('gitanes', '🚬 Gitanes', 150, 0, 1),
('gold', 'Or', 21, 0, 1),
('golem', 'Golem', 5, 0, 1),
('grand_cru', '🍾 Grand Cru', 150, 0, 1),
('grapperaisin', '🍇 Grappe de raisin', 150, 0, 1),
('grip', 'Poignée', 15, 0, 1),
('gym_membership', 'Carte d\'Adhésion', 1, 0, 1),
('hamburger', '🍔 Hamburger', 15, 0, 1),
('hamburgerplate', '🍔 Hamburger aux boulettes de viande', 15, 0, 1),
('headbag', 'Cagoule', 5, 0, 1),
('HeavyArmor', 'Gilet par balle Lourd', 3, 0, 1),
('HeavyArmour', 'Gilet Lourd', 1, 0, 1),
('ice', 'Glaçon', 15, 0, 1),
('icetea', 'Ice Tea', 15, 0, 1),
('iron', 'Fer', 42, 0, 1),
('jager', 'Jägermeister', 5, 0, 1),
('jagerbomb', 'Jägerbomb', 5, 0, 1),
('jagercerbere', 'Jäger Cerbère', 3, 0, 1),
('jewels', '💎 Bijoux', -1, 0, 1),
('jusfruit', '🍇 Jus de fruits', 150, 0, 1),
('jus_raisin', '🍇 Jus de Raisin', 150, 0, 1),
('keycard', 'Keycard', -1, 0, 1),
('licenseplate', 'Plaque Immatriculation Custom', 5, 0, 1),
('limonade', 'Limonade', 15, 0, 1),
('lockpick', 'Lockpick', 1, 0, 1),
('lsd', 'Lsd', -1, 0, 1),
('lsd_pooch', 'Pochon de LSD', -1, 0, 1),
('malbora', '🚬 Malboro', 150, 0, 1),
('martini', '🍸 Martini blanc', 5, 0, 1),
('MedArmor', 'Gilet par balle Moyen', 3, 0, 1),
('MedArmour', 'Gilet Moyen', 1, 0, 1),
('medikit', 'Medikit', 15, 0, 1),
('menthe', 'Feuille de menthe', 150, 0, 1),
('meth', 'Meth', 100, 0, 1),
('meth_pooch', 'Pochon de meth', 100, 0, 1),
('metreshooter', 'Mètre de shooter', 15, 0, 1),
('mgAmmo', 'Boite Munition Machine Gun', 5, 0, 1),
('mixapero', 'Mix Apéritif', 15, 0, 1),
('mojito', 'Mojito', 15, 0, 1),
('myrte', 'Myrte', 150, 0, 1),
('myrtealcool', 'Alcool de myrte', 150, 0, 1),
('myrte_cargo', 'Cargaison de Myrte', 150, 0, 1),
('opium', '💉 Ecstasy', 100, 0, 1),
('opium_pooch', '💉 Pochon d\'Ecstasy', 100, 0, 1),
('or1', 'Or', -1, 0, 1),
('or2', 'Lingot', -1, 0, 1),
('or_raffin', 'Or Moulé', -1, 0, 1),
('oxycutter', 'Torche Plasma', -1, 0, 1),
('pacificidcard', 'Pacific ID', -1, 0, 1),
('packaged_chicken', '🍗 Poulet en barquette', 150, 0, 1),
('packaged_plank', '🌳 Paquet de planches', 150, 0, 1),
('pAmmo', 'Boite Munition Pistolet', 5, 0, 1),
('papier', '🛢️ Pétrole', 150, 0, 1),
('petrol', '🥃 Graines', 150, 0, 1),
('petrol_raffin', '🥃 Whiskey Fermenté', 150, 0, 1),
('piluleoubli', '💊 Pilule de l\'oubli', 5, 0, 1),
('poudre', 'Boite de poudre', -1, 0, 1),
('powerade', 'Powerade', 15, 0, 1),
('ppa', 'Licence Permis de Port d\'Armes', 1, 0, 1),
('protein_shake', 'Protein Shake', 15, 0, 1),
('radio', 'radio', 1, 0, 1),
('raisin', '🍇 Raisin', 150, 0, 1),
('rasperry', 'Rasperry', 1, 0, 1),
('redbull', 'RedBull', 150, 0, 1),
('redbull_cargo', 'Cargaison de RedBull', 150, 0, 1),
('rhum', '🥃 Rhum', 5, 0, 1),
('rhumcoca', '🥃 Rhum-coca', 5, 0, 1),
('rhumfruit', '🥃 Rhum-jus de fruits', 5, 0, 1),
('rolex', 'Montre Rolex', -1, 0, 1),
('saucisson', 'Saucisson', 15, 0, 1),
('sgAmmo', 'Boite Munition Fusil à Pompe', 5, 0, 1),
('shark', 'Requin', -1, 0, 1),
('silencieux', 'Silencieux', 15, 0, 1),
('sim', 'Carte SIM', 15, 0, 1),
('slaughtered_chicken', '🍗 Poulet abattu', 150, 0, 1),
('SmallArmor', 'Gilet par balle Léger', 3, 0, 1),
('SmallArmour', 'Gilet Léger', 1, 0, 1),
('soda', 'Soda', 15, 0, 1),
('sportlunch', 'Sportlunch', 15, 0, 1),
('stone', 'Pierre', 124, 0, 1),
('tel', 'Téléphone', 150, 0, 1),
('tabacblond', '🚬 Tabac Blond', 150, 0, 1),
('tabacblondsec', '🚬 Tabac Blond Séché', 150, 0, 1),
('tabacbrun', '🚬 Tabac Brun', 150, 0, 1),
('tabacbrunsec', '🚬 Tabac Brun Séché', 150, 0, 1),
('tenuebraquage', 'Tenue Braquage', -1, 0, 1),
('tenuecasa', 'Tenue Casa de Papel', -1, 0, 1),
('tenueprison', 'Tenue de Prison', -1, 0, 1),
('teqpaf', 'Teq\'paf', 5, 0, 1),
('tequila', '🥃 Tequila', 5, 0, 1),
('TINT_01', '[tint] Vert', 5, 0, 1),
('TINT_02', '[tint] Or', 5, 0, 1),
('TINT_03', '[tint] Rose', 5, 0, 1),
('TINT_04', '[tint] Militaire', 5, 0, 1),
('TINT_05', '[tint] LSPD', 5, 0, 1),
('TINT_06', '[tint] Orange', 5, 0, 1),
('TINT_07', '[tint] Platine', 5, 0, 1),
('turtle', 'Tortue de mer', 3, 0, 1),
('turtlebait', 'Appât à Tortue', 10, 0, 1),
('viande', '🍖 Viande', 25, 0, 1),
('vine', '🍷 Vin', 150, 0, 1),
('vodka', '🥃 Vodka', 5, 0, 1),
('vodkaenergy', '🥃 Vodka-energy', 5, 0, 1),
('vodkafruit', '🥃 Vodka-jus de fruits', 5, 0, 1),
('vodkrb', '🥃 Vodka RedBull', 5, 0, 1),
('washed_stone', 'Pierre Lavée', 124, 0, 1),
('water', '💧 Bouteille d\'Eau', 15, 0, 1),
('weed', '🍁 Cannabis', 100, 0, 1),
('weed_pooch', '🍁 Pochon de Cannabis', 100, 0, 1),
('whisky', '🥃 Whisky', 15, 0, 1),
('whiskycoc', '🥃 Whisky CorsicaCola', 15, 0, 1),
('whiskycoca', '🥃 Whisky-coca', 15, 0, 1),
('wood', '🌳 Bois', 150, 0, 1),
('wool', 'Laine', 150, 0, 1),
('xanax', 'Xanax', -1, 0, 1),
('yusuf', 'Skin de luxe', 15, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jail`
--

DROP TABLE IF EXISTS `jail`;
CREATE TABLE IF NOT EXISTS `jail` (
  `identifier` varchar(100) NOT NULL,
  `isjailed` tinyint(1) DEFAULT NULL,
  `J_Time` datetime NOT NULL,
  `J_Cell` varchar(20) NOT NULL,
  `Jailer` varchar(100) NOT NULL,
  `Jailer_ID` varchar(100) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'LSMC', 1),
('ammu', 'Armurier', 1),
('avocat', 'Avocat', 1),
('bahama', 'Bahama Mas', 1),
('ballas', 'Ballas', 0),
('banker', 'Banquier', 1),
('bratva', 'Mafia', 1),
('cardealer', 'Concessionnaire', 1),
('casino', 'Casino', 1),
('famillies', 'Famillies', 1),
('fib', 'FBI', 1),
('fisherman', 'Pêcheur', 1),
('fueler', 'Mixologue', 1),
('garbage', 'Veolia Propreté', 0),
('illegal', 'Illegal', 1),
('journaliste', 'Journaliste', 1),
('kano', 'Clan Kano', 1),
('lazone', 'LaZone', 1),
('lumberjack', 'Bûcheron', 0),
('mecano', 'Mécano', 1),
('mercenaire', 'Mercenaire', 1),
('miner', 'Mineur', 0),
('ms13', 'MS13', 0),
('nightclub', 'NightClub', 1),
('offambulance', 'Pas en Service', 1),
('offpolice', 'Pas en Service', 1),
('pecheur', 'Pêcheur', 1),
('podolskaia', 'Podolskaia', 1),
('police', 'LSPD', 1),
('pompiste', 'Pompiste', 1),
('realestateagent', 'Agent Immobilier', 1),
('reporter', 'Journaliste', 1),
('securoserv', 'SecuroServ', 0),
('slaughterer', 'Abatteur', 0),
('state', 'Gouvernement', 1),
('syndicat', 'Syndicat', 1),
('tabac', 'Tabac', 1),
('tailor', 'Couturier', 0),
('taxi', 'Taxi', 1),
('unemployed', 'Chômeur', 0),
('unemployed2', 'État', 0),
('unicorn', 'Unicorn', 1),
('vagos', 'Vagos', 1),
('vigne', 'Vignerons', 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Pole Emploi', 150, '{}', '{}'),
(2, 'lumberjack', 0, 'employee', 'Intérimaire', 350, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":13,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":15,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":2,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":0,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":15,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":12,\"pants_1\":9}', '{}'),
(3, 'fisherman', 0, 'employee', 'Intérimaire', 350, '{}', '{}'),
(4, 'fueler', 0, 'employee', 'Intérimaire', 350, '{}', '{}'),
(5, 'reporter', 0, 'employee', 'Intérimaire', 350, '{}', '{}'),
(6, 'tailor', 0, 'employee', 'Intérimaire', 350, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":15,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'miner', 0, 'employee', 'Intérimaire', 350, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(8, 'slaughterer', 0, 'employee', 'Intérimaire', 350, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(9, 'cardealer', 0, 'recruit', 'Recrue', 1, '{}', '{}'),
(10, 'cardealer', 1, 'novice', 'Novice', 1, '{}', '{}'),
(11, 'cardealer', 2, 'experienced', 'Experimente', 1, '{}', '{}'),
(12, 'cardealer', 3, 'boss', 'Patron', 1, '{}', '{}'),
(13, 'ambulance', 0, 'ambulance', 'Médecin', 1, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":8,\"torso_2\":1,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":85,\"face\":19,\"decals_1\":58,\"torso_1\":250,\"hair_2\":0,\"skin\":34,\"pants_2\":3}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(14, 'ambulance', 1, 'doctor', 'Médecin-Chef', 1, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":8,\"torso_2\":1,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":85,\"face\":19,\"decals_1\":58,\"torso_1\":250,\"hair_2\":0,\"skin\":34,\"pants_2\":3}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(15, 'ambulance', 2, 'chief_doctor', 'Chirurgien', 1, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":8,\"torso_2\":1,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":85,\"face\":19,\"decals_1\":58,\"torso_1\":250,\"hair_2\":0,\"skin\":34,\"pants_2\":3}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(16, 'ambulance', 3, 'boss', 'Directeur', 650, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":8,\"torso_2\":1,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":85,\"face\":19,\"decals_1\":58,\"torso_1\":250,\"hair_2\":0,\"skin\":34,\"pants_2\":3}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(17, 'mecano', 0, 'recrue', 'Recrue', 1, '{\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_2\":0,\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":12,\"pants_1\":90,\"shoes_1\":12,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":3,\"torso_1\":89,\"tshirt_1\":15,\"arms\":6,\"bags_2\":0,\"helmet_1\":-1}\r\n\r\n\r\n\r\n', '{}'),
(18, 'mecano', 1, 'novice', 'Novice', 1, '{\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_2\":0,\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":12,\"pants_1\":90,\"shoes_1\":12,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":3,\"torso_1\":89,\"tshirt_1\":15,\"arms\":6,\"bags_2\":0,\"helmet_1\":-1}\r\n', '{}'),
(19, 'mecano', 2, 'experimente', 'Experimente', 1, '{\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_2\":0,\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":12,\"pants_1\":90,\"shoes_1\":12,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":8,\"torso_1\":89,\"tshirt_1\":15,\"arms\":6,\"bags_2\":0,\"helmet_1\":-1}\r\n', '{}'),
(20, 'mecano', 3, 'chief', 'Chef d\'équipe', 500, '{\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_2\":0,\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":12,\"pants_1\":90,\"shoes_1\":12,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":1,\"torso_1\":89,\"tshirt_1\":15,\"arms\":6,\"bags_2\":0,\"helmet_1\":-1}', '{}'),
(21, 'mecano', 4, 'boss', 'Patron', 1, '{\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_2\":0,\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":12,\"pants_1\":90,\"shoes_1\":12,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":5,\"torso_1\":89,\"tshirt_1\":15,\"arms\":6,\"bags_2\":0,\"helmet_1\":-1}', '{}'),
(27, 'tabac', 0, 'recrue', 'Tabagiste', 1, '{}', '{}'),
(28, 'tabac', 1, 'gerant', 'Gérant', 1, '{}', '{}'),
(29, 'tabac', 2, 'boss', 'Patron', 1, '{}', '{}'),
(30, 'taxi', 0, 'recrue', 'Recrue', 400, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(31, 'taxi', 1, 'novice', 'Novice', 450, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(32, 'taxi', 2, 'experimente', 'Experimente', 500, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 3, 'uber', 'Uber', 550, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 4, 'boss', 'Patron', 600, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'unicorn', 0, 'barman', 'Barman', 1, '{}', '{}'),
(36, 'unicorn', 1, 'dancer', 'Danseur', 1, '{}', '{}'),
(37, 'unicorn', 2, 'viceboss', 'Co-gérant', 1, '{}', '{}'),
(38, 'unicorn', 3, 'boss', 'Gérant', 1, '{}', '{}'),
(39, 'vigne', 0, 'recrue', 'Intérimaire', 400, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(40, 'vigne', 1, 'novice', 'Vigneron', 500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(41, 'vigne', 2, 'cdisenior', 'Chef de chai', 600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(42, 'vigne', 3, 'boss', 'Patron', 650, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(43, 'realestateagent', 0, 'location', 'Location', 1, '{}', '{}'),
(44, 'realestateagent', 1, 'vendeur', 'Vendeur', 1, '{}', '{}'),
(45, 'realestateagent', 2, 'gestion', 'Gestion', 1, '{}', '{}'),
(46, 'realestateagent', 3, 'boss', 'Patron', 699, '{}', '{}'),
(89, 'banker', 0, 'advisor', 'Conseiller', 400, '{}', '{}'),
(90, 'banker', 1, 'banker', 'Banquier', 450, '{}', '{}'),
(91, 'banker', 2, 'business_banker', 'Banquier d\'affaire', 500, '{}', '{}'),
(92, 'banker', 3, 'trader', 'Trader', 550, '{}', '{}'),
(93, 'banker', 4, 'boss', 'Patron', 600, '{}', '{}'),
(110, 'fueler', 0, 'recrue', 'Intérimaire', 300, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":13,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(111, 'fueler', 1, 'novice', 'Chef équipe', 500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":13,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(112, 'fueler', 2, 'cdisenior', 'Adjoint', 1000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":13,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(113, 'fueler', 3, 'boss', 'Patron', 2000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":13,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(114, 'nightclub', 0, 'barman', 'Barman', 1, '{}', '{}'),
(115, 'nightclub', 1, 'dancer', 'Danceur', 1, '{}', '{}'),
(116, 'nightclub', 2, 'viceboss', 'Co-Manager', 1, '{}', '{}'),
(117, 'nightclub', 3, 'boss', 'Patron', 1, '{}', '{}'),
(118, 'bahama', 0, 'barman', 'Barman', 10, '{}', '{}'),
(119, 'bahama', 1, 'dj', 'DJ', 10, '{}', '{}'),
(120, 'bahama', 2, 'secu', 'Sécurité', 10, '{}', '{}'),
(121, 'bahama', 3, 'viceboss', 'Co-gérant', 10, '{}', '{}'),
(122, 'bahama', 4, 'boss', 'Gérant', 10, '{}', '{}'),
(123, 'police', 0, 'recruit', 'Cadet', 150, '{}', '{}'),
(124, 'police', 1, 'officer', 'Officier', 300, '{}', '{}'),
(125, 'police', 2, 'sergeant', 'Sergent', 150, '{}', '{}'),
(126, 'police', 3, 'intendent', 'Sergent-Chef', 150, '{}', '{}'),
(127, 'police', 4, 'lieutenant', 'Lieutenant', 500, '{}', '{}'),
(128, 'police', 5, 'chef', 'Capitaine', 550, '{}', '{}'),
(129, 'police', 6, 'boss', 'Commandant', 600, '{}', '{}'),
(130, 'police', 7, 'bac', 'BAC', 525, '{}', '{}'),
(143, 'garbage', 0, 'employee', 'Intérimaire', 350, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(156, 'pecheur', 0, 'recrue', 'Intérimaire', 400, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(157, 'pecheur', 1, 'novice', 'Pécheur', 450, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(158, 'pecheur', 2, 'cdisenior', 'Chef Pécheur', 500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(159, 'pecheur', 3, 'boss', 'Patron', 600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(168, 'offpolice', 0, 'recruit', 'Cadet', 425, '{}', '{}'),
(169, 'offpolice', 1, 'officer', 'Officier', 450, '{}', '{}'),
(170, 'offpolice', 2, 'sergeant', 'Sergeant', 475, '{}', '{}'),
(171, 'offpolice', 3, 'intendant', '	Sergent-Chef', 500, '{}', '{}'),
(172, 'offpolice', 4, 'lieutenant', 'Lieutenant', 525, '{}', '{}'),
(173, 'offpolice', 5, 'chef', 'Capitaine', 550, '{}', '{}'),
(174, 'offpolice', 6, 'boss', 'Commandant', 600, '{}', '{}'),
(175, 'offpolice', 7, 'bac', 'BAC', 525, '{}', '{}'),
(176, 'offambulance', 0, 'ambulance', 'Ambulancier', 400, '{}', '{}'),
(177, 'offambulance', 1, 'doctor', 'Médecin', 450, '{}', '{}'),
(178, 'offambulance', 2, 'chief_doctor', 'Médecin-Chef', 500, '{}', '{}'),
(179, 'offambulance', 3, 'boss', 'Patron', 600, '{}', '{}'),
(224, 'fib', 0, 'recruit', 'Recrue', 400, '{\"eyebrows_4\":27,\"beard_1\":18,\"hair_color_2\":0,\"torso_1\":13,\"hair_2\":0,\"glasses_2\":3,\"skin\":1,\"eyebrows_2\":10,\"glasses_1\":5,\"makeup_2\":1,\"mask_2\":0,\"beard_4\":7,\"hair_color_1\":2,\"mask_1\":0,\"beard_2\":10,\"bproof_1\":0,\"shoes_1\":21,\"face\":0,\"bags_1\":0,\"pants_1\":10,\"helmet_1\":8,\"pants_2\":0,\"makeup_4\":1,\"chain_1\":38,\"sex\":0,\"tshirt_1\":15,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":10,\"bproof_2\":0,\"arms\":11,\"decals_2\":0,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":2,\"lipstick_4\":0,\"glasses\":0,\"torso_2\":0,\"lipstick_1\":0,\"decals_1\":0,\"beard_3\":2,\"makeup_1\":0,\"shoes_2\":0,\"chain_2\":0,\"eyebrows_3\":27,\"bags_2\":0,\"age_2\":2,\"hair_1\":39,\"age_1\":4,\"lipstick_3\":0,\"lipstick_2\":0,\"eyebrows_1\":12}', '{\"eyebrows_4\":27,\"beard_1\":18,\"hair_color_2\":0,\"torso_1\":27,\"hair_2\":0,\"glasses_2\":0,\"skin\":0,\"eyebrows_2\":10,\"glasses_1\":19,\"makeup_2\":1,\"mask_2\":0,\"beard_4\":4,\"hair_color_1\":2,\"mask_1\":0,\"beard_2\":0,\"bproof_1\":0,\"shoes_1\":13,\"face\":6,\"bags_1\":0,\"pants_1\":6,\"helmet_1\":57,\"pants_2\":0,\"makeup_4\":1,\"chain_1\":0,\"sex\":1,\"tshirt_1\":3,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":10,\"bproof_2\":0,\"arms\":0,\"decals_2\":0,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"glasses\":0,\"torso_2\":0,\"lipstick_1\":0,\"decals_1\":1,\"beard_3\":0,\"makeup_1\":0,\"shoes_2\":0,\"chain_2\":0,\"eyebrows_3\":27,\"bags_2\":0,\"age_2\":2,\"hair_1\":73,\"age_1\":4,\"lipstick_3\":0,\"lipstick_2\":0,\"eyebrows_1\":13}'),
(225, 'fib', 1, 'agent', 'Agent', 450, '{\"eyebrows_1\":10,\"beard_1\":0,\"hair_color_2\":0,\"torso_1\":28,\"hair_2\":0,\"glasses_2\":6,\"skin\":0,\"eyebrows_2\":10,\"hair_1\":10,\"makeup_2\":0,\"mask_2\":0,\"beard_4\":0,\"hair_color_1\":3,\"sex\":0,\"beard_2\":0,\"bproof_1\":0,\"mask_1\":0,\"face\":44,\"decals_1\":0,\"bags_1\":0,\"helmet_1\":-1,\"pants_2\":0,\"lipstick_1\":0,\"chain_1\":10,\"decals_2\":0,\"tshirt_1\":10,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":24,\"bproof_2\":0,\"arms\":1,\"age_2\":0,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"pants_1\":10,\"shoes_1\":21,\"beard_3\":0,\"lipstick_2\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"chain_2\":2,\"eyebrows_3\":1,\"bags_2\":0,\"glasses\":0,\"torso_2\":0,\"age_1\":0,\"lipstick_3\":0,\"makeup_4\":0,\"glasses_1\":17}', '{\"eyebrows_1\":13,\"beard_1\":18,\"hair_color_2\":0,\"torso_1\":7,\"hair_2\":0,\"glasses_2\":0,\"skin\":0,\"makeup_4\":1,\"hair_1\":73,\"makeup_2\":1,\"mask_2\":0,\"beard_4\":4,\"hair_color_1\":2,\"mask_1\":0,\"torso_2\":0,\"bproof_1\":0,\"decals_1\":1,\"glasses\":0,\"sex\":1,\"bags_1\":0,\"helmet_1\":57,\"pants_2\":0,\"face\":6,\"chain_1\":0,\"beard_2\":0,\"tshirt_1\":39,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":10,\"bproof_2\":0,\"arms\":7,\"eyebrows_2\":10,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"chain_2\":0,\"pants_1\":6,\"lipstick_2\":0,\"eyebrows_4\":27,\"makeup_1\":0,\"shoes_2\":0,\"decals_2\":0,\"shoes_1\":13,\"bags_2\":0,\"age_2\":2,\"glasses_1\":19,\"age_1\":4,\"lipstick_3\":0,\"lipstick_1\":0,\"eyebrows_3\":27}'),
(226, 'fib', 2, 'specialagent', 'Agent Spécial', 500, '{\"eyebrows_1\":10,\"beard_1\":0,\"hair_color_2\":0,\"torso_1\":28,\"hair_2\":0,\"glasses_2\":6,\"skin\":0,\"eyebrows_2\":10,\"hair_1\":10,\"makeup_2\":0,\"mask_2\":0,\"beard_4\":0,\"hair_color_1\":3,\"sex\":0,\"beard_2\":0,\"bproof_1\":0,\"mask_1\":0,\"face\":44,\"decals_1\":0,\"bags_1\":0,\"helmet_1\":-1,\"pants_2\":0,\"lipstick_1\":0,\"chain_1\":10,\"decals_2\":0,\"tshirt_1\":10,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":24,\"bproof_2\":0,\"arms\":1,\"age_2\":0,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"pants_1\":10,\"shoes_1\":21,\"beard_3\":0,\"lipstick_2\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"chain_2\":2,\"eyebrows_3\":1,\"bags_2\":0,\"glasses\":0,\"torso_2\":0,\"age_1\":0,\"lipstick_3\":0,\"makeup_4\":0,\"glasses_1\":17}', '{\"eyebrows_1\":13,\"beard_1\":18,\"hair_color_2\":0,\"torso_1\":7,\"hair_2\":0,\"glasses_2\":0,\"skin\":0,\"makeup_4\":1,\"hair_1\":73,\"makeup_2\":1,\"mask_2\":0,\"beard_4\":4,\"hair_color_1\":2,\"mask_1\":0,\"torso_2\":0,\"bproof_1\":0,\"decals_1\":1,\"glasses\":0,\"sex\":1,\"bags_1\":0,\"helmet_1\":57,\"pants_2\":0,\"face\":6,\"chain_1\":0,\"beard_2\":0,\"tshirt_1\":39,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":10,\"bproof_2\":0,\"arms\":7,\"eyebrows_2\":10,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"chain_2\":0,\"pants_1\":6,\"lipstick_2\":0,\"eyebrows_4\":27,\"makeup_1\":0,\"shoes_2\":0,\"decals_2\":0,\"shoes_1\":13,\"bags_2\":0,\"age_2\":2,\"glasses_1\":19,\"age_1\":4,\"lipstick_3\":0,\"lipstick_1\":0,\"eyebrows_3\":27}'),
(227, 'fib', 3, 'boss', 'Directeur', 600, '{\"eyebrows_1\":10,\"beard_1\":0,\"hair_color_2\":0,\"torso_1\":4,\"hair_2\":0,\"glasses_2\":6,\"skin\":0,\"eyebrows_2\":10,\"hair_1\":10,\"makeup_2\":0,\"mask_2\":0,\"beard_4\":0,\"hair_color_1\":3,\"sex\":0,\"beard_2\":0,\"bproof_1\":0,\"mask_1\":0,\"face\":44,\"decals_1\":0,\"bags_1\":0,\"helmet_1\":-1,\"pants_2\":0,\"lipstick_1\":0,\"chain_1\":10,\"decals_2\":0,\"tshirt_1\":10,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":24,\"bproof_2\":0,\"arms\":4,\"age_2\":0,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"pants_1\":10,\"shoes_1\":21,\"beard_3\":0,\"lipstick_2\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"chain_2\":2,\"eyebrows_3\":1,\"bags_2\":0,\"glasses\":0,\"torso_2\":0,\"age_1\":0,\"lipstick_3\":0,\"makeup_4\":0,\"glasses_1\":17}', '{\"eyebrows_1\":13,\"beard_1\":18,\"hair_color_2\":0,\"torso_1\":7,\"hair_2\":0,\"glasses_2\":0,\"skin\":0,\"makeup_4\":1,\"hair_1\":73,\"makeup_2\":1,\"mask_2\":0,\"beard_4\":4,\"hair_color_1\":2,\"mask_1\":0,\"torso_2\":0,\"bproof_1\":0,\"decals_1\":1,\"glasses\":0,\"sex\":1,\"bags_1\":0,\"helmet_1\":57,\"pants_2\":0,\"face\":6,\"chain_1\":0,\"beard_2\":0,\"tshirt_1\":39,\"makeup_3\":0,\"tshirt_2\":0,\"shoes\":10,\"bproof_2\":0,\"arms\":7,\"eyebrows_2\":10,\"ears_2\":0,\"helmet_2\":0,\"ears_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"chain_2\":0,\"pants_1\":6,\"lipstick_2\":0,\"eyebrows_4\":27,\"makeup_1\":0,\"shoes_2\":0,\"decals_2\":0,\"shoes_1\":13,\"bags_2\":0,\"age_2\":2,\"glasses_1\":19,\"age_1\":4,\"lipstick_3\":0,\"lipstick_1\":0,\"eyebrows_3\":27}'),
(228, 'pompiste', 0, 'recrue', 'Intérimaire', 300, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(229, 'pompiste', 1, 'novice', 'Employé', 300, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(230, 'pompiste', 2, 'cdisenior', 'Chef', 400, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(231, 'pompiste', 3, 'boss', 'Patron', 1, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(236, 'famillies', 0, 'soldato', 'Soldat', 0, '{}', '{}'),
(237, 'famillies', 1, 'capo', 'Assassin', 0, '{}', '{}'),
(238, 'famillies', 2, 'consigliere', 'Consigliere', 0, '{}', '{}'),
(239, 'famillies', 3, 'righthand', 'Bras Droit', 0, '{}', '{}'),
(240, 'famillies', 4, 'boss', 'Chef', 150, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{}'),
(241, 'kano', 0, 'soldato', 'Soldat', 0, '{}', '{}'),
(242, 'kano', 1, 'capo', 'Assassin', 0, '{}', '{}'),
(243, 'kano', 2, 'consigliere', 'Consigliere', 0, '{}', '{}'),
(244, 'kano', 3, 'righthand', 'Bras Droit', 0, '{}', '{}'),
(245, 'kano', 4, 'boss', 'Chef', 0, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{}'),
(246, 'lazone', 0, 'soldato', 'Soldat', 0, '{}', '{}'),
(247, 'lazone', 1, 'capo', 'Assassin', 0, '{}', '{}'),
(248, 'lazone', 2, 'consigliere', 'Consigliere', 0, '{}', '{}'),
(249, 'lazone', 3, 'righthand', 'Bras Droit', 0, '{}', '{}'),
(250, 'lazone', 4, 'boss', 'Chef', 0, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{}'),
(251, 'bratva', 0, 'soldato', 'Soldat', 0, '{}', '{}'),
(252, 'bratva', 1, 'capo', 'Assassin', 0, '{}', '{}'),
(253, 'bratva', 2, 'consigliere', 'Consigliere', 0, '{}', '{}'),
(254, 'bratva', 3, 'righthand', 'Bras Droit', 0, '{}', '{}'),
(255, 'bratva', 4, 'boss', 'Chef', 0, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{}'),
(256, 'unemployed2', 0, 'rsa', 'Civil', 500, '{}', '{}'),
(258, 'ammu', 0, 'stagiaire', 'Stagiaire', 500, '{}', '{}'),
(259, 'ammu', 1, 'employé', 'Employé', 600, '{}', '{}'),
(260, 'ammu', 2, 'professionnel', 'Professionnel', 699, '{}', '{}'),
(261, 'ammu', 3, 'second', 'Second', 699, '{}', '{}'),
(262, 'ammu', 4, 'boss', 'Gérant(e)', 500, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{}'),
(263, 'state', 0, 'vicepresident', 'FBI Recrue', 950, '{}', '{}'),
(264, 'state', 3, 'president', 'Président(e)', 1500, '{}', '{}'),
(265, 'state', 2, 'gouvernment', 'Garde Rapproché', 1250, '{}', '{}'),
(266, 'state', 1, 'boss', 'FBI', 1000, '{}', '{}'),
(267, 'avocat', 0, 'recruit', 'Avocat(e)', 500, '{\"tshirt_1\":57,\"torso_1\":55,\"arms\":0,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":34,\"torso_1\":48,\"shoes\":24,\"pants_1\":34,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":0,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":57}'),
(268, 'avocat', 1, 'boss', 'Patron', 750, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":41,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":8,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(269, 'ballas', 0, 'soldato', 'Soldat', 10, '{}', '{}'),
(270, 'ballas', 1, 'capo', 'Assassin', 13, '{}', '{}'),
(271, 'ballas', 2, 'consigliere', 'Consigliere', 16, '{}', '{}'),
(272, 'ballas', 3, 'righthand', 'Bras Droit', 20, '{}', '{}'),
(273, 'ballas', 3, 'boss', 'Chef', 20, '{}', '{}'),
(274, 'journaliste', 0, 'stagiaire', 'Stagiaire', 150, '{}', '{}'),
(275, 'journaliste', 1, 'reporter', 'Reporter', 200, '{}', '{}'),
(276, 'journaliste', 2, 'investigator', 'Enquêteur', 250, '{}', '{}'),
(277, 'journaliste', 3, 'boss', 'Rédac\' chef', 5, '{}', '{}'),
(278, 'illegal', 0, 'soldato', 'Soldado', 1, '{}', '{}'),
(279, 'illegal', 1, 'capo', 'Assasino', 1, '{}', '{}'),
(280, 'illegal', 2, 'consigliere', 'Capo', 1, '{}', '{}'),
(281, 'illegal', 3, 'righthand', 'Mão direita', 1, '{}', '{}'),
(282, 'illegal', 4, 'boss', 'Chef ', 1, '{\"tshirt_1\":15,\"torso_1\":42,\"shoes\":8,\"pants_1\":24,\"pants_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":8,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":0,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":-1}', '{}'),
(283, 'securoserv', 0, 'recruit', 'Agent', 1, '{}', '{}'),
(284, 'securoserv', 1, 'lieutenant', 'Bras Droit', 1, '{}', '{}'),
(285, 'securoserv', 2, 'boss', 'Patron', 1, '{}', '{}'),
(286, 'ms13', 0, 'recrue', 'MS-13', 12, '{}', '{}'),
(287, 'ms13', 1, 'novice', 'Gérant', 24, '{}', '{}'),
(288, 'ms13', 2, 'experimente', 'Frère de sang', 36, '{}', '{}'),
(289, 'ms13', 3, 'chief', 'El Patron ', 48, '{}', '{}'),
(290, 'casino', 0, 'guard', 'Securité', 70, '{\"torso_1\":95,\"helmet_2\":2,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":15,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":6,\"ears_2\":0,\"arms\":26,\"lipstick_1\":0,\"ears_1\":0,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":58,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":17,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":45,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":1,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":21,\"pants_1\":24}', '{\"torso_1\":124,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":15,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":6,\"ears_2\":0,\"arms\":14,\"lipstick_1\":0,\"ears_1\":0,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":4,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":45,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":2,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":42,\"pants_1\":65}'),
(291, 'casino', 1, 'croupier', 'Croupier', 100, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":11,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":2,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":22,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":11,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":11,\"ears_2\":0,\"arms\":75,\"lipstick_1\":0,\"ears_1\":0,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":4,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":3,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":4,\"skin\":0,\"torso_2\":1,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":3,\"pants_1\":24}', '{\"torso_1\":124,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":15,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":6,\"ears_2\":0,\"arms\":14,\"lipstick_1\":0,\"ears_1\":0,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":4,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":45,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":2,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":42,\"pants_1\":65}'),
(292, 'casino', 2, 'boss', 'Manager', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":0,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"torso_1\":124,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":15,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":6,\"ears_2\":0,\"arms\":14,\"lipstick_1\":0,\"ears_1\":0,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":4,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":45,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":2,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":42,\"pants_1\":65}'),
(293, 'vagos', 0, 'soldato', 'Soldat', 0, '{}', '{}'),
(294, 'vagos', 1, 'capo', 'Capo', 0, '{}', '{}'),
(295, 'vagos', 2, 'consigliere', 'Consigliere', 0, '{}', '{}'),
(296, 'vagos', 3, 'righthand', 'Bras-Droit', 0, '{}', '{}'),
(297, 'vagos', 0, 'soldato', 'Soldat', 0, '{}', '{}'),
(298, 'vagos', 1, 'capo', 'Capo', 0, '{}', '{}'),
(299, 'vagos', 2, 'consigliere', 'Consigliere', 0, '{}', '{}'),
(300, 'vagos', 3, 'righthand', 'Bras-Droit', 0, '{}', '{}'),
(301, 'vagos', 4, 'boss', 'Chef', 0, '{}', '{}'),
(302, 'mercenaire', 0, 'soldato', 'Soldat', 0, '{}', '{}'),
(303, 'mercenaire', 1, 'capo', 'Capo', 0, '{}', '{}'),
(304, 'mercenaire', 2, 'consigliere', 'Consigliere', 0, '{}', '{}'),
(305, 'mercenaire', 3, 'righthand', 'Bras-Droit', 0, '{}', '{}'),
(306, 'mercenaire', 4, 'boss', 'Chef', 0, '{}', '{}'),
(307, 'syndicat', 0, 'soldato', 'Soldat', 1, '{}', '{}'),
(308, 'syndicat', 1, 'capo', 'Capo', 1, '{}', '{}'),
(309, 'syndicat', 2, 'consigliere', 'Consigliere', 1, '{}', '{}'),
(310, 'syndicat', 3, 'righthand', 'Bras-Droit', 1, '{}', '{}'),
(311, 'syndicat', 4, 'boss', 'Chef', 1, '{}', '{}'),
(312, 'podolskaia', 0, 'soldato', 'Soldat', 1, '{}', '{}'),
(313, 'podolskaia', 1, 'capo', 'Capo', 0, '{}', '{}'),
(314, 'podolskaia', 2, 'consigliere', 'Consigliere', 0, '{}', '{}'),
(315, 'podolskaia', 3, 'righthand', 'Bras-Droit', 0, '{}', '{}'),
(316, 'podolskaia', 4, 'boss', 'Chef', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('aircraft', 'Aircraft License'),
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis Armes Blanche'),
('weapon2', 'PPA'),
('weapon3', 'Mercenaire');

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

DROP TABLE IF EXISTS `open_car`;
CREATE TABLE IF NOT EXISTS `open_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1914 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_aircrafts`
--

DROP TABLE IF EXISTS `owned_aircrafts`;
CREATE TABLE IF NOT EXISTS `owned_aircrafts` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the aircraft',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  PRIMARY KEY (`plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_boats`
--

DROP TABLE IF EXISTS `owned_boats`;
CREATE TABLE IF NOT EXISTS `owned_boats` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the boat',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  PRIMARY KEY (`plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

DROP TABLE IF EXISTS `owned_properties`;
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

DROP TABLE IF EXISTS `owned_vehicles`;
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT '0',
  `vehiclename` varchar(50) NOT NULL DEFAULT 'voiture',
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

DROP TABLE IF EXISTS `phone_app_chat`;
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=824 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

DROP TABLE IF EXISTS `phone_calls`;
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9792 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50275 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

DROP TABLE IF EXISTS `phone_users_contacts`;
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1435 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `playerstattoos`
--

DROP TABLE IF EXISTS `playerstattoos`;
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=988 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=504 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(496, 'Bay City AvenueMotel1', 'Bay City Avenue', '{\"x\":-1308.9658203125,\"y\":-931.15521240234,\"z\":15.36}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":-1308.9658203125,\"y\":-931.15521240234,\"z\":16.357076644897}', '[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]', NULL, 1, 0, NULL, '{\"x\":152.36,\"y\":-1000.68,\"z\":-100.0}', 43750),
(497, 'Bay City AvenueMotel2', 'Bay City Avenue', '{\"x\":-1310.7575683594,\"y\":-931.86700439453,\"z\":15.36}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":-1310.7575683594,\"y\":-931.86700439453,\"z\":16.357303619385}', '[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]', NULL, 1, 0, NULL, '{\"x\":152.36,\"y\":-1000.68,\"z\":-100.0}', 43750),
(498, 'Bay City AvenueMotel3', 'Bay City Avenue', '{\"x\":-1317.9606933594,\"y\":-934.37451171875,\"z\":15.36}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":-1317.9606933594,\"y\":-934.37451171875,\"z\":16.358287811279}', '[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]', NULL, 1, 0, NULL, '{\"x\":152.36,\"y\":-1000.68,\"z\":-100.0}', 43750),
(499, 'Bay City AvenueMotel4', 'Bay City Avenue', '{\"x\":-1319.7747802734,\"y\":-935.06658935547,\"z\":15.36}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":-1319.7747802734,\"y\":-935.06658935547,\"z\":16.35852432251}', '[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]', NULL, 1, 0, NULL, '{\"x\":152.36,\"y\":-1000.68,\"z\":-100.0}', 43750),
(500, 'Bay City AvenueMotel5', 'Bay City Avenue', '{\"x\":-1329.3909912109,\"y\":-938.58111572266,\"z\":15.36}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":-1329.3909912109,\"y\":-938.58111572266,\"z\":15.357588768005}', '[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]', NULL, 1, 0, NULL, '{\"x\":152.36,\"y\":-1000.68,\"z\":-100.0}', 43750),
(501, 'Bay City AvenueMotel6', 'Bay City Avenue', '{\"x\":-1331.1315917969,\"y\":-939.28826904297,\"z\":15.36}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":-1331.1315917969,\"y\":-939.28826904297,\"z\":15.357841491699}', '[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]', NULL, 1, 0, NULL, '{\"x\":152.36,\"y\":-1000.68,\"z\":-100.0}', 43750),
(502, 'Vespucci BoulevardMotel7', 'Vespucci Boulevard', '{\"x\":-1339.1380615234,\"y\":-941.53643798828,\"z\":15.36}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":-1339.1380615234,\"y\":-941.53643798828,\"z\":15.357811927795}', '[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]', NULL, 1, 0, NULL, '{\"x\":152.36,\"y\":-1000.68,\"z\":-100.0}', 43750),
(503, 'Vespucci BoulevardMotel8', 'Vespucci Boulevard', '{\"x\":-1338.0535888672,\"y\":-941.72857666016,\"z\":15.36}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":151.37,\"y\":-1007.54,\"z\":-99.97}', '{\"x\":-1338.0535888672,\"y\":-941.72857666016,\"z\":15.358644485474}', '[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]', NULL, 1, 0, NULL, '{\"x\":152.36,\"y\":-1000.68,\"z\":-100.0}', 43750);

-- --------------------------------------------------------

--
-- Structure de la table `quincaillerie`
--

DROP TABLE IF EXISTS `quincaillerie`;
CREATE TABLE IF NOT EXISTS `quincaillerie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `quincaillerie`
--

INSERT INTO `quincaillerie` (`id`, `name`, `item`, `price`) VALUES
(23, 'LSQuincaillerie', 'tenuebraquage', 1500),
(24, 'LSQuincaillerie', 'tenuecasa', 1500),
(25, 'LSQuincaillerie', 'clip', 750),
(32, 'LSQuincaillerie', 'headbag', 2500),
(34, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_PLAYER', 11500),
(35, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_LOVE', 12000),
(36, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_DOLLAR', 12500),
(37, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_VAGOS', 13000),
(38, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_HATE', 13500),
(39, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_DIAMOND', 14000),
(40, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_PIMP', 14500),
(41, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_KING', 15000),
(42, 'LSQuincaillerie', 'COMPONENT_KNUCKLE_VARMOD_BALLAS', 15500),
(43, 'LSQuincaillerie', 'COMPONENT_SWITCHBLADE_VARMOD_VAR1', 14500),
(44, 'LSQuincaillerie', 'COMPONENT_SWITCHBLADE_VARMOD_VAR2', 15000),
(45, 'LSQuincaillerie', 'COMPONENT_REVOLVER_VARMOD_BOSS', 14500),
(46, 'LSQuincaillerie', 'COMPONENT_REVOLVER_VARMOD_GOON', 15500),
(47, 'LSQuincaillerie', 'COMPONENT_VARMOD_LOWRIDER', 25000),
(48, 'LSQuincaillerie', 'COMPONENT_VARMOD_LUXE', 50000),
(49, 'LSQuincaillerie', 'COMPONENT_AT_PI_SUPP', 15000),
(50, 'LSQuincaillerie', 'COMPONENT_AT_AR_SUPP_02', 25000),
(51, 'LSQuincaillerie', 'COMPONENT_AT_PI_FLSH', 10000),
(52, 'LSQuincaillerie', 'COMPONENT_AT_AR_FLSH', 15000),
(53, 'LSQuincaillerie', 'COMPONENT_AT_AR_AFGRIP', 30000),
(54, 'LSQuincaillerie', 'COMPONENT_AT_SCOPE_MACRO', 35000),
(55, 'LSQuincaillerie', 'COMPONENT_AT_PI_CLIP_02', 30000),
(56, 'LSQuincaillerie', 'COMPONENT_AT_AR_CLIP_02', 40000),
(57, 'LSQuincaillerie', 'COMPONENT_AT_AR_CLIP_03', 60000),
(58, 'LSQuincaillerie', 'TINT_01', 5500),
(59, 'LSQuincaillerie', 'TINT_02', 5500),
(60, 'LSQuincaillerie', 'TINT_03', 5500),
(61, 'LSQuincaillerie', 'TINT_04', 5500),
(62, 'LSQuincaillerie', 'TINT_06', 5500),
(63, 'LSQuincaillerie', 'TINT_07', 5500);

-- --------------------------------------------------------

--
-- Structure de la table `rented_aircrafts`
--

DROP TABLE IF EXISTS `rented_aircrafts`;
CREATE TABLE IF NOT EXISTS `rented_aircrafts` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rented_boats`
--

DROP TABLE IF EXISTS `rented_boats`;
CREATE TABLE IF NOT EXISTS `rented_boats` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

DROP TABLE IF EXISTS `rented_vehicles`;
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 5),
(2, 'TwentyFourSeven', 'water', 8),
(3, 'RobsLiquor', 'bread', 5),
(4, 'RobsLiquor', 'water', 8),
(5, 'LTDgasoline', 'bread', 5),
(6, 'LTDgasoline', 'water', 8),
(7, 'LTDgasoline', 'croquettes', 75),
(8, 'TwentyFourSeven', 'chocolat', 15),
(9, 'TwentyFourSeven', 'beef', 50),
(10, 'TwentyFourSeven', 'hamburger', 40),
(11, 'TwentyFourSeven', 'cupcake', 15),
(13, 'TwentyFourSeven', 'cocacola', 35),
(14, 'TwentyFourSeven', 'breadsaucisson', 25),
(15, 'TwentyFourSeven', 'hamburgerplate', 30),
(16, 'TwentyFourSeven', 'soda', 25),
(17, 'RobsLiquor', 'chocolat', 15),
(18, 'RobsLiquor', 'beef', 50),
(19, 'RobsLiquor', 'hamburger', 50),
(20, 'RobsLiquor', 'cupcake', 15),
(21, 'RobsLiquor', 'cocacola', 35),
(22, 'RobsLiquor', 'breadsaucisson', 25),
(23, 'RobsLiquor', 'hamburgerplate', 40),
(24, 'RobsLiquor', 'soda', 25),
(25, 'LTDgasoline', 'chocolat', 15),
(26, 'LTDgasoline', 'beef', 50),
(27, 'LTDgasoline', 'hamburger', 50),
(28, 'LTDgasoline', 'cupcake', 15),
(29, 'LTDgasoline', 'cocacola', 35),
(30, 'LTDgasoline', 'breadsaucisson', 25),
(31, 'LTDgasoline', 'hamburgerplate', 40),
(32, 'LTDgasoline', 'soda', 25),
(48, 'LTDgasoline', 'croquettes', 100),
(49, 'LTDgasoline', 'croquettes', 100),
(50, 'LTDgasoline', 'croquettes', 100);

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

DROP TABLE IF EXISTS `society_moneywash`;
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `trunk_inventory`
--

DROP TABLE IF EXISTS `trunk_inventory`;
CREATE TABLE IF NOT EXISTS `trunk_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=1920 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

DROP TABLE IF EXISTS `twitter_accounts`;
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

DROP TABLE IF EXISTS `twitter_likes`;
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

DROP TABLE IF EXISTS `twitter_tweets`;
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `job2` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT '0',
  `org` varchar(255) COLLATE utf8mb4_bin DEFAULT 'freecity',
  `org_gradeorg` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin,
  `isDead` bit(1) DEFAULT b'0',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `animal` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `vote` varchar(254) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT '0',
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT '0',
  `skills` longtext COLLATE utf8mb4_bin,
  `money` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_lastcharacter`
--

DROP TABLE IF EXISTS `user_lastcharacter`;
CREATE TABLE IF NOT EXISTS `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=911 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('BMW 440i', '440i', 325000, 'import'),
('450crf', '450crf', 115000, 'import'),
('McLaren 720s', '720s', 750000, 'import'),
('Porsche 911tbs', '911turboS', 700000, 'import'),
('Mercedes A45 AMG', 'a45', 300000, 'import'),
('Adder', 'adder', 533333, 'super'),
('Akuma', 'AKUMA', 20000, 'motorcycles'),
('Alpha', 'alpha', 80000, 'sports'),
('Asea', 'asea', 26666, 'sedans'),
('Audi RS6', 'AUDIRS6TK', 350000, 'import'),
('Autarch', 'autarch', 386666, 'super'),
('Baller Sport', 'baller3', 104000, 'suvs'),
('Banshee', 'banshee', 120000, 'sports'),
('Banshee 900R', 'banshee2', 200000, 'super'),
('Bati 801', 'bati', 53333, 'motorcycles'),
('Bati 801RR', 'bati2', 60000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 130000, 'sports'),
('BF400', 'bf400', 50000, 'motorcycles'),
('Bifta', 'bifta', 48000, 'offroad'),
('Blade', 'blade', 20000, 'muscle'),
('Blazer', 'blazer', 48000, 'offroad'),
('Blazer Sport', 'blazer4', 40000, 'offroad'),
('BMX (velo)', 'bmx', 200, 'motorcycles'),
('1969 Ford Mustang Boss 302', 'BOSS302', 200000, 'import'),
('Brawler', 'brawler', 100000, 'offroad'),
('Brioso R/A', 'brioso', 20000, 'compacts'),
('Btype', 'btype', 60000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 124000, 'sportsclassics'),
('Btype Luxe', 'btype3', 87500, 'sportsclassics'),
('Buccaneer', 'buccaneer', 50000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 70000, 'muscle'),
('Buffalo S', 'buffalo2', 52000, 'sports'),
('Bullet', 'bullet', 280000, 'super'),
('Burrito', 'burrito3', 48000, 'vans'),
('Mercedes C63', 'c63', 300000, 'import'),
('Camper', 'camper', 80000, 'vans'),
('Carbonizzare', 'carbonizzare', 145000, 'sports'),
('Carbon RS', 'carbonrs', 44000, 'motorcycles'),
('Casco', 'casco', 80000, 'sportsclassics'),
('Cheetah', 'cheetah', 333333, 'super'),
('Chino', 'chino', 48000, 'muscle'),
('Chino Luxe', 'chino2', 70000, 'muscle'),
('Cliffhanger', 'cliffhanger', 100000, 'motorcycles'),
('Mercedes CLS63', 'cls2015', 440000, 'import'),
('Cognoscenti Cabrio', 'cogcabrio', 52000, 'coupes'),
('Cognoscenti', 'cognoscenti', 20000, 'sedans'),
('Comet', 'comet2', 130000, 'sports'),
('Comet Safari', 'comet4', 166666, 'sports'),
('Comet 5', 'comet5', 200000, 'sports'),
('Coquette', 'coquette', 130000, 'sports'),
('Coquette Classic', 'coquette2', 100000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 136666, 'muscle'),
('Daemon', 'daemon', 64000, 'motorcycles'),
('Daemon High', 'daemon2', 60000, 'motorcycles'),
('Defiler', 'defiler', 64000, 'motorcycles'),
('JEEP TrackHawk', 'demonhawk', 400000, 'import'),
('Dominator', 'dominator', 52000, 'muscle'),
('Dominator GTX', 'dominator3', 120000, 'muscle'),
('Dubsta', 'dubsta', 120000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 100000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 180000, 'offroad'),
('Dukes', 'dukes', 60000, 'muscle'),
('Dune Buggy', 'dune', 86000, 'offroad'),
('Elegy', 'elegy', 120000, 'sports'),
('Elegy Sport', 'elegy2', 144000, 'sports'),
('Emperor', 'emperor', 5000, 'sedans'),
('Enduro', 'enduro', 48000, 'motorcycles'),
('Entity XXR', 'entity2', 483333, 'sports'),
('Esskey', 'esskey', 30000, 'motorcycles'),
('Faction Rider', 'faction2', 70000, 'muscle'),
('Faction XL', 'faction3', 85000, 'muscle'),
('Faggio', 'faggio', 2000, 'motorcycles'),
('Vespa', 'faggio2', 2200, 'motorcycles'),
('Felon', 'felon', 73333, 'coupes'),
('Felon GT', 'felon2', 60000, 'coupes'),
('Feltzer', 'feltzer2', 110000, 'sports'),
('Stirling GT', 'feltzer3', 100000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 5000, 'motorcycles'),
('Fugitive', 'fugitive', 50000, 'sedans'),
('Gauntlet', 'gauntlet', 120000, 'muscle'),
('Gang Burrito', 'gburrito', 0, 'vans'),
('Burrito', 'gburrito2', 80000, 'vans'),
('Glendale', 'glendale', 64000, 'sedans'),
('Suzuki GSX-R', 'gsxr', 165000, 'import'),
('GT 500', 'gt500', 220000, 'sportsclassics'),
('Guardian', 'guardian', 120000, 'offroad'),
('Hakuchou', 'hakuchou', 83333, 'motorcycles'),
('Hermes', 'hermes', 140000, 'muscle'),
('Hexer', 'hexer', 48000, 'motorcycles'),
('Hotknife', 'hotknife', 100000, 'muscle'),
('Huntley S', 'huntley', 80000, 'suvs'),
('Hustler', 'hustler', 70000, 'muscle'),
('Issi', 'issi2', 15000, 'compacts'),
('Itali GTB', 'italigtb', 400000, 'super'),
('Itali GTB Custom', 'italigtb2', 416000, 'super'),
('Itali GTO', 'italigto', 650000, 'sports'),
('Jackal', 'jackal', 70000, 'coupes'),
('Jester', 'jester', 140000, 'sports'),
('Journey', 'journey', 13000, 'vans'),
('Kamacho', 'kamacho', 200000, 'offroad'),
('Khamelion', 'khamelion', 100000, 'sports'),
('Kuruma', 'kuruma', 60000, 'sports'),
('BMW M4F82', 'm4f82', 400000, 'import'),
('BMW M5E60', 'm5e60', 475000, 'import'),
('Mamba', 'mamba', 140000, 'sports'),
('Manana', 'manana', 80000, 'sportsclassics'),
('Manchez', 'manchez', 15000, 'motorcycles'),
('Massacro', 'massacro', 160000, 'sports'),
('Mesa', 'mesa', 64000, 'suvs'),
('Mesa Trail', 'mesa3', 80000, 'suvs'),
('Monroe', 'monroe', 80000, 'sportsclassics'),
('Pfister Neon', 'neon', 233333, 'sports'),
('Nero', 'nero', 500000, 'super'),
('Nero Custom', 'nero2', 533333, 'super'),
('Kawasaki Ninja H2R', 'nh2r', 225000, 'import'),
('Nightblade', 'nightblade', 60000, 'motorcycles'),
('Nightshade', 'nightshade', 120000, 'muscle'),
('9F', 'ninef', 100000, 'sports'),
('9F Cabrio', 'ninef2', 120000, 'sports'),
('Oracle XS', 'oracle2', 60000, 'coupes'),
('Osiris', 'osiris', 440000, 'super'),
('Porsche Panamera Turbo', 'panamera17turbo', 750000, 'import'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 80000, 'vans'),
('Patriot', 'patriot', 100000, 'suvs'),
('Phoenix', 'phoenix', 70000, 'muscle'),
('Picador', 'picador', 20000, 'muscle'),
('Pigalle', 'pigalle', 220000, 'sportsclassics'),
('Prairie', 'prairie', 23333, 'compacts'),
('Premier', 'premier', 14000, 'sedans'),
('Primo Custom', 'primo2', 60000, 'sedans'),
('X80 Proto', 'prototipo', 800000, 'super'),
('Coil Raiden', 'raiden', 166666, 'sports'),
('Rapid GT3', 'rapidgt3', 80050, 'sportsclassics'),
('Reaper', 'reaper', 500000, 'super'),
('Rebel', 'rebel2', 70000, 'offroad'),
('Retinue', 'retinue', 120000, 'sportsclassics'),
('Rocoto', 'rocoto', 102000, 'suvs'),
('Ruffian', 'ruffian', 48000, 'motorcycles'),
('Rumpo Trail', 'rumpo3', 48000, 'vans'),
('Mercedes S63 AMG', 's63amg', 300000, 'import'),
('Sabre Turbo', 'sabregt', 70000, 'muscle'),
('Sabre GT', 'sabregt2', 85000, 'muscle'),
('Sanctus', 'sanctus', 60000, 'motorcycles'),
('Sandking', 'sandking', 120000, 'offroad'),
('Savestra', 'savestra', 60000, 'sportsclassics'),
('Schafter V12', 'schafter3', 80000, 'sports'),
('Scorcher (velo)', 'scorcher', 6400, 'motorcycles'),
('Sentinel', 'sentinel', 53333, 'coupes'),
('Sentinel XS', 'sentinel2', 60000, 'coupes'),
('Sentinel3', 'sentinel3', 120000, 'sports'),
('Seven 70', 'seven70', 110000, 'sports'),
('Sovereign', 'sovereign', 80000, 'motorcycles'),
('Stinger', 'stinger', 120000, 'sportsclassics'),
('Stinger GT', 'stingergt', 160000, 'sportsclassics'),
('Streiter', 'streiter', 136000, 'sports'),
('Sultan', 'sultan', 60000, 'sports'),
('Sultan RS', 'sultanrs', 190000, 'super'),
('Surano', 'surano', 220000, 'sports'),
('Surfer', 'surfer', 64000, 'vans'),
('T20', 't20', 483333, 'super'),
('Tailgater', 'tailgater', 48000, 'sedans'),
('Tampa', 'tampa', 48000, 'muscle'),
('Tempesta', 'tempesta', 506666, 'super'),
('Pegassi Toros', 'toros', 233333, 'suvs'),
('Tri bike (velo)', 'tribike3', 5400, 'motorcycles'),
('Turismo R', 'turismor', 500000, 'super'),
('Vacca', 'vacca', 160000, 'super'),
('Vader', 'vader', 48000, 'motorcycles'),
('Vigero', 'vigero', 50000, 'muscle'),
('Virgo', 'virgo', 20000, 'muscle'),
('Viseris', 'viseris', 120000, 'sportsclassics'),
('Visione', 'visione', 453333, 'super'),
('Voltic', 'voltic', 190000, 'super'),
('Voodoo', 'voodoo', 64000, 'muscle'),
('2014 S-Class W222 WALD Black Bison', 'w222wald', 600000, 'import'),
('Warrener', 'warrener', 64000, 'sedans'),
('Windsor', 'windsor', 300000, 'coupes'),
('Windsor Drop', 'windsor2', 340000, 'coupes'),
('Woflsbane', 'wolfsbane', 64000, 'motorcycles'),
('BMW X6M', 'x6m', 320000, 'import'),
('Ocelot XA-21', 'xa21', 466666, 'super'),
('XLS', 'xls', 80000, 'suvs'),
('Yosemite', 'yosemite', 60000, 'muscle'),
('Z190', 'z190', 85000, 'sportsclassics'),
('Zentorno', 'zentorno', 466666, 'super'),
('Zion', 'zion', 60000, 'coupes'),
('Zion Cabrio', 'zion2', 66666, 'coupes'),
('Zombie', 'zombiea', 64000, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 48000, 'motorcycles'),
('Z-Type', 'ztype', 200000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicles_for_sale`
--

DROP TABLE IF EXISTS `vehicles_for_sale`;
CREATE TABLE IF NOT EXISTS `vehicles_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('import', 'Voiture Imports'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('nissan', 'Nissan'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `weashops`
--

DROP TABLE IF EXISTS `weashops`;
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `weashops`
--

INSERT INTO `weashops` (`id`, `name`, `item`, `price`) VALUES
(7, 'BlackWeashop', 'WEAPON_COMBATPISTOL', 40000),
(8, 'BlackWeashop', 'WEAPON_STUNGUN', 5000),
(9, 'BlackWeashop', 'WEAPON_SAWNOFFSHOTGUN', 175000),
(10, 'BlackWeashop', 'WEAPON_MICROSMG', 110000),
(11, 'BlackWeashop', 'WEAPON_HEAVYSHOTGUN', 155000),
(12, 'BlackWeashop', 'WEAPON_COMPACTRIFLE', 180000),
(13, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 250000),
(14, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 200000),
(15, 'BlackWeashop', 'WEAPON_SMG', 150000),
(16, 'BlackWeashop', 'WEAPON_MG', 500000),
(17, 'BlackWeashop', 'WEAPON_COMBATPDW', 150000),
(18, 'BlackWeashop', 'WEAPON_MARKSMANRIFLE', 750000),
(19, 'BlackWeashop', 'WEAPON_GUSENBERG', 100000),
(24, 'GunShop', 'WEAPON_BAT', 2500),
(25, 'GunShop', 'WEAPON_KNUCKLE', 1500),
(26, 'GunShop', 'WEAPON_GOLFCLUB', 2000),
(173, 'GunShop', 'WEAPON_FLASHLIGHT', 1000),
(176, 'GunShop', 'WEAPON_HATCHET', 3500),
(180, 'GunShop', 'WEAPON_CROWBAR', 1500),
(181, 'GunShop', 'WEAPON_HAMMER', 1500),
(182, 'GunShop', 'WEAPON_KNIFE', 1500),
(196, 'GunShop', 'WEAPON_MACHETE', 2500),
(216, 'GunShop', 'WEAPON_PISTOL', 30000);

-- --------------------------------------------------------

--
-- Structure de la table `whitelist`
--

DROP TABLE IF EXISTS `whitelist`;
CREATE TABLE IF NOT EXISTS `whitelist` (
  `identifier` varchar(75) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
