-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 06:29 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_rights`
--

CREATE TABLE IF NOT EXISTS `access_rights` (
`access_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_add` int(11) DEFAULT '0',
  `request_edit` int(11) DEFAULT '0',
  `request_delete` int(11) DEFAULT '0',
  `receive_add` int(11) DEFAULT '0',
  `receive_edit` int(11) DEFAULT '0',
  `receive_delete` int(11) DEFAULT '0',
  `issue_add` int(11) DEFAULT '0',
  `issue_edit` int(11) DEFAULT '0',
  `issue_delete` int(11) DEFAULT '0',
  `item_add` int(11) DEFAULT '0',
  `item_edit` int(11) DEFAULT '0',
  `item_delete` int(11) DEFAULT '0',
  `signatories_add` int(11) DEFAULT '0',
  `signatories_edit` int(11) DEFAULT '0',
  `signatories_delete` int(11) DEFAULT '0',
  `masterfile_add` int(11) DEFAULT '0',
  `masterfile_edit` int(11) DEFAULT '0',
  `masterfile_delete` int(11) DEFAULT '0',
  `restock_add` int(11) DEFAULT '0',
  `restock_edit` int(11) DEFAULT '0',
  `restock_delete` int(11) DEFAULT '0',
  `user_add` int(11) DEFAULT '0',
  `user_edit` int(11) DEFAULT '0',
  `user_delete` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_rights`
--

INSERT INTO `access_rights` (`access_id`, `user_id`, `request_add`, `request_edit`, `request_delete`, `receive_add`, `receive_edit`, `receive_delete`, `issue_add`, `issue_edit`, `issue_delete`, `item_add`, `item_edit`, `item_delete`, `signatories_add`, `signatories_edit`, `signatories_delete`, `masterfile_add`, `masterfile_edit`, `masterfile_delete`, `restock_add`, `restock_edit`, `restock_delete`, `user_add`, `user_edit`, `user_delete`) VALUES
(1, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 12, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 13, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 14, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE IF NOT EXISTS `activity_logs` (
`log_id` int(11) NOT NULL,
  `activity_time` varchar(50) DEFAULT NULL,
  `activity_name` text,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bin`
--

CREATE TABLE IF NOT EXISTS `bin` (
`bin_id` int(11) NOT NULL,
  `bin_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
`brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1743 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Panda'),
(2, 'Pilot'),
(4, 'aaa'),
(11, 'acer'),
(12, 'Wipweld'),
(13, 'Tyrolit'),
(14, 'Creston'),
(15, 'Wipcord'),
(18, 'HIKVISION'),
(19, 'WD-40'),
(20, 'Paralux'),
(21, 'Paralux'),
(27, 'Portland'),
(42, 'RS PRO'),
(46, 'Butterfly'),
(47, 'Avia'),
(48, 'TM'),
(49, 'Tamaraw'),
(50, 'Acura'),
(58, 'Dormer'),
(59, 'Eagle'),
(60, 'Mahogany'),
(63, 'Globe'),
(68, 'Boysen'),
(72, 'Haxilong'),
(73, 'NSK'),
(74, 'Armak'),
(75, 'Diesel'),
(76, 'Petron'),
(77, 'Stanley'),
(78, 'Ingersoll Rand'),
(79, 'Alfa Laval'),
(80, ''),
(81, ''),
(82, ''),
(83, 'Semikron'),
(84, ''),
(85, ''),
(86, ''),
(87, ''),
(88, ''),
(89, ''),
(90, 'Xacto'),
(91, 'NA'),
(92, 'NA'),
(93, ''),
(94, ''),
(95, ''),
(96, ''),
(97, ''),
(98, ''),
(99, ''),
(100, ''),
(101, ''),
(102, ''),
(103, ''),
(104, ''),
(105, ''),
(106, ''),
(107, ''),
(108, ''),
(109, ''),
(110, ''),
(111, ''),
(112, ''),
(113, ''),
(114, ''),
(115, ''),
(116, 'Parker'),
(117, ''),
(118, ''),
(119, ''),
(120, ''),
(121, 'bostik'),
(122, ''),
(123, ''),
(124, ''),
(125, ''),
(126, ''),
(127, 'Dunlop'),
(128, 'NA'),
(129, ''),
(130, ''),
(131, 'Montana'),
(132, ''),
(133, 'shell'),
(134, 'Marhil'),
(135, 'Paracor'),
(136, ''),
(137, ''),
(138, ''),
(139, 'Phoenix'),
(140, 'Achievers'),
(141, ''),
(142, ''),
(143, ''),
(144, ''),
(145, ''),
(146, ''),
(147, ''),
(148, ''),
(149, 'Delixi'),
(150, 'Bosch'),
(151, ''),
(152, ''),
(153, ''),
(154, ''),
(155, ''),
(156, 'NA'),
(157, 'NA'),
(158, ''),
(159, ''),
(160, ''),
(161, ''),
(162, ''),
(163, ''),
(164, ''),
(165, ''),
(166, 'Genuine, Tramotina'),
(167, ''),
(168, ''),
(169, ''),
(170, ''),
(171, ''),
(172, ''),
(173, 'Western Digital'),
(174, ''),
(175, ''),
(176, 'NA'),
(177, 'Samsung'),
(178, 'Lenovo'),
(179, 'SCT,China'),
(180, ''),
(181, ''),
(182, ''),
(183, ''),
(184, ''),
(185, ''),
(186, ''),
(187, ''),
(188, 'S-Front '),
(189, 'NAPPCO'),
(190, 'Paper One'),
(191, 'Valiant'),
(192, 'B '),
(193, 'B '),
(194, ''),
(195, ''),
(196, ''),
(197, ''),
(198, ''),
(199, ''),
(200, ''),
(201, ''),
(202, ''),
(203, ''),
(204, ''),
(205, ''),
(206, ''),
(207, ''),
(208, ''),
(209, ''),
(210, ''),
(211, 'Firefly'),
(212, 'SCT China'),
(213, 'Nelson Books'),
(214, ''),
(215, 'Davies'),
(216, 'Unidex'),
(217, ''),
(218, ''),
(219, ''),
(220, ''),
(221, ''),
(222, ''),
(223, ''),
(224, ''),
(225, ''),
(226, 'V-Tech'),
(227, ''),
(228, 'C.I.C.'),
(229, 'Sherman'),
(230, ''),
(231, ''),
(232, ''),
(233, 'JB'),
(234, 'Price Pfister'),
(235, 'Taho Valves '),
(236, ''),
(237, ''),
(238, ''),
(239, ''),
(240, ''),
(241, 'Everyday'),
(242, ''),
(243, ''),
(244, ''),
(245, ''),
(246, ''),
(247, ''),
(248, 'Chemtrust'),
(249, ''),
(250, ''),
(251, ''),
(252, ''),
(253, ''),
(254, ''),
(255, ''),
(256, ''),
(257, ''),
(258, ''),
(259, ''),
(260, ''),
(261, ''),
(262, ''),
(263, 'Inkrite'),
(264, 'Inkrite'),
(265, 'Inkrite'),
(266, 'Inkrite'),
(267, 'UKMASTER'),
(268, 'Bostik'),
(269, ''),
(270, 'Yong Xin'),
(271, ''),
(272, ''),
(273, ''),
(274, ''),
(275, ''),
(276, ''),
(277, ''),
(278, ''),
(279, ''),
(280, ''),
(281, ''),
(282, 'Mongol'),
(283, 'Brother'),
(284, 'Brother'),
(285, 'Brother'),
(286, 'Maria Mercedes'),
(287, 'Maria Gracia'),
(288, 'Elmers'),
(289, ''),
(290, ''),
(291, 'Max'),
(292, ''),
(293, ''),
(294, 'Bendix'),
(295, 'Sure Brake'),
(296, 'Ritemed'),
(297, 'Ritemed'),
(298, 'Germany'),
(299, ''),
(300, ''),
(301, ''),
(302, ''),
(303, ''),
(304, ''),
(305, ''),
(306, ''),
(307, ''),
(308, ''),
(309, ''),
(310, 'Loctite'),
(311, 'Flying Tiger'),
(312, 'Croco'),
(313, ''),
(314, ''),
(315, ''),
(316, ''),
(317, 'Kirkland'),
(318, 'Nature Made'),
(319, 'Rockwool'),
(320, ''),
(321, ''),
(322, ''),
(323, ''),
(324, ''),
(325, 'FSL'),
(326, 'CHS'),
(327, 'CHS'),
(328, 'Arrow'),
(329, 'Arrow'),
(330, 'Arrow'),
(331, ''),
(332, ''),
(333, 'JOY MAGIC-1'),
(334, 'Woodward'),
(335, 'Woodward'),
(336, ''),
(337, 'Turco'),
(338, ''),
(339, ''),
(340, ''),
(341, 'Home Solution'),
(342, 'Omni'),
(343, 'Philips'),
(344, 'HQS'),
(345, 'Lee'),
(346, 'Vic'),
(347, 'Vic'),
(348, ''),
(349, 'Maruzen'),
(350, 'Cegasco'),
(351, ''),
(352, ''),
(353, ''),
(354, ''),
(355, ''),
(356, ''),
(357, ''),
(358, ''),
(359, ''),
(360, ''),
(361, ''),
(362, ''),
(363, ''),
(364, ''),
(365, 'Jacky'),
(366, 'Thermotek'),
(367, 'Light'),
(368, ''),
(369, ''),
(370, 'Hi-Tech'),
(371, ''),
(372, ''),
(373, ''),
(374, ''),
(375, ''),
(376, 'CLC'),
(377, ''),
(378, ''),
(379, 'Summit'),
(380, 'Patente'),
(381, ''),
(382, ''),
(383, ''),
(384, ''),
(385, ''),
(386, ''),
(387, ''),
(388, ''),
(389, ''),
(390, ''),
(391, ''),
(392, ''),
(393, ''),
(394, ''),
(395, ''),
(396, ''),
(397, ''),
(398, ''),
(399, ''),
(400, ''),
(401, ''),
(402, ''),
(403, ''),
(404, ''),
(405, 'Triton'),
(406, ''),
(407, ''),
(408, ''),
(409, 'Energizer'),
(410, ''),
(411, 'Akari'),
(412, ''),
(413, 'Jackson'),
(414, 'Hanabishi'),
(415, 'Phelp Dodge'),
(416, 'Celned'),
(417, 'Ebony'),
(418, 'Harris'),
(419, 'Plumbshop'),
(420, 'Ashcroft'),
(421, 'Bonus'),
(422, ''),
(423, ''),
(424, ''),
(425, ''),
(426, 'Dalo'),
(427, 'Mega'),
(428, 'Surefit'),
(429, ''),
(430, '2B'),
(431, 'UK Master'),
(432, 'Noris'),
(433, ''),
(434, 'Zigma'),
(435, 'Zigma'),
(436, 'Sozhou'),
(437, 'Powerx'),
(438, 'Powerx'),
(439, ''),
(440, 'Seal'),
(441, ''),
(442, ''),
(443, 'SKC'),
(444, 'Regal US'),
(445, ''),
(446, 'Columbia'),
(447, 'Kumwell'),
(448, 'Kumwell'),
(449, 'Makita'),
(450, 'Valliant'),
(451, 'HardCopy'),
(452, ''),
(453, 'Tokico'),
(454, ''),
(455, 'Torch'),
(456, 'GEM'),
(457, 'Moldex Blue'),
(458, 'Safety Jogger'),
(459, 'Safety Jogger'),
(460, 'Monsanto'),
(461, 'Motolite'),
(462, 'Schneider   '),
(463, ''),
(464, 'Diamond'),
(465, 'Copier Paper'),
(466, 'Copier Paper'),
(467, 'System'),
(468, 'System'),
(469, 'Paragon'),
(470, 'Paper Zone'),
(471, 'Fairfax'),
(472, 'Joy J-388'),
(473, 'Advance'),
(474, 'Natures'),
(475, 'Rosana'),
(476, 'Kyowa'),
(477, 'Essential'),
(478, 'Fukuda'),
(479, 'Fukuda'),
(480, 'Fukuda'),
(481, ''),
(482, ''),
(483, ''),
(484, ''),
(485, ''),
(486, ''),
(487, ''),
(488, ''),
(489, 'TM '),
(490, 'Kopez'),
(491, ''),
(492, 'Viking'),
(493, 'N/A'),
(494, 'N/A'),
(495, 'Bison'),
(496, ''),
(497, ''),
(498, ''),
(499, ''),
(500, ''),
(501, ''),
(502, ''),
(503, ''),
(504, ''),
(505, ''),
(506, 'America'),
(507, 'Poly'),
(508, 'Lenox'),
(509, 'Lucky'),
(510, 'Nikko'),
(511, 'Trafag'),
(512, 'McDonnell '),
(513, 'McDonnell and Miller'),
(514, 'Mersen'),
(515, 'Charter'),
(516, 'McGill'),
(517, 'Atlantis'),
(518, 'Burn D'),
(519, 'Garwod'),
(520, 'Arlimak'),
(521, 'Omron'),
(522, 'Omron'),
(523, 'Euro'),
(524, 'Atlanta'),
(525, 'Eudesigns'),
(526, 'Eudesigns'),
(527, 'Chicago'),
(528, ''),
(529, ''),
(530, 'Petronas'),
(531, ''),
(532, 'United'),
(533, 'Universal Star'),
(534, 'Universal Star'),
(535, 'Universal Star'),
(536, 'United'),
(537, 'Universal Star'),
(538, 'Sanking'),
(539, 'Tombo'),
(540, 'Tai Wan'),
(541, 'Tartan'),
(542, 'iLogic'),
(543, 'iLogic'),
(544, 'QPF-PHL'),
(545, ''),
(546, ''),
(547, ''),
(548, 'ML'),
(549, 'Huntkey'),
(550, 'Sample'),
(551, 'Royu'),
(552, 'Michigan'),
(553, 'Gadi-ita'),
(554, 'Gadi-ita'),
(555, 'FAG-'),
(556, 'JIB'),
(557, 'G.I.'),
(558, 'TM UKMaster'),
(559, 'Nitto'),
(560, 'Three Bond '),
(561, 'Circuit'),
(562, 'ABC'),
(563, 'Oxychem'),
(564, 'Generic'),
(565, 'Uratex'),
(566, 'Lead Core'),
(567, 'SKF'),
(568, 'Uniliq'),
(569, 'Uniliq'),
(570, 'Black Hawk'),
(571, 'Mitsubishi'),
(572, 'Catcom'),
(573, 'Titus'),
(574, 'Fortech'),
(575, 'OneTouch'),
(576, 'Ciprotec'),
(577, 'Fluke'),
(578, 'OFIL'),
(579, 'Megger'),
(580, 'Sandisk'),
(581, 'Asus'),
(582, ''),
(583, 'G/I'),
(584, '3M'),
(585, 'Horing Lih'),
(586, 'Horing Lih'),
(587, 'Carico'),
(588, 'Hose Bibb'),
(589, 'Hanvit'),
(590, 'Irwin Mason'),
(591, 'Irwin Mason'),
(592, 'Kvtester'),
(593, 'LQT Connector'),
(594, 'Indoplas'),
(595, 'Abest'),
(596, 'Fire Master'),
(597, 'Marton'),
(598, 'Bagman'),
(599, 'Ampro'),
(600, 'Neltex'),
(601, 'G.E'),
(602, 'Canon'),
(603, 'Gate'),
(604, ''),
(605, 'Nalco'),
(606, 'Nalco'),
(607, 'Nalco'),
(608, 'Bosny'),
(609, 'IndiaMart'),
(610, ''),
(611, 'Caly'),
(612, 'ProMinent'),
(613, ''),
(614, 'Timken'),
(615, 'Premium'),
(616, 'Michelin'),
(617, 'Pioner'),
(618, ''),
(619, ''),
(620, 'Macplas'),
(621, 'TeamGroup'),
(622, 'Joy J-863'),
(623, 'Stabilo Boss'),
(624, 'Stabilo Boss'),
(625, ''),
(626, ''),
(627, ''),
(628, ''),
(629, ''),
(630, ''),
(631, ''),
(632, ''),
(633, ''),
(634, ''),
(635, ''),
(636, ''),
(637, ''),
(638, 'Monggol'),
(639, 'Seahoarse'),
(640, ''),
(641, 'Dwyer'),
(642, 'Recen'),
(643, 'Painters'),
(644, 'Kawasaki'),
(645, 'Rubicon'),
(646, 'KYK Tools '),
(647, 'MediClean'),
(648, 'AOC'),
(649, 'Fortress'),
(650, 'AOC'),
(651, 'Fortress'),
(652, 'Ametros'),
(653, 'Ametros'),
(654, 'Ametros '),
(655, 'Ametros'),
(656, 'Ametros '),
(657, 'Ametros'),
(658, 'Ametros'),
(659, 'Ametros'),
(660, 'Ametros'),
(661, 'Ametros'),
(662, 'Ametros'),
(663, 'Ametros'),
(664, 'Ametros'),
(665, 'Ametros'),
(666, 'NCH'),
(667, 'NCH'),
(668, 'NCH'),
(669, 'NCH'),
(670, 'NCH'),
(671, 'Join Leader'),
(672, 'Simplex'),
(673, 'Simplex'),
(674, 'Surgitech'),
(675, 'Aviat'),
(676, 'Aviat'),
(677, 'Aviat'),
(678, 'Aviat'),
(679, 'Aviat'),
(680, 'Aviat'),
(681, 'Aviat'),
(682, 'Commscope'),
(683, 'Aviat'),
(684, 'Winters'),
(685, 'Winters'),
(686, 'Kittiwake'),
(687, 'Camsco'),
(688, 'Camsco'),
(689, 'Dot3'),
(690, 'Mindman'),
(691, 'Schweitzer'),
(692, 'Fuji'),
(693, 'Tranfindo Transformer'),
(694, 'Motorola'),
(695, 'Raptor'),
(696, 'Seven'),
(697, 'Botony'),
(698, ''),
(699, 'Bacoma'),
(700, ''),
(701, ''),
(702, ''),
(703, ''),
(704, ''),
(705, 'Boagc'),
(706, 'Champ'),
(707, 'Tacoma'),
(708, 'Maruyama'),
(709, ''),
(710, ''),
(711, 'TP-Link'),
(712, 'PartsMaster'),
(713, 'Medic Brand'),
(714, 'Medica Care'),
(715, 'Mc Bride'),
(716, 'ABB'),
(717, 'Philflex'),
(718, 'Ki-an Putian'),
(719, 'Citel'),
(720, ''),
(721, 'Panasonic'),
(722, ''),
(723, ''),
(724, 'Bridgestone'),
(725, 'Dolphin'),
(726, 'Dayco'),
(727, 'Smartply'),
(728, 'Italy'),
(729, ''),
(730, ''),
(731, ''),
(732, ''),
(733, ''),
(734, ''),
(735, ''),
(736, 'Shamrock'),
(737, ''),
(738, ''),
(739, ''),
(740, ''),
(741, 'Bayer'),
(742, 'Creston '),
(743, 'Yale'),
(744, ''),
(745, ''),
(746, 'Carborundum'),
(747, ''),
(748, ''),
(749, ''),
(750, ''),
(751, ''),
(752, ''),
(753, 'Engine Cleaning Gun'),
(754, ''),
(755, ''),
(756, ''),
(757, ''),
(758, 'Ingco'),
(759, 'Vital'),
(760, ''),
(761, 'Power House'),
(762, 'Mr. Clean'),
(763, 'A-1'),
(764, 'Polymer'),
(765, 'Polar Bear'),
(766, 'Biosolve'),
(767, 'Koten'),
(768, 'Safe '),
(769, 'Omaga '),
(770, 'Tailee'),
(771, 'Magnaflux'),
(772, 'Magnaflux'),
(773, 'magnaflux'),
(774, 'Belzona'),
(775, 'Champion'),
(776, ''),
(777, 'Teflon'),
(778, 'Penn Union'),
(779, 'FSK 7150'),
(780, 'Dolphs'),
(781, 'Power Clean'),
(782, 'Cisco'),
(783, ''),
(784, 'Lota'),
(785, ''),
(786, ''),
(787, ''),
(788, 'Toho'),
(789, '3D VIDEO'),
(790, 'FJ Gear'),
(791, 'Greenfield'),
(792, 'Greenfield'),
(793, 'Greenfield'),
(794, 'Greenfield'),
(795, 'Apollo'),
(796, 'Buffalo'),
(797, 'Glomed'),
(798, 'Duwell'),
(799, 'Ultra'),
(800, 'HANS'),
(801, 'Bernmann'),
(802, 'Babyflo'),
(803, 'Novel'),
(804, 'Mobil'),
(805, ''),
(806, 'Movell'),
(807, 'Vespa'),
(808, 'Ken'),
(809, 'Supercut'),
(810, 'Lutos'),
(811, 'John Benzen'),
(812, 'Crescent'),
(813, 'General Electric'),
(814, 'Olympic'),
(815, 'Kovax'),
(816, 'Sandflex'),
(817, 'Scotch Brite'),
(818, ''),
(819, 'First'),
(820, 'Thomas Scientific'),
(821, 'Primeline'),
(822, 'Pyrex'),
(823, 'Stikwel'),
(824, 'Rubberex'),
(825, 'Honeywell'),
(826, 'Blue Eagle'),
(827, 'Brady'),
(828, 'Isowool'),
(829, 'Magic.'),
(830, 'Nihonweld'),
(831, 'Panther'),
(832, 'Meiho'),
(833, 'Mitutoyo'),
(834, ''),
(835, 'ESTC'),
(836, 'Tisyu'),
(837, 'Doit Best'),
(838, 'Pride'),
(839, 'Hoyoma'),
(840, 'Richmond'),
(841, 'Zipbag'),
(842, 'Tailin'),
(843, 'Uk. Master'),
(844, 'Tramontina'),
(845, 'Malaysia'),
(846, 'Malaysia'),
(847, 'DTR'),
(848, 'Schmidt'),
(849, 'Schmidt'),
(850, 'Hannstape'),
(851, 'Spanjaard'),
(852, 'Nilfisk'),
(853, 'Tasada'),
(854, 'Nxled'),
(855, 'Local'),
(856, 'VulcaSeal'),
(857, 'Happy'),
(858, 'Dalier'),
(859, ''),
(860, 'Mayers'),
(861, 'USA'),
(862, 'Tulco'),
(863, 'Crystal'),
(864, 'Duraflex'),
(865, 'Master '),
(866, 'Crocodile'),
(867, 'Drexel'),
(868, 'Uniflux'),
(869, 'Miracle'),
(870, 'Lemaitre'),
(871, 'Lemaitre'),
(872, 'Lemaitre'),
(873, 'Lemaitre'),
(874, 'Lemaitre'),
(875, 'King Power'),
(876, 'OPPO'),
(877, 'Ameriman'),
(878, 'Salzer'),
(879, 'K Hybrid'),
(880, 'OMC2'),
(881, 'DN20'),
(882, 'DN20'),
(883, 'Vappro'),
(884, 'Milco'),
(885, 'Rota Broach'),
(886, 'Super, Japan'),
(887, 'Solupak'),
(888, 'MH'),
(889, 'Carpenter Doors'),
(890, 'Henkel'),
(891, ''),
(892, 'Nicholson'),
(893, 'Enerpac USA'),
(894, 'CEJN Sweden'),
(895, 'Fire Brake'),
(896, 'NA'),
(897, 'SKS'),
(898, 'SKS'),
(899, 'Breeze'),
(900, 'Ideal Electric'),
(901, 'Kraus '),
(902, 'Ayexe'),
(903, 'Titan'),
(904, ''),
(905, 'Hausmann'),
(906, 'Thick '),
(907, 'KLL'),
(908, 'Ultima'),
(909, 'Alhua'),
(910, 'Ecofor'),
(911, 'Ecofor'),
(912, 'Ecofor'),
(913, 'OPW'),
(914, 'Yuko'),
(915, 'RDR'),
(916, 'Lion Brand'),
(917, 'Heavyformex'),
(918, 'Heavyformex'),
(919, 'VGL'),
(920, 'Rosemed'),
(921, 'Glumed'),
(922, 'CR-1023'),
(923, 'Enex GmbH'),
(924, 'Enex GmbH'),
(925, 'Enex GmbH'),
(926, 'Enex GmbH'),
(927, 'Enex GmbH'),
(928, 'Enex GmbH'),
(929, 'Enex GmbH'),
(930, 'Enex GmbH'),
(931, 'Enex GmbH'),
(932, 'Enex GmbH'),
(933, 'Enex GmbH'),
(934, 'Enex GmbH'),
(935, 'Enex GmbH'),
(936, 'Enex GmbH'),
(937, 'Setsu'),
(938, 'RACUMIN'),
(939, 'Nomex'),
(940, 'Nomex'),
(941, 'Ace USA'),
(942, 'US SK Tool'),
(943, 'US SK Tool'),
(944, 'Ultitec'),
(945, 'Secure'),
(946, 'Proman Germany'),
(947, ''),
(948, 'Sulzer'),
(949, ''),
(950, ''),
(951, ''),
(952, ''),
(953, ''),
(954, ''),
(955, ''),
(956, ''),
(957, 'Dead Blow'),
(958, 'Gift'),
(959, ''),
(960, ''),
(961, ''),
(962, ''),
(963, ''),
(964, ''),
(965, ''),
(966, ''),
(967, ''),
(968, ''),
(969, ''),
(970, ''),
(971, ''),
(972, ''),
(973, ''),
(974, ''),
(975, 'MAC.'),
(976, 'Devant'),
(977, 'Kitz'),
(978, 'Joinsil/Join Leader'),
(979, 'Excel'),
(980, 'Nacht'),
(981, ''),
(982, ''),
(983, ''),
(984, ''),
(985, ''),
(986, ''),
(987, ''),
(988, 'I.S.O.'),
(989, 'Meco'),
(990, 'Shark'),
(991, ''),
(992, 'Gates'),
(993, 'Finetek'),
(994, ''),
(995, ''),
(996, ''),
(997, ''),
(998, ''),
(999, ''),
(1000, ''),
(1001, ''),
(1002, ''),
(1003, ''),
(1004, ''),
(1005, ''),
(1006, ''),
(1007, ''),
(1008, ''),
(1009, ''),
(1010, ''),
(1011, ''),
(1012, ''),
(1013, ''),
(1014, ''),
(1015, ''),
(1016, ''),
(1017, ''),
(1018, ''),
(1019, ''),
(1020, ''),
(1021, ''),
(1022, ''),
(1023, ''),
(1024, ''),
(1025, ''),
(1026, 'Chris Marine'),
(1027, 'National'),
(1028, 'ENT '),
(1029, ''),
(1030, ''),
(1031, ''),
(1032, ''),
(1033, ''),
(1034, ''),
(1035, ''),
(1036, ''),
(1037, ''),
(1038, ''),
(1039, ''),
(1040, ''),
(1041, ''),
(1042, ''),
(1043, ''),
(1044, ''),
(1045, ''),
(1046, ''),
(1047, ''),
(1048, ''),
(1049, ''),
(1050, ''),
(1051, ''),
(1052, ''),
(1053, ''),
(1054, ''),
(1055, ''),
(1056, ''),
(1057, ''),
(1058, ''),
(1059, ''),
(1060, ''),
(1061, ''),
(1062, ''),
(1063, ''),
(1064, ''),
(1065, ''),
(1066, ''),
(1067, ''),
(1068, ''),
(1069, ''),
(1070, ''),
(1071, ''),
(1072, ''),
(1073, ''),
(1074, ''),
(1075, ''),
(1076, ''),
(1077, ''),
(1078, ''),
(1079, ''),
(1080, ''),
(1081, 'Seagate'),
(1082, 'Dayo'),
(1083, ''),
(1084, 'Utility'),
(1085, 'Cali'),
(1086, ''),
(1087, ''),
(1088, ''),
(1089, ''),
(1090, ''),
(1091, 'Dailer'),
(1092, 'Dailer'),
(1093, 'Fluidmaster'),
(1094, 'Wassernison'),
(1095, ''),
(1096, 'Epson'),
(1097, 'A4tech'),
(1098, 'Amatek'),
(1099, 'GV'),
(1100, 'Shako'),
(1101, 'Shako'),
(1102, 'COMWELD'),
(1103, 'AKITA '),
(1104, 'AKITA '),
(1105, 'Mech'),
(1106, 'AS PER SAMPLE'),
(1107, 'Thipha'),
(1108, 'RIVER'),
(1109, 'Forend'),
(1110, 'LANCENT'),
(1111, 'Uniware'),
(1112, 'Allied'),
(1113, 'G-Tech'),
(1114, 'G=Tech'),
(1115, 'Evjet'),
(1116, 'G-Tech'),
(1117, 'G-Tech'),
(1118, 'Jackey'),
(1119, 'Armerilock'),
(1120, 'SKF '),
(1121, 'Pretty Door'),
(1122, 'MARINE PLYWOOD'),
(1123, 'APC'),
(1124, 'MTM'),
(1125, 'MTN'),
(1126, 'MTN'),
(1127, 'MTN'),
(1128, 'MTN'),
(1129, 'MTN'),
(1130, 'Panclub'),
(1131, 'Powerhouse'),
(1132, 'Romano Classic '),
(1133, 'Unimex'),
(1134, 'Koten KSB'),
(1135, 'NBR HDF'),
(1136, ''),
(1137, ''),
(1138, 'Ever.'),
(1139, ''),
(1140, 'Shur-Tite'),
(1141, 'Carlo Gavazi(FEME)'),
(1142, ''),
(1143, 'Shihlin'),
(1144, 'globe '),
(1145, 'Falcon'),
(1146, 'Bussman'),
(1147, ''),
(1148, 'Ruby'),
(1149, 'Huawei'),
(1150, 'Huwaei Y5 2019'),
(1151, 'Garrtool (USA)'),
(1152, 'TKI'),
(1153, 'Hammerhead'),
(1154, 'Amerilock'),
(1155, 'Hardiflex'),
(1156, 'Greencross'),
(1157, 'Pennunion'),
(1158, 'Bestank'),
(1159, 'Island'),
(1160, 'Sunflex'),
(1161, 'E-Jet'),
(1162, 'Australia'),
(1163, ''),
(1164, 'Safeguard'),
(1165, 'Hanns Instrument'),
(1166, 'Hanns Instrument'),
(1167, 'Hanns Instrument'),
(1168, 'Hanns Instruments'),
(1169, 'Helukabel'),
(1170, 'Baygon'),
(1171, 'Pledge'),
(1172, 'FL Universal'),
(1173, 'Hanna Instrument'),
(1174, 'Instrument Transformer Ltd.'),
(1175, ''),
(1176, ''),
(1177, ''),
(1178, ''),
(1179, ''),
(1180, ''),
(1181, ''),
(1182, ''),
(1183, ''),
(1184, ''),
(1185, ''),
(1186, ''),
(1187, ''),
(1188, ''),
(1189, ''),
(1190, ''),
(1191, ''),
(1192, ''),
(1193, ''),
(1194, ''),
(1195, ''),
(1196, ''),
(1197, ''),
(1198, ''),
(1199, ''),
(1200, ''),
(1201, ''),
(1202, ''),
(1203, ''),
(1204, ''),
(1205, ''),
(1206, ''),
(1207, 'Glory'),
(1208, 'Power Full'),
(1209, ''),
(1210, ''),
(1211, ''),
(1212, ''),
(1213, 'NA'),
(1214, ''),
(1215, ''),
(1216, 'Ginza'),
(1217, 'Ginza'),
(1218, 'Ginza'),
(1219, 'CR / SKF'),
(1220, '7-Up'),
(1221, 'NA'),
(1222, ''),
(1223, ''),
(1224, ''),
(1225, ''),
(1226, 'Ryder'),
(1227, 'CES'),
(1228, 'Silver Tree'),
(1229, 'Lufkin'),
(1230, 'Lufkin'),
(1231, ''),
(1232, ''),
(1233, ''),
(1234, ''),
(1235, ''),
(1236, ''),
(1237, 'Derfoe'),
(1238, 'Eveready'),
(1239, ''),
(1240, ''),
(1241, ''),
(1242, ''),
(1243, ''),
(1244, ''),
(1245, ''),
(1246, ''),
(1247, ''),
(1248, ''),
(1249, ''),
(1250, ''),
(1251, ''),
(1252, ''),
(1253, ''),
(1254, 'Petrogrease'),
(1255, 'Sycwin'),
(1256, 'Sycwin'),
(1257, 'Sycwin'),
(1258, 'Demag'),
(1259, 'Emco'),
(1260, 'Uno'),
(1261, ''),
(1262, ''),
(1263, 'Asco'),
(1264, ''),
(1265, ''),
(1266, ''),
(1267, ''),
(1268, ''),
(1269, ''),
(1270, 'Kolin'),
(1271, 'Yokoyama'),
(1272, 'Dremel'),
(1273, ''),
(1274, 'Leo'),
(1275, 'Weber'),
(1276, ''),
(1277, ''),
(1278, ''),
(1279, 'Patlite'),
(1280, ''),
(1281, 'Ecolum'),
(1282, 'Voschtech'),
(1283, 'Blue Wings'),
(1284, 'Irwin'),
(1285, ''),
(1286, 'Marigold'),
(1287, ''),
(1288, ''),
(1289, ''),
(1290, ''),
(1291, ''),
(1292, ''),
(1293, ''),
(1294, ''),
(1295, ''),
(1296, ''),
(1297, ''),
(1298, ''),
(1299, ''),
(1300, ''),
(1301, 'SKC Japan'),
(1302, 'SKC Japan'),
(1303, ''),
(1304, ''),
(1305, ''),
(1306, ''),
(1307, ''),
(1308, ''),
(1309, ''),
(1310, ''),
(1311, ''),
(1312, ''),
(1313, ''),
(1314, ''),
(1315, ''),
(1316, 'Zonrox'),
(1317, ''),
(1318, ''),
(1319, ''),
(1320, ''),
(1321, ''),
(1322, ''),
(1323, ''),
(1324, ''),
(1325, ''),
(1326, ''),
(1327, ''),
(1328, ''),
(1329, ''),
(1330, 'Rosco'),
(1331, ''),
(1332, ''),
(1333, ''),
(1334, ''),
(1335, 'Heng de'),
(1336, 'Heng de'),
(1337, 'Heng de'),
(1338, 'Heng de'),
(1339, 'Heng de'),
(1340, ''),
(1341, ''),
(1342, ''),
(1343, ''),
(1344, ''),
(1345, ''),
(1346, ''),
(1347, ''),
(1348, ''),
(1349, ''),
(1350, ''),
(1351, ''),
(1352, ''),
(1353, ''),
(1354, ''),
(1355, ''),
(1356, ''),
(1357, ''),
(1358, ''),
(1359, ''),
(1360, ''),
(1361, ''),
(1362, ''),
(1363, ''),
(1364, ''),
(1365, ''),
(1366, ''),
(1367, ''),
(1368, ''),
(1369, 'Royal Tern'),
(1370, 'Heng Ming Medical'),
(1371, 'Robson'),
(1372, 'V-Protect'),
(1373, ''),
(1374, 'SM Bonus'),
(1375, 'Cleans-Up'),
(1376, ''),
(1377, 'Dura-Brite'),
(1378, ''),
(1379, ''),
(1380, ''),
(1381, ''),
(1382, ''),
(1383, 'Fern-C'),
(1384, 'FSL'),
(1385, ''),
(1386, ''),
(1387, ''),
(1388, ''),
(1389, ''),
(1390, ''),
(1391, ''),
(1392, ''),
(1393, ''),
(1394, ''),
(1395, ''),
(1396, ''),
(1397, ''),
(1398, ''),
(1399, ''),
(1400, ''),
(1401, ''),
(1402, ''),
(1403, 'Eurolux'),
(1404, 'Mabuhay'),
(1405, ''),
(1406, 'Volga 68'),
(1407, ''),
(1408, ''),
(1409, ''),
(1410, ''),
(1411, ''),
(1412, 'Twinstar'),
(1413, 'Rondina'),
(1414, 'Fujipipes'),
(1415, ''),
(1416, ''),
(1417, ''),
(1418, ''),
(1419, ''),
(1420, 'Inplay'),
(1421, ''),
(1422, ''),
(1423, 'Assurance'),
(1424, 'SIT'),
(1425, 'Showa'),
(1426, 'Myung Sung Hyoda'),
(1427, 'Bryce'),
(1428, '706'),
(1429, ''),
(1430, 'Omiya'),
(1431, ''),
(1432, 'Pioneer'),
(1433, ''),
(1434, 'GTO'),
(1435, 'Maxcell'),
(1436, 'Ultramax'),
(1437, 'Welstar'),
(1438, 'Osram'),
(1439, 'Sassin'),
(1440, 'TW'),
(1441, 'Narva'),
(1442, 'Redline'),
(1443, ''),
(1444, '91'),
(1445, 'Good Ride'),
(1446, ''),
(1447, ''),
(1448, ''),
(1449, ''),
(1450, ''),
(1451, ''),
(1452, 'MP3'),
(1453, 'Eneloop'),
(1454, '11'),
(1455, 'Syncwin'),
(1456, 'Syncwin'),
(1457, 'Green Garden'),
(1458, ''),
(1459, ''),
(1460, ''),
(1461, 'SBK'),
(1462, 'Ametek'),
(1463, ''),
(1464, ''),
(1465, ''),
(1466, ''),
(1467, 'NA'),
(1468, ''),
(1469, ''),
(1470, ''),
(1471, ''),
(1472, ''),
(1473, ''),
(1474, ''),
(1475, ''),
(1476, ''),
(1477, 'D-Link'),
(1478, ''),
(1479, 'NA'),
(1480, 'NA'),
(1481, 'TYLXIM'),
(1482, 'TYLXIM'),
(1483, ''),
(1484, 'Den Braven'),
(1485, 'Woochange'),
(1486, ''),
(1487, '1412'),
(1488, '1412'),
(1489, 'Nikon'),
(1490, 'Pollux'),
(1491, 'Pollux'),
(1492, 'Pollux'),
(1493, 'Pollux'),
(1494, ''),
(1495, 'Hypertech'),
(1496, 'Hypertech'),
(1497, 'Thinwall'),
(1498, 'Thinwall'),
(1499, 'Panasonic Weg'),
(1500, 'Panasonic Weg'),
(1501, 'Panasonic White'),
(1502, '1155'),
(1503, '91'),
(1504, '91'),
(1505, '91'),
(1506, ''),
(1507, ''),
(1508, ''),
(1509, 'Homeryt'),
(1510, 'Armstrong'),
(1511, ''),
(1512, ''),
(1513, ''),
(1514, ''),
(1515, ''),
(1516, ''),
(1517, ''),
(1518, 'Anly'),
(1519, ''),
(1520, 'Crown King'),
(1521, ''),
(1522, 'Flexco'),
(1523, ''),
(1524, ''),
(1525, 'PLatinum'),
(1526, 'Espana'),
(1527, ''),
(1528, ''),
(1529, ''),
(1530, ''),
(1531, ''),
(1532, ''),
(1533, ''),
(1534, ''),
(1535, ''),
(1536, ''),
(1537, ''),
(1538, ''),
(1539, ''),
(1540, ''),
(1541, ''),
(1542, ''),
(1543, ''),
(1544, ''),
(1545, ''),
(1546, ''),
(1547, ''),
(1548, ''),
(1549, ''),
(1550, ''),
(1551, ''),
(1552, ''),
(1553, ''),
(1554, ''),
(1555, ''),
(1556, 'Maxipro'),
(1557, 'Nory Italy'),
(1558, ''),
(1559, ''),
(1560, ''),
(1561, 'Mariwasa'),
(1562, ''),
(1563, ''),
(1564, ''),
(1565, 'Wescor'),
(1566, ''),
(1567, 'Electroweld'),
(1568, 'Wiz'),
(1569, ''),
(1570, ''),
(1571, 'NSK/JAPAN'),
(1572, ''),
(1573, 'Asenware'),
(1574, 'Asenware'),
(1575, 'Asenware'),
(1576, 'Asenware'),
(1577, 'Asenware'),
(1578, 'Asenware'),
(1579, 'Asenware'),
(1580, 'Asenware'),
(1581, 'Asenware'),
(1582, 'Asenware'),
(1583, 'Asenware'),
(1584, ''),
(1585, ''),
(1586, ''),
(1587, ''),
(1588, ''),
(1589, ''),
(1590, ''),
(1591, ''),
(1592, ''),
(1593, ''),
(1594, ''),
(1595, ''),
(1596, ''),
(1597, ''),
(1598, ''),
(1599, ''),
(1600, ''),
(1601, ''),
(1602, ''),
(1603, ''),
(1604, ''),
(1605, ''),
(1606, ''),
(1607, ''),
(1608, ''),
(1609, ''),
(1610, ''),
(1611, ''),
(1612, ''),
(1613, ''),
(1614, ''),
(1615, ''),
(1616, 'Tian Yiang'),
(1617, ''),
(1618, ''),
(1619, ''),
(1620, 'Daiwa'),
(1621, ''),
(1622, 'Verxus'),
(1623, ''),
(1624, ''),
(1625, ''),
(1626, ''),
(1627, ''),
(1628, ''),
(1629, ''),
(1630, ''),
(1631, ''),
(1632, ''),
(1633, ''),
(1634, 'Grand'),
(1635, ''),
(1636, ''),
(1637, ''),
(1638, ''),
(1639, ''),
(1640, ''),
(1641, ''),
(1642, ''),
(1643, ''),
(1644, 'E-Z Coat'),
(1645, ''),
(1646, ''),
(1647, ''),
(1648, ''),
(1649, ''),
(1650, ''),
(1651, ''),
(1652, ''),
(1653, ''),
(1654, 'Orgon'),
(1655, ''),
(1656, ''),
(1657, ''),
(1658, ''),
(1659, ''),
(1660, ''),
(1661, ''),
(1662, ''),
(1663, ''),
(1664, ''),
(1665, ''),
(1666, ''),
(1667, ''),
(1668, ''),
(1669, ''),
(1670, ''),
(1671, ''),
(1672, ''),
(1673, ''),
(1674, ''),
(1675, ''),
(1676, ''),
(1677, ''),
(1678, ''),
(1679, ''),
(1680, ''),
(1681, 'Chint'),
(1682, ''),
(1683, ''),
(1684, ''),
(1685, ''),
(1686, ''),
(1687, ''),
(1688, ''),
(1689, ''),
(1690, ''),
(1691, ''),
(1692, ''),
(1693, ''),
(1694, ''),
(1695, 'Arc'),
(1696, ''),
(1697, ''),
(1698, ''),
(1699, ''),
(1700, ''),
(1701, ''),
(1702, ''),
(1703, ''),
(1704, ''),
(1705, ''),
(1706, ''),
(1707, ''),
(1708, ''),
(1709, ''),
(1710, ''),
(1711, ''),
(1712, ''),
(1713, ''),
(1714, ''),
(1715, ''),
(1716, 'Zekoki'),
(1717, ''),
(1718, 'Hamburg'),
(1719, ''),
(1720, 'Camel'),
(1721, ''),
(1722, ''),
(1723, ''),
(1724, ''),
(1725, ''),
(1726, ''),
(1727, ''),
(1728, ''),
(1729, ''),
(1730, ''),
(1731, ''),
(1732, ''),
(1733, 'SFIM'),
(1734, ''),
(1735, ''),
(1736, ''),
(1737, ''),
(1738, ''),
(1739, ''),
(1740, ''),
(1741, ''),
(1742, '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`department_id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'Accounting Department\n'),
(2, 'Auxiliary\n'),
(3, 'Bacolod HR'),
(4, 'Billing Department'),
(5, 'EIC'),
(7, 'Environment/PCO'),
(8, 'Finance Department'),
(9, 'Fuel and Lube Management'),
(10, 'Health and Safety'),
(11, 'IT Department'),
(12, 'Laboratory and Chemical'),
(13, 'Maintenance'),
(14, 'Office of the GM'),
(15, 'Operation'),
(16, 'Purchasing Department'),
(17, 'Reconditioning'),
(18, 'Security'),
(19, 'Site HR'),
(20, 'Special Proj/Facilities Imp'),
(21, 'Trading Department'),
(22, 'CENPRI Warehouse '),
(23, 'Progen Warehouse'),
(24, 'Testing Group'),
(25, 'ECMG'),
(26, 'ADMIN'),
(27, 'Turbo Charger Group');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
`employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enduse`
--

CREATE TABLE IF NOT EXISTS `enduse` (
`enduse_id` int(11) NOT NULL,
  `enduse_code` varchar(100) DEFAULT NULL,
  `enduse_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enduse`
--

INSERT INTO `enduse` (`enduse_id`, `enduse_code`, `enduse_name`) VALUES
(1, '', 'Air Intake Room\n'),
(2, '', 'Control Air Compressor No. 1'),
(3, '', 'Control Air Compressor No. 2'),
(4, '', 'Control Air Compressor No. 3'),
(5, '', 'Canteen\n'),
(6, '', 'CENPRI Employees\n'),
(7, '', 'CENPRI Warehouse Building'),
(8, '', 'CENPRI Warehouse Extension'),
(9, '', 'Clinic Use\n'),
(10, '', 'Cooling Tower Basin No. 1 '),
(11, '', 'Cooling Tower Basin No. 2'),
(12, '', 'CV Access Bay Area'),
(13, '', 'DG1 \n'),
(14, '', 'DG2\n'),
(15, '', 'DG3'),
(16, '', 'DG4'),
(17, '', 'DG5'),
(18, '', 'Guardhouse\n'),
(19, '', 'Heavy Fuel Oil Purifier No. 1'),
(20, '', 'Heavy Fuel Oil Purifier No. 2'),
(21, '', 'Heavy Fuel Oil Purifier - Common'),
(22, '', 'Jacket Water Cooler No. 1'),
(23, '', 'Jacket Water Cooler No. 2'),
(24, '', 'Jacket Water Cooler No. 3'),
(25, '', 'Jacket Water Cooler No. 4'),
(26, '', 'Jacket Water Cooler No. 5'),
(27, '', 'Distillation Equipment'),
(28, '', 'Ladies'' Dormitory\n'),
(29, '', 'Lube Oil Cooler No. 1'),
(30, '', 'Lube Oil Cooler No. 2'),
(31, '', 'Lube Oil Cooler No. 3'),
(32, '', 'Lube Oil Cooler No. 4'),
(33, '', 'Lube Oil Cooler No. 5'),
(34, '', 'Lube Oil Purifier No. 1'),
(35, '', 'Lube Oil Purifier No. 2'),
(36, '', 'Lube Oil Purifier No. 3'),
(37, '', 'Lube Oil Purifier No. 4'),
(38, '', 'Lube Oil Purifier No. 5'),
(39, '', 'Office Use\n'),
(40, '', 'Powerhouse Building\n'),
(41, '', 'Progen Warehouse\n'),
(42, '', 'Restrooms\n'),
(43, '', 'Running Units\n'),
(44, '', 'Running Units - Pielstick\n'),
(45, '', 'Running Units - Sulzer\n'),
(46, '', 'Starting Air Compressor No. 1'),
(47, '', 'Starting Air Compressor No. 2'),
(48, '', 'Starting Air Compressor No. 3'),
(49, '', 'Starting Air Compressor No. 4'),
(50, '', 'Starting Air Compressor No. 5'),
(52, '', 'Steam Equipment'),
(53, '', 'Substation Perimeter'),
(54, '', 'Tank Farm\n'),
(55, '', 'Trainees on Oil Spill'),
(56, '', 'Bacolod Office'),
(57, '', 'Boiler Circulating Pump No.4'),
(58, '', 'Boiler Condensate Pump Motor'),
(59, '', 'Control Air Compressor - Common'),
(60, '', 'Environment and Pollution Control'),
(61, '', 'Fuel Tank'),
(62, '', 'Guests/VIP'),
(63, '', 'Jacket Water Cooler - Common'),
(64, '', 'Lube Oil Cooler - Common'),
(65, '', 'Lube Oil Purifier - Common'),
(66, '', 'NALCO Water Softener Unit'),
(67, '', 'Progen Office Use'),
(68, '', 'Starting Air Compressor - Common'),
(69, '', 'Starting Air Compressor - Pielstick'),
(70, '', 'SEM Water Softener Unit'),
(71, '', 'Sludge Tank'),
(72, '', 'Staffhouse 1 - Site'),
(73, '', 'Staffhouse 2 - Jara'),
(74, '', 'Staffhouse 3 - EDJ'),
(75, '', 'Waste Heat Recovery Boiler - Common'),
(76, '', 'Waste Heat Recovery Boiler No.1'),
(77, '', 'Waste Heat Recovery Boiler No.2'),
(78, '', 'Waste Heat Recovery Boiler No.3'),
(82, '', 'Battery Charger'),
(83, '', 'Heavy Equipment - Boomtruck and Forklift'),
(84, '', 'Heavy Equipment - Boomtruck'),
(85, '', 'Heavy Equipment - Forklift'),
(86, '', 'Microwave Radio Equipment'),
(87, '', 'Switch Gear Room'),
(88, '', 'Control Room'),
(89, '', 'Community'),
(90, '', 'CENPRI Warehouse Office'),
(92, '', 'Westfalia Separator AG-Lube Oil'),
(93, '', 'Station Load Metering'),
(94, '', 'Service Vehicle Isuzu Crosswind Plate No. FFN706'),
(95, '', 'Heavy Fuel Oil Sludge Basin'),
(96, '', 'Generator Sliding Tools'),
(97, '', 'Smoke Stack'),
(98, '', 'Cooling Tower Basin -  Common'),
(99, '', 'Mechanical Barracks'),
(100, '', '69KV Pole No. 3 and 4'),
(101, '', 'Fluke Clamp Meter'),
(102, '', 'Electrical Consumables'),
(103, '', 'Non Disturbance Monitoring Equipment'),
(104, '', 'Diesel Storage Tank'),
(105, '', 'Power Plant Premises'),
(107, '', 'Fuel and Lube Oil Recovery System'),
(108, '', 'NALCO and SEM Water Softener'),
(109, '', 'Fuel Farm'),
(110, '', 'Honing Machine'),
(111, '', 'Maintenance Reconditioning Area and Fuel Farm Area'),
(112, '', 'Powerhouse Toolbox'),
(113, '', 'Cummins Engine'),
(114, '', 'Isuzu, Pick-up, Fuego, Diesel, 1999'),
(115, '', 'Plant Equipment'),
(116, '', 'Electrical Handtools'),
(117, '', 'Cenpri Warehouse'),
(118, '', 'Switch Yard'),
(119, '', 'Deep Well Pump'),
(120, '', 'Drain Pipe in Running Units Sulzer and Smoke Stack'),
(121, '', 'Cooling Tower Common'),
(122, '', '1.5 MVA Station Transformer DG4 & DG5 Generator Winding/VCB/MOCB/Cable Monitor'),
(123, '', 'Plate Compactor'),
(124, '', 'Microwave Antenna'),
(125, '', 'Asset Management'),
(126, '', 'Operations & Maintenance Consumables'),
(127, '', 'Christmas Lantern'),
(128, '', '40 MVA Power Transformer'),
(129, '', 'Boiler Water Intake'),
(130, '', 'HFO Fuel Piping Insulation and Cladding'),
(131, '', 'Fuel and Lube Oil Management'),
(132, '', 'Settling and Service Tank'),
(133, '', '125 Vdc Battery Charger'),
(134, '', 'NVR CCTV Cameras'),
(135, '', 'Deep Well Facility'),
(136, '', 'Air Compressor'),
(137, '', '40 MVA, 69kV/6.6kV Power Transformer'),
(138, '', 'Deep Well Riser Pipes Pull-out'),
(139, '', 'Barring Gear Motor - Unit 2'),
(140, '', 'Trading'),
(141, '', 'Plant Decoration'),
(142, '', 'Christmas Party Stage'),
(143, '', 'Soft Water Supply Pump'),
(144, '', 'MOCB Units 4 & 5'),
(145, '', 'HFO Settling & Service Tanks'),
(146, '', '4 Units Pielstick Generator'),
(147, '', '3 Units Exhaust Fan ( MCI )'),
(148, '', 'Computer/Electronic device power supply'),
(149, '', 'Fuel Module Booster Pump Unit 2'),
(150, '', 'Boiler Circulating Pump and Motor Units 3 and 4'),
(151, '', 'Jacket Water Pump Motor No.4'),
(152, '', 'Wire Marker Device'),
(153, '', 'Mono Pump Chamber No.1'),
(154, '', 'Microwave Panel'),
(155, '', 'Safety'),
(156, '', 'Fire Hydrant'),
(157, '', 'Generator Master Panel'),
(158, '', 'Acetylene and Oxygen'),
(159, '', 'Fire Safety'),
(160, '', 'Male Common CR'),
(161, '', 'Bus Differential Panel'),
(162, '', 'Honing Machine Compressor Motor'),
(163, '', 'Warehouse Building'),
(164, '', 'Auxiliary Generator'),
(165, '', 'Generator Unit 2'),
(166, '', 'Crane & Flat Bed Trailer'),
(167, '', 'Motor Control Center 3'),
(168, '', 'Facilities Improvement'),
(169, '', 'Turning Gear Motor DG 1-3'),
(170, '', 'Borromeo''s Lot'),
(171, '', 'Unit Panel'),
(172, '', 'Out-of-House Oil Analysis'),
(173, '', 'Toyota Inova'),
(174, '', 'Barring Gear Motor - Unit 3'),
(175, '', 'Control Panel'),
(176, '', 'Cylinder Head Assy & Cylinder At CV Access Bay Area'),
(177, '', 'Circular Saw'),
(178, '', '24VDC Bank Batteries'),
(179, '', 'Drum Table & Chairs'),
(180, '', 'SCADA Room'),
(181, '', 'Engine Driven Pump'),
(182, '', 'Pedestrian Crossing In-front of Main Gate'),
(183, '', 'Microwave Control Panel'),
(184, '', 'Fire Hose Cabinet/Dead End of Fire Sprinkler of Piping'),
(185, '', 'Laboratory Use'),
(186, '', 'Oil Analysis Equipment'),
(187, '', 'Unit 5 Control Air System'),
(188, '', 'Fire Fighting System'),
(189, '', 'Relief Valve Cap for Cylinder Head'),
(190, '', 'Operations Communications'),
(191, '', 'Plant Testing Instrument'),
(192, '', 'Generator Unit 1'),
(193, '', 'New 750kVA Station Service Transformer'),
(194, '', 'Plant Site Security & Monitoring Equipment'),
(195, '', 'Unit 1 - 5 Synchronizing Panels'),
(196, '', 'Lube Oil Priming Pump'),
(197, '', 'CENPRI Signage'),
(198, '', 'Bus Protection Relay'),
(199, '', 'Panel Main Breaker'),
(200, '', 'Oil and Water Mechanical Separator Basin'),
(201, '', 'Flag Pole'),
(202, '', 'Electrical Instruments and Plant Equipment Protection'),
(203, '', 'Allan Amoguis'),
(204, '', 'Jacket Water Motor #4, MCCB'),
(205, '', 'Fuel Module 1 and 3, Starting Air Compressor Unit 3 and 5'),
(206, '', 'Air Cooler'),
(207, '', 'Grounding System Lay-out / Installation'),
(208, '', 'Master Control Panel'),
(209, '', 'HFO Recovery Tank'),
(210, '', 'Electrical Equipment'),
(211, '', 'Engine Auxiliary Area Lighting'),
(212, '', 'Running Units Maintenance Tools'),
(213, '', 'DG Unit 4 Linkage Clamp'),
(214, '', 'Plant Common Tools, Special Tools and Equipment'),
(215, '', 'Fabrication of Powerhouse Ventilation Louvers'),
(216, '', 'Spare Ideal Generator'),
(217, '', 'Tank Farm Earth Grounding'),
(218, '', 'Maintenance Tools'),
(219, '', 'Synchronizing Panel Units'),
(220, '', 'Generating Unit Protection & EIC Equipment'),
(221, '', 'Station Transformer Protection Relay'),
(222, '', 'Tagging of Tools and Equipments'),
(223, '', 'Fire Brigade Training'),
(224, '', 'Testing of 750KVA Transformer'),
(225, '', 'Lifting Equipment for Transferring of Heavy Parts/Boxes with Parts'),
(227, '', 'Garbage Bin'),
(228, '', 'Lube Oil Priming Pump'),
(229, '', 'Repainting of Color Coded Waste Bin'),
(230, '', 'Plant Common Tools, Special Tools, and Equipment'),
(231, '', 'HFO Circulating Pump and Motor Coupling'),
(232, '', 'Brigada Eskwela (Teodoro M. Morada Sr. Elem. School)'),
(233, '', 'Recovered Materials'),
(234, '', 'Testing Equipment Storage'),
(235, '', 'Pielstick Jacket Liner'),
(236, '', 'Reconditioning Precision Tools'),
(238, '', 'CENPRI Warehouse Department'),
(239, '', 'Assorted Engine Parts'),
(240, '', 'Cylinder Head, Spare, Pielstick'),
(241, '', 'DG1 (CV Area) Main Engine Parts & Components'),
(242, '', 'Running Units / Unit 1 Servicing Works'),
(243, '', 'Maintenance and Operation'),
(244, '', 'Reconditioning Equipment'),
(245, '', 'Auxiliary Lightings'),
(246, '', 'Company Meeting (Visual Presentation)'),
(247, '', 'Powerhouse -  Auxiliary Side'),
(248, '', 'Blood Sugar Monitoring and Clinic Supplies for Employee'),
(249, '', 'Fuel Recovery & Sludge Tanks'),
(250, '', 'Engine Auxiliary Lgihting & Power Panel'),
(251, '', 'Engine Auxiliary Lighting & Power Panel'),
(252, '', 'CENPRI Warehouse Extension Gate'),
(253, '', 'DG4(CV Area) Main Engine Parts & Components'),
(254, '', 'Raw Water Unit 4 & 5'),
(255, '', 'Adopt An Estero Clean-Up Activity on June 22, 2019'),
(256, '', '750KVA Transformer Protection Relay'),
(257, '', 'DG 1 and 2'),
(258, '', 'Cempco Office'),
(259, '', 'Canteen and Ladies Dorm'),
(260, '', 'Spare Stator'),
(261, '', '750kVA Transformer'),
(262, '', 'Generator Unit 4'),
(263, '', 'Conference Room'),
(265, '', 'Tools, Inventory-Mary Grace Bugna'),
(266, '', 'Spare Stator Rewinding Enclosure'),
(267, '', 'Turbo Charger Air Intake'),
(268, '', 'Common Bus Differential Fault & Breaker Failure'),
(269, '', 'Smokestack Platforms, Railings and Ladders'),
(270, '', 'Burned House at Borromeo''s Lot'),
(272, '', 'Bladder Pumps, Water Intake Pumps, Accessories and Structures'),
(273, '', 'Spare Fuji Generators'),
(274, '', 'Vibra Clean Multicleaner Heater Repair'),
(275, '', 'Lube Oil Sludge Purifier Bowl Motor Protection'),
(276, '', 'Spare Stator (For DG3)'),
(277, '', 'Mechanical Tools'),
(278, '', 'NCH Water Softener Unit'),
(279, '', 'LFO Storage and Service Tank'),
(280, '', 'Spare for Running Units, (DG Unit 1-3)'),
(281, '', 'ELCP Panel No.5'),
(282, '', '1.5 MVA Station Transformer'),
(283, '', 'Feed Pump Motor Controller'),
(284, '', 'Lube Oil Purifiers, Fuel Modules and HFO Ring Pump'),
(285, '', 'Field Wires, LV & Power Cables'),
(286, '', 'Spare Cylinder Liner for Running Units'),
(287, '', 'Raw Water System'),
(288, '', 'Lube Oil Recovery System(Westfalia Purifier)'),
(289, '', 'Sir Eric Jabiniar'),
(290, '', 'Diesel Unloading Pump'),
(291, '', 'Bagger Mixer'),
(292, '', 'Male & Female CR'),
(293, '', 'Industrial Fan'),
(294, '', 'Barring Gear Motor - Unit 1'),
(295, '', 'Admin - Site'),
(296, '', 'Cooling Tower Fan Motor Basin / Frame and Shell'),
(297, '', 'Sludge Tank Heater'),
(298, '', 'Cooling Tower Fan No.5'),
(299, '', 'Unit 3 Control Air System'),
(300, '', 'Special Project'),
(301, '', 'Surge Protection System'),
(302, '', 'Cylinder Head, Spare, Sulzer'),
(303, '', 'HFO Recovery Purifier'),
(304, '', '24 & 125 VDC Battery Bank'),
(305, '', 'CCTV Security System'),
(306, '', 'ECMG'),
(307, '', 'Cooling Tower Access To Smoke Stack'),
(308, '', 'BACIWA Main Water Line'),
(309, '', 'Fuel Injector'),
(310, '', 'Main Engine Parts & Components (CV Area'),
(311, '', 'Brookside Garden Academy Located in Brgy. Poblacion, Bago City'),
(312, '', 'Drip Tank Pump Motor'),
(313, '', 'Daihatsu DG Unit In Pinamalayan, Mindoro'),
(314, '', 'ECMG Office'),
(315, '', 'Lube Oil Storage Main Drain'),
(316, '', 'Cooling Tower To Engine Driven Supply'),
(317, '', 'Sludge Pump Motor'),
(318, '', 'Exhaust Flange'),
(319, '', 'Engine Governor, (Unit 1-5)'),
(320, '', 'Overhead Crane'),
(321, '', 'Jacket Water System'),
(322, '', 'Power Supply For Canteen, Dorms, Perimeter Lighting, Welding Machine & Guardhouse'),
(323, '', 'HFO Line Heater Service Tank'),
(324, '', 'Operations & Trading Use'),
(325, '', 'Raw Water Storage Tank'),
(326, '', 'HFO Separator Unit 1 & LOP Unit 5 Heatpac'),
(327, '', 'DC System'),
(328, '', 'Tank Farm & MCC Panel'),
(329, '', 'pH Meter'),
(330, '', 'Raw water Monkey Ladder'),
(331, '', 'Canteen Railings and Mechanical Separator Cover'),
(332, '', 'Thermal Scanner'),
(333, '', 'Raw Water Pipe Line Header'),
(334, '', 'Electrical Safety'),
(335, '', 'Bench Grinder'),
(336, '', 'Grass Cutter'),
(337, '', 'Plant Fire Protection'),
(338, '', 'Substation Battery'),
(339, '', 'Louvers at Powerhouse Roofing'),
(340, '', 'Cooler Tower Railings'),
(341, '', 'Oil Water Mechanical Separator Pump'),
(342, '', 'Measuring Tools'),
(343, '', '36 Units SEMT Pielstick PC2-5 Cylinder Head Assembly'),
(344, '', 'Air Starting Valve-Spare'),
(345, '', 'Raw Water Pump'),
(346, '', 'Running Units L.O Circulating Pump Motor'),
(347, '', 'Cenpri Female Employees'),
(348, '', 'Jacket Water Recovery Line'),
(349, '', 'Jacket Water Recovery Tank'),
(350, '', 'Engine Parts and Spare'),
(351, '', 'SJ6000 Mitsubishi Purifier'),
(352, '', 'Domestic Water Supply for Power House Comfort Room'),
(353, '', 'CENPRI Warehouse Extension Canal'),
(354, '', 'Tools and Equipment'),
(355, '', 'Fabrication of Beds for Bacolod Office Sleeping Quarter'),
(356, '', 'DG3, Cylinder # A-1'),
(357, '', 'Plant Site Employees'),
(358, '', 'DG Unit 1, 2 and 3 Jacket Water'),
(359, '', 'Bunker Oil at Tank Farm Area'),
(360, '', 'Isolation Rooms'),
(361, '', 'ECMG Office and Warehouse Office'),
(362, '', 'Staffhouses: Site, Jara, Bunkhouse'),
(363, '', 'Lighting at Boiler Area'),
(364, '', '18 Units Cylinder Head Refurbishing'),
(365, '', 'Running Units and Substition'),
(366, '', 'Fuel Module & Lube Oil Circulation Pumps, Unit 1 - 5'),
(367, '', 'ECMG Conference Room'),
(368, '', 'Hand Washing Area, Bacolod Office'),
(369, '', 'Cenpri Employess - COMECQ'),
(370, '', 'Pneumatic Valve Assembly - Sulzer'),
(371, '', 'Staffhouse 1 and Jara Staffhouse'),
(372, '', 'Engine and Auxiliary Local Panel'),
(373, '', 'CENPRI Employees-Bacolod Office'),
(374, '', 'Valve Re-facing Machine'),
(375, '', 'Warehouse Personnel'),
(376, '', 'Control Panel Circuits in DG Unit 1 to 5 / Switchgear Control and MCC Control & Power Circuit'),
(377, '', 'Engine Auxiliary System Temperature'),
(378, '', 'Sump Pit Pump Motor'),
(379, '', 'CT and PT Protection Side'),
(380, '', 'Running Units / Common Equipment Control Panels'),
(381, '', 'Parts Engraving'),
(382, '', 'Overhead Crane Limit Switch'),
(383, '', 'Fuel Module #3'),
(384, '', 'Starting Compressor Unit 5, Control Air Compressor Unit 2 and HFO Separator Unit 1 and 2'),
(385, '', 'HFO Separator and LOP Heatpac'),
(386, '', 'Cooling Tower Area'),
(387, '', 'Power House Steel Flooring'),
(388, '', 'Cylinder Head #1098'),
(389, '', 'Adopt a Tree at Bago City Public Plaza'),
(390, '', 'Air Cooler - Pielstick'),
(391, '', 'DG Unit 4 & 5 Smokestack Open Manhole'),
(392, '', 'CENPRI Trading Bacolod / Site'),
(393, '', 'ACU at Control Room'),
(394, '', '1 unit Spare Turbo Charger - Sulzer'),
(395, '', '40MVA Power Transformer at Secondary Cable'),
(396, '', 'DG#3 Lube Oil Circulating Heater Conductor'),
(397, '', 'Control Air Compressor Unit#1'),
(398, '', 'Jacket Water'),
(399, '', 'Deep Well'),
(400, '', 'Fuel Farm HFO Service Pump'),
(401, '', '69kV Substation'),
(402, '', 'Site Christmas Lantern'),
(403, '', 'Out-of-House Oil Analysis'),
(404, '', 'Exhaust Valve Cage'),
(405, '', '500kVA Dry Type Transformer'),
(406, '', 'Unit 2, 4 and 5'),
(407, '', 'Sump Pit Mono Pump (Plant Equipment)'),
(408, '', 'Plant Site Employees - Non COMECQ'),
(409, '', 'Isolation Fence'),
(410, '', 'Sulzer Running Units - Engine Local Panel'),
(411, '', 'Godfrey Samano, Edwin Bejec and Ricky Madeja'),
(412, '', 'Lube Oil Purifier Recovery System'),
(413, '', 'Running Units Auxiliary Equipment'),
(414, '', 'Generator Storage Building'),
(415, '', 'Tank Farm Feeder'),
(416, '', 'For NGCP Staff and COMECQ Employees'),
(417, '', 'Check Valve, Y-Strainer and Relief Valve (Pulled Out Parts)');

-- --------------------------------------------------------

--
-- Table structure for table `gp_series`
--

CREATE TABLE IF NOT EXISTS `gp_series` (
`gp_id` int(11) NOT NULL,
  `gp_prefix` varchar(50) DEFAULT NULL,
  `series` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
`group_id` int(11) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`group_id`, `group_name`) VALUES
(1, 'Air Branches for Cylinder Cover'),
(2, 'Automatic Starting-Air Stop Valve'),
(3, 'Auxiliary Driving Apparatus'),
(4, 'Balance Weight'),
(5, 'Barring Gear (On Right Side)'),
(6, 'Bearing Casing for Cylinder Cover'),
(7, 'Cam Case Cover'),
(8, 'Cams'),
(9, 'Camshaft'),
(10, 'Charge Air Manifold'),
(11, 'Connecting Rod'),
(12, 'Control Element'),
(13, 'Control Element Cabinet'),
(14, 'Cooling Water Manifold'),
(15, 'Cooling Water Piping for Fuel'),
(16, 'Cooling Water Pipings'),
(17, 'Crankcase Vent'),
(18, 'Crankshaft'),
(19, 'Cylinder'),
(20, 'Cylinder Cover'),
(21, 'Cylinder Head'),
(22, 'Cylinder Liner'),
(23, 'Cylinder Lubricating Pump Drive'),
(24, 'Engine Frame'),
(25, 'Exhaust Gas Piping'),
(26, 'Exhaust Piping (L = Left)'),
(27, 'External Thrust Bearing/Outbo'),
(28, 'Engine Control Valves'),
(29, 'Fly Wheel'),
(30, 'Fuel Injection Pump'),
(31, 'Fuel Injection Pump (Strength)'),
(32, 'Fuel Injection Pump Control Li'),
(33, 'Fuel Injection Pump Delivery P'),
(34, 'Fuel Injection Pump Driving GE'),
(35, 'Fuel Injection Valve'),
(36, 'Fuel Injector'),
(37, 'Fuel Oil Piping'),
(38, 'Fuel Pressure Pipe'),
(42, 'Fuel System'),
(43, 'Governing Linkage'),
(44, 'Governor'),
(45, 'Governor Drive'),
(46, 'Governor Driving Gear'),
(47, 'Indicator Cock/Valve'),
(48, 'Indicator Valve'),
(49, 'Inlet and Exhaust Valve'),
(50, 'Inspection Door w/ Relief Valve'),
(51, 'Lube Oil Pipes Valve Gear Lubricant'),
(52, 'Lube Oil Piping'),
(53, 'Main Bearing'),
(54, 'Oil Pump'),
(55, 'Oil Seal Coupling Side'),
(56, 'Oil Sump'),
(57, 'Overspeed Safety Device (w/o s'),
(58, 'Overspeed Trip'),
(59, 'Piston'),
(60, 'Raw Water Pump'),
(61, 'Relief Valve'),
(62, 'Reversing Gear'),
(63, 'Safety Device For Fuel Cut'),
(64, 'Safety Valve'),
(65, 'Servomotor For Camshaft Displacement'),
(66, 'Starting Air Apparatus'),
(67, 'Starting Air Distributor Valve'),
(68, 'Starting Air Piping'),
(69, 'Starting Device'),
(70, 'Starting Valve'),
(71, 'Starting Valve (Dummy Valve)'),
(72, 'Supplemental Bearing of Camshaft'),
(73, 'Sulzer Bellows'),
(74, 'Tachogenerator'),
(75, 'Tachometer Driving Gear'),
(76, 'Thrust Bearing For Crankshaft'),
(77, 'Timing Gear Train'),
(78, 'Timing Gear Train Casing'),
(79, 'Turbo Charger'),
(80, 'Valve Drive'),
(81, 'Valve Gear'),
(82, 'Valve Gear?Case'),
(83, 'Vibaration Damper'),
(84, 'Visual Flow Control For Cylinder Lubrication'),
(85, 'Cooling Water Pump'),
(86, 'Exhaust Piping (L = Left, R = Right)');

-- --------------------------------------------------------

--
-- Table structure for table `issuance_details`
--

CREATE TABLE IF NOT EXISTS `issuance_details` (
`is_id` int(11) NOT NULL,
  `issuance_id` int(11) NOT NULL DEFAULT '0',
  `rq_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `catalog_no` varchar(50) NOT NULL,
  `brand_id` int(11) NOT NULL DEFAULT '0',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_id` int(11) DEFAULT NULL,
  `pn_no` varchar(20) DEFAULT NULL,
  `serial_id` int(11) DEFAULT '0',
  `remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issuance_head`
--

CREATE TABLE IF NOT EXISTS `issuance_head` (
`issuance_id` int(11) NOT NULL,
  `mif_no` varchar(20) DEFAULT NULL,
  `mreqf_no` varchar(20) DEFAULT NULL,
  `request_id` int(11) NOT NULL DEFAULT '0',
  `issue_date` varchar(20) DEFAULT NULL,
  `issue_time` varchar(20) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `department_id` int(11) NOT NULL DEFAULT '0',
  `purpose_id` int(11) NOT NULL DEFAULT '0',
  `enduse_id` int(11) NOT NULL DEFAULT '0',
  `pr_no` varchar(150) DEFAULT NULL,
  `remarks` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `released_by` int(11) NOT NULL DEFAULT '0',
  `received_by` int(11) NOT NULL DEFAULT '0',
  `noted_by` int(11) NOT NULL DEFAULT '0',
  `gp_no` varchar(155) DEFAULT NULL,
  `gp_prepared` int(11) NOT NULL DEFAULT '0',
  `gp_employee` int(11) NOT NULL DEFAULT '0',
  `gp_recommending` int(11) NOT NULL DEFAULT '0',
  `gp_requested` int(11) NOT NULL DEFAULT '0',
  `gp_inspected` varchar(255) DEFAULT NULL,
  `gp_approved` int(11) NOT NULL DEFAULT '0',
  `gp_noted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`item_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subcat_id` int(11) NOT NULL DEFAULT '0',
  `original_pn` varchar(100) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  `bin_id` int(11) NOT NULL DEFAULT '0',
  `warehouse_id` int(11) NOT NULL DEFAULT '0',
  `rack_id` int(11) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `expiration` varchar(20) DEFAULT NULL,
  `picture1` varchar(255) DEFAULT NULL,
  `picture2` varchar(255) DEFAULT NULL,
  `picture3` varchar(255) DEFAULT NULL,
  `min_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `damage` int(11) DEFAULT '0',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE IF NOT EXISTS `item_categories` (
`cat_id` int(11) NOT NULL,
  `cat_code` varchar(100) DEFAULT NULL,
  `cat_prefix` varchar(100) DEFAULT NULL,
  `cat_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`cat_id`, `cat_code`, `cat_prefix`, `cat_name`) VALUES
(1, 'A', '', 'Consumables'),
(2, 'B', '', 'Automotive Parts and Accessories'),
(3, 'C', '', 'Construction'),
(4, 'D', '', 'Electrical, Instrumentation and Control'),
(5, 'E', '', 'Engine and Auxiliary Parts and Accessories'),
(6, 'F', 'FFE-UNI', 'Furniture, Fixtures and Equipment'),
(7, 'G', '', 'Tools'),
(9, 'H', '', 'Turbocharger');

-- --------------------------------------------------------

--
-- Table structure for table `item_subcat`
--

CREATE TABLE IF NOT EXISTS `item_subcat` (
`subcat_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `subcat_code` varchar(100) DEFAULT NULL,
  `subcat_prefix` varchar(100) DEFAULT NULL,
  `subcat_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_subcat`
--

INSERT INTO `item_subcat` (`subcat_id`, `cat_id`, `subcat_code`, `subcat_prefix`, `subcat_name`) VALUES
(1, 1, 'A-1', 'CON-AUT', 'Automotive Supplies'),
(2, 1, 'A-2', 'CON-CHE', 'Chemical Supplies'),
(3, 1, 'A-3', 'CON-EIC', 'Electrical Supplies'),
(4, 1, 'A-4', 'CON-FUE', 'Fuel and Lubricants'),
(5, 1, 'A-5', 'CON-CON', 'Construction Consumables'),
(6, 1, 'A-6', 'CON-HOU', 'Housekeeping Supplies'),
(7, 1, 'A-7', 'CON-MED', 'Medical Supplies'),
(8, 1, 'A-8', 'CON-OFF', 'Office Supplies'),
(9, 1, 'A-9', 'CON-SAF', 'Safety & Security Supplies'),
(10, 1, 'A-10', 'CON-STA', 'Staffhouse Supplies'),
(11, 1, 'A-11', 'CON-OEA', 'Other Engine and Auxiliary Consumables'),
(12, 2, 'B-1', 'AUT-TRA', 'Transportation Equipment Parts and Acc.'),
(13, 2, 'B-2', 'AUT-HEA', 'Heavy Equipment Parts and Accessories'),
(14, 3, 'C-1', 'BUI-MAT', 'Building Materials'),
(15, 3, 'C-2', 'BUI-PIP', 'Piping'),
(16, 3, 'C-3', 'BUI-HAR', 'Hardware'),
(17, 4, 'D-1', 'EIC-PAR', 'EIC Parts and Accessories'),
(18, 5, 'E-1', 'AUX-PAR', 'Auxiliary Parts & Kits'),
(19, 5, 'E-2', 'ENG-COM', 'Engine/Mechanical (Common)   	'),
(20, 5, 'E-3', 'ENG-PIE', 'Engine/Mechanical (Pielstick)'),
(21, 5, 'E-4', 'ENG-SUL', 'Engine/Mechanical (Sulzer)'),
(22, 6, 'F-1', 'FFE-TRA', 'Transportation Equipment'),
(23, 6, 'F-2', 'FFE-HEA', 'Heavy Equipment'),
(24, 6, 'F-3', 'FFE-COM', 'Communication Equipment'),
(25, 6, 'F-4', 'FFE-FUR', 'Office Furnitures'),
(26, 6, 'F-5', 'FFE-OFF', 'Office Equipment'),
(27, 6, 'F-6', 'FFE-PPE', 'Personal Protective Equipment'),
(28, 6, 'F-7', 'FFE-SSE', 'Safety & Security Equipment'),
(29, 6, 'F-8', 'FFE-APP', 'Appliance'),
(30, 6, 'F-9', 'FFE-STA', 'Staffhouse Furniture and Supplies'),
(31, 6, 'F-10', 'FFE-HOU', 'Housewares'),
(32, 6, 'F-11', 'FFE-TES', 'Testing Equipment'),
(33, 6, 'F-12', 'FFE-MED', 'Medical Equipment'),
(34, 7, 'G-1', 'TOO-HAN', 'Hand Tools'),
(35, 7, 'G-2', 'TOO-POW', 'Power Tools'),
(36, 7, 'G-3', 'TOO-MEA', 'Measuring Tool'),
(37, 7, 'G-4', 'TOO-STO', 'Tool Storage/Box'),
(38, 6, 'F-13', 'FFE-UNI', 'Office Uniforms'),
(39, 1, 'A-12', 'COM-POW', 'Power Tools Parts and Accessories'),
(40, 1, 'A-13', '', 'Others'),
(41, 8, 'H-1', '', 'Parts & Accessories'),
(42, 9, 'H-1', 'TUR-PAR', 'Turbocharger Parts & Accessories'),
(43, 6, 'F-14', 'TES-PAR', 'Testing Equipment Parts & Accessories'),
(44, 7, 'G-5', 'TOO-DOC', 'Measuring Tools Documents'),
(45, 6, 'F-15', 'FFE-SPO', 'Sports Equipment and Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
`location_id` int(11) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pn_series`
--

CREATE TABLE IF NOT EXISTS `pn_series` (
`pn_id` int(11) NOT NULL,
  `subcat_prefix` varchar(50) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purpose`
--

CREATE TABLE IF NOT EXISTS `purpose` (
`purpose_id` int(11) NOT NULL,
  `purpose_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rack`
--

CREATE TABLE IF NOT EXISTS `rack` (
`rack_id` int(11) NOT NULL,
  `rack_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `receive_details`
--

CREATE TABLE IF NOT EXISTS `receive_details` (
`rd_id` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL DEFAULT '0',
  `pr_no` varchar(50) DEFAULT NULL,
  `department_id` int(11) NOT NULL DEFAULT '0',
  `enduse_id` int(11) NOT NULL DEFAULT '0',
  `purpose_id` int(11) NOT NULL DEFAULT '0',
  `closed` int(11) NOT NULL DEFAULT '0',
  `close_remarks` text,
  `inspected_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `receive_head`
--

CREATE TABLE IF NOT EXISTS `receive_head` (
`receive_id` int(11) NOT NULL,
  `mrecf_no` varchar(50) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `receive_date` varchar(20) DEFAULT NULL,
  `dr_no` varchar(50) DEFAULT NULL,
  `jo_no` varchar(50) DEFAULT NULL,
  `po_no` varchar(50) DEFAULT NULL,
  `si_no` varchar(50) DEFAULT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `pcf` int(11) DEFAULT '0',
  `saved` int(11) DEFAULT '0',
  `delivered_by` text,
  `received_by` int(11) NOT NULL DEFAULT '0',
  `acknowledged_by` int(11) NOT NULL DEFAULT '0',
  `noted_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `receive_items`
--

CREATE TABLE IF NOT EXISTS `receive_items` (
`ri_id` int(11) NOT NULL,
  `rd_id` int(11) NOT NULL DEFAULT '0',
  `receive_id` int(11) NOT NULL DEFAULT '0',
  `po_no` varchar(50) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `brand_id` int(11) NOT NULL DEFAULT '0',
  `catalog_no` varchar(50) DEFAULT NULL,
  `serial_id` int(11) NOT NULL DEFAULT '0',
  `item_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `expected_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `received_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `remarks` text,
  `inspected_by` int(11) NOT NULL DEFAULT '0',
  `local_mnl` int(11) NOT NULL DEFAULT '0',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE IF NOT EXISTS `reminders` (
`reminder_id` int(11) NOT NULL,
  `reminder_date` varchar(20) DEFAULT NULL,
  `reminder_title` varchar(255) DEFAULT NULL,
  `notes` text,
  `remind_employee` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `done` int(11) NOT NULL DEFAULT '0',
  `date_done` varchar(25) DEFAULT NULL,
  `done_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request_head`
--

CREATE TABLE IF NOT EXISTS `request_head` (
`request_id` int(11) NOT NULL,
  `mreqf_no` varchar(50) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `request_date` varchar(20) DEFAULT NULL,
  `request_time` varchar(20) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `department_id` int(11) NOT NULL DEFAULT '0',
  `purpose_id` int(11) NOT NULL DEFAULT '0',
  `enduse_id` int(11) NOT NULL DEFAULT '0',
  `pr_no` varchar(50) DEFAULT NULL,
  `borrowfrom_pr` varchar(50) DEFAULT NULL,
  `remarks` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `requested_by` int(11) NOT NULL DEFAULT '0',
  `reviewed_by` int(11) NOT NULL DEFAULT '0',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `noted_by` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request_items`
--

CREATE TABLE IF NOT EXISTS `request_items` (
`rq_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `catalog_no` varchar(50) DEFAULT NULL,
  `brand_id` int(11) NOT NULL DEFAULT '0',
  `si_id` int(11) NOT NULL DEFAULT '0',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_id` int(11) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pn_no` varchar(50) NOT NULL,
  `borrowfrom_pr` varchar(50) DEFAULT NULL,
  `replenished` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restock`
--

CREATE TABLE IF NOT EXISTS `restock` (
`restock_id` int(11) NOT NULL,
  `restock_date` varchar(20) DEFAULT NULL,
  `pr_no` varchar(50) DEFAULT NULL,
  `serial_no` varchar(50) DEFAULT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `brand_id` int(11) NOT NULL DEFAULT '0',
  `catalog_no` varchar(100) DEFAULT NULL,
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `returned_by` int(11) NOT NULL DEFAULT '0',
  `received_by` int(11) NOT NULL DEFAULT '0',
  `acknowledge_by` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `department_id` int(11) NOT NULL,
  `purpose_id` int(11) NOT NULL,
  `enduse_id` int(11) NOT NULL,
  `reason` text,
  `noted_by` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `mrwf_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restock_details`
--

CREATE TABLE IF NOT EXISTS `restock_details` (
`rdetails_id` int(11) NOT NULL,
  `rhead_id` int(11) NOT NULL,
  `serial_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `item_cost` decimal(10,0) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `catalog_no` varchar(100) NOT NULL,
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reason` text NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restock_head`
--

CREATE TABLE IF NOT EXISTS `restock_head` (
`rhead_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `purpose_id` int(11) NOT NULL,
  `enduse_id` int(11) NOT NULL,
  `returned_by` int(11) NOT NULL,
  `noted_by` int(11) NOT NULL,
  `acknowledge_by` int(11) NOT NULL,
  `received_by` int(11) NOT NULL,
  `pr_no` varchar(50) DEFAULT NULL,
  `excess` int(11) NOT NULL DEFAULT '0',
  `from_pr` varchar(100) DEFAULT NULL,
  `mrwf_no` varchar(255) DEFAULT NULL,
  `saved` int(11) NOT NULL,
  `restock_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `serial_number`
--

CREATE TABLE IF NOT EXISTS `serial_number` (
`serial_id` int(11) NOT NULL,
  `si_id` int(11) NOT NULL DEFAULT '0',
  `serial_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signatories`
--

CREATE TABLE IF NOT EXISTS `signatories` (
`signatory_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `requested` int(11) NOT NULL DEFAULT '0',
  `acknowledged` int(11) NOT NULL DEFAULT '0',
  `noted` int(11) NOT NULL DEFAULT '0',
  `inspected` int(11) NOT NULL DEFAULT '0',
  `delivered` int(11) NOT NULL DEFAULT '0',
  `reviewed` int(11) NOT NULL DEFAULT '0',
  `received` int(11) NOT NULL DEFAULT '0',
  `released` int(11) NOT NULL DEFAULT '0',
  `approved` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`supplier_id` int(11) NOT NULL,
  `supplier_code` varchar(100) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `terms` varchar(100) DEFAULT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `contact_number`, `terms`, `active`) VALUES
(1, 'sup_1001', '2GO Express', 'BREDCO, Port 2, Reclamation Area, Brgy. 10, Bacolod City', '(034) 704-1339', '', 1),
(2, 'sup_1002', '7RJ Brothers Sand & Gravel & Gen. Mdse.', 'Circumferential Road, Brgy. Villamonte, Bacolod City', '(034)458-0190/213-2249', 'COD-Actual Quantity (delivered to site)', 1),
(3, 'sup_1003', 'A.C. Parts Merchandising', 'Gonzaga Street - Tifanny Bldg, Brgy. 24, Bacolod City', '(034) 433-2512', '', 1),
(4, 'sup_1004', 'A-1 Gas Corporation', 'Alijis, Bacolod City', '434-0708; 433-3637; 433-3638; 432-2079', 'COD', 1),
(5, 'sup_1005', 'AA Electrical Supply', 'C & L Bldg., Lacson-Luzuriaga St., BC', '435-3811; 432-3712; 708-1212', 'COD', 1),
(6, 'sup_1006', 'Ablao Enterprises', 'Bago City', '461-0376', 'COD ', 1),
(7, 'sup_1007', 'Abomar Equipment Sales Corporation', 'Lacson Ext., Cor. Goldenfield Sts. Liroville Subd, Singcang, Bacolod City', '433-1687; 432-3673', '', 1),
(8, 'sup_1008', 'Ace Hardware Philippines, Inc. - Bacolod Branch', 'G/F Sm City Bacolod Bldg. A, Poblacion Reclamation Area, Bacolod City', '(034) 468 0135', 'COD', 1),
(9, 'sup_1009', 'Ace Rubber Manufacturing and Marketing Corp.', 'Galo Street, Bacolod City', '(034)433-2145', 'COD', 1),
(10, 'sup_1010', 'Agro Star Industrial Trading Corp', 'Lacson-Luzuriaga, Bacolod City', '441-3624', '', 1),
(11, 'sup_1011', 'AIC Marketing', 'Lopez Jaena St., Shopping, Bacolod City', '433-8921', 'COD', 1),
(12, 'sup_1012', 'Almark Chemical Corporation', 'Alijis Road, Bacolod City', '433-2864/432-3778', 'COD', 1),
(13, 'sup_1013', 'AMT Computer Solutions', 'Door #5, Prudentialife Building, Luzuriaga St, Bacolod City', '435-1207; 213-3607', '7 days', 1),
(14, 'sup_1014', 'Andreas Hollow Blocks Enterprises', 'Brgy. Bata, Bacolod City', '(034) 476-1207', '30 days', 1),
(15, 'sup_1015', 'Ang Bata Hardware', 'Carlos Hilado Highway, Bata, Bacolod City', '(034) 441-3141', '', 1),
(16, 'sup_1016', 'Ang Design Studios , Inc.', 'Hilado Street, Barangay 17, Bacolod City', '(034) 435 0463', 'COD', 1),
(17, 'sup_1017', 'Anilthone Motor Parts & General Merchandise', 'Lacson Street - Bacolod North Terminal, Banago, Bacolod City', '(034) 434-7539', '', 1),
(18, 'sup_1018', 'A-one Industrial Hardware', 'Lopez Jaena St., Libertad, Bacolod', '435-7383; 432-0652; 476-1127', '', 1),
(19, 'sup_1019', 'Ap Cargo Logistics Network Corporation', 'Door 2, SYC Building, Lacson Street, Bacolod City', '(034) 432 3981', 'COD', 1),
(20, 'sup_1020', 'Apollo Machine Shop', 'Lacson, Bacolod', '434-9512', '', 1),
(21, 'sup_1021', 'Arising Builders Hardware and Construction Supply', 'Door #5 Dona Angela Bldg., Gonzaga St., Bacolod City', '435-4302', 'COD', 1),
(22, 'sup_1022', 'Arvin International Marketing Inc.', 'Bredco Port 4, Bacolod City', '434-7941', 'COD-Cash', 1),
(23, 'sup_1023', 'Asco Auto Supply', 'Gonzaga Street - Tiffany Building, Barangay 24, Bacolod City', '(034) 433-8963', 'COD', 1),
(24, 'sup_1024', 'Assistco Energy & Industrial Corp', 'First Ave., Bagumbayan, Taguig, Metro Manila/ Park Lane Bldg, Tindalo-Hilado Sts., Shopping, Bacolod City', '435-1605', '', 1),
(25, 'sup_1025', 'Atlantic Auto Parts', 'Gonzaga Street, Barangay 24, Bacolod City', '(034) 435-0136', 'COD', 1),
(26, 'sup_1026', 'Atlas Industrial Hardware Inc', '56 Lacson St, Bacolod City', '433-8170; 476-4708; 476-8161', 'COD', 1),
(27, 'sup_1027', 'Atom Chemical Company, Inc.', 'Mansilingan, Bacolod City', '(034)707-0826', 'COD', 1),
(28, 'sup_1028', 'Automation and Security Inc.', 'G/F Cineplex Building, Araneta St., Bacolod City', '(034) 704-1842 / 0977-732-5013', 'COD', 1),
(29, 'sup_1029', 'Ava Construction Supply', 'Cor. Yakal-Lopez Jaena Sts., Capitol Shopping Center, Bacolod City', '434-1822; 433-0263; 435-1901; 708-3757', 'COD', 1),
(30, 'sup_1030', 'B. Benedicto and Sons. Inc.', '99-101 Plaridel St. Cebu City', '(032) 254-4624(032) 255-0941/256-2218', 'COD', 1),
(31, 'sup_1031', 'B. A. Oriental Tire Supply', 'Liroville Subdivision - D Cruz Drive, Taculing, Bacolod City', '(34)433 0780', 'COD', 1),
(32, 'sup_1032', 'Bacolod Canvas And Upholstery Supply', 'Gonzaga St, Bacolod City', '(034) 434-3188', 'COD', 1),
(33, 'sup_1033', 'Bacolod Chemical Supply', 'Lopez Jaena, Bacolod City, Negros Occidental', '(34)433-3141', 'COD', 1),
(34, 'sup_1034', 'Bacolod China Mart', '70 Lacson St., Bacolod City', '434-7293/434-7670', '', 1),
(35, 'sup_1035', 'Bacolod Erd Enterprises', 'Rizal Street - Corner Lacson Street, Barangay 22, Bacolod City', '(034) 434-2272', '', 1),
(36, 'sup_1036', 'Bacolod General Parts Marketing', 'Lacson - Gonzaga Street, Barangay 24, Bacolod City', '(034) 433-1174', '', 1),
(37, 'sup_1037', 'Bacolod Global Parts Sales', 'Gonzaga Street - Jacman Building, Barangay 24, Bacolod City', '(034) 433-2091', '', 1),
(38, 'sup_1038', 'KLS Electrical Supply', 'Locsin-Gonzaga Sts. , Bacolod City', '433-3807', '', 1),
(39, 'sup_1039', 'Bacolod Integral Trading', 'Luzuriaga St., Bacolod City', '433-8170', 'COD', 1),
(40, 'sup_1040', 'Bacolod Kingston Hardware', 'Gonzaga, Bacolod City', '435-4734-36', '', 1),
(41, 'sup_1041', 'Bacolod Marjessie Trading', 'Cuadra Street, Barangay 21, Bacolod City', '(034) 456-2519', '', 1),
(42, 'sup_1042', 'Bacolod Marton Industrial Hardware Corp', 'Bonifacio St., Bacolod City', '434-2236-37; 435-0637', '', 1),
(43, 'sup_1043', 'Bacolod Mindanao Lumber and Plywood', 'BLMPC Bldg., Lopez Jaena-Malaspina Sts., Bacolod', '433-3610-12', '', 1),
(44, 'sup_1044', 'Bacolod National Trading', 'Luzuriaga St., Bacolod City', '433-2959', 'COD', 1),
(45, 'sup_1045', 'Bacolod Office Solutions Unlimited, Inc.', 'Lacson Street, Bacolod City', '433-9636', 'COD', 1),
(46, 'sup_1046', 'Bacolod Oxygen Acetylene Gas Corp.', 'Brgy. Alijis, Bacolod City', '434-1780', 'COD', 1),
(47, 'sup_1047', 'Bacolod Paint Marketing', 'Luzuriaga St., Bacolod City', '(034) 433-2063', 'COD', 1),
(48, 'sup_1048', 'Republic Hardware', 'Bonifacio St., Bacolod City', '434-8317; 434-5125; 433-9941', 'COD', 1),
(49, 'sup_1049', 'Bacolod Steel Center Corporation', '#22 LM Bldg., Gonzaga St., Bacolod City', '435-2721-25', 'COD', 1),
(50, 'sup_1050', 'Bacolod Sure Computer, Inc.', 'Capitol Shopping Center, Hilado St, Villamonte, Bacolod City', '(034) 435-1949', 'COD', 1),
(51, 'sup_1051', 'Bacolod Triumph Hardware', 'Narra Extension, Hervias Subd., Brgy. Villamonte, Bacolod City', '433-5551/55; 709-7777', '30 days PDC ', 1),
(52, 'sup_1052', 'Bacolod Truckers Parts Corporation', 'Gonzaga Street - Ralph Building, Barangay 24, Bacolod City', '(034) 433-3335', 'COD', 1),
(53, 'sup_1053', 'Bacolod Visayan Lumber', 'No. 2725 Lopez Jaena Bacolod', '433-8888', '', 1),
(54, 'sup_1054', 'Bangkal Movers Merchandising', 'Bangga Cory, Taculing, Bacolod City', '09164080028 / 0943-200-3145 / 0922-210-3206', 'COD', 1),
(55, 'sup_1055', 'BCG Computers', 'Lopez-Jaena St., Bacolod City', '(034) 434-2532/709-1888', 'COD', 1),
(56, 'sup_1056', 'Bearing Center & Machinery Inc.', 'Door #8 G/F GGG Bldg., Hilado Ext. Capitol Shopping Center, Bacolod City', '433-8370', 'COD', 1),
(57, 'sup_1057', 'Bens Machine Shop', 'Lopez Jaena St., Bacolod City', '433-8990', '', 1),
(58, 'sup_1058', 'Bright Summit Distribution Corporation', '2nd Flr. VCY Cntr. Bldg., Hilado Ext., Bacolod City', '(034) 433-7111', 'COD', 1),
(59, 'sup_1059', 'B-Seg Sand And Gravel', 'Prk. San Jose Circumferential Rd., Brgy. Alijis, Bacolod City', '(034) 457-1173 / 0929-6762-702', 'COD-Actual Quantity (delivered at site)', 1),
(60, 'sup_1060', 'C.Y. Ong Multi-Distributor', 'Door #4 Asian Realty Bldg., Lacson St., Bacolod City', '434-4360; 709-1159', 'COD', 1),
(61, 'sup_1061', 'Capitol Subdivision Inc.', 'Homesite Subd., Bacolod City', '433-9190', 'COD', 1),
(62, 'sup_1062', 'CAR-V Industrial Sales', 'No. 25 Valtram Bldg., Lacson-Gonzaga Sts., BC', '434-4661; 433-3835; 708-0210', 'COD', 1),
(63, 'sup_1063', 'Catcom Marketing', '5 Rosario Amapolo, Bacolod City', '(034) 434 8732', 'COD', 1),
(64, 'sup_1064', 'Cebu Bolt And Screw Sales', 'Door # 30-32 Gochan Bldg., Leon Kilat St., Cebu City', '(032) 412-3561', 'Advance Payment', 1),
(65, 'sup_1065', 'Central Gas Corporation (CEGASCO)', 'Km7 Natl South Rd., Brgy. Pahanocoy, Bacolod City', '444-1113/444-1109/444-1996/444-1348/444-1344 / 444-1348', 'COD', 1),
(66, 'sup_1066', 'Cezar Machine Shop', '92 Rizal Estanzuela St., Iloilo City', '(033) 337-1068', '', 1),
(67, 'sup_1067', 'Char Pete General Merchandise', 'Bago City', '473-0300', 'COD', 1),
(68, 'sup_1068', 'Cibba Paint Center, Inc.', 'CEJ Building, Lopez-Jaena StreetBacolod City', '(034) 433 9291', 'COD', 1),
(69, 'sup_1069', 'CLG Commercial Corporation', 'Narra Ext., Bacolod City', '433-5329/707-0474 / 0909-260-4184 / 0925-828-1156', 'COD', 1),
(70, 'sup_1070', 'ColorSteel System Corp.', 'EAC Building - Pacific Home Depot,Lacson - Mandalagan St.,Brgy. Banago, Sta. Clara Subd.,Bacolod City, Bacolod', '(034) 421 2267', 'COD', 1),
(71, 'sup_1071', 'CORDS Industrial Sales and Services', 'Dr. 1 SC Bldg. Libertad Ext., Mansilingan, Bacolod City', '446-2339', '', 1),
(72, 'sup_1072', 'Crismar Enterprises', 'Cuadra St.,  Brgy. 21, Bacolod City', '434-1210', 'COD', 1),
(73, 'sup_1073', 'Cro-Magnon Corporation', '45 Gochuico Bldg., Mabini Cor. Rosario St., Bacolod City', '433-3221; 434-1416', 'COD', 1),
(74, 'sup_1074', 'Crossworlds Trading and Engg Services', 'Door 3 Zerrudo Commercial Complex (former Lopez Arcade) E. Lopez St. Jaro, Iloilo', '', '', 1),
(75, 'sup_1075', 'CS Sales', 'LACSON STREET - CORNER LUZURIAGA STREET, BARANGAY 37, BACOLOD CITY', '(034) 434-5390', 'COD', 1),
(76, 'sup_1076', 'Daks Auto Supply', 'Lopues Mandalagan - Annex Building , Mandalagan, Bacolod City', '(0922)856 1591', 'COD', 1),
(77, 'sup_1077', 'DBO Auto Parts', 'Rizal Street - Door 5 Lizlop Building, Barangay 21, Bacolod City', '(034) 435-6304', 'COD', 1),
(78, 'sup_1078', 'Warlen Industrial Sales Corp. (Deka Sales)', ' Lot 20 Block 2, Lacson Extension, Alijis Road, Bacolod City', '(034) 435-1573', 'COD', 1),
(79, 'sup_1079', 'Philippine DFC Cargo Forwarding Corp.', 'LGV Building, Molave Street, Capitol Shopping Center, Bacolod City', '(034) 709-1128', 'COD', 1),
(80, 'sup_1080', 'Direct Electrix Equipment Corporation', '#28 Ramylu Drive, Tangub, Bacolod City', '(034) 444-2023 / (032) 948-0221 / (032) 942-2871 / 0916-600-3244 / 0922-853-5384', 'COD', 1),
(81, 'sup_1081', 'DMC Industrial Supplies', 'Mabini St., Bacolod City', '(034) 441-3621 / 0943-283-1688', 'COD', 1),
(82, 'sup_1082', 'DY Home Builders, Inc.', 'No. 2725 Lopez Jaena Bacolod', '433-2222', '', 1),
(83, 'sup_1083', 'Dynasty Management & Devt Corporation', 'Araneta St., Brgy. Singcang, Bacolod City', '', '', 1),
(84, 'sup_1084', 'Dynasty Paint Center', 'Lopez-Jaena Taal Sts., Bacolod city', '(034) 435-4777', 'COD', 1),
(85, 'sup_1085', 'Dypo Auto Parts', 'Lacson Street - Door 2 Jr Building, Barangay 21, Bacolod City', '(034) 707-7055', 'COD', 1),
(86, 'sup_1086', 'Ebara Benguet, Inc', 'Door 3 Eusebio Arcade, Lacson St., Brgy 40, Bacolod City', '435-8162', 'COD', 1),
(87, 'sup_1087', 'Eduard Metal Industries', '23rd St, Bacolod City', '432-0490', '', 1),
(88, 'sup_1088', 'Enigma Technologies Inc.', '2F Terra Dolce Center, Hilado Ext., Bacolod City', '(034) 435 8144', 'COD', 1),
(89, 'sup_1089', 'Far Eastern Hardware & Furniture Enterprises, Inc.', '38 Quezon St. Iloilo City', '(033) 335-0891 ; 337-2654 ; 337-2222 ; 337-5321 ; 508-4196', '', 1),
(90, 'sup_1090', 'Federal Johnson Engineering Works', 'Circumferential Rd, Bacolod City', '441-2110; 441-0306', 'COD', 1),
(91, 'sup_1091', 'FGV Enterprises', 'Luzuriaga Street - Door 1 Lucias Building, Barangay 25, Bacolod City', '(034) 433-2672', 'COD', 1),
(92, 'sup_1092', 'Fil-Power Group and Marketing Corp', 'St Anthony Bldg Lopez Jaena St, Bacolod City', '434-7957; 707-8035', 'COD', 1),
(93, 'sup_1093', 'Firbon Multi Sales', 'Cuadra Street - Door 3 Rgr Building, Barangay 21, Bacolod City', '(0920)479 5919', 'COD', 1),
(94, 'sup_1094', 'Francis New Tractor Parts', 'Lacson - Cuadra Street, Barangay 24, Bacolod City', '(034) 433-1456', '', 1),
(95, 'sup_1095', 'Fuman Industries Inc.', 'Brgy. Banago, Bacolod City', '435-0973', '', 1),
(96, 'sup_1096', 'Gini GTB Industrial Network Inc./AsiaPhil', 'Room 209, 2nd Floor Boston Finance and Investment Corp Bldg., Bacolod City', '(034) 435-6269 / 0998-844-3078', 'COD', 1),
(97, 'sup_1097', 'GLE Sand and Gravel Enterprises', 'GSIS Corner Medel Road Tangub Highway, Bacolod City', '444-1644', 'COD', 1),
(98, 'sup_1098', 'Golden Gate Hardware', 'Gonzaga-Lacson Sts., Bacolod City', '433-0995/434-6848', '7 days', 1),
(99, 'sup_1099', 'Golden Jal Marketing', 'Cokins Bldg, Bacolod City', '433-0698; 435-0061', '', 1),
(100, 'sup_1100', 'Golden Tower Commercial', 'Dr. 3, Emerald Bldg., Lacson St., Bacolod City', '476-8043 fax', '', 1),
(101, 'sup_1101', 'Good Hope Enterprises', 'Bonifacio St., Bacolod City', '434-8588-89', 'COD', 1),
(102, 'sup_1102', 'Greenlane Hardware and Construction Supply Inc', 'Lacson St., Bacolod City', '432-1119', '', 1),
(103, 'sup_1103', 'Highway Tire Supply', 'Lacson Street, Barangay 38, Bacolod City', '(034) 433-1257', 'COD', 1),
(104, 'sup_1104', 'HRA Paint Center', 'Dr # JQ Center Bldg., Lopez Jaena St., Bacolod City', '(034) 435-6684', 'COD', 1),
(105, 'sup_1105', 'Ideal System Komponents', 'Room 4B/4F Villa Angela Metro Plaza Bldg., Araneta St. BC', '433-4224', '', 1),
(106, 'sup_1106', 'IEC Computers', '(034) 433 9472/708-4322', '', 'COD', 1),
(107, 'sup_1107', 'Iloilo City Hardware, Inc.', '105-107 Iznart St., Iloilo City', '(033) 337-2952; 337-2969 ; 338-1455; 337-5553', '', 1),
(108, 'sup_1108', 'Iloilo National Hardware', '', '(033) 337-0449; 509-8985 ; 337-2841 ; 509-7785', '', 1),
(109, 'sup_1109', 'Innovative Controls Incorporated', 'Rm. 1-10 JDI Bldg., Galo St., Bacolod City', '(034) 708-1727 / 0908-8162189', 'COD', 1),
(110, 'sup_1110', 'Inovadis, Inc.', 'Rizal St, Brgy 22, Bacolod City', '435-4634-35', '', 1),
(111, 'sup_1111', 'Integrated Power and Control Provider, Inc.', 'Unit #5 East Plaza Commercial Bldg, Suntal Phase II, Circumferential Rd., Brgy Taculing, BC', '446-7612', '15 days PDC', 1),
(112, 'sup_1112', 'Intrax Industrial Sales/ U2 Machine Shop', 'Lot 1 Blk 4 Along Murcia Rd, Hermelinda Homes, Mansilingan, BC', '446-3268', '', 1),
(113, 'sup_1113', 'ISO Industrial Sales', 'Luzuriaga St., Bacolod City', '432-3007', '', 1),
(114, 'sup_1114', 'J. T. Oil Philippines', 'Bacolod City', '(034) 435-2666', 'COD', 1),
(115, 'sup_1115', 'Jast Marketing Co.', '#6 GGG Bldg., Capitol Shopping, Bacolod City', '434-0043', '30 days', 1),
(116, 'sup_1116', 'Johnson Parts Center & General Merchandise', '6th Street Lacson - Gensoli Building, Barangay 24, Bacolod City', '(034) 433-5708', '', 1),
(117, 'sup_1117', 'Jojo 4 Wheel Parts Supply', 'Gonzaga Street - Door 1 Suntal Invst Building, Barangay 24, Bacolod City', '(034) 435-0626', '', 1),
(118, 'sup_1118', 'KARL-GELSON INDUSTRIAL SALES', 'Araneta St., Bacolod City', '432-6318', 'COD', 1),
(119, 'sup_1119', 'Kemras Industrial Supply', 'Blk. 5, Lot 11 NHA ACCO Housing, Circumferential Road, Brgy. Alijis, Bacolod City', '(034) 446-3162 / 0906-1464-064 / 0936-927-9953', '30 days', 1),
(120, 'sup_1120', 'KLP Easy Electrical', 'Libertad extension, 6100 Bacolod City, Negros Occidental, Philippines', '', '', 1),
(121, 'sup_1121', 'Kuntel Construction', 'Rooms 3-6, 2nd Floor, Villa Angela Arcade, Burgos Extension, Bacolod City', '434-7866', 'COD', 1),
(122, 'sup_1122', 'Leeleng Commercial, Inc.', 'Bacolod City', '446-1084', '', 1),
(123, 'sup_1123', 'Liberty First Enterprises', 'T. Gensoli Bldg., Lacson St., Bacolod City', '435-1530; 435-0533', '', 1),
(124, 'sup_1124', 'Linde Corporation', 'Bago City', '213-4596/213-4594', 'COD', 1),
(125, 'sup_1125', 'Linton Incorporated', 'For Additional Lightning in Powerhouse DG Area', '(02) 733-8800 ; 733-8810 ; 734-1059 ; 733-8817', '', 1),
(126, 'sup_1126', 'LMS Electrical Supply', 'Gonzaga Street, Bacolod City', '435-0424/434 8423', 'COD', 1),
(127, 'sup_1127', 'Loc-Seal Industrial Corporation', 'Rm. 209 2F, DB Bldg., Cor. Gonzaga-Locsin Sts., Bacolod City', '709-9519', 'COD', 1),
(128, 'sup_1128', 'Luis Paint Center', 'Gonzaga, Bacolod City', '435-0301', 'COD', 1),
(129, 'sup_1129', 'Luvimar Enterprises', 'Rizal Street corner Gatuslao Street (beside LLC), Bacolod City', '(034) 476-3612', 'COD', 1),
(130, 'sup_1130', 'Lyfline Marketing', 'Galo Hilado, Bacolod City', '(034) 434 6543/(34)434-2582', 'COD', 1),
(131, 'sup_1131', 'Macjils Refrigeration And Airconditioning Repair Shop', 'Prk. Sto. Rosario, lacson St., Bacolod City', '(034) 707-0639 / 0919-637-0637', 'COD', 1),
(132, 'sup_1132', 'MB United Commercial', 'Yakal St., Villamonte, Bacolod City', '435-3131; 434-7283; 709-1053', 'COD', 1),
(133, 'sup_1133', 'Metro Pacific Construction Supply, Inc.', 'No. 47 Mabini Street, Iloilo City', '(033) 338-1316 ; 337-1210 ; 337-3762; 337-0815', '', 1),
(134, 'sup_1134', 'MF Computer Solution', '434-6544', '0917-301-7762; 0999-994-6579', '', 1),
(135, 'sup_1135', 'MGNR Hardware & Construction Supply', '2780 Hilado Ext., Brgy Villamonte, Bacolod City', '435-3790', '', 1),
(136, 'sup_1136', 'Micro Valley', 'Reclamation Area, Bacolod City', '(034) 704-4317', 'COD-Cash', 1),
(137, 'sup_1137', 'MILCO MALCOLM MARKETING', 'MABINI STREET - SAN SEBASTIAN STREET, BARANGAY 32, BACOLOD CITY', '(034) 433-3429', '', 1),
(138, 'sup_1138', 'Milco Malcolm Mktg', 'M & M Aceron Bldg II, Mabini-San Sebastian Sts., BC', '433-3429; 434-2918; 434-3986', 'COD', 1),
(139, 'sup_1139', 'Mirola Hardware', 'Poblacion Sur, Ivisan, Capiz', '(036) 632-0104; 632-0028 ; 632-0108', '', 1),
(140, 'sup_1140', 'Negros Bolts & General Mdse', '2879 Burgos Ext., BS Aquino Drive, Bacolod City', '435-2260; 708-1183', '', 1),
(141, 'sup_1141', 'Negros International Auto Parts', 'Rizal Street - Corner Lacson Street - Sgo Building, Barangay 21, Bacolod City', '(034) 435-1416', '', 1),
(142, 'sup_1142', 'Negros Marketing', 'Cuadra St., Bacolod City', '(034) 435-4708', 'COD', 1),
(143, 'sup_1143', 'Negros Metal Corporation', 'Brgy. Alijis, Bacolod City', '(034) 433-7398', 'COD', 1),
(144, 'sup_1144', 'Negros Pioneer Enterprises', 'Gonzaga - Lacson Street, Barangay 24, Bacolod City', '(034) 433-2088', 'COD', 1),
(145, 'sup_1145', 'Netmax Solutions', 'Silay City', '(034) 213-6120 / 0949-883-2535/0923-141-2611', 'COD', 1),
(146, 'sup_1146', 'New Colomatic Motor Parts', 'Gonzaga Street - Lm Building, Barangay 25, Bacolod City', '(034) 434-5955', '', 1),
(147, 'sup_1147', 'New Yutek Hardware and Industrial Supply Corporation', 'Zulueta St., Cebu City, Cebu', '(032) 255-5406', 'COD', 1),
(148, 'sup_1148', 'Newbridge Electrical Enterprises', 'Lacson Ext., Cor LT Vista St. Singcang, Bacolod City', '433-9298; 433-2365; 434- 2185', 'COD', 1),
(149, 'sup_1149', 'Nikko Industrial Parts Center', 'Lacson Street - Door 3 Tmg Building , Barangay 25, Bacolod City', '(034) 708-0210/(034) 433-7908/(034) 433-3835', 'COD', 1),
(150, 'sup_1150', 'Nippon Engineering Works', 'Corner-Mabini Ledesma Sts., Iloilo City', '(033) 338-1122', '', 1),
(151, 'sup_1151', 'Northern Iloilo Lumber & Hardware', '24 Ledesma, Iloilo City', '(033) 337-4749', '', 1),
(152, 'sup_1152', 'NS Java Industrial Supply', 'Room 1-11 JDI Bldg, Galo St., Bacolod City', '433-0668', '', 1),
(153, 'sup_1153', 'Octagon Computer Superstore', 'SM City Bacolod, Rizal St., Reclamation Area, Bacolod City', '(034) 468-0205', 'COD', 1),
(154, 'sup_1154', 'Panay Negros Steel Corporation', 'Door 2, Torres Bldg, No. 61 Burgos, Bacolod City', '434-8272', '', 1),
(155, 'sup_1155', 'Philippine DFC Cargo Forwarding Corp.', 'Siment Warehouse, Zuellig Ave., Reclemation Area, Mandaue City', '0917-629-3024', 'Freight Collect', 1),
(156, 'sup_1156', 'Pins Auto Supply', 'Gonzaga Street - Purok Masinadyahon, Barangay 24, Bacolod City', '(034) 434-9349', '', 1),
(157, 'sup_1157', 'Platinum Construction Supply', 'Bugnay Road, Villamonte, Bacolod City', '(034) 433-1886', '', 1),
(158, 'sup_1158', 'Power Steel Specialist', '1714 Ma. Clara St., Sampaloc, Manila', '(02) 731-0000', '', 1),
(159, 'sup_1159', 'Power Systems, Inc', 'AU & Sons Bldg., Sto. Nino, Bacolod City', '433-4293', '', 1),
(160, 'sup_1160', 'Prism Import-Export, Inc.', 'C.L. Montelibano Avenue, Bacolod City', '(034) 433-6045/708-4443/433-5327', '15 days', 1),
(161, 'sup_1161', 'Procolors T-Shirts Printing', 'Lacson St., Bacolod City', '(034) 434 3403', 'COD', 1),
(162, 'sup_1162', 'Ravson Enterprises', 'Atrium Bldg., Gonzaga St., Bacolod City', '434-8929', 'COD', 1),
(163, 'sup_1163', 'Rc Fishing Supply', 'Gonzaga St, Bacolod City', '(034) 434 8299', 'COD', 1),
(164, 'sup_1164', 'Richard and Zachary Woodcraft', 'Victorina Heights, Libertad Ext., Brgy. Mansilingan', '431-5866/213-3858/0928-337-7568, 0927-325-4497, 0922-562-1005', 'COD', 1),
(165, 'sup_1165', 'RTH Marketing', 'Door 1, St. Francis Bldg., Lizares Ave.,Bacolod City', '433-1199; 433-8152', '', 1),
(166, 'sup_1166', 'Sam Parts Marketing', 'Cuadra Street, Barangay 24, Bacolod City', '(034) 434-6119', '', 1),
(167, 'sup_1167', 'SGS Hardware Corporation', 'Gatuslao Bacolod City', '435-3023-25', 'COD', 1),
(168, 'sup_1168', 'Sian Marketing', 'Luzuriaga-Lacson Sts., Bacolod City', '431-1375', '', 1),
(169, 'sup_1169', 'Sian Marketing', 'Luzuriaga-Lacson Sts., Bacolod City', '431-1375', '', 1),
(170, 'sup_1170', 'Silicon Valley', 'SM Bacolod City', '(034) 431-3251', 'COD', 1),
(171, 'sup_1171', 'Silver Horizon Trading Co. Inc.', 'Julio Las Piñas St., Brgy. Villamonte, Bacolod City', '476-2590/09284495903/09296291246', 'COD', 1),
(172, 'sup_1172', 'Simplex Industrial Corp.', 'Tiffany bldg., Door 8, Gonzaga St., Bacolod City', '(0932)878-8882, (0925)868-8882', 'COD', 1),
(173, 'sup_1173', 'SKT Saturn Network, Inc.', 'SKT Compound, Rizal St., Bacolod City', '433-2494', '', 1),
(174, 'sup_1174', 'Sol Glass And Grills', 'Rosario Heights, Libertad Ext., Brgy. Taculing, Bacolod City', '(034) 213-3935 / 0917-5039-183', 'COD', 1),
(175, 'sup_1175', 'Specialized Bolt Center and Industrial Supply Inc.', '11 V. Sotto, Cebu City, Cebu', '(032) 2531345 / 253-1535', 'COD', 1),
(176, 'sup_1176', 'State Motor Parts Company', 'Gonzaga Street, Barangay 24, Bacolod City', '(034) 433-1683', '', 1),
(177, 'sup_1177', 'Sugarland Hardware Corp.', 'Lacson St., Bacolod City', '434-5390; 434-4549; 708-8850', 'COD', 1),
(178, 'sup_1178', 'Sunrise Marketing', 'Bldg./Street: Hilado Extension\nMunicipality: Bacolod City ', '434-5746', 'COD', 1),
(179, 'sup_1179', 'Svtec Industrial Enterprises', 'Gonzaga-Lacson St., Bacolod City', '(034) 707-7496', 'COD', 1),
(180, 'sup_1180', 'Technomart', '(034) 431-5994', '9322065585', 'COD', 1),
(181, 'sup_1181', 'Teranova Computers', '709 - 7737', '0999-817-4815 / 0942-009-1433', 'COD', 1),
(182, 'sup_1182', 'Tingson Builders Mart', '3 Gonzaga, Bacolod City', '434-1046; 707-5507', '', 1),
(183, 'sup_1183', 'Alpha Titan Hardware', '888 Chinatown Square, Gatuslao St.', '435-7496; 476-4106', '', 1),
(184, 'sup_1184', 'TMVG Multi-Sales, Inc.', 'Dr. 2, Genito Bldg., Lopez Jaena St., Bacolod City', '(034) 708-1819 / 434-7471 / 435-6003 / 476-4355 / 435-0905', 'COD', 1),
(185, 'sup_1185', 'Tokoname Enterprises', 'Hernaez St., Bacolod City', '433-3610/707-1844', 'COD/7 days', 1),
(186, 'sup_1186', 'Tri-con Marketing Center Inc.', 'Capitol Shopping Ctr, Bacolod City', '435-0889', '', 1),
(187, 'sup_1187', 'Triumph Machinery Corporation', 'Bacolod City', '441-0298', '', 1),
(188, 'sup_1188', 'U.S. Commercial', 'Gatuslao Street - Purok Bagong Silang, Barangay 13, Bacolod City', '(034) 433-1174', '', 1),
(189, 'sup_1189', 'Unikel Industrial Supplies and Safety Equipments', 'Door 2 G/F Malayan Bldg, 3rd St Lacson, Bacolod City', '476-3191; 435-8677', '', 1),
(190, 'sup_1190', 'Union Galvasteel Corp', 'Soliman Bldg, Bacolod', '435-7175', '', 1),
(191, 'sup_1191', 'United Bearing Industrial Corp', 'AP Bldg Lacson St, Bacolod City', '435-4541; 435-4497', '', 1),
(192, 'sup_1192', 'United Steel Technology International Corp.', 'Door 2, Goldbest Warehouse, Guzman St., Hibao-an, Mandurriao, Iloilo City', '(033) 333-7663', '', 1),
(193, 'sup_1193', 'US Commercial Inc (Uy Sian Commercial)', 'Gov V M Gatuslao, Bacolod City', '434-8989; 433-8017', '', 1),
(194, 'sup_1194', 'VCY Sales Corporation', 'Kamagong St., Brgy. Villamonte, Bacolod City', '433-7112/709-7778', 'COD', 1),
(195, 'sup_1195', 'Vendor 1', 'Vendor 1 address', '1111', '', 1),
(196, 'sup_1196', 'Visayan Construction Supply', 'Lacson St., Bacolod City', '434-7277 / 434-7278', 'COD', 1),
(197, 'sup_1197', 'Vosco Trading ', 'Cuadra St., Bacolod City', '(034) 435-8515', 'COD', 1),
(198, 'sup_1198', 'Wellmix Aggregates Inc', 'Ralph Townhouse, Bacolod City', '(034) 434-4704', '', 1),
(199, 'sup_1199', 'Western Hardware', 'EH Bldg., Lacson-San Sebastian Sts., Bacolod City', '434-5305-06', '', 1),
(200, 'sup_1200', 'Westlake Furnishings Inc.', 'Araneta St.,  Bacolod City', '(034) 433-9489/433-9498', 'COD', 1),
(201, 'sup_1201', 'Yousave Electrical Supply', 'Door #s 1-2 Sunstar Bldg., Hilado Ext., Bacolod City', '709-0594', '30 days PDC/COD', 1),
(202, 'sup_1202', 'Alta-Weld, Inc. / Alta (Far East) Welding Materials, Inc.', 'Sun Valley Drive KM. 15 West Service Road, South Superhighway, Parañaque City', '(02) 823-4032 / 824-2966 / 824-2988 / 0917-636-1187 / 0922-625-6397', 'COD', 1),
(203, 'sup_1203', 'Chokie Heavy Equipment Parts Center', 'AGPA Bldg. Lacson St., Bacolod City', '(034) 431-5303 / 0925-866-2081 / 0942-072-6467', 'COD', 1),
(204, 'sup_1204', 'Hydrauking Industrial Corp.', 'Door # 4 Ching Store, Zone 2 Tablon, Cagayan De Oro', '0928-828-2878 / 0905-228-4345', 'COD', 1),
(205, 'sup_1205', 'Ionic Impact One Nation Industrial Corporation', '6-D Pearl St., Golden Acres Subd. Las Piñas City', '(02) 800-9104 / 806-2048 / 805-2959 / 0977-824-5812', 'COD', 1),
(206, 'sup_1206', 'Cebu Champion Hardware and Electric Depot, Inc.', 'Pres. Quirino St, Cebu City, Cebu', '(032) 234 4342 / 231-7139 / 0917-632-6505', 'Advance Payment(Bank to Bank)', 1),
(207, 'sup_1207', 'FH Commercial Inc.', 'FH Building, #22 Anonas Rd., Potrero, Malabon City, 1475', '(02) 362-2265 / 330-2019 / 330-2021 / 366-8598 / 361-4235 / 364-3352 / 0918-922-0974', 'COD', 1),
(208, 'sup_1208', 'A & M Medcare Products Distributors', ' Door 4 & 5, Estban Building, 5 Lacson St, Barangay 17, Bacolod City', '(034) 433 5728', 'COD', 1),
(209, 'sup_1209', 'Archi Glass & Aluminum Supply', 'P Hernaez St Ext, Bacolod City', '(034) 433 7116', '50% Downpayment, 50% upon completion', 1),
(210, 'sup_1210', 'Bacolod Electrical Supply', 'Gonzaga Corner Lacson St., Bacolod City', '(034) 434-0526', 'COD', 1),
(211, 'sup_1211', 'Morse Hydraulics System Corp.', 'DMC Bldg., Narra Ext. Bacolod City', '(034) 433-1538 / 0917-633-9634', 'COD', 1),
(212, 'sup_1212', 'JHM Industrial Supplies', 'Gov. Rafael Lacson St., Zone 12 Talisay City, Negros Occidental', '0949-846-7820 / 0923-568-3661', 'COD', 1),
(213, 'sup_1213', 'Negros GT Group', '159-161 Lacson St., Bacolod City', '(034) 434-6154', 'COD', 1),
(214, 'sup_1214', 'Powersteel Hardware', 'Coastal Road, Brgy. Banuyao, Lapaz, Iloilo City', '(033) 330-3792 | (033) 329-4484', 'Advance Payment (Bank to Bank)', 1),
(215, 'sup_1215', 'Propmech Corporation', 'J. king Warehouse, M. Sanchez St., Alang-alang, Mandaue City, Cebu', '(032) 344-0738', 'COD', 1),
(216, 'sup_1216', 'Assistco Energy & Industrial Corporation', 'Door # 2 Parklane Building, Cor. Rizal-Tindalo Sts., Shopping Center, Bacolod City', '(034) 435-1605', 'COD', 1),
(217, 'sup_1217', 'Joules Enterprise & Engineering Services', 'Jees bldg., Blk. 6 Lot 10 Doña Juana Cor. R. A. Canlas St., Springside, Pandan, Angeles City', '(045) 458-0848: 0918-940-7243: 0917-919-5258', 'COD', 1),
(218, 'sup_1218', 'Nexus Industrial Prime Solutions Corp.', 'Unit B, Roselindees Building, Galo-Hilado St., Bacolod City', '(034) 435-0560 / 0928-5079-9741', 'COD', 1),
(219, 'sup_1219', 'AGEC Engineering Supplies', 'American Packing Ind., Mandalagan, Bacolod City', '0947-776-8124 / 0916-300-8019', 'COD', 1),
(220, 'sup_1220', 'Sealand Industrial Supply', 'Plazamart, Araneta St., Bacolod City', '0932-9034-564', 'COD', 1),
(221, 'sup_1221', 'EFRC Industrial Services & Trading Corp.', '252 Dr. Jose Fabella St., Plainview, Mandaluyong City', '(02) 533-6673 / 0917-324-9530 / 0917-599-3366 / 0918-939-7962', 'COD', 1),
(222, 'sup_1222', 'New Interlock Sales & Services', 'Door # 3 NGS Bldg., M. J. Cuenco Avenue, Mabolo Cebu 6000', '(032) 2315-906 to 907; 412-8431; 412-8278 to 79', 'COD', 1),
(223, 'sup_1223', 'Fil Generators And Services Company', 'Door # 7, East Plaza Bldg., Circumferential Road, Brgy. Taculing, Bacolod City', '(034) 446-2674 / 0917-140-4763', 'COD', 1),
(224, 'sup_1224', 'Acster Marketing', '128 Araneta St., Singcang, Bacolod City', '(034) 458-4077 / 0927-291-2209', 'COD', 1),
(225, 'sup_1225', 'Mandaue Atlas Steel Fabrication Corp.', 'Plaridel St, Paknaan, Mandaue City, Cebu', '(032) 505-1806 / 316-2364', 'COD', 1),
(226, 'sup_1226', 'YKG Industrial Sales Corp.', '7-9 M. C. Briones St., Cebu City, 6000', '(032) 255-0870 to 73', 'COD', 1),
(227, 'sup_1227', 'Worldwide Steel Group, Inc.', 'Sacris Road Ext., Mandaue Cebu 6014', '(032) 346-0959; 345-0458: 344-0660', 'COD', 1),
(228, 'sup_1228', 'Tokyu Hardware & Industrial Supply', '1175-9 Highway 77, Talamban 6000 Cebu City', '(032) 345-1500 / 345-0498 / 416-0088', 'COD', 1),
(229, 'sup_1229', 'CJ KARR Industrial Sales And Services', 'Dr # 2, E & R Bldg, Hernaez Ext., Prk. Kabukiran, Taculing, Bacolod City', '(034) 709-0130 / 446-3843', 'COD', 1),
(230, 'sup_1230', 'Goldensteel Construction Supply', 'G/Floor, Casals Building, Pagsabungan Mandaue City', '(032) 405-3262 / 0998-5394-560 / 0942-356-6747 / 0910-613-2888', 'Advance Payment-Bank to Bank Transaction', 1),
(231, 'sup_1231', 'RJ Spring Rubber & Metal Parts Manufacturing Corp.', '#171National Road, Ortigas Ext., Brgy. Delapaz, Antipolo City, Rizal', '(02) 658-1951; 384-9315; 473-0433; 215-3069', 'COD', 1),
(232, 'sup_1232', 'Moldex Products Inc.', 'Moldex Building., Ligaya St., Cor. West Ave., Quezon City', '(032) 373-8888 / 373-4009 / 0917-863-9237', 'COD', 1),
(233, 'sup_1233', 'Gibrosen Fire Safety Products', 'Door # 2 Triple Es Siasat Bldg., Burgos Ext., 4th Road, Villamonte, B. C.', '(034) 434-2881', 'COD', 1),
(234, 'sup_1234', 'Phil-Nippon Kyoei Corp.', 'S705 Royal Plaza Twin Towers 648 Remedios St., Malate, Manila', '(02) 400-5778 / 328-3270', 'COD', 1),
(235, 'sup_1235', 'Able Machine Industries', '618 Ylac Ave., Villamonte, Bacolod City', '(034) 435-5960', '30 days PDC', 1),
(236, 'sup_1236', 'First Pilipinas Power and Automation, Inc.', 'Unit 1609 Cityland Tower 2 H. V. Dela Costa St., Salcedo Village, Makati City 1227 Philippines', '(02) 666-1843 / 892-1914 / 0922-881-4382/0927-311-5672', 'COD', 1),
(237, 'sup_1237', 'LP Solutions', '3/F Leeleng Bldg., 718 Shaw Blvd., Mandaluyong City, Phil, 1552 ', '(02) 723-7767 to 70 / 0999-855-3875', 'COD', 1),
(238, 'sup_1238', 'Starlube Corporation', 'Camia Street, Espinos Village 1, Circumferential Road, Bacolod City', '(034) 446-2420 / 446-2174', 'COD', 1),
(239, 'sup_1239', 'Berpa-Flex Technologies', 'St. Michael Subdivision, Alicante, E. B.Magalona, Negros Occidental', '0908-1092-386 / 0917-4631-769', 'COD', 1),
(240, 'sup_1240', 'Filtertech General Trading', 'N & N Bldg., Cortes Ave. Maguikay, Mandaue City', '(032) 505-8490 / 0922-2266-86 / 0920-2593-077', 'COD', 1),
(241, 'sup_1241', 'Compresstech Resources, Inc.', 'CRI Bldg., 665 Pres. E. Quirino Ave., Malate Manila', '(02) 567-4389 to 95 to 98 / 0922-8063885', 'COD', 1),
(242, 'sup_1242', 'Access Frontier Technologies, Inc.', 'Unit # 207 Grand Arcade Bldg., AC Cortez., Mandaue City 6014, Cebu, Philippines', '(032) 420-2429, 420-7818, 239-2629', 'COD', 1),
(243, 'sup_1243', 'Flex-a-Seal Industrial Supply', 'Blk. 2, Lot 29 Eufemia Compound Circumferential Rd., Taculing, Bacolod City', '(034) 458-3290 / 213-5221 / 0939-955-3716 / 0998-9896-690 / 0922-8051-480', 'COD', 1),
(244, 'sup_1244', 'AVK Philippines Inc.', '70 Wes Ave. West Triangle Quezon City', '(02) 376-6400 to 01 - 02-376-6399', 'COD', 1),
(245, 'sup_1245', 'Bernabe Construction & Industrial Corp.', 'Roosevelt Avenue, Quezon City', '(02) 292-3401 / (02) 292-1540 / (02) 293-7625', 'COD', 1),
(246, 'sup_1246', 'Gold Tools Enterprises', 'Unit 18, 46 D.Tuazon St., Corner E. Rodriguez Sr. Ave., Dona Josefa, Metro Manila, Quezon City', '415-6201 / 244-9577', '', 1),
(247, 'sup_1247', 'Sum-ag Petron Gas Station', '', '', '', 1),
(248, 'sup_1248', 'Marhil Spring', '', '', '', 1),
(249, 'sup_1249', '88 Electronics Supply', '', '', '', 1),
(250, 'sup_1250', 'DMs Oil Purifier Services and Supply', 'No. 11-A Esteban St. Mandaluyong City', '654-1521 / 0998-284-0757', '', 1),
(251, 'sup_1251', 'Alex Lumber Yard', '', '', '', 1),
(252, 'sup_1252', 'Nalco Philippines Inc.', '18F W Fifth Ave. Bldg., 5th ave., Bonifacio Global City, Taguig', '09175255662 / 02 548-9500', '', 1),
(253, 'sup_1253', 'Jbee Department Store', '', '', '', 1),
(254, 'sup_1254', 'RS Components Corporation', '', '', '', 1),
(255, 'sup_1255', 'Llamado Enterprises', '', '', '', 1),
(256, 'sup_1256', 'K-Mart', '', '', '', 1),
(257, 'sup_1257', 'Enerpro Marketing Inc.', '', '', '', 1),
(258, 'sup_1258', 'Fluid Energy Philippines Inc.', 'Unit 1 & 2, Ground Floor AVJ Building No. 99 Fourth St. Corner C-3 Road, Caloocan City', '3195991 / 3517124 / 4422244 / 3656592 to 93', '', 1),
(259, 'sup_1259', 'A-One Industrial Sales', 'Door 4 & 5 ACFC  Bldg.,Lopez Jaena St, Bacolod City', '435-7383', '', 1),
(260, '', 'Precious V. Sanchez', '', '', '', 1),
(261, 'sup_1260', 'CTMJ Gases Supply', '99 Honey Bed Alijis, Bacolod City', '479 2455 / 707 0059', '', 1),
(262, 'sup_1261', 'Pos Gasul Negros Occidental INC.', 'Araneta St.,Brgy. Singcang, Bacolod City', '034 435- 1798 / 434- 0088 & 707- 3030', '', 1),
(263, 'sup_1262', 'Center for Reliability Excellence Laboratories Corporation', '718 Shaw Blvd, Mandaluyong, 1550 Metro Manila', '(02) 726 8244', '', 1),
(264, 'sup_1263', 'KJ Fairmart Inc.', 'Adela Bldg., Araneta St. Sum-ag, Bacolod City', '', '', 1),
(265, 'sup_1266', 'T5 Sum -ag Enterprises, Inc', 'San Luis Village, San Juan St., Sum-ag, Bacolod City', '034 444-0491', '', 1),
(266, 'sup_1264', 'Delixi Electric', '', '', '', 1),
(267, '', 'Donated by Sir RCT', '', '', '', 1),
(268, '', 'William Soltes', '', '', '', 1),
(269, 'sup_1265', 'CMC 417 Enterprises Corporation', 'Margarita St., Libertad, Brgy.40, Bacolod City', '704-8077 / 702-8402 / 09173008402', 'cash', 1),
(270, '', 'Warehouse', '', '', '', 1),
(271, 'sup_1267', 'Doods Sack Trading', 'Lopez Jaena-San Sevastian Sts., Bacolod City', '09075156093 / 09274228433', '', 1),
(272, 'sup_1268', 'Luzanta Native Products', 'Stall III-3 Bldg., North Public Market Brgy.19, Bacolod City', '', '', 1),
(273, 'sup_1269', 'I.E. Creative Computers', '062, SM City, Reclamation Area, Bacolod City', '433-9472 / 708IECC', '', 1),
(274, 'sup_1270', 'Pacific Ads Creative Outdoor', '', '', '', 1),
(275, 'sup_1271', 'Ametros Inc', '', '', '', 1),
(276, 'sup_1272', 'PC Gilmore Computer Center', '', '', '', 1),
(277, 'sup_1273', 'Montreiec Incorporated', '', '', '', 1),
(278, 'sup_1274', 'New China Mart', '70 Lacson St., Bacolod City', '034 434-7293 / 434-7670', '', 1),
(279, 'sup_1275', 'Zemarc Corporation', '', '', '', 1),
(280, 'sup_1276', 'New Kapitan Parts Center & Co., Inc.', 'EGA Towers, #36 Gonzaga, 25, Bacolod City, Neg. Occ', '434-1912 ; 432-3212 ; 432-1293 ; 709-1858', '', 1),
(281, 'sup_1277', 'National Book Store', '', '', '', 1),
(282, 'sup_1278', 'South Gas Petron', '', '', '', 1),
(283, 'sup_1279', '7-Eleven, LLARC Convenience Store', 'Araneta Ave. Cor Sum-ag-Abuanan Rd., Brgy. Sum-ag, Bacolod City', '', '', 1),
(284, 'sup_1280', 'Negros Grace Pharmacy', '', '', '', 1),
(285, 'sup_1281', 'F.G. Cycle Parts & Hardware', 'Araneta St., Bago City', '4610-148', '', 1),
(286, '', 'Borrowing', '', '', '', 1),
(287, 'sup_1282', 'Samson Merchandising, Inc.', '#90 Lacson St., Brgy.38, Bacolod City', '433-1208 / 435-1892', '', 1),
(288, 'sup_1283', 'Insuflex Industries, Inc.', '#9 Gregorio Del Pilar St., San Francisco Del Monte, Quezon City', '374-3953 / 372-1585 / 372-1613 / 415-3902', '', 1),
(289, 'sup_1284', 'All-Technik and Components, Incorporated', 'All-Technik bldg., Lot 11, Block 36, San Antonio Valley 1, Sucat, Para?aque City', '829-4849 to 50 / 825-2533 / 0923-7014027', '', 1),
(290, 'sup_1285', 'Speed Controls Enterprises', '2479 Decena st., San Roque, Brgy. 94, Pasay City', '09156273548 / 09296075797', '', 1),
(291, 'sup_1286', 'Vencio Auto Supply', 'Dr.#2 Ang Building, Brgy.25, Bacolod City', '435-8248 / 435-8870', '', 1),
(292, 'sup_1287', 'Platinum International Supply & Services, Inc.', 'Unit 217 & 218, Cityland Dela Rosa Condominium, 7648 Dela Rosa St., Brgy. Pio del Pilar, Makati City', '813-1380 / 813-1492 / 813-1384', '', 1),
(293, 'sup_1288', 'Prince Hypermart Bago', 'H. Yulo St., Brgy. Pob, Bago City', '', '', 1),
(294, 'sup_1289', 'MTG Gasoline Service Station', '', '', '', 1),
(295, 'sup_1290', 'Citi Hardware Bacolod', 'Bacolod city', '432-3493', '', 1),
(296, 'sup_1291', 'GC & C, Inc.', 'Carlos Hilado Highway, Ceircumfrrential Road, Bacolod City', '034 441-2409', '', 1),
(297, 'sup_1292', 'GC Appliance Centrum', 'Lacson St., Bacolod City', '434-6993', '', 1),
(298, 'sup_1294', 'Upshaw Industrial Corporation', 'Rm. 201, VAG Building, Ortigas Avenue, San Jaun City, Metro Manila', '721-5451', '', 1),
(299, 'sup_1295', 'Poweredge Solutions Phils., Inc', '', '', '', 1),
(300, 'sup_1296', 'Powerex, Inc', '173 Pavillion Lane Youngwood, PA 15697', '724-925-7272', '', 1),
(301, 'sup_1297', 'Stellite Commercial, Inc', '17 Calbayog St., Brgy. Highway Hills, Mandaluyong City', '531-4681', '', 1),
(302, 'sup_1298', 'Savemore Market', 'Bacolod City', '', '', 1),
(303, 'sup_1299', 'JPEL Construction Supply & Services', 'Crossing High school, Brgy. Lag-asan, Bago city', '0929-350-0395', '', 1),
(304, 'sup_1300', 'Heatwave Industrial Sales', 'No.488 HIS Bldg., P. Sevilla(Lakambini) St., Ave. Grace Park, Caloocan City', '02-244-5386 / 09175326737', '', 1),
(305, 'sup_1301', 'Noris Automation Far East Pte Ltd', 'nO.42. Toh Guan Road East #01-80, Entrepreneur Hub, Singapore, 608583', '65 6267 8536 Ext 111', '', 1),
(306, 'SUP_1302', 'Sum-ag Mansfort Merchandise', 'Araneta St., Sum-ag, Bacolod City', '444-2047', '', 1),
(307, 'sup_1303', 'Alpha Pacific Electric Co., Inc', 'Unit 113 Madison Manor, Condominium Complex, Manhattan, Bldg., Manila Doctors Villages Las Pi?as City', '800-0870 / 805-3485', '', 1),
(308, 'sup_1304', 'Virgon Repair, Welding Shop and Lathe Works', 'Calumangan, Bago City', '0919-6566243 / 09298977281', '', 1),
(309, 'sup_1305', 'Portalloy Industrial Supply Corporation', '1011-1013 Oroquieta St., Sta.Cruz, Metro Manila', '734-8137 / 734-8141 / 734-7143', '', 1),
(310, 'sup_1306', 'Nationware Marketing Services, Inc', 'G/Flr NH08 Bldg.128 Porvinir St. Near Cor. F.B. Harrison St., Pasay City', '526-8701 loc 116 / 0942-4768727 / 0956-8851213', '', 1),
(311, 'sup_1307', 'Columbia Wire & Cable Corporation', '75 Howmart Road, Baesa, Barrio Kangkong, Quezon City', '340-5235 / 361-6151', '', 1),
(312, 'sup_1308', 'MAC Alpha Omega Industrial Sales Inc', '16 R. Baetiong Drive, Balintawak, Quezon City', '(02) 282-4920 / (02) 410-3450 / (02) 929-4607 / (02) 5460700 / 09171388899', '', 1),
(313, 'sup_1309', 'Marsteel Construction Supply', '#29 Aurora Blvd. Cor. S.Veloso St., San Juan City', '726-8818 / 723-1156', '', 1),
(314, 'sup_1310', 'CCM Hardware', 'Sum-ag, Bacolod City', '', '', 1),
(315, 'sup_1311', 'Bacolod Plastic Supply', '5 Hilado St., Bacolod City', '0340434-0067', '', 1),
(316, 'sup_1312', 'The Hunter Motor Co.', 'Gonzaga St., Bacolod City', '433-3673 / 433-3674', '', 1),
(317, 'sup_1313', 'Safegear Industrial Sales Ltd. Co.', '1686 SAn Lazaro St., Sta.Cruz, Manila', '(02) 523-7297 / (02) 311-6440 / (02) 493-5166', '', 1),
(318, 'sup_1314', 'Negros Megabright Corporation', 'C & L Bldg., Luzuriaga-Lacson St., Bacolod City', '(034) 435-0375 / (034) 435-0851', '', 1),
(319, 'sup_1315', 'Your Daily Mktg.', 'Hi-Way, Tangub, Bacolod City', '', '', 1),
(320, 'sup_1317', 'GPM Trading & Engineering Services', 'Lot 888H, National Highway, Alijis, Bacolod City', '(034) 435-0742 / 707-3814', '', 1),
(321, 'sup_1318', 'Crown Agri-Trading Corp.', 'D-47 Narra Ave., Capitol Shopping Center, Bacolod City', '434-5322 / 434-3050 / 434-8509', '', 1),
(322, 'sup_1319', 'Dalian Hivolt Power System Co., Ltd', '', '', '', 1),
(323, 'sup_1320', 'Golden Hope Mktg.', 'Bacolod city', '', '', 1),
(324, 'sup_1321', 'SKG Shopping Plaza', 'Bacolod City', '', '', 1),
(325, 'sup_1322', 'Bacolod Standard Radio', 'Gonzaga St., Bacolod City', '', '', 1),
(326, 'sup_1323', 'Joel Glass Ware Store', 'Blk. 341 Central Public Market, Bacolod City', '', '', 1),
(327, 'sup_1324', 'Ebara Pumps Philippines, Inc', 'Canlubang Industrial Estate, Cabuyao, Laguna', '(02)871-9098 / 049-549-5028', '', 1),
(328, 'sup_1325', 'Armak Abraisive Products, Inc', '2205 Angelinao Paco Manila', '(02) 521-383', '', 1),
(329, 'sup_1326', 'L & J General Merchandise', 'Bago City', '', '', 1),
(330, 'sup_1327', 'Gilbilt Industrial Marketing', '', '', '', 1),
(331, 'sup_1328', 'Ken-tool Hardware Corporation', '1167 La Torre St., J.A Santos Ave., Manila', '252-0861 / 252-0871', '', 1),
(332, 'sup_1329', 'Excelsior Sevenfold Trade Corp', '#22 Datsun St., Fairview Park Subd., Fairview, Quezon City', '428-2539 / 428-2536 / 0917-5773218', '', 1),
(333, 'sup_1330', 'TGA Chemical Enterprises', 'Tower Bldg., 61 Burgos Ave., Bacolod City', '034 432-1899', '', 1),
(334, 'sup_1331', 'Powerhouse Dist. Inc / Samsung', 'Bacolod City', '700-9627', '', 1),
(335, 'sup_1332', 'All Foam & Beyond', '2A Base Bldg., Lacson St., Brgy. Bata, Bacolod City', '434-1796 / 432-7092', '', 1),
(336, 'sup_1333', 'W & L Trading Corporation', '33 Eight St., New Manila, Quezon City', '722-1880 / 725-0329 / 724-9760 / 724-3967', '', 1),
(337, 'sup_1334', 'Firebase Industrial Supply & Services', 'Door#3 East Park Residence Bldg., Helvetia Heights, Bacolod City', '034 445-0689', '', 1),
(338, 'sup_1335', 'PowerPro Protection Supply, Inc.', 'TECO, Industrial Park, Ninoy Aquino Highway,Barangay Bundagul, Mabalacat, Pampanga', '(02) 506-4547 / 0917-300-7243', '', 1),
(339, 'sup_1336', 'Progen Dieseltech Service Corp', 'Unit 809 Richmond Plaza, San Miguel Ave. Cor Lourdes Drive, Ortigas, Pasig City', '09205205418', '', 1),
(340, 'sup_1337', 'Tequipment.Net', '205 Westwood Avenue, Long Branch, New jersey 07740', '', '', 1),
(341, 'sup_1338', 'Genuine Mercantile Corporation', 'Gonzaga St., Bacolod City', '034 434-0485', '', 1),
(342, 'sup_1340', 'NTS Tires Supply', '#39, Fiesta Homes , Sum-ag', '09207805091', '', 1),
(343, 'sup_1341', 'Kvtester Electronics Technology Co. Ltd', 'No. 120 Guangga Road, East Lake New High-Tech Development Zone, Wuhan, China', '0086 27-81778799', '', 1),
(344, 'sup_1342', 'Med Care Suplies', 'Hilado St., Bacolod City', '034 435 5118', '', 1),
(345, 'sup_1343', 'New Llacer Electronics & Electrical Supply', 'Gonzaga St., Bacolod City', '034 433-5658', '', 1),
(346, 'sup_1346', 'Kelvin Nicoll Enterprises', 'Gonzaga St., Bacolod City', '034 476-9756', '', 1),
(347, 'sup_1347', 'Bacolod Triumph Depot', 'Hilado St., Bacolod City', '', '', 1),
(348, 'sup_1349', 'G.F.M. Filters & Pumps', 'Circumferential Road, in front of Cosmopolitan Church, Taculing, Bacolod City', '09327704748 / 458 7367', '', 1),
(349, 'sup_1350', 'Artemis Salt Corporation', 'Bredco port, Reclemation Area, Brgy.10, Bacolod city', '09269909479 / 09178288052', '', 1),
(350, 'sup_1351', 'Best Electrical Components', '#40 Buendia Ave., Makati City', '02 843-0785', '', 1),
(351, 'sup_1352', 'Powertechnic Lighting Inc.', 'Unit 603 Elegant Tower, Galeria de Binondo Condo. Numancia St., Brgy. 285, Zone 026, Binondo, Manila', '245-8129 / 09176511890', '', 1),
(352, 'sup_1353', 'Amaba Industrial Supplies', 'Unit 1 Solid Gold Arcade Building, 200 Naga Road, Pulang Lupa II, Las Pi?as City', '874-3792 / 09178477139', '', 1),
(353, 'sup_1354', 'Manila Oil Seal Co.', '656 Evangelista St., Quiapo, Manila', '733-2267 / 733-2275 / 733-2308 / 09166135239', '', 1),
(354, 'sup_1355', 'Center of Reliability Excellence Laboratories Corporation', '2F Lab Leeleng Bldg., 718 Shaw Blvd., Mandaluyong', '', '', 1),
(355, 'sup_1356', 'BA Oriental Tire Supply', 'Bacolod City', '034 433-0780', '', 1),
(356, 'sup_1357', 'Albao Enterprises', 'Araneta St., Poblacion, Bago City', '', '', 1),
(357, 'sup_1358', 'AFA Technologies Inc.', '126 K-10th St., Brgy. East Kamias, Quezon City', '928-5060 / 924-1729 / 986-7510', '', 1),
(358, 'sup_1359', 'Bacolod HKL Enterprise', 'Bacolod City', '', '', 1),
(359, 'sup_1360', 'D.C. Cruz Trading Corp.', '158-C Singcang, Bacolod city', '034 434-3944', '', 1),
(360, 'sup_1361', 'NNT68 Fishing Supply', '18-13 Luzuriaga St., Bacolod city', '034 435-0499', '', 1),
(361, 'sup_1362', 'Robinsons Handyman Inc.', 'Robinsons Place Bacolod', '034 441-3168', '', 1),
(362, 'sup_1363', 'J.N. Hollow Blocks', 'Bacolod City', '', '', 1),
(363, 'sup_1364', 'Petco Renergy Corp', '', '', '', 1),
(364, 'sup_1365', 'Prisma Electrical Controls Corp.', '2/F Le Mar Ben II Bldg., 747 San Bernardo St., Sta. Cruz, Manila', '733-4526', '', 1),
(365, 'sup_1366', 'Wyler Enterprises Incorporated', '1300 Rizal Aven., Brgy. 321-Zone 032 Sta. Cruz, Manila', '735-0581 to 84 / 495-0187 to 88', '', 1),
(366, 'sup_1367', 'Twin Top Pharma & Sales Distributor Inc.', 'Bacolod City', '', '', 1),
(367, 'sup_1368', 'NCH Philippines Inc.', 'Between Kms. 19 & 20 North Ortigas Ave., Extension Cainta, 1900 Rizal', '(632) 655-7389 to 7392', '', 1),
(368, 'sup_1369', 'Avelino Catiempo', 'Bacolod City', '', '', 1),
(369, 'sup_1370', 'Active Control Engineering and Supplies', 'Unit G, Marian Building, 1524 Penafrancia St., Manila', '871-0273 to 871-0373 / 781-3964 / 546-6106', '', 1),
(370, 'sup_1371', 'JMJ Instrumentation Control & Industrial Supply', '15-A M.L. Quezon Street, Brgy. Bambang, Taguig City', '781-2893 / 236-4672', '', 1),
(371, 'sup_1372', 'Avesco Marketing Corporation', '810 Aurora Blvd., Cor. Yale St., Cubao, Q.C.', '912-8881', '', 1),
(372, 'sup_1373', 'Jocelyn Forged Inc.', 'Barbaguin, Meycauayan  City, Bulacan', '984-7777', '', 1),
(373, 'sup_1374', 'Power Industries Services Ltd', '', '', '', 1),
(374, 'sup_1375', 'Maximum Electronics & Communications, Inc.', 'No. 123 Unit C, Kamuning Rd., Near EDSA Kamuning, Quezon City', '412-7849 / 929-9511', '', 1),
(375, 'sup_1376', 'Macys Photo Video Store', 'A.S. Fortuna St., Banilad, Mandaue City, Cebu', '032 418-1008', '', 1),
(376, 'sup_1377', 'L & J General Merchandise', 'Bago City', '', '', 1),
(377, 'sup_1378', 'Qamtis Phils., Inc.', 'Km 14, West Service Road, Para?aque City', '823-4265 / 666-0467 / 703-3739', '', 1),
(378, 'sup_1379', 'CARVI- Upholstery & Home Supply', 'Gonzaga St., Bacolod City', '304 434-5020', '', 1),
(379, 'sup_1381', 'Medical Center Trading Corporation', 'Burgos-Lacson Street, Brgy.19, Bacolod City', '034 435-7415', '', 1),
(380, 'sup_1385', 'VTEC Industrial Enterprises', 'Door #2, Baron, Bldg., Gonzaga-Lacson st., Brgy.37, Bacolod City', '707-7496', '', 1),
(381, 'sup_1386', 'Javiero Hollowblock Factory', 'Bago city', '', '', 1),
(382, 'sup_1387', 'LinkFast Solutions Enterprise', 'Unit 306 Two princeway Bldg., 272 Montillano Street Alabang, Muntinlupa', '218-8273 / 09159668744 / 09202242088', '', 1),
(383, 'sup_1382', 'Burgos Market', 'Burgos Market, Bacolod City', '', '', 1),
(384, 'sup_1389', 'HiAdvance Philippines Incorporated', '3F Maga Center, San Antonio St., Paseo de Magallanes, Makati City', '729-4327 loc 109 / 09175579507', '', 1),
(385, 'sup_1390', 'Modbus Electrical Suplies Corp.', '7th Floor Unit C, The Big Orange Building, 328 EDSA Monumento, Caloocan City', '361-0500 / 697-8911', '', 1),
(386, 'sup_1391', 'D&L Solution Providers Corp.', '#211 Del Rio 2 Bldg., Corner BS Aquino-San Agustin Sts., Bacolod City', '(034) 431-3818', '', 1),
(387, 'sup_1392', 'Chemrez Technologies, Inc.', '65 Calle Industria, Bagumbayan, Quezon City', '635-0680', '', 1),
(388, 'sup_1393', 'Rainehans Trading', 'Brgy., Pansol Balara, Quezon City, Philippines', '(02) 756-0674 / 0917-400-46-54', '', 1),
(389, 'sup_1394', 'CIFRA Marketing Corporation', '4229 Gen. Mojica Street, Bangkal Makati City', '844-6732 / 844-7787', '', 1),
(390, 'sup_1395', 'Wise Industrial Systems, Inc.', 'Room 506, Goldwell Bldg., 930 Aurora Blvd.,  Cubao Quezone City', '930-4039 / 0918959-6854', '', 1),
(391, 'sup_1396', 'Goldtown Import', '160 M.H. Del Pilar Street Between 8th & 9th Ave., Caloocan City', '364-7840 / 365-8357', '', 1),
(392, 'sup_1397', 'LYS Hardware and Industrial Sales', 'Recto Ave., 266 Zone 24 Tondo, Manila', '252-9587 / 251-9126', '', 1),
(393, 'sup_1398', 'Philips Wire & Cable Co.', 'Philflex Bldg., 407 Dasmari?as St. Binondo, Manila', '241-8801 loc-108 & 107  (Ms. Leni / Mr. Ernesto Que)', '', 1),
(394, 'sup_1399', 'Kent International Trading Co., Inc.', '14 Brixton St. Brgy., Kapitolyo, Pasig City', '727-3011 to 16, Fax: 724-5627, email: sales@kitci.net', '', 1),
(395, 'sup_1400', 'Mega Masterlink Fabricator and Electrical Services Corp.', '26 I-Francisco St., Brgy., Maysan, Valenzuela City', '444-6747, 432-2578, Fax: 332-3832, 332-3818, email: orly_megamasterlink@yahoo.com', '', 1),
(396, 'sup_1401', 'Golden Electrical and Machinery Corp.', '1270 CM Recto Avenue, 299 Z 29, Binondo, Manila', '244-8125 / 8182 / 9995', '', 1),
(397, 'sup_1402', 'Systems Control Instrumentation Inc.', 'Unit 401 Common Goal Tower Finance Cor., Industry St., Madrigal Business Park, Alabang Muntinlupa City', '842-9957, Fax: 842-1281', '', 1),
(398, 'sup_1403', 'Fujitsu Philippines, Inc', '2/F United Life Building, A.Arnaiz Avenue, Legaspi village, Makati City', '841-8488', '', 1),
(399, 'sup_1439', 'Powercomp Industrial Sales and Services', '', '', '', 1),
(400, 'sup_1404', 'Sensor & Measuring Instrument Corp.', '8418 Mayapis St., San Antonio Village, Makati City', '757-3348, 728-6360, email: sensorsmcorp@yahoo.com', '', 1),
(401, 'sup_1405', 'AIC Industrial & Safety Supply Inc.', 'JG Master Bldg., Lopez Jaena St., Brgy. 20 Bacolod City', '(034) 433-8921, 458-8658, FAX (034) 432-3416', '', 1),
(402, 'sup_1406', 'Switch Industrial Sales Corporation', '1275 Benavidez St., Sta. Cruz, Manila', '251-2553 / 254-8128 / 254-8171, fax: 251-2551, email: siscorporation@gmail.com', '', 1),
(403, 'sup_1407', 'Wilcon Depot - Bacolod', 'Talisat City, Negros Occidental', '09178314284', '', 1);
INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `contact_number`, `terms`, `active`) VALUES
(404, 'sup_1408', 'Bacolod National Lumber Yard', 'P. Hernaez St., Bacolod City', '435-4454 / 433-9617', '', 1),
(405, 'sup_1409', 'Distribution & Control Products, Inc.', '74 P. Cruz Street San Jose, Mandaluyong City', '535-7644 to 46 - local 119, CP: 09176348537, FAX: 746-2215, POC: Mr. Jeric Bautista', '', 1),
(406, 'sup_1410', 'Bacolod Pro Sanicleaners Supply Center Inc.', 'Torres Bldg., Burgos St., Brgy 18, Bacolod City', '704-7983', '', 1),
(407, 'sup_1411', 'Yana Chemodities, Inc.', '151 Kaliraya St., Tatalon, Quezon City', '732-2329 / 731-3633 / 732-0163', '', 1),
(408, 'sup_1412', 'Vinsey Julip Enterprise', '1686 San Lazaro St., Sta. Cruz, Manila', '717-2369, Fax: 743-4855', '', 1),
(409, 'sup_1413', 'Top-Rigid Industrial Safety Supply, Inc.', '#9 West 4th St., West Triangle, Quezon City', '412-11-27 / 373-75-76 / 0917-8251063', '', 1),
(410, 'sup_1414', 'Zenith United Electric Corporation', '2/F Le Mar Ben II Bldg., 747 San Bernardo St., Sta Cruz, Manila', '734-5344 / 46 / 48 /736-1654, Fax: 733-6454', '', 1),
(411, 'sup_1415', 'Newton Electrical Equipment Co., Inc.', '#38 Oliveros Compound, F. Bautista St., Brgy. Ugong Valenzuela City', '983-7000 loc: 177 / 0917-8588638', '', 1),
(412, 'sup_1416', 'Georgetown Electrical Systems', '29 Kabignayan Street, Tatalon, 1113, Quezon City', '743-1906 / 781-0011', '', 1),
(413, 'sup_1417', 'Kingpoy Native Products', 'Bago Public Market, Bago City, Negros Occidental', '', '', 1),
(414, 'sup_1418', 'Amar Emporium Inc.', 'Cor. Locsin, San Sebastian St., Bacolod City', '', '', 1),
(415, 'sup_1419', 'Merlo Steel Poles and Accessories, Inc.', '#32 San Carlos Drive, Mataas na Lupa, Lipa City, Batangas', '043-756-1716 loc 702 / 09175512998 / 09989799238', '', 1),
(416, 'sup_1420', 'Lubri-Chem Philippines Distributors, Inc', '38 Gen. Malvar St., Caloocan City', '364-8484 / 463-5639', '', 1),
(417, 'sup_1421', 'Co Ban Kiat Hardware Inc.', 'Co Ban Kiat Bldg 11, 231 Juan Luna St., Binondo, Manila', '243-2730 / 243-1931 to 34', '', 1),
(418, 'sup_1422', 'Asell TGlobat Inc.', '40 London St., Capitol Brgy. Old Balara, Quezon City', '709-0842 / 951-9842', '', 1),
(419, 'sup_1423', 'Daily Doctors', 'Bacolod City', '435-2839', '', 1),
(420, 'sup_1424', 'MS Marketing', 'Brgy.37, Bacolod City', '', '', 1),
(421, 'sup_1424', 'Say Enterprises Incorporated', '1845-27C Pedro Gil St., Paco, Manila', '562-9887', '', 1),
(422, 'sup_1425', 'Primesolv Technologies Co.', 'Rm. 205 Felicidad Bldg. #23 MacArthur Highway Karuhatan, Valenzuela City', '734-9042 / 352-6781', '', 1),
(423, 'sup_1426', 'Pan Pacific', 'Pansico Bldg., 246 Escolta St., Manila', '242-8765 to 72 loc 6117', '', 1),
(424, 'sup_1427', 'Aurora (OA) Philippines, Inc.', 'Groundfloor, CW Home Depot, 2248, Chino Roces Ave, Makati City', '514-2728 / 511-8874 / 09258989955', '', 1),
(425, 'sup_1428', 'YHH Motor', 'Locsin St., Bacolod City', '704-7963', '', 1),
(426, 'sup_1429', 'ST Marketing Company', 'Hilado Ext., Capitol Shopping Center, Bacolod City', '434-0043', '', 1),
(427, 'sup_1430', 'MD Trade Power GmBH & Co., KG', 'Aite, Kreisstr 1, 39171, Suelzetal, Germany', '+49 3191-727-678-13, +49 391-727-678-11', '', 1),
(428, 'sup_1431', 'Le Price International Corporation', '3/F Leeleng Bldg., 718 Shaw Boulevard, Mandaluyong City', '878-0810 / 0917-896-9986', '', 1),
(429, 'sup_1457', 'Euroseal Industrial Parts Sales', '1272 Recto Ave., 299 Zone 29Binondo, Manila', '242-3547 / 242-384', '', 1),
(430, 'sup_1458', 'Panda Construction Supply Inc.,', '340-B G.Araneta Avenue, Barangay Dona Imelda, Quezon City', '416-8361/62; 715-7455; 715-3424; 242-8214', '', 1),
(431, 'sup_1459', 'Philippine Desiccants Inc.', '15 Jasmine St. South Green Park, Km. 18, West Service Road, Paranque City', '776-6177 / 821-0117-18 fax: 824-0257 / 776-5266', '', 1),
(432, 'sup_1460', 'MH Poly-Electromechs, Inc.', '11th Floor CyberOne Bldg., Eastwood Cyberpark, Bagumbayan, Quezon City', '366-8381 / 366-8341', '', 1),
(433, 'sup_1476', 'Gulf Combined Bearing  Philippines', '1050 Benavidez St., Binondo Manila', '241-1327 / 241-1328 / 241-1329', '', 1),
(434, 'sup_1434', 'Guan Yiac Hardware', '455 Tomas Pinpin street, Binondo,- Manila', '245-7022 / 245-8478 / 09178323222', '', 1),
(435, 'sup_1435', 'Emco Electrodyne Pvt.Ltd', 'D-87, Pahse-7, Indi. Area, Mohali-160055, Punjala, India', '+91 172 2236070, 5093070 / +91 172 2236070, 5093070', '', 1),
(436, 'sup_1436', 'Power Alliance Engineering Services', 'Blk.1/10 Lot 2 Phase 1 Main Ave. Pacita Complex 2, San Vicente San Pedro Laguna', '0916-659-0103 / 0917-812-6952', '', 1),
(437, 'sup_1432', 'Puregold Price Club, Inc', 'G/F Centroplex Mall, Cor Locsin-Gonzaga Sts., Barangay 21, Bacolod City', '', '', 1),
(438, 'sup_1437', 'Solid Mill Supply Co., Inc', '1264 Recto Ave, Santa Cruz, Manila', '244-8216 / 2564470', '', 1),
(439, 'sup_1438', 'Center Remnant Inc.', '134 Gov. Gatuslao St., Brgy. 12, Bacolod City', '434-6506', '', 1),
(440, '', 'Jose Leo Redoblo (ZITS)', '', '', '', 1),
(441, 'sup_1440', 'Industrial Welding Corporation', '10 R.Jacinto St., Canumay, Valenzuela City', '363-7865 to 68 / 294-2283 to 90', '', 1),
(442, 'sup_1498', 'Midway Parts Supply, Inc.', 'Cuadra St., Brgy. 21, Bacolod City', '434 9166 / 435 0720 / 708 8734', '', 1),
(443, 'sup_1499', 'Victory Radio Supply', 'Gov. Gatuslao St., Bacolod City', '433 9516', '', 1),
(444, 'sup_1500', 'Lancet Enterprises', '1130-A Industria St., Pandacan, Manila', '02 254 7292', '', 1),
(445, 'sup_14441', 'Option A Cycle Parts & Accessories', 'Door #3 AU Bldg, #29 Mabini St., Bacolod City', '', '', 1),
(446, 'sup_1445', 'Berovan Marketing Inc.', 'Burgos St., Bacolod City', '034 434-3686', '', 1),
(447, 'sup_1446', 'Sensing Technology Corporation', '457-B Boni Avenue, New Zanica, Mandaluyong City', '431-9323 / 533-5977 / 535-5647 / 09177753916', '', 1),
(448, 'sup_1447', 'Enex GmbH', 'Schnackenburgallee 116 25 525 Hamburg, Germany', '+49 0 40 / 54 72 16-0', '', 1),
(449, 'sup_1461', 'Motex Philippines Inc', 'Room 412, West City plaza, 66 West Avenue, Quezon City, Philippines', '374-7885 / 374-7894', '', 1),
(450, 'sup_1477', 'Belen Store', 'Bacolod City', '', '', 1),
(451, 'sup_1478', 'Ella Store, Burgos Market', 'Burgos Market, Bacolod City', '', '', 1),
(452, 'sup_1441', 'Gazpac Enterprise', '1451 Doroleo Jose St., Brgy. 314 Zone 031, Sta. Cruz, Manila', '731-6437', '', 1),
(453, 'sup_1479', 'CTRADIO Electronic, Inc.', 'Narra Avenue, Capitol Subd., Villamonte Bacolod City', '432-0851 / 435-0654', '', 1),
(454, 'sup_1448', 'Firstgear Industrial Suply', 'Lot 70A and Eusebio Arcade, Lacson St., Bacolod city', '034 432-9135', '', 1),
(455, 'sup_1449', 'Streetwire Electrical Supply', 'Door #6, Tiffany Bldg., Gonzaga St., Bacolod City', '435-0865', '', 1),
(456, 'sup_1450', 'Beyondworx Inc.', '889 Unit A, A.Bonifacio St., Balangisan 1, Quezon City', '', '', 1),
(457, 'sup_1452', 'Air Dynamic, Inc.', 'Suite 1521 Herrera Tower, 98 V.A, Rufino Cor. Valero St., Salcedo Village, Makati City', '753-2881', '', 1),
(458, 'sup_1453', 'Goodwill Technology & Industrial Corp.', '38 Gov. Pascual Ave. Cor. Univ., Ave., Potrero Malabon, Metro Manila', '361-2545;361-2676;447-2376', '', 1),
(459, 'sup_1454', 'Imperial Appliance Plaza', '69-2 Arante Ave., Bacolod City, Negros Occidental. 6100', '09070803246 / 495-0469', '', 1),
(460, 'sup_1462', 'Southern Controls Industrial Supply & Services Corp.', '2nd Floor S.P. Junction 2 Bldg., Brgy. San Antonio, National Highway, San Pedro Laguna', '02 735-8472 / 73 ; 09177962756', '', 1),
(461, 'sup_1463', 'Chris-Marine AB', 'Stenyxegatan 3, SE-213 76 Malmo, Sweden', '+46 40 6712600', '', 1),
(462, 'sup_1465', 'SG Kairos Mechanical Sales & Services Inc.', 'Unit 202, Do?a Lolita Bldg., 363 Rizal Avenue Ext., Caloocan City', '703-4537 / 330-4192 / 861-5359 / 09178541002', '', 1),
(463, 'sup_1480', 'RM Shell', '100 B.S. Aquino Drive, Bacolod City', '034-433-6038', '', 1),
(464, 'sup_1481	', 'Khaiyen and Khaila Lumer Merchandising', 'Masilingan, Bacolod City', '0916-408-0028 / 0943-200-3145', '', 1),
(465, 'sup_1482', 'Atlantic Water Store', 'Bacolod City', '', '', 1),
(466, 'sup_1483', 'Steelman Industrial Sales Corporation', '2960 Abad Santos Ave., Tondo, Manila, Metro Manila', '8743-8333, 8712-9292', '', 1),
(467, 'sup_1467', 'Optimum Prime Industrial Sales Corporation', '37+D Baler St., Brgy. Bungad, S.F.D., Quezon City', '7718-3501 / 7921-7746 / 7376-6466 / 7351-891 / 7415-8787 / 7411-6427', '', 1),
(468, 'sup_1468', 'Electrical & Equipment Sales Co., Inc.', '211 Katipunan Ave., Quezon City, Philippines', '9132662 / 9136189 / +639178198222', '', 1),
(469, 'sup_1469', 'Luvimar Fire & Safety Avenue Corp.', 'Tierra PlazaBldg., Cor. Rizal-Gatuslao St., Brgy.11, Bacolod City', '', '', 1),
(470, 'sup_1470', 'Digitone Electro Depot', 'Digitone Bldg., Luzuriaga-Mabini St., Brgy.29, Bacolod City', '434-5399', '', 1),
(471, 'sup_1472', 'Incalsys, Inc.', 'Km.29 Beverly Hills Subdivision, Ortigas Ave. Extension, Antipolo City, Rizal', '706-7872 to 73 / 706-7912 / 650-5638 Ext. 104 / 09178265878', '', 1),
(472, 'sup_1484', 'Lubritek Inc', 'Jovita St., Libertad, Bacolod City', '034 4351976 / 4351965', '', 1),
(473, 'sup_1485', 'GBIC Enterprises Inc.,', '941 Bernavidez St., Binondo, Manila', '8244-8401 / 8244-8413', '', 1),
(474, 'sup_1486', 'Chromar Uni-Trade', 'West Plaza Building, 66 West avenue, Quezon City, 1100 Metro Manila', '7949-2618 / 3412-8009', '', 1),
(475, '', 'Fotunato Lavadia', '', '', '', 1),
(476, 'sup_1487', 'Rosal Machine  Services', 'Purok Akishola, Brgy. Villamonte', '709-8419', '', 1),
(477, 'sup_1488', 'Westrade International Co., Inc.', '5th Flr., Unit 503 Rafles Corporate Center, Emerald Ave., Ortigas Center, Pasig City', '7900-5702 to 24', '', 1),
(478, 'sup_1489', 'Technopro Enterprises', '3rd Floor, BREB Bldg., Km 17 MacArthur Highway Malanday, Valenzuela City, Metro Manila', '8277-1390 /  85140-8701 / 8881-9142', '', 1),
(479, 'sup_1490', 'Discovery Electronics, Inc.', 'Cuenca-Gonzaga Bldg., San Juan St., Bacolod City', '434-4465', '', 1),
(480, 'sup_1491', 'SM Supermarket', 'Annex Building, South Wing-SM City, Bacolod', '', '', 1),
(481, 'sup_1493', 'Olympia Auto Parts', 'TPK Bldg., Gonzaga Street, Bacolod City', '435-4474 / 435-4475', '', 1),
(482, 'sup_1494', 'Windoor Glass andAluminum Supply', 'Rizal St., Bacolod City', '034-433-3121  / 709-0162', '', 1),
(483, 'sup_1495', 'Milmar', '274-2706 Narra Ave., B.C.', '434-0038', '', 1),
(484, 'sup_1496', 'Zenshin Systems Corporation', '25 G. Roxas St., Brgy. San Jose, Quezon City', '8365-0536 loc 148', '', 1),
(485, 'sup_1497', 'Pyromancer Fire Safety Products & Installation Services', '2nd Floor Do?a Manuela Bldg., Plazamart, Bacolod City', '034 700-1442 / 09202311673', '', 1),
(486, '', 'HR Bacolod', '', '', '', 1),
(487, 'sup_1501', 'TKI Industrial Parts Supply', 'Unit 1-N Acasel Bldg, Solar St., Corner Sales St., Quiapo Manila', '5313-6645', '', 1),
(488, 'sup_1502', 'Onward Communication and Services', '1157-D Marren Bldg., Quezon Avenue, Quezon City', '8374-1334 / 8371-5177', '', 1),
(489, 'sup_1503', 'Colours Foto', 'West Bridgeway SM City Bacolod, Negros Occidental', '09173086528', '', 1),
(490, 'sup_1504', 'Bacolod Wilmar Enterprises', '', '434-9038', '', 1),
(491, 'sup_1505', 'NNE Electrotrading Inc.', '1717 Mendoza St., Brgy. 338, Zone 034, Sta. Cruz, Manila', '8711-2627 / 8239-7612 /8711-0401 / 8524-0731 / 8711-2829 / 8624-7709', '', 1),
(492, 'sup_1506', 'A.M. Builders Depot', 'Chang Building, BS Aquino Drive, Capitol Shopping Center, BC', '034-709-0055', '', 1),
(493, 'sup_1507', 'Goal Team Trading', 'Quezon City, Metro Manila', '8709-2671 / 8365-1075', '', 1),
(494, 'sup_1508', 'Negros Bright Sun Trading', 'Lacson Corner Burgos Street, Barangay 19, Bacolod City, Negros 6100', '034 434-6845', '', 1),
(495, 'sup_1509', 'Puregold Libertad', '58 Mabini St., Bacolod City, 6100, Negros Occidental', '', '', 1),
(496, '', 'Guill-Bern Corporation', '#14 San Francisco Corner San Rafael St. Bo. Kapitolyo, Pasig City, 1603', '8633-9589 / 7746-0935 / 8632-9326 / 7746-0886 / 7746-1470', '50% DP upon PO, 50% before delivery, 7 days delivery time upon receipt of payment', 1),
(497, '', 'Golden Dragon Metal Products, Inc.', '285 Jose Rizal Street, Mandaluyong City, 1550 Metro Manila', '8531-8471', '50% DP, balance upon pick-up, Delivery Time 2 - 3 days upon receipt of PO', 1),
(498, 'sup_1510', 'Sanson Gas Station', '13.5 Km, Brgy. Taloc, Bago City Negros Occ.', '', '', 1),
(499, 'sup_1511', 'Gaudite Hardware & Construction Supply Store', 'Araneta St., Bago City', '4610-148', '', 1),
(500, 'Sup_1512', 'Gaisano Bacolod', 'Bacolod City', '', '', 1),
(501, 'sup_1513', 'Lectrix Solutions Electrical Supplies & Services Cebu', '#1 Montebello Road, Apas, Cebu City', '+639173153646 / +639173157931 / 032 343-4664', '', 1),
(502, 'sup_1514', 'TGW Organic', 'Lopues east Center, Carpark Area, Bacolod city', '09217911282', '', 1),
(503, 'sup_1515', 'Season Trading', 'The Atrium, Gonzaga St., Bacolod City', '', '', 1),
(504, 'sup_1516', 'Ladook Store', 'Bago City', '', '', 1),
(505, 'sup_1517', 'Ac & C Auto Parts', 'Araneta St., Bago City', '', '', 1),
(506, 'sup_1518', 'Cham Samco & Sons, Inc.', '500-508 Sto.Cristo st., Binondo, Manila', '8243-1561 to 68', '', 1),
(507, 'sup_1518', 'Jade Marine Inspectors & Adjusters Inc.', 'Unit 205, C.K. Sy Diamond Building, 156 Libertad St., Pasay City, Metro Manila', '8398-1600 / 8523-8207', '', 1),
(508, 'sup_1520', 'JNJ Instrumentation Sales & Services, Inc.', 'L34, B10, No.53, Acacia St., Evergreen Exec. Village, Antipolo City, Rizal', '213 6645 / 788 0910 / 0932-425-5887', '', 1),
(509, 'SUP_1521', 'Highway Tire Supply', 'Lacson St., Brgy. 38, Bacolod City', '(034) 433-1257', '', 1),
(510, 'SUP_1522', 'Royal Heirs 34 Oil Gas Inc.', 'Brgy. Sum ag, Negros Occidental', '', '', 1),
(511, 'SUP_1523', 'MHE-Demag (P) Inc.', 'Door No.4 Ground Flr., Mahogany St. Capitol Shopping, Bacolod City', '(034) 786-7500 / 441-9605', '', 1),
(512, 'SUP_1524', 'Ephraim Rice Mill', '', '', '', 1),
(513, 'SUP_1525', 'Alter Trade', 'Calumangan, Bago City', '', '', 1),
(514, 'SUP_1526', 'Gold Apex Tools and Hardware Co.', '125-A, 125 Gregorio Araneta Ave., Quezon City, 1113 Metro Manila', '(02) 8668-5818', '', 1),
(515, 'SUP_1527', 'Primateknica Corporation', 'Bldg. L4, JY&Sons Compound, Veterans Center, Western Bicutan, Taguig, 1630 Metro Manila', '(02) 8962-1483', '', 1),
(516, 'SUP_1531', 'Joy-T Furniture Marketing and Upholstery', 'Araneta St., Singcang, Bacolod City', '(034) 704-1158', '', 1),
(517, 'SUP_1528', 'Machinebanks'' Corporation', '482 Gregorio Araneta Ave., Quezon City, 113 Metro Manila', '(02) 8711-3751', '', 1),
(518, 'SUP_1529', 'Clean World Trading & Supplies Inc.', '117 Guadalupe St., Morning Breeze Subd., Brgy. 83, Caloocan City, 1400', '(02) 8442-5986', '', 1),
(519, 'SUP_1530', 'Native Store', 'Burgos Street, Bacolod City', '', '', 1),
(520, 'SUP_1532', 'Galaxy Marketing', '61-D 6th Street, Bacolod City', '(034) 433-0647', '', 1),
(521, 'SUP_1533', 'Jan Lamela', 'Calumangan, Bago City', '0945-354-0170', '', 1),
(522, 'SUP_1534', 'Fashion House Marketing Incorporated', 'Gonzaga St., Bacolod City', '', '', 1),
(523, '', 'Fyrelyn Industries, Inc.', 'Lot 10, Block 6, Sixto Street, San Miguel Compound, Tandang Sora, Quezon City', '935-3070 / 935-3072 / 935-2723 / 461-1039 / 461-1124 / 935-3109 (fax)', '', 1),
(524, 'sup_1535', 'Sasaki Auto Parts', 'Gonzaga-Lacson Sts., Bacolod City', 'Sir Romer: (034)4323207 / 09164678618', '', 1),
(525, 'sup_1536', 'The SM Store Bacolod', 'Reclamation Area, Bacolod City', '09469665967', 'COD', 1),
(526, 'sup_1537', 'Gaisano Grand Bacolod', 'Gatuslao St., Bacoloc City', '', '', 1),
(527, 'sup_1538', 'PC REM Computer Supply', 'JPC Bldg. Corner Hernaez St., Lizares Ave., Bacolod City', 'Stephen (034)700-9374, 445-9448, 0929-478-1874, 0961-611-6828', 'COD', 1),
(528, 'sup_1539', 'Houston Home Depot', 'Narra-Lopez Jaena Sts., Bacolod City', '(034) 434 5328', 'COD', 1),
(529, 'SUP_1540', 'Ceneco Employess Multi-Purpose Cooperative', 'Bacolod City', '', '', 1),
(530, 'SUP_1541', 'B. S. Pharma Drugs and Medical Supplies', 'Lacson Cor. Burgos Sts. Brgy. 19, Bacolod City', '(034) 434-4315', '', 1),
(531, 'SUP_1542', 'City Vet Trading', 'Mabini-Libertad St., Bacolod City', '(034) 434-0869', '', 1),
(532, 'SUP_1543', 'TLPJ Marketing Inc.', 'Blip Motors Inc. Bldg., Lacson St., Brgy. Mandalagan, Bacolod City, Negros 6100', '434-1795', '', 1),
(533, 'SUP_1544', 'JDN Pharmacy', '2 Burgos Ave., Bacolod City', '(034) 474 0561', '', 1),
(534, 'SUP_1545', 'Chris Sports Bacolod, Inc.', 'Ex 241 SM City Bacolod', '', '', 1),
(535, 'SUP_1546', 'Sportshouse Int''l Leisure Inc.', 'SM Bacolod', '', '', 1),
(536, 'SUP_1547', 'VCY Sales Corporation (Sum-ag)', 'Sum-ag, Negros Occidental', '(034) 445-2382', '', 0),
(537, 'SUP_1548', 'Aeshan Motor Oils Trading', 'Brgy. 33 Amapola St. Bacolod City', '09303602291', '', 0),
(538, 'SUP_1549', 'Lopues Mandalagan Corporation', 'Lacson St. Bacolod City', '(034) 441-0411', '', 0),
(539, 'SUP_1550', 'Synergy Sales International Corporation', '2nd Flr., Door 2, 7-C Building, Lacson Extension, Bacolod City', '(034) 434-8024', '', 0),
(540, 'SUP_1551', 'Kametsino', 'San Juan St., Bacolod City, 6100 Negros Occidental', '09199902268', '', 1),
(541, 'SUP_1552', 'PRESIDIUM.PH CORPORATION', 'Unit 10K, 10th Flr., Cyber One Bldg. 11 Eastwood Ave., Eastwood City, Cyberpark, Bagumbayan, Quezon City', '8464-9339', '', 1),
(542, 'SUP_1553', 'Hardware & Industrial Solutions, Inc.', '58 Madison St., Mandaluyong City', '(02) 8651-6377', '', 1),
(543, 'SUP_1554', 'Blue Sapphire Telecoms Consultancy & Services, Inc.', 'Unit 1101 Entrata Tower 1, 2609 Civic Drive Filinvest Alabang, Muntinlupa', '(02) 846-7876', '', 1),
(544, 'SUP_1555', 'Unitop General Merchandise Inc.', 'Gonzaga St., Bacolod City', '(034) 433-8098', '', 1),
(545, 'SUP_1556', 'New China Enterprises, Inc.', '55 Luzuriaga St., Bacolod, 6100 Negros Occidental', '(034) 435-0201', '', 1),
(546, 'SUP_1557', 'Aces Aluminum', 'Araneta Ave., Bacolod City', '(034) 444-2146 / 444-0246', '', 1),
(547, 'SUP_1558', 'NHK Glass and Aluminum Enterprises', '560 B.S. Aquino Drive, Bacolod City', '(034) 432-3106', '', 1),
(548, 'SUP_1559', 'Citi Hardware - Mandalagan', '24th Lacson St., Bacolod City', '034 432-3944', '', 1),
(549, 'SUP_1560', 'Wescor Transformer Corporation', '10 Tikling St., Villilia Village, Novaliches, Quezon City, Metro Manila', '02 8930-7113 / 890-6983 - 3454 - 1412', '', 1),
(550, 'SUP_1561', 'Systems Controls Instruments, Inc.', 'Unit 401 Common Goal Tower Finance corner Industry Streets, Madrigal Business Park, Alabang, Muntinlupa City, 1770, Philippines', '(02) 8842-9957; 8850-4115; 809-0558; 842-9910', '', 1),
(551, 'SUP_1562', 'Electroweld Manufacturing Corporation', '249 Rizal Ave., Extension, cor. 7th Ave., Grace Park Caloocan City, Metro Manila', '(02) 8361-8881 / 8361-8889', '', 1),
(552, 'SUP_1563', 'Greatphil Enterprises Inc.', 'No. 1807 Maria Clara Street, Sampaloc, Manila', '', '', 1),
(553, 'SUP_1564', 'Appliance Centrum', 'Rizal-Lacson Sts., Bacolod City', '(034) 434 6995', '', 1),
(554, 'SUP_1565', 'Venancio Arpal Tailoring', 'Purok San Roque, Brgy. Tangub, Bacolod City', '0922-701-2326 / 0947-7696-285 / 445-1726', '', 1),
(555, 'SUP_1566', 'Architect Industrial Supply', '1580 A. Lorenzo Jr. Sta. Cruz, Manila', '(02) 8251-9991 / 09288689113', '', 1),
(556, 'SUP_1567', 'EMS Enterprises', 'Araneta St., Bago City, Negros Occidental', '', '', 0),
(557, 'SUP_1568', 'SM Appliance Center', 'Father M. Ferrero St, Bacolod City', '034-468-0080', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_items`
--

CREATE TABLE IF NOT EXISTS `supplier_items` (
`si_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `catalog_no` varchar(100) DEFAULT NULL,
  `brand_id` int(11) NOT NULL DEFAULT '0',
  `serial_id` int(11) NOT NULL DEFAULT '0',
  `item_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uom`
--

CREATE TABLE IF NOT EXISTS `uom` (
`unit_id` int(11) NOT NULL,
  `unit_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom`
--

INSERT INTO `uom` (`unit_id`, `unit_name`) VALUES
(1, 'bag/s'),
(2, 'bar/s'),
(3, 'bot/s'),
(4, 'box/s'),
(5, 'can/s'),
(6, 'cart/s'),
(7, 'cont/s'),
(8, 'cu.m'),
(9, 'cyl/s'),
(10, 'drum/s'),
(11, 'feet'),
(12, 'gal/s'),
(13, 'kg/s'),
(14, 'lgth/s'),
(15, 'ltr/s'),
(16, 'mtr/s'),
(17, 'pack/s'),
(18, 'pad/s'),
(19, 'pail/s'),
(20, 'pair/s'),
(21, 'pc/s'),
(22, 'ream/s'),
(23, 'roll/s'),
(24, 'sack/s'),
(25, 'set/s'),
(26, 'sht/s'),
(27, 'tab/s'),
(28, 'tube/s'),
(29, 'unit/s'),
(30, 'grm/s'),
(31, 'assy/s'),
(32, 'lot/s'),
(33, 'Kit/s'),
(34, 'yard/s');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `fullname`, `password`) VALUES
(5, 'admin', 'admin', 'ca62ab99242eec2ab2c244c0fff42760'),
(12, 'benjie', 'Benjie Villanuaeva', 'benjie'),
(13, 'melvin', 'Melvin Dimaala', 'melvin'),
(14, 'mark', 'Mark Gil Justiniano', 'mark');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE IF NOT EXISTS `warehouse` (
`warehouse_id` int(11) NOT NULL,
  `warehouse_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_rights`
--
ALTER TABLE `access_rights`
 ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
 ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `bin`
--
ALTER TABLE `bin`
 ADD PRIMARY KEY (`bin_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
 ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`department_id`), ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
 ADD PRIMARY KEY (`employee_id`), ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `enduse`
--
ALTER TABLE `enduse`
 ADD PRIMARY KEY (`enduse_id`), ADD KEY `enduse_id` (`enduse_id`);

--
-- Indexes for table `gp_series`
--
ALTER TABLE `gp_series`
 ADD PRIMARY KEY (`gp_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
 ADD PRIMARY KEY (`group_id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `issuance_details`
--
ALTER TABLE `issuance_details`
 ADD PRIMARY KEY (`is_id`), ADD KEY `is_id` (`is_id`), ADD KEY `issuance_id` (`issuance_id`), ADD KEY `rq_id` (`rq_id`), ADD KEY `item_id` (`item_id`), ADD KEY `supplier_id` (`supplier_id`), ADD KEY `catalog_no` (`catalog_no`), ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `issuance_head`
--
ALTER TABLE `issuance_head`
 ADD PRIMARY KEY (`issuance_id`), ADD UNIQUE KEY `mif_no` (`mif_no`), ADD KEY `issuance_id` (`issuance_id`), ADD KEY `mif_no_2` (`mif_no`), ADD KEY `mreqf_no` (`mreqf_no`), ADD KEY `request_id` (`request_id`), ADD KEY `issue_date` (`issue_date`), ADD KEY `pr_no` (`pr_no`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`item_id`), ADD KEY `item_id` (`item_id`), ADD KEY `category_id` (`category_id`), ADD KEY `subcat_id` (`subcat_id`), ADD KEY `item_name` (`item_name`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
 ADD PRIMARY KEY (`cat_id`), ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `item_subcat`
--
ALTER TABLE `item_subcat`
 ADD PRIMARY KEY (`subcat_id`), ADD KEY `subcat_id` (`subcat_id`), ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
 ADD PRIMARY KEY (`location_id`), ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `pn_series`
--
ALTER TABLE `pn_series`
 ADD PRIMARY KEY (`pn_id`), ADD KEY `pn_id` (`pn_id`);

--
-- Indexes for table `purpose`
--
ALTER TABLE `purpose`
 ADD PRIMARY KEY (`purpose_id`), ADD KEY `purpose_id` (`purpose_id`);

--
-- Indexes for table `rack`
--
ALTER TABLE `rack`
 ADD PRIMARY KEY (`rack_id`), ADD KEY `rack_id` (`rack_id`);

--
-- Indexes for table `receive_details`
--
ALTER TABLE `receive_details`
 ADD PRIMARY KEY (`rd_id`), ADD KEY `rd_id` (`rd_id`), ADD KEY `receive_id` (`receive_id`), ADD KEY `pr_no` (`pr_no`), ADD KEY `department_id` (`department_id`), ADD KEY `enduse_id` (`enduse_id`), ADD KEY `purpose_id` (`purpose_id`);

--
-- Indexes for table `receive_head`
--
ALTER TABLE `receive_head`
 ADD PRIMARY KEY (`receive_id`), ADD UNIQUE KEY `mrecf_no` (`mrecf_no`), ADD KEY `receive_id` (`receive_id`), ADD KEY `mrecf_no_2` (`mrecf_no`);

--
-- Indexes for table `receive_items`
--
ALTER TABLE `receive_items`
 ADD PRIMARY KEY (`ri_id`), ADD KEY `ri_id` (`ri_id`), ADD KEY `rd_id` (`rd_id`), ADD KEY `receive_id` (`receive_id`), ADD KEY `po_no` (`po_no`), ADD KEY `supplier_id` (`supplier_id`), ADD KEY `item_id` (`item_id`), ADD KEY `brand_id` (`brand_id`), ADD KEY `catalog_no` (`catalog_no`), ADD KEY `local_mnl` (`local_mnl`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
 ADD PRIMARY KEY (`reminder_id`), ADD KEY `reminder_id` (`reminder_id`);

--
-- Indexes for table `request_head`
--
ALTER TABLE `request_head`
 ADD PRIMARY KEY (`request_id`), ADD UNIQUE KEY `mreqf_no` (`mreqf_no`), ADD KEY `request_id` (`request_id`), ADD KEY `mreqf_no_2` (`mreqf_no`), ADD KEY `pr_no` (`pr_no`), ADD KEY `type` (`type`);

--
-- Indexes for table `request_items`
--
ALTER TABLE `request_items`
 ADD PRIMARY KEY (`rq_id`), ADD KEY `rq_id` (`rq_id`), ADD KEY `request_id` (`request_id`), ADD KEY `item_id` (`item_id`), ADD KEY `supplier_id` (`supplier_id`), ADD KEY `catalog_no` (`catalog_no`), ADD KEY `brand_id` (`brand_id`), ADD KEY `si_id` (`si_id`), ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `restock`
--
ALTER TABLE `restock`
 ADD PRIMARY KEY (`restock_id`), ADD KEY `restock_id` (`restock_id`), ADD KEY `restock_date` (`restock_date`), ADD KEY `pr_no` (`pr_no`), ADD KEY `item_id` (`item_id`), ADD KEY `supplier_id` (`supplier_id`), ADD KEY `brand_id` (`brand_id`), ADD KEY `catalog_no` (`catalog_no`), ADD KEY `purpose_id` (`purpose_id`), ADD KEY `department_id` (`department_id`), ADD KEY `enduse_id` (`enduse_id`), ADD KEY `mrwf_no` (`mrwf_no`);

--
-- Indexes for table `restock_details`
--
ALTER TABLE `restock_details`
 ADD PRIMARY KEY (`rdetails_id`), ADD KEY `rdetails_id` (`rdetails_id`), ADD KEY `rhead_id` (`rhead_id`), ADD KEY `serial_id` (`serial_id`), ADD KEY `item_id` (`item_id`), ADD KEY `supplier_id` (`supplier_id`), ADD KEY `brand_id` (`brand_id`), ADD KEY `catalog_no` (`catalog_no`);

--
-- Indexes for table `restock_head`
--
ALTER TABLE `restock_head`
 ADD PRIMARY KEY (`rhead_id`), ADD KEY `rhead_id` (`rhead_id`), ADD KEY `department_id` (`department_id`), ADD KEY `purpose_id` (`purpose_id`), ADD KEY `enduse_id` (`enduse_id`), ADD KEY `pr_no` (`pr_no`), ADD KEY `from_pr` (`from_pr`), ADD KEY `mrwf_no` (`mrwf_no`), ADD KEY `saved` (`saved`);

--
-- Indexes for table `serial_number`
--
ALTER TABLE `serial_number`
 ADD PRIMARY KEY (`serial_id`), ADD KEY `serial_id` (`serial_id`), ADD KEY `si_id` (`si_id`);

--
-- Indexes for table `signatories`
--
ALTER TABLE `signatories`
 ADD PRIMARY KEY (`signatory_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`supplier_id`), ADD KEY `supplier_id` (`supplier_id`), ADD KEY `active` (`active`);

--
-- Indexes for table `supplier_items`
--
ALTER TABLE `supplier_items`
 ADD PRIMARY KEY (`si_id`), ADD KEY `item_id` (`item_id`), ADD KEY `si_id` (`si_id`), ADD KEY `item_id_2` (`item_id`), ADD KEY `supplier_id` (`supplier_id`), ADD KEY `catalog_no` (`catalog_no`), ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `uom`
--
ALTER TABLE `uom`
 ADD PRIMARY KEY (`unit_id`), ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
 ADD PRIMARY KEY (`warehouse_id`), ADD KEY `warehouse_id` (`warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_rights`
--
ALTER TABLE `access_rights`
MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bin`
--
ALTER TABLE `bin`
MODIFY `bin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1743;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `enduse`
--
ALTER TABLE `enduse`
MODIFY `enduse_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=418;
--
-- AUTO_INCREMENT for table `gp_series`
--
ALTER TABLE `gp_series`
MODIFY `gp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `issuance_details`
--
ALTER TABLE `issuance_details`
MODIFY `is_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `issuance_head`
--
ALTER TABLE `issuance_head`
MODIFY `issuance_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `item_subcat`
--
ALTER TABLE `item_subcat`
MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pn_series`
--
ALTER TABLE `pn_series`
MODIFY `pn_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purpose`
--
ALTER TABLE `purpose`
MODIFY `purpose_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rack`
--
ALTER TABLE `rack`
MODIFY `rack_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `receive_details`
--
ALTER TABLE `receive_details`
MODIFY `rd_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `receive_head`
--
ALTER TABLE `receive_head`
MODIFY `receive_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `receive_items`
--
ALTER TABLE `receive_items`
MODIFY `ri_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
MODIFY `reminder_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request_head`
--
ALTER TABLE `request_head`
MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request_items`
--
ALTER TABLE `request_items`
MODIFY `rq_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `restock`
--
ALTER TABLE `restock`
MODIFY `restock_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `restock_details`
--
ALTER TABLE `restock_details`
MODIFY `rdetails_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `restock_head`
--
ALTER TABLE `restock_head`
MODIFY `rhead_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `serial_number`
--
ALTER TABLE `serial_number`
MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `signatories`
--
ALTER TABLE `signatories`
MODIFY `signatory_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=558;
--
-- AUTO_INCREMENT for table `supplier_items`
--
ALTER TABLE `supplier_items`
MODIFY `si_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uom`
--
ALTER TABLE `uom`
MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
MODIFY `warehouse_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
