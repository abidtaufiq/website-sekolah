-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 10:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `photo`) VALUES
(5, 'dc3c6237115ce2e3050ee1b1e79429fb.png');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `text`, `photo`) VALUES
(1, 'Belajar tidak akan pernah membuat lelah', '\"Pendidikan adalah bekal terbaik untuk perjalanan hidup.\" ', '261feb1a6d3dd22b7ce8e65a52b6aeb5.jpg'),
(2, 'Menuntut Ilmu Sedalam Mungkin', '\"Belajar memang melelahkan, namun akan lebih melelahkan lagi jika saat ini kamu tidak belajar.\"', 'e9f0e154d0e7bc5ba126983c8265b005.jpg'),
(3, 'Terus Maju', ' \"Jangan membuang waktu belajarmu karena apa yang kamu pelajari akan berguna untuk masa depanmu.\"', '2fe30f923448bd85d4401210f5620694.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bg_majors`
--

CREATE TABLE `bg_majors` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bg_majors`
--

INSERT INTO `bg_majors` (`id`, `photo`) VALUES
(1, 'b33cf167c20cef419c93c4b9ee494b0a.png');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `photo`) VALUES
(3, 'Lab Komputer', 'lab-komputer-20220825185508.jpg'),
(4, 'Perpustakaan', 'perpustakaan-20220825190131.png'),
(5, 'Kantin', 'kantin-20220825190142.png'),
(6, 'Lapangan', 'lapangan-20220825190202.png'),
(9, 'Musholla', 'musholla-20200430120051.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identity`
--

INSERT INTO `identity` (`id`, `meta_title`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus.', 'Madrasah Aliyah Negeri Pati', '18efe02e7fcc5c6a4ee8c619e501a7d9.png');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '::1', 'administrator', 1661414832),
(2, '::1', 'admin@gmail.com', 1661414865);

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `user_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 2, 'Pengaturan Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 2, 'Agenda', 'jadwal', 'fas fa-fw fa-users', 'Y'),
(3, 2, 'Manajemen Media', '', 'fas fa-fw fa-school', 'Y'),
(4, 2, 'Struktur Organisasi', 'struktur', 'fas fa-fw fa-sitemap', 'Y'),
(5, 1, 'Manajemen User', 'user', 'fas fa-fw fa-user', 'Y'),
(6, 2, 'Profile', '', 'fas fa-fw fa-home', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `opening`
--

CREATE TABLE `opening` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opening`
--

INSERT INTO `opening` (`id`, `content`, `photo`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel.', '92d81dcc1fc0dceb8b582fc271d48a76.png');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `seo_title`, `content`, `photo`, `is_active`, `date`) VALUES
(2, 'Sosialiasi Jasa Raharja', 'sosialiasi-jasa-raharja', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20220825184450.jpg', 'Y', '2022-08-25'),
(3, 'Upacara Memeringati Hari Pramuka', 'upacara-memeringati-hari-pramuka', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20220825184340.jpg', 'Y', '2022-08-25'),
(4, 'Bimbingan Teknis Implementasi Kurikulum Merdeka', 'bimbingan-teknis-implementasi-kurikulum-merdeka', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20220825184137.jpg', 'Y', '2022-08-25'),
(5, 'Latihan Dasar Kepemimpinan', 'latihan-dasar-kepemimpinan', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20220825184811.jpg', 'Y', '2022-08-25'),
(6, 'Upacara Memeringati Hari Kemerdekaan', 'upacara-memeringati-hari-kemerdekaan', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20220825184721.jpg', 'Y', '2022-08-25'),
(7, 'Upacara Ulang Janji Pramuka', 'upacara-ulang-janji-pramuka', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20220825183746.jpg', 'Y', '2022-08-25'),
(8, 'Bakti Sosial Peserta Didik ', 'bakti-sosial-peserta-didik', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl ut metus molestie dignissim eu vitae nisi. Phasellus molestie ut quam eu accumsan. Mauris sit amet orci a ante suscipit pharetra. Integer sodales, augue vel volutpat faucibus, nunc lectus feugiat mi, in vestibulum ex arcu commodo purus. Donec in sagittis enim, ac dignissim neque. Aenean nec quam a enim volutpat tempus. Cras eget ex lacus. Mauris non dolor laoreet, efficitur ligula eget, suscipit ipsum. Praesent porttitor sollicitudin magna maximus pharetra. Nullam pretium vestibulum augue, sed viverra velit gravida vel. Nunc feugiat arcu vel urna lobortis mollis. Ut arcu augue, ullamcorper ut magna a, elementum aliquam nunc. Pellentesque sapien nibh, suscipit volutpat sem ut, vulputate efficitur arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean aliquet sagittis congue. Maecenas felis sem, interdum vel consectetur quis, vulputate in augue.</p>\r\n\r\n<p>Vestibulum massa dolor, sollicitudin eget nulla iaculis, tincidunt luctus lacus. Suspendisse nisi ligula, imperdiet eget tempor et, faucibus et orci. Pellentesque semper viverra metus, eget fermentum felis ornare at. In semper lacinia elit, eget consequat dolor blandit vitae. Aliquam erat volutpat. Aliquam et dictum erat. Etiam purus ipsum, convallis sit amet lorem eget, iaculis rhoncus arcu. Aliquam id fringilla magna, a euismod justo. Nam non urna feugiat ligula finibus blandit. Cras libero sapien, bibendum facilisis justo id, ultricies ullamcorper nisi.</p>\r\n\r\n<p>Maecenas condimentum aliquet pulvinar. Suspendisse quis malesuada nulla, eget eleifend tellus. Suspendisse pharetra enim in ante fermentum consectetur. Vivamus viverra, felis vitae condimentum tempus, libero ex consectetur dui, vel interdum nibh turpis in lectus. Suspendisse potenti. Nam sagittis, ligula id tempor tristique, enim eros facilisis purus, vitae elementum risus lectus sit amet ipsum. In nec sollicitudin massa, ut cursus purus. Proin eu tempor magna, non vestibulum diam.</p>', '-20220825183547.jpg', 'Y', '2022-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `structure`
--

CREATE TABLE `structure` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `structure`
--

INSERT INTO `structure` (`id`, `photo`) VALUES
(1, 'c34d2f264a0bc5bf27b2f9e79efaa92e.png');

-- --------------------------------------------------------

--
-- Table structure for table `submenus`
--

CREATE TABLE `submenus` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenus`
--

INSERT INTO `submenus` (`id`, `menu_id`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'identitas', 'Y'),
(2, 1, 'Sambutan', 'sambutan', 'Y'),
(3, 3, 'Banner', 'banner', 'Y'),
(4, 3, 'Fasilitas', 'fasilitas', 'Y'),
(5, 3, 'Berita', 'berita', 'Y'),
(6, 3, 'Background Jurusan', 'background', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$pfe4X24wUalRwJseC96pLOh2FshRtmYVNRhS8eLTKCSv9KVXRWxBy', 'admin@mail.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1661443811, 1, 'Abid', 'Taufiqur R.', NULL, '081222332442');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(38, 1, 1),
(39, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bg_majors`
--
ALTER TABLE `bg_majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening`
--
ALTER TABLE `opening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `structure`
--
ALTER TABLE `structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bg_majors`
--
ALTER TABLE `bg_majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `opening`
--
ALTER TABLE `opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `structure`
--
ALTER TABLE `structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `submenus`
--
ALTER TABLE `submenus`
  ADD CONSTRAINT `submenus_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
