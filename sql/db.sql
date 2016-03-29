--
-- Table structure for table `counties`
--

CREATE TABLE IF NOT EXISTS `counties` (
  `countyid` int(11) NOT NULL AUTO_INCREMENT,
  `countyname` varchar(100) NOT NULL,
  PRIMARY KEY (`countyid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`countyid`, `countyname`) VALUES
(1, 'Nairobi'),
(2, 'Baringo'),
(3, 'Bomet'),
(4, 'Machakos'),
(5, 'mombasa'),
(6, 'Kisumu'),
(7, 'nyeri'),
(8, 'Kakamega'),
(9, 'Uasin Gishu '),
(10, 'Nandi'),
(11, 'marsabit'),
(12, 'Makueni'),
(13, 'Siaya'),
(14, 'Bungoma'),
(15, 'Tharaka Nithi'),
(16, 'Elgeyo Marakwet'),
(17, 'muranga'),
(18, 'Nakuru'),
(19, 'Busia'),
(20, 'Embu'),
(21, 'garissa'),
(22, 'isiolo'),
(23, 'Kajiado'),
(24, 'Kericho'),
(25, 'kiambu'),
(26, 'kilifi'),
(27, 'kirinyaga'),
(28, 'kisii'),
(29, 'Kitui'),
(30, 'kwale'),
(31, 'Laikipia'),
(32, 'lamu'),
(33, 'Samburu'),
(34, 'mandera'),
(35, 'meru'),
(36, 'migori'),
(37, 'taita taveta'),
(38, 'tana river'),
(39, 'Trans Nzoia'),
(40, 'Turkana'),
(41, 'Vihiga '),
(42, 'Wajir'),
(43, 'West Pokot'),
(44, 'Homa Bay'),
(45, 'Nyandarua'),
(46, 'Nyamira'),
(47, 'Narok');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `sendermail` varchar(50) NOT NULL,
  `feedback` varchar(300) NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `sendermail`, `feedback`) VALUES
(1, 'patchebby@gmail.com', 'fghj'),
(2, 'patchebby@gmail.com', 'fghj'),
(3, 'patchebby@gmail.com', 'fghj'),
(4, 'patchebby@gmail.com', 'fghj'),
(5, 'patchebby@gmail.com', 'fghjk'),
(6, 'patchebby@gmail.com', 'fghjk');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE IF NOT EXISTS `hospitals` (
  `hospitalid` int(11) NOT NULL AUTO_INCREMENT,
  `hospitalname` varchar(100) NOT NULL,
  `countyid` int(11) NOT NULL,
  `levelid` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`hospitalid`),
  KEY `hospitals_ibfk_1` (`countyid`),
  KEY `hospitals_ibfk_2` (`levelid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`hospitalid`, `hospitalname`, `countyid`, `levelid`, `latitude`, `longitude`, `status`) VALUES
(1, 'Kenyatta National Hospital (KNH)', 1, 6, -1.301013, 36.805004, 1),
(2, 'Moi Teaching and Referral Hospital (MTRH)', 9, 6, 0.511551, 35.278233, 1),
(3, 'Nairobi West Hospital', 1, 7, -1.306691, 36.823544, 1),
(4, 'Mbagathi District Hospital', 1, 4, -1.308752, 36.801708, 1),
(5, 'Thika Level 5 Hospital', 25, 5, -1.041609, 37.076904, 1),
(6, 'Ruiru Sub-District Hospital', 25, 4, -1.144542, 36.95369, 1),
(7, 'Kiambu District Hospital', 25, 4, -1.171267, 36.828033, 1),
(8, 'Kihara Sub-District Hospital', 25, 4, -1.216676, 36.774952, 1),
(9, 'Igegania Health Center', 25, 3, -0.973879, 36.926544, 1),
(10, 'Gatundu District Hospital', 25, 4, -1.015183, 36.903934, 1),
(11, 'Nyathuna Sub-District Hospital', 25, 4, -1.186055, 36.682549, 1),
(12, 'Tigoni District Hospital', 25, 4, -1.127812, 36.666588, 1),
(13, 'Murang''a District Hospital', 17, 4, -0.718727, 37.158947, 1),
(14, 'Muriranjas  Hospital', 17, 3, -0.746615, 36.969894, 1),
(15, 'Kirwara Health Centre', 17, 3, -0.92955, 36.940899, 1),
(16, 'Kerugoya District Hospital', 27, 4, -0.504501, 37.273895, 1),
(17, 'Kianyaga Sub-District Hospital', 27, 4, -0.500896, 37.35461, 1),
(18, 'Mt. Kenya Hospital', 7, 4, -0.426162, -0.426162, 1),
(19, 'Karatina District Hospital', 7, 4, -0.475765, 37.128586, 1),
(20, 'Mukurwe-ini Sub-District Hospital', 7, 4, -0.562068, 37.042168, 1),
(21, 'Othaya District Hospital', 7, 4, -0.542876, 36.939598, 1),
(22, 'Nyahururu District Hospital', 45, 4, 0.038028, 36.359509, 1),
(23, 'Ol''kalou District Hospital', 45, 4, -0.256104, 36.372334, 1),
(24, 'Port Reitz District Hospital', 5, 4, -4.039151, 39.598579, 1),
(25, 'Tudor Sub-District Hospital', 5, 4, -4.040663, 39.662098, 1),
(26, 'Likoni Sub-District Hospital', 5, 4, -4.085052, 39.653214, 1),
(27, 'Msambweni District Hospital', 30, 4, -4.463903, 39.475765, 1),
(28, 'Kinango District Hospital', 30, 4, -4.134985, 39.315845, 1),
(29, 'Kwale District Hospital', 30, 4, -4.175147, 39.453087, 1),
(30, 'Kilifi District Hospital', 26, 4, -3.627962, 39.853474, 1),
(31, 'Malindi District Hospital', 26, 4, -3.226465, 40.122841, 1),
(32, 'Mariakani District Hospital', 26, 4, -3.863157, 39.469959, 1),
(33, 'Bamba Sub-District Hospital', 26, 4, -3.542566, 39.523129, 1),
(34, 'Hola District Hospital', 38, 4, -1.396279, 39.949207, 1),
(35, 'Ngao District Hospital', 38, 4, 18.755587, 99.980133, 1),
(36, 'Lamu District Hospital', 32, 4, -2.285422, 40.908245, 1),
(37, 'Mpeketoni Sub-District Hospital', 32, 4, -2.391305, 40.695061, 1),
(38, 'Wesu District Hospital', 37, 4, -3.40975, 38.352798, 1),
(39, 'Moi (Voi) District Hospital', 37, 4, -3.389318, 38.557335, 1),
(40, 'Taveta District Hospital', 37, 4, -3.394156, 37.67524, 1),
(41, 'Mwambirwa Sub-District Hospital', 37, 4, -3.352858, 38.429352, 1),
(42, 'Marsabit District Hospital', 11, 4, 2.323738, 37.988819, 1),
(43, 'Moyale District Hospital', 11, 4, 3.522914, 39.055187, 1),
(44, 'Isiolo District Hospital', 22, 4, 0.35498, 37.585129, 1),
(45, 'Meru Level 5 Hospital', 35, 5, 0.050978, 37.652527, 1),
(46, 'Githongo Sub-District Hospital', 35, 3, -0.005466, 37.590492, 1),
(47, 'Mikumbune Sub-District Hospital', 35, 3, -0.078009, 37.615944, 1),
(48, 'Kanyakine Sub-District Hospital', 35, 4, -0.129277, 37.673359, 1),
(49, 'Mutuati Sub-District Hospital', 35, 4, 0.382974, 37.978664, 1),
(50, 'Nyambene District Hospital', 35, 4, 0.235267, 37.873348, 1),
(51, 'Chuka District Hospital', 15, 4, -0.329347, 37.653976, 1),
(52, 'Tharaka (Marimanti) District Hospital', 15, 4, -0.158781, 37.973171, 1),
(53, 'Annex Hospital Nakuru', 18, 4, -0.281779, 36.077297, 1),
(54, 'Naivasha District Hospital', 18, 4, -0.718543, 36.436275, 1),
(55, 'Gilgil General Hospital', 18, 4, -0.40064, 36.022957, 1),
(56, 'Olenguruone Sub-District Hospital', 18, 4, -0.591154, 35.683434, 1),
(57, 'Molo Hospital', 18, 4, -0.248055, 35.733665, 1),
(58, 'Bahati District Hospital', 18, 4, -0.170481, 36.121136, 1),
(59, 'Narok District Hospital', 47, 4, -1.084498, 35.864998, 1),
(60, 'Kilgoris District Hospital', 47, 4, -1.005007, 34.877144, 1),
(61, 'Kajiado District Hospital', 23, 4, -1.84214, 36.786346, 1),
(62, 'Loitoktok Sub-District Hospital', 23, 4, -2.924648, 37.501472, 1),
(63, 'Ngong Sub-District Hospital', 23, 4, -1.364894, 36.651791, 1),
(64, 'Kericho District Hospital', 24, 4, -0.371623, 35.277946, 1),
(65, 'Londiani District Hospital', 24, 4, -0.17518, 35.58881, 1),
(66, 'Kipkelion Sub-District Hospital', 24, 3, -0.187813, 35.412052, 1),
(67, 'Roret Sub-District Hospital', 24, 3, -0.504179, 35.098251, 1),
(68, 'Cheptalal Sub-District Hospital', 3, 3, -0.601844, 35.358562, 1),
(69, 'Longisa District Hospital', 3, 4, -0.860726, 35.388359, 1),
(70, 'Kapkatet District Hospital', 3, 4, -0.629754, 35.195034, 1),
(71, 'Malava District Hosptial', 8, 4, 0.448311, 34.851574, 1),
(72, 'Lumakanda District Hospital', 8, 4, 0.634737, 34.974049, 1),
(73, 'Matunda Sub-District Hospital', 8, 4, 0.825593, 35.113323, 1),
(74, 'Butere District Hospital', 8, 4, 0.220246, 34.497532, 1),
(75, 'Matungu Sub-District Hospital', 8, 4, 0.383961, 34.471889, 1),
(76, 'Vihiga District Hospital', 41, 4, 0.079045, 34.720238, 1),
(77, 'Bungoma District Hospital', 14, 4, 0.572803, 34.558193, 1),
(78, 'Naitiri Sub-District Hospital', 14, 4, 0.750863, 34.892921, 1),
(79, 'Webuye District Hospital', 14, 4, 0.612952, 34.762154, 1),
(80, 'Mt. Elgon District Hospital', 14, 4, 1.024856, 35.002262, 1),
(81, 'Cheptais Sub-District Hospital', 14, 4, 0.8024, 34.459885, 1),
(82, 'Busia District Hospital', 19, 4, 0.460076, 34.102665, 1),
(83, 'Khunyangu Sub-District Hospital', 19, 4, 0.082772, 34.310661, 1),
(84, 'Teso District Hospital (Kocholia)', 19, 4, 0.619758, 34.343075, 1),
(85, 'Alupe Leprosy Hospital', 19, 4, 0.496187, 34.131329, 1),
(86, 'Siaya District Hospital', 13, 4, 0.063959, 34.284878, 1),
(87, 'Yala Sub-District Hospital', 13, 4, 0.093303, 34.532475, 1),
(88, 'Ambira Sub-District Hospital', 13, 3, 0.168748, 34.239792, 1),
(89, 'Bondo District Hospital', 13, 4, -0.094405, 34.2729, 1),
(90, 'Madiany Sub-District Hospital', 13, 4, -0.284072, 34.320652, 1),
(91, 'Kisumu District Hospital', 6, 4, -0.105371, 34.580917, 1),
(92, 'Victoria Sub-District Hospital', 6, 4, -0.11105, 34.750137, 1),
(93, 'Chulaimbo Sub-District Hospital', 6, 4, -0.037945, 34.636215, 1),
(94, 'Kombewa Sub-District Hospital', 6, 4, -0.103514, 34.516216, 1),
(95, 'Nyando District Hospital', 6, 4, -0.31302, 34.935482, 1),
(96, 'Muhoroni Sub-District Hospital', 6, 4, -0.15376, 35.197937, 1),
(97, 'Masogo Sub-District Hospital', 6, 4, -0.15376, 35.197937, 1),
(98, 'Ahero Sub-District Hospital', 6, 4, -0.173472, 34.921421, 1),
(99, 'Kianjokoma Sub-District Hospital', 20, 4, -0.397401, 37.501266, 1),
(100, 'Runyenjes District Hospital', 20, 4, -0.425046, 37.570454, 1),
(110, 'Kitui District Hospital', 29, 4, -1.369995, 38.010357, 1),
(111, 'Mwingi District Hospital', 29, 4, -0.941574, 38.064529, 1),
(112, 'Migwani Sub-District Hospital', 29, 4, -1.095171, 38.0145, 1),
(113, 'Machakos Level 5 Hospital', 4, 5, -1.523485, 37.264194, 1),
(114, 'Kangundo District Hospital', 4, 5, -1.298963, 37.343967, 1),
(115, 'Kathiani Sub-District Hospital', 4, 4, -1.413172, 37.326714, 1),
(116, 'Mwala Sub-District Hospital', 4, 4, -1.351365, 37.44854, 1),
(117, 'Matuu Sub-District Hospital', 4, 4, -1.151717, 37.535137, 1),
(118, 'Makueni District Hospital', 12, 4, -2.280831, 37.822311, 1),
(119, 'Makindu District Hospital', 12, 4, -2.283338, 37.823193, 1),
(120, 'Nunguni Health Center', 12, 3, -1.786105, 37.358307, 1),
(121, 'Lodwar District Hospital', 40, 4, 3.122627, 35.598812, 1),
(122, 'Lopiding District Hospital', 40, 4, 4.202263, 34.381405, 1),
(123, 'Lokitaung Sub-District Hospital', 40, 4, 4.26231, 35.752316, 1),
(124, 'Kapenguria District Hospital', 43, 4, 1.237582, 35.119617, 1),
(125, 'Kacheliba Mission Hospital', 43, 4, 1.481828, 35.007843, 1),
(126, 'Kitale Referral Hospital', 39, 5, 1.004865, 34.994186, 1),
(127, 'Ziwa Sub-District Hospital', 9, 4, 0.513845, 35.27874, 1),
(128, 'Iten District Hospital', 16, 4, 0.6741, 35.498672, 1),
(129, 'KamwosorDispensary', 16, 3, 0.121098, 35.575027, 1),
(130, 'Kocholwo Hospital', 16, 4, 0.227797, 35.659637, 1),
(131, 'Kapsabet District Hospital', 10, 4, 0.202244, 35.10017, 1),
(132, 'Nandi Hills District Hospital', 10, 4, 0.10635, 35.17775, 1),
(133, 'Meteitei Sub-District Hospital', 10, 4, 0.005456, 35.305725, 1),
(134, 'Kabarnet District Hospital', 2, 4, 0.4869, 35.741497, 1),
(135, 'Marigat Sub-District', 2, 4, 0.469049, 35.981422, 1),
(136, 'Eldama Ravine District Hospital', 2, 4, 0.046375, 35.722401, 1),
(137, 'Nanyuki District Hospital', 31, 4, 0.021484, 37.069962, 1),
(138, 'Rumuruti Sub-District Hosptial', 31, 4, 0.27153, 36.531075, 1),
(139, 'Homa-Bay District Hospital', 44, 4, -0.53376, 34.459572, 1),
(140, 'Ndhiwa Sub-District Hospital', 44, 4, -0.728396, 34.363865, 1),
(141, 'Rachuonyo District Hospital', 44, 4, -0.505847, 34.731403, 1),
(142, 'The Mater Hospital', 1, 7, -1.307273, 36.83165, 1),
(143, 'The Karen Hospital', 1, 7, -1.336058, 36.7239, 1),
(144, 'The Nairobi Hospital', 1, 7, -1.295445, 36.802944, 1),
(145, 'Aga khan Hospital', 1, 7, -1.261261, 36.805733, 1);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `levelid` int(11) NOT NULL AUTO_INCREMENT,
  `levelname` varchar(100) NOT NULL,
  PRIMARY KEY (`levelid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`levelid`, `levelname`) VALUES
(1, 'community'),
(2, 'dispensaries'),
(3, 'health centres'),
(4, 'district and sub—district hospitals'),
(5, 'provincial hospitals'),
(6, 'national referral hospitals'),
(7, 'private');

-- --------------------------------------------------------

--
-- Table structure for table `specialists`
--

CREATE TABLE IF NOT EXISTS `specialists` (
  `specialistid` int(11) NOT NULL AUTO_INCREMENT,
  `specialistname` varchar(100) NOT NULL,
  `hospitalid` int(11) NOT NULL,
  PRIMARY KEY (`specialistid`),
  KEY `specialists_ibfk_1` (`hospitalid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
