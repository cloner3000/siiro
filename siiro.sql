-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2018 at 10:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siiro`
--

-- --------------------------------------------------------

--
-- Table structure for table `intern`
--

CREATE TABLE `intern` (
  `id` int(11) NOT NULL,
  `periode_tahun` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `contry` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_university` varchar(255) NOT NULL,
  `passport_number` varchar(255) NOT NULL,
  `passport_issue` date NOT NULL,
  `passport_expiry` date NOT NULL,
  `passport_scan` varchar(255) NOT NULL,
  `visa_scan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intern`
--

INSERT INTO `intern` (`id`, `periode_tahun`, `photo`, `name`, `date_of_birth`, `place_of_birth`, `gender`, `nationality`, `address`, `zip_code`, `city`, `state`, `contry`, `phone`, `email`, `last_university`, `passport_number`, `passport_issue`, `passport_expiry`, `passport_scan`, `visa_scan`) VALUES
(1, '2015', '2ylqtr7w19us0wo.jpg', 'Celine Bartelds', '1994-10-19', 'Assen', 'Female', 'Dutch', 'Everlaan 7 Assen', '9408CJ', 'Assen', 'Drenthe', 'Netherlands', '+31657760856', 'celinebartelds@hotmail.com', 'Hanze University of Applied Sciences, Groningen', 'NX84HPLH0', '2014-03-22', '2024-03-22', '61lkynhpzps84s0.jpg', '1hffd8bw5fr40ow.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `intern_file`
--

CREATE TABLE `intern_file` (
  `id` int(11) NOT NULL,
  `nama_intern` varchar(255) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `keterangan_file` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intern_file`
--

INSERT INTO `intern_file` (`id`, `nama_intern`, `nama_file`, `keterangan_file`, `file`) VALUES
(3, 'Celine Bartelds', 'Diploma / Izasah', '', '7m5dsci5hn8ckw0.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `mou`
--

CREATE TABLE `mou` (
  `id` int(11) NOT NULL,
  `document_id` varchar(255) NOT NULL,
  `partener` varchar(255) NOT NULL,
  `program` text NOT NULL,
  `continent` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `scan` varchar(255) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mou`
--

INSERT INTO `mou` (`id`, `document_id`, `partener`, `program`, `continent`, `country`, `start`, `end`, `scan`, `tanggal_input`, `id_user`) VALUES
(4, 'U/MY/UKM/1/2014', 'Universitas Kebangsaan Malaysia', '', 'ASIA', 'Malaysia', '2014-04-01', '0000-00-00', '', '2018-04-17 23:50:16', 'Ikhsan Thohir'),
(6, 'U/KH/BIT/1/2016', 'Battambang Institute of Technology ( BIT )', '', 'ASIA', 'Kamboja', '0000-00-00', '0000-00-00', '', '2018-04-17 23:51:34', 'Ikhsan Thohir'),
(7, 'U/KH/RPITSB/1/2016', 'Regional polytechnic institute techno sen battambang (RPITSB)', '', 'ASIA', 'KAMBOJA', '0000-00-00', '0000-00-00', '', '2018-04-17 23:52:02', 'Ikhsan Thohir'),
(8, 'U/KH/RPITST/1/2016', 'Regional Polytechnic Institute Techo Sen Takeo (RPITST)', '', 'ASIA', 'KAMBOJA', '0000-00-00', '0000-00-00', '', '2018-04-17 23:52:27', 'Ikhsan Thohir'),
(9, 'U/KZ/ELA/1/2016', 'Eurasian Law Academy', '', 'ASIA', 'Khazakstan', '0000-00-00', '0000-00-00', '', '2018-04-17 23:52:59', 'Ikhsan Thohir'),
(10, 'U/KZ/AKNMU/1/2016', 'Aspendirayrov Kazakh National Medical University', '', 'ASIA', 'Khazakstan', '0000-00-00', '0000-00-00', '', '2018-04-17 23:53:24', 'Ikhsan Thohir'),
(11, 'U/KZ/ZSU/1/2016', 'Zhetsyu State university', '', 'ASIA', 'Khazakstan', '0000-00-00', '0000-00-00', '', '2018-04-17 23:53:57', 'Ikhsan Thohir'),
(12, 'U/KZ/KSWTTU/1/2016', 'Kazakh State Women’s Teacher Training University', '', 'ASIA', 'Kazakstan', '0000-00-00', '0000-00-00', '', '2018-04-17 23:54:19', 'Ikhsan Thohir'),
(13, 'U/KZ/AKPU/1/2016', 'Abai Kazakh Pedagogical university', '', 'ASIA', 'Kazakstan', '0000-00-00', '0000-00-00', '', '2018-04-17 23:55:14', 'Ikhsan Thohir'),
(15, 'U/KZ/KSWTTU/1/2016', 'Kazakh State Women’s Teacher Training University', '', 'ASIA', 'Khazakstan', '0000-00-00', '0000-00-00', '', '2018-04-18 00:00:48', 'Ikhsan Thohir'),
(17, 'U/KZ/IIU/1/2016', 'International IT University', '', 'ASIA', 'Khazakstan', '0000-00-00', '0000-00-00', '', '2018-04-18 00:01:39', 'Ikhsan Thohir'),
(18, 'U/KZ/AKNU/1/2106', 'Al-Farabi Kazakh National University', '', 'ASIA', 'Khazakstan', '0000-00-00', '0000-00-00', '', '2018-04-18 00:01:59', 'Ikhsan Thohir'),
(19, 'U/KZ/AEL/1/2016', 'Academy Economic and Law', '', 'ASIA', 'Khazakstan', '0000-00-00', '0000-00-00', '', '2018-04-18 00:02:25', 'Ikhsan Thohir'),
(20, 'U/KZ/KBTU/1/2106', 'Kazakh-British Technical University', '', 'ASIA', 'Khazakstan', '0000-00-00', '0000-00-00', '', '2018-04-18 00:02:45', 'Ikhsan Thohir'),
(21, 'U/UZ/PRUBT/1/2016', 'Plekhanov Russian University Brand Tashkent', '', 'ASIA', 'Uzbekistan', '0000-00-00', '0000-00-00', '', '2018-04-18 00:03:20', 'Ikhsan Thohir'),
(22, 'U/CN/LNU/1/2016', 'Leshan Normal University', '', 'ASIA', 'China', '0000-00-00', '0000-00-00', '', '2018-04-18 00:03:59', 'Ikhsan Thohir'),
(23, 'U/CN/SCOAT/1/2016', 'Sinchuan College Of Architectural Technology', '', 'ASIA', 'China', '0000-00-00', '0000-00-00', '', '2018-04-18 00:04:37', 'Ikhsan Thohir'),
(24, 'U/CN/SUST/1/2016', 'Soutwest University of Science and Technology', '', 'ASIA', 'China', '0000-00-00', '0000-00-00', '', '2018-04-18 00:05:01', 'Ikhsan Thohir'),
(25, 'U/KR/SMU/1/2017', 'Sun Moon University', '', 'ASIA', 'Korea Selatan', '0000-00-00', '0000-00-00', '', '2018-04-18 00:05:26', 'Ikhsan Thohir');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_nama` varchar(255) NOT NULL,
  `admin_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_username`, `admin_password`, `admin_nama`, `admin_foto`) VALUES
(13, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Ikhsan Thohir', 'qm39u4lbc408wo.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `intern`
--
ALTER TABLE `intern`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intern_file`
--
ALTER TABLE `intern_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mou`
--
ALTER TABLE `mou`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `intern`
--
ALTER TABLE `intern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `intern_file`
--
ALTER TABLE `intern_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mou`
--
ALTER TABLE `mou`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
