-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2015 at 06:18 AM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vairahawa`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) NOT NULL,
  `busn` varchar(100) NOT NULL,
  `spentTitle` varchar(300) NOT NULL,
  `buying` varchar(300) NOT NULL,
  `panNo` varchar(50) NOT NULL,
  `paymentReceiver` varchar(300) NOT NULL,
  `billDate` date NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `onDate` date NOT NULL,
  `publish` varchar(3) NOT NULL,
  `weight` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `description`, `busn`, `spentTitle`, `buying`, `panNo`, `paymentReceiver`, `billDate`, `amount`, `remarks`, `onDate`, `publish`, `weight`) VALUES
(8, 'karalya sambandhi karcha', '3121293', '22311', 'Quatation', '500215038', 'Kshitiz Trad International', '2072-02-19', '49649.94', '-', '2015-06-15', 'Yes', 10),
(9, 'test', 'test', 'sdfdfSDFs', 'df', 'fg', 'fg', '0000-00-00', 'df', 'fd', '2015-10-01', 'Yes', 20);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `comment` text,
  `onDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `address`, `phone`, `email`, `country`, `comment`, `onDate`) VALUES
(2, 'ekrbk', 'bb', NULL, 'kh6ganesh@gmail.com', 'bk', 'b', '2013-12-09 02:48:29'),
(3, 'ganesh', 'ktm', NULL, 'kh6ganesh@yahoo.com', 'lsjkdg', 'alskng', '2013-12-09 02:52:20'),
(4, 'ganesh', 'skdjhg', NULL, 'kh6ganesh@gmail.com', 'nepal', 'lsdgsedf', '2015-02-10 11:01:15'),
(5, 'ganesh', 'skdjhg', NULL, 'kh6ganesh@gmail.com', 'nepal', 'lsdgsedf', '2015-02-10 11:01:35'),
(6, 'sldbg', 'eaargb', NULL, 'kh6ganesh@gmail.com', 'aagb', 'bsrbg', '2015-02-10 11:16:26'),
(7, 'ganesh', 'kahtmandu', NULL, 'kh6ganesh@gmail.com', 'nepal', 'this is for test feedback thank you.', '2015-02-10 11:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL DEFAULT '',
  `urlname` varchar(250) NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT '',
  `parentId` int(11) NOT NULL DEFAULT '0',
  `shortcontents` text NOT NULL,
  `contents` longtext NOT NULL,
  `linkType` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '50',
  `hide` varchar(3) NOT NULL DEFAULT 'no',
  `onDate` date NOT NULL DEFAULT '0000-00-00',
  `image` varchar(250) NOT NULL DEFAULT '',
  `display` varchar(10) NOT NULL,
  `featured` varchar(3) NOT NULL DEFAULT '',
  `block` varchar(100) NOT NULL,
  `tripType` varchar(50) NOT NULL,
  `season` varchar(100) NOT NULL,
  `code` varchar(15) NOT NULL,
  `price` varchar(10) NOT NULL DEFAULT '',
  `days` varchar(50) NOT NULL,
  `start` varchar(250) NOT NULL,
  `end` varchar(200) NOT NULL,
  `route` varchar(500) NOT NULL,
  `walk` varchar(50) NOT NULL,
  `lodging` varchar(250) NOT NULL,
  `transportation` varchar(250) NOT NULL,
  `pageTitle` text NOT NULL,
  `pageKeyword` text NOT NULL,
  `duration` int(10) NOT NULL,
  `altitude` varchar(25) NOT NULL,
  `grade` int(1) NOT NULL,
  `size` varchar(50) NOT NULL,
  `region` varchar(100) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `itinerary` longtext NOT NULL,
  `inclusion` longtext NOT NULL,
  `exclusion` longtext NOT NULL,
  `extraServices` longtext NOT NULL,
  `publish` varchar(3) NOT NULL,
  `map` varchar(250) NOT NULL,
  `fixdep` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `urlname` (`urlname`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=378 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `urlname`, `type`, `parentId`, `shortcontents`, `contents`, `linkType`, `weight`, `hide`, `onDate`, `image`, `display`, `featured`, `block`, `tripType`, `season`, `code`, `price`, `days`, `start`, `end`, `route`, `walk`, `lodging`, `transportation`, `pageTitle`, `pageKeyword`, `duration`, `altitude`, `grade`, `size`, `region`, `destination`, `activity`, `itinerary`, `inclusion`, `exclusion`, `extraServices`, `publish`, `map`, `fixdep`) VALUES
(358, '&#2361;&#2366;&#2350;&#2381;&#2352;&#2379; &#2348;&#2366;&#2352;&#2375;&#2350;&#2366;', 'about-us', 'Header', 0, '<br />', '<br />', 'Normal Group', 13, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(234, '&#2360;&#2350;&#2381;&#2346;&#2352;&#2381;&#2325; &#2336;&#2375;&#2327;&#2366;&#2344;&#2366;', 'contact-us', 'Header', 0, '<p class="adrs">Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus,                  facilisi Nam liber tempor cum soluta</p>\r\n<ul>\r\n    <li>Moonshine St. 14/05 Light, Japan</li>\r\n    <li>+00 (123) 111 11 11</li>\r\n    <li><a href="mailto:example@mail.com">mail@example.com</a></li>\r\n</ul>', '<p class="adrs">Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus,                  facilisi Nam liber tempor cum soluta</p>\r\n<ul>\r\n    <li>Moonshine St. 14/05 Light, Japan</li>\r\n    <li>+00 (123) 111 11 11</li>\r\n    <li><a href="mailto:example@mail.com">mail@example.com</a></li>\r\n</ul>', 'Contents Page', 80, 'no', '2013-12-09', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(367, 'first links 1', 'first-links-1', 'Header', 366, '', 'http://www.krishighar.com', 'Link', 10, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(368, 'second links', 'second-links', 'Header', 366, '', 'www.krishighar.com', 'Link', 20, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(8, 'Slider', 'slider', 'Other', 0, '', '', 'Gallery', 10, 'no', '2012-12-11', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '0', '0', '', '', '', '', '', '', '', ''),
(374, '', '374', '', 8, '', '', 'GallerySub', 50, 'no', '2015-10-03', '374.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(56, '&#2327;&#2371;&#2361; &#2346;&#2371;&#2359;&#2381;&#8205;&#2336;', 'home', 'Header', 0, '', 'home', 'Link', 10, 'no', '2012-12-13', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '0', '0', '', '', '', '', '', '', '', ''),
(176, '&#2332;&#2367;&#2354;&#2381;&#2354;&#2366; &#2346;&#2358;&#2369; &#2360;&#2375;&#2357;&#2366; &#2325;&#2366;&#2352;&#2381;&#2351;&#2366;&#2354;&#2351;, &#2352;&#2369;&#2346;&#2344;&#2381;&#2342;&#2375;&#2361;&#2368;', 'district-animal-service-office', 'Other', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting  industry. Lorem Ipsum has been the industry''s standard dummy text ever  since the 1500s, when an unknown printer took a galley of type and  scrambled it to make a type specimen book. It has survived not only five  centuries, but also the leap into electronic typesetting, remaining  essentially unchanged. It was popularised in the 1960s with the release  of Letraset sheets containing Lorem Ipsum passages, and more recently  with desktop publishing software like Aldus PageMaker including versions  of Lorem Ipsum.', 'Contents Page', 20, 'no', '2013-11-26', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(366, '&#2350;&#2361;&#2340;&#2381;&#2357;&#2346;&#2370;&#2352;&#2381;&#2339; &#2354;&#2367;&#2344;&#2381;&#2325;&#2381;&#2360;', 'important-links', 'Header', 0, '<br />', '<br />', 'Normal Group', 50, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(320, '&#2332;&#2366;&#2344;&#2325;&#2366;&#2352;&#2368; &#2346;&#2336;&#2366;&#2313;&#2344;&#2369;&#2361;&#2379;&#2360;&#2381;', 'send-information', 'Header', 0, '', 'http://krishighar.com/info-login.html', 'Link', 70, 'no', '2015-01-18', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(375, '', '375', '', 8, '', '', 'GallerySub', 50, 'no', '2015-10-03', '375.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(338, '&#2346;&#2381;&#2352;&#2325;&#2366;&#2358;&#2344;', 'publications', 'Header', 0, 'nvestigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, facilisi Nam liber tempor cum soluta', 'nvestigationes demonstraverunt lectores legere me lius quod ii legunt  saepius. Claritas est etiam processus dynamicus, facilisi Nam liber  tempor cum soluta', 'Normal Group', 23, 'no', '2015-04-07', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(296, '&#2325;&#2352;&#2381;&#2350;&#2330;&#2366;&#2352;&#2368;', 'staff', 'Header', 0, 'Marketing Research and Statistics Management Program was established in 2061 B.S as a program office under the Agribusiness Promotion and Marketing Development Directorate after restructuring under Department of Agriculture. It was earlier established in 2026 B.S Marketing Research and Statistics Management Program was established in 2061 B.S as a program office under the Agribusiness Promotion and Marketing Development Directorate after restructuring under Department of Agriculture. It was earlier established in 2026 B.S', 'Marketing Research and Statistics Management Program was established in  2061 B.S as a program office under the Agribusiness Promotion and  Marketing Development Directorate after restructuring under Department  of Agriculture. It was earlier established in 2026 B.S Marketing  Research and Statistics Management Program was established in 2061 B.S  as a program office under the Agribusiness Promotion and Marketing  Development Directorate after restructuring under Department of  Agriculture. It was earlier established in 2026 B.S<br />\r\n<br />\r\nMarketing Research and Statistics Management Program was established in  2061 B.S as a program office under the Agribusiness Promotion and  Marketing Development Directorate after restructuring under Department  of Agriculture. It was earlier established in 2026 B.S Marketing  Research and Statistics Management Program was established in 2061 B.S  as a program office under the Agribusiness Promotion and Marketing  Development Directorate after restructuring under Department of  Agriculture. It was earlier established in 2026 B.S', 'Contents Page', 30, 'no', '2015-01-17', 'krishi2.PNG', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(360, 'Objectives', 'objectives', 'Header', 358, '<br />', '<br />', 'Contents Page', 20, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(361, 'Organization Setup', 'organization-setup', 'Header', 358, '<br />', '<br />', 'Contents Page', 30, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(362, 'Major Functions of MRSMP', 'major-functions-of-mrsmp', 'Header', 358, '<br />', '<br />', 'Contents Page', 40, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(363, 'Major Achievements', 'major-achievements', 'Header', 358, '<br />', '<br />', 'Contents Page', 50, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(364, 'Human Resource', 'human-resource', 'Header', 358, '', '', 'Contents Page', 60, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(365, 'Organization Chart', 'organization-chart', 'Header', 358, '<br />', '<br />', 'Contents Page', 70, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(274, 'Message from Chief', 'message-from-chief', 'Other', 0, 'director''s message&nbsp;direc tor''s mes sage&nbsp;direct or''s mess age&nbsp;dire ctor''s  mes sage&nbsp;direct or''s mess age&nbsp;dire ctor''s messa ge&nbsp;direc tor''s mes sage&nbsp;direct or''s mes sage&nbsp;direct or''s mess age&nbsp;dire ctor''s messa ge&nbsp;direc tor''s mes sage&nbsp;direct or''s', '<strong>Mr. Name MiddleN Cast</strong><br />\r\ndirector''s message&nbsp;direc tor''s mes sage&nbsp;direct or''s mess age&nbsp;dire ctor''s mes sage&nbsp;direct or''s mess age&nbsp;dire ctor''s messa ge&nbsp;direc tor''s mess age&nbsp;director''s messa gedire ctor''s mes sage&nbsp;director''s message&nbsp;direc tor''s mes sage&nbsp;direct or''s mess age&nbsp;dire ctor''s mes sage&nbsp;direct or''s mess age&nbsp;dire ctor''s messa ge&nbsp;direc tor''s mess age&nbsp;director''s messa gedire ctor''s mes sage&nbsp;', 'Contents Page', 90, 'no', '2014-04-22', 'krishi1.PNG', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(339, 'first publication', 'first-publication', 'Header', 338, '', 'cop book 2071_rev.pdf', 'File', 10, 'no', '2015-04-07', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(340, 'second publication', 'second-publication', 'Header', 338, '', 'Nirdesika 2071.pdf', 'File', 20, 'no', '2015-04-07', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(369, 'third link', 'third-link', 'Header', 366, '', 'http://www.krishighar.com', 'Link', 30, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(370, 'fourth link', 'fourth-link', 'Header', 366, '', 'http://www.krishighar.com', 'Link', 40, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(371, 'fifth link', 'fifth-link', 'Header', 366, '', 'http://www.krishighar.com', 'Link', 50, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(321, '&#2360;&#2370;&#2330;&#2344;&#2366; / &#2360;&#2350;&#2366;&#2330;&#2366;&#2352;', 'information-news', 'Header', 0, '', '', 'List', 15, 'no', '2015-01-18', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(322, 'Notice for Organic Fair 2071', 'notice-for-organic-fair-2071', '', 321, '', '<br />', 'ListSub', 10, 'no', '2015-01-18', '', '', 'no', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(323, 'Cold Store Notice', 'cold-store-notice', '', 321, '', '<br />', 'ListSub', 20, 'no', '2015-01-18', '', '', 'no', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(324, 'TOR of Master Plan', 'tor-of-master-plan', '', 321, '', '<br />', 'ListSub', 30, 'no', '2015-01-18', '', '', 'no', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(325, 'EOI of Master plan', 'eoi-of-master-plan', '', 321, '', '<br />', 'ListSub', 40, 'no', '2015-01-18', '', '', 'no', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(376, '', '376', '', 8, '', '', 'GallerySub', 50, 'no', '2015-10-03', '376.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(377, '', '377', '', 8, '', '', 'GallerySub', 50, 'no', '2015-10-03', '377.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(359, 'Information', 'information', 'Header', 358, '<br />', '<br />', 'Contents Page', 10, 'no', '2015-09-30', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', ''),
(373, '&#2349;&#2369;&#2325;&#2381;&#2340;&#2366;&#2344;&#2368; &#2348;&#2367;&#2354;', 'bills', 'Header', 0, '<br />', '<br />', 'Contents Page', 60, 'no', '2015-10-01', '', 'normal', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `listingfiles`
--

CREATE TABLE IF NOT EXISTS `listingfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` text NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `listingId` int(11) NOT NULL DEFAULT '0',
  `onDate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `listingfiles`
--

INSERT INTO `listingfiles` (`id`, `caption`, `filename`, `listingId`, `onDate`) VALUES
(1, '', 'google tricks.txt', 322, 2015),
(2, '', 'google tricks1.txt', 323, 2015),
(3, '', 'google tricks2.txt', 324, 2015),
(4, '', 'google tricks2.txt', 325, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image` varchar(250) NOT NULL DEFAULT '',
  `name` varchar(250) NOT NULL DEFAULT '',
  `address` varchar(250) NOT NULL,
  `comments` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `onDate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `testimonials`
--


-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE IF NOT EXISTS `usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `district` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL,
  `user_type` int(20) NOT NULL,
  `org_info` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `publish` varchar(3) NOT NULL,
  `weight` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `usergroups`
--

INSERT INTO `usergroups` (`id`, `name`, `username`, `password`, `district`, `email`, `phone`, `website`, `user_type`, `org_info`, `image`, `publish`, `weight`) VALUES
(2, 'Dado, Palpa', 'dado', 'dado123', 51, 'kh6ganesh@gmail.com', '09809780', 'www.doanepal.gov.np', 2, '&#2332;&#2367;&#2354;&#2381;&#2354;&#2366;', '', 'Yes', 10),
(6, '&#2347;&#2354;&#2347;&#2369;&#2354; &#2357;&#2367;&#2325;&#2366;&#2358; &#2344;&#2367;&#2352;&#2381;&#2342;&#2375;&#2358;&#2344;&#2366;&#2354;&#2351; ', 'fruitdevelopment', 'fruit123', 13, 'fruitdevelopment@gmail.com', '9879879879', 'http://www.fruitdevelopment.com', 3, '&#2347;&#2354;&#2347;&#2369;&#2354; &#2357;&#2367;&#2325;&#2366;&#2358; &#2344;&#2367;&#2352;&#2381;&#2342;&#2375;&#2358;&#2344;&#2366;&#2354;&#2351;<br />', '', 'Yes', 40),
(5, '&#2340;&#2352;&#2325;&#2366;&#2352;&#2368; &#2357;&#2367;&#2325;&#2366;&#2358; &#2344;&#2367;&#2352;&#2381;&#2342;&#2375;&#2358;&#2344;&#2366;&#2354;&#2351; ', 'vegdevelopment', 'vegetable123', 7, 'vegdevelopment@gmail.com', '01-2344555', 'http://www.vegetabledevelopment.com', 3, '&#2340;&#2352;&#2325;&#2366;&#2352;&#2368; &#2357;&#2367;&#2325;&#2366;&#2358; &#2344;&#2367;&#2352;&#2381;&#2342;&#2375;&#2358;&#2344;&#2366;&#2354;&#2351;<br />', '', 'Yes', 30),
(7, '&#2350;&#2366;&#2335;&#2379; &#2357;&#2367;&#2325;&#2366;&#2358; &#2344;&#2367;&#2352;&#2381;&#2342;&#2375;&#2358;&#2344;&#2366;&#2354;&#2351;', 'soildevelopment', 'soil123', 17, 'soildevelopment@gmail.com', '0988779', 'http://www.soildevelopment.com', 3, '&#2350;&#2366;&#2335;&#2379; &#2357;&#2367;&#2325;&#2366;&#2358; &#2344;&#2367;&#2352;&#2381;&#2342;&#2375;&#2358;&#2344;&#2366;&#2354;&#2351;<br />', '', 'Yes', 50),
(8, 'Dado, Kanchanpur', 'dadokanchanpur', 'kanchanpur', 76, 'dado_kanchanpur@gmail.com', '454454', 'www.dadokanchanpur.com', 2, 'test info<br />', '', 'Yes', 60),
(9, '&#2332;&#2367;&#2354;&#2366; &#2325;&#2371;&#2359;&#2367; &#2357;&#2367;&#2325;&#2366;&#2360; &#2325;&#2366;&#2352;&#2381;&#2351;&#2366;&#2354;&#2351; &#2360;&#2367;&#2344;&#2381;&#2343;&#2369;&#2354;&#2368; ', 'dadosindhuli ', '1234 ', 20, 'dadosindhuli@gmail.com ', '&#2406;&#2407;-&#2408;&#2409;&#2410;&#2411;&#2412;', 'www.dadosindhuli.gov.np ', 2, '&nbsp;', '', 'Yes', 70),
(10, '&#2332;&#2367;&#2354;&#2366; &#2325;&#2371;&#2359;&#2367; &#2357;&#2367;&#2325;&#2366;&#2360; &#2325;&#2366;&#2352;&#2381;&#2351;&#2366;&#2354;&#2351; &#2354;&#2354;&#2367;&#2340;&#2346;&#2369;&#2352; ', 'dadolalitpur ', 'dadolalitpur1 ', 31, 'dadolalitpur@gmail.com ', '012234567 ', 'www.dadolalitpur.gov.np ', 2, '&nbsp;', '', 'Yes', 80),
(11, '&#2350;&#2343;&#2381;&#2351;&#2350;&#2366;&#2344;&#2381;&#2330;&#2354; &#2331;&#2375;&#2340;&#2381;&#2352;&#2368;&#2351; &#2325;&#2371;&#2359;&#2368; &#2357;&#2367;&#2325;&#2366;&#2358; &#2344;&#2367;&#2352;&#2381;&#2342;&#2375;&#2358;&#2344;&#2366;&#2354;&#2351; ', 'crado', 'crado123', 31, 'crado@gmail.com', '801-798797', 'crado.gov.np', 3, 'organization information for crado<br />', '', 'Yes', 90),
(12, 'Agriculture Promotion and Marketing Development Directorate', 'apmdd', 'apmdd123', 31, 'info@agribiz.gov.np', '-', 'agribiz.gov.np', 3, '<br />', '', 'Yes', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lastLogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loginTimes` int(10) unsigned NOT NULL DEFAULT '0',
  `status` enum('A','D') NOT NULL DEFAULT 'D',
  `userGroupId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `lastLogin`, `loginTimes`, `status`, `userGroupId`) VALUES
(1, 'admin', 'vairahawa', '2015-10-02 13:50:59', 286, 'A', 1);
