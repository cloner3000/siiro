-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 01:12 PM
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
-- Database: `siiro`
--

-- --------------------------------------------------------

--
-- Table structure for table `ais_berangkat`
--

CREATE TABLE `ais_berangkat` (
  `id` int(11) NOT NULL,
  `kelompok` varchar(255) NOT NULL,
  `ketua` varchar(255) NOT NULL,
  `anggota` varchar(255) NOT NULL,
  `nomor_penerbangan` varchar(255) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `keterangan` text NOT NULL,
  `periode_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ais_kelompok`
--

CREATE TABLE `ais_kelompok` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `periode_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ais_kelompok`
--

INSERT INTO `ais_kelompok` (`id`, `nama`, `jenis`, `keterangan`, `periode_tahun`) VALUES
(3, 'Sistem Informasi 1', '', '', 2018),
(4, 'Sistem Informasi 3', '', '', 2018),
(5, 'Desain Komunikasi Visual 1', '', '', 2018),
(6, 'Panitia', '', '', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `ais_pembayaran`
--

CREATE TABLE `ais_pembayaran` (
  `id` int(11) NOT NULL,
  `peserta_id` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ais_peserta`
--

CREATE TABLE `ais_peserta` (
  `id` int(11) NOT NULL,
  `kelompok` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_ktp` varchar(255) NOT NULL,
  `scan_ktp` varchar(255) NOT NULL,
  `nomor_paspor` varchar(255) NOT NULL,
  `scan_paspor` varchar(255) NOT NULL,
  `periode_tahun` int(11) NOT NULL,
  `pembayaran` int(11) DEFAULT '0',
  `sisa_pembayaran` varchar(255) DEFAULT '0',
  `ikut_travel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ais_peserta`
--

INSERT INTO `ais_peserta` (`id`, `kelompok`, `status`, `nama`, `tanggal_lahir`, `tempat_lahir`, `jurusan`, `email`, `nomor_hp`, `alamat`, `nomor_ktp`, `scan_ktp`, `nomor_paspor`, `scan_paspor`, `periode_tahun`, `pembayaran`, `sisa_pembayaran`, `ikut_travel`) VALUES
(9, '4', 'Peserta', 'M. Anton Permana', '0000-00-00', '', 'Teknik Informatika', 'anton.permana@nusaputra.ac.id', '', '', '', '', '', '', 2018, 3000000, '2000000', 'Tidak'),
(10, '5', 'Peserta', 'Agham Rahmadi Setiawan', '0000-00-00', '', 'Teknik Informatika', 'agham.rahmadi@nusaputra.ac.id', '', '', '', '', '', '', 2018, 50000, '-2950000', 'Tidak'),
(12, '4', 'Pembimbing', 'Dedi Supardi, ST,M.Kom', '0000-00-00', '', '', 'dedi.supardi@nusaputra.ac.id', '', '', '', '', '', '', 2018, 0, '0', 'Tidak'),
(13, '5', 'Peserta', 'Aryo Ardianto', '0000-00-00', '', 'Teknik Informatika', 'aryo.ardianto@nusaputra.ac.id', '', '', '', '', '', '', 2018, 0, '-3000000', 'Tidak'),
(14, '5', 'Peserta', 'Aditya Rachmawan', '0000-00-00', '', 'Teknik Informatika', 'aditya.rachmawan@nusaputra.ac.id', '', '', '', '', '', '', 2018, 0, '-3000000', 'Tidak'),
(16, '3', 'Peserta', 'Muhammad Ikhsan Thohir', '0000-00-00', '', 'Sistem Informasi', '', '', '', '', '', '', '', 2018, 9600000, '200', 'Ya'),
(17, '3', 'Peserta', 'Anton Permana', '0000-00-00', '', '', '', '', '', '', '', '', '', 2018, 4000000, '0', 'Tidak'),
(18, '3', 'Pembimbing', 'Dudih Gustian', '0000-00-00', '', '', '', '', '', '', '', '', '', 2018, 0, '0', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `ais_pulang`
--

CREATE TABLE `ais_pulang` (
  `id` int(11) NOT NULL,
  `kelompok` varchar(255) NOT NULL,
  `ketua` varchar(255) NOT NULL,
  `anggota` varchar(255) NOT NULL,
  `nomor_penerbangan` varchar(255) NOT NULL,
  `tanggal_pulang` date NOT NULL,
  `keterangan` text NOT NULL,
  `periode_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ais_pulang`
--

INSERT INTO `ais_pulang` (`id`, `kelompok`, `ketua`, `anggota`, `nomor_penerbangan`, `tanggal_pulang`, `keterangan`, `periode_tahun`) VALUES
(1, 'Kel 1', '12', '10,13,15', '', '0000-00-00', '', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `ais_setting`
--

CREATE TABLE `ais_setting` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `biaya_travel` int(11) NOT NULL,
  `biaya_conference` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ais_setting`
--

INSERT INTO `ais_setting` (`id`, `nama`, `tahun`, `negara`, `tanggal`, `biaya_travel`, `biaya_conference`, `keterangan`) VALUES
(1, 'ICCED 2018', '2018', 'Thailand', '2018-09-06', 5600000, 3000000, '');

-- --------------------------------------------------------

--
-- Table structure for table `conference_email`
--

CREATE TABLE `conference_email` (
  `id` int(11) NOT NULL,
  `negara` varchar(255) NOT NULL,
  `nama_university` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conference_email`
--

INSERT INTO `conference_email` (`id`, `negara`, `nama_university`, `email`, `alamat`) VALUES
(2, 'Thailand', 'Mahidol University', 'opwww@mahidol.ac.th', '999 Phutthamonthon Sai 4 Rd, Tambon Salaya, Amphoe Phutthamonthon, Chang Wat Nakhon Pathom 73170, Thailand'),
(3, 'Thailand', 'Chulalongkorn University', 'int.off@chula.ac.th', 'Mahatheerarachanusorn Building, Chulalongkorn University, 254 Phayathai Rd, Wang Mai, Pathum Wan, Bangkok 10330, Thailand'),
(4, 'Thailand', 'Chiang Mai University', 'prcmu239@gmail.com', 'Su Thep, Mueang Chiang Mai District, Provinsi Chiang Mai 50200, Thailand'),
(5, 'Thailand', 'Kasetsart University', 'www@ku.ac.th', '50 Thanon Ngamwongwan, Khwaeng Lat Yao, Khet Chatuchak, 10900, Thailand'),
(6, 'Thailand', 'Khon Kaen University', 'jittkr@kku.ac.th', 'Khon Kaen University (KKU) 123 Moo 16 Mittapap Rd., Nai-Muang, Muang District, Khon Kaen 40002,Thailand'),
(7, 'Thailand', 'Prince of Songkla University', 'psu-international@psu.ac.th', '15 Karnjanavanich Rd., Hat Yai, Songkhla 90110  Tel: 66 74 282000 (Operator), 66 74 446824 (International Office). Fax: 66 74 446825'),
(8, 'Thailand', 'Suranaree University of Technology', 'pr@sut.ac.th', '111, Thanon Maha Witthayalai, Suranari, Mueang Nakhon Ratchasima District, Nakhon Ratchasima 30000, Thailand'),
(9, 'Thailand', 'King Mongkut\'s University of Technology Thonburi', 'info@kmutt.ac.th', '126 Pracha Uthit Rd., Bang Mod, Thung Khru, Bangkok 10140, Thailand'),
(10, 'Thailand', 'Thammasat University', 'cia@tbs.tu.ac.th', 'Khwaeng Phra Borom Maha Ratchawang, Khet Phra Nakhon, Krung Thep Maha Nakhon 10200, Thailand'),
(11, 'Thailand', 'Naresuan University', 'international@nu.ac.th', 'Naresuan University Phitsanulok 65000 Thailand Telephone: +66 5596 1000 Fax: +66 5596 1103'),
(12, 'Thailand', 'King Mongkut\'s Institute of Technology Ladkrabang', 'pr.kmitl@kmitl.ac.th', 'KMITL Lat Krabang, Bangkok 10520, Thailand'),
(13, 'Thailand', 'Asian Institute of Technology Thailand', 'omco@ait.ac.th', '58 Moo 9 - Paholyothin Highway, Khlong Nueng, Pathum Thani 12120, Thailand'),
(14, 'Thailand', 'Srinakharinwirot University', 'ird@swu.ac.th', 'Office of the President, Srinakharinwirot University 114 Sukhumvit 23, Wattana District, Bangkok 10110, THAILAND'),
(15, 'Thailand', 'Burapha University', 'wmaster@buu.ac.th', 'Burapha University, 169 Longhaad Bangsaen Road, Saensook, Mueang, ChonBuri 20131'),
(16, 'Thailand', 'Mahasarakham University', 'iroffice@msu.ac.th', 'Khamriang Sub-District,  Kantarawichai District,  Maha Sarakham 44150 Thailand'),
(17, 'Thailand', 'Silpakorn University', 'SOPONPONGPIPAT_N@SU.AC.TH', '31 Na Phra Lan Rd, Phra Borom Maha Ratchawang, Phra Nakhon,10200, Thailand'),
(18, 'Thailand', 'Mae Fah Luang University', 'inter@mfu.ac.th', '333 Moo 1, Tha Suea Muang Amphoe Mueang Chiang Rai, Chang Wat Chiang Rai 57100, Thailand'),
(19, 'Thailand', 'King Mongkut\'s University of Technology North Bangkok', 'icop@kmutnb.ac.th', '1518 Pracharat 1 Road,Wongsawang, Bangsue, Bangkok 10800  Tel. +66 2 555-2000 Fax +66 2 587-4350'),
(20, 'Thailand', 'Rangsit University', 'rsuip@rsu.ac.th', '52/347 Muang-Ake Phaholyothin Road Lak-Hok Muang Pathum Thani 12000, Thailand'),
(21, 'Thailand', 'Mahanakorn University of Technology', 'inter@mutacth.com', '140 Cheum-Sampan Road,  Nongchok, Bangkok 10530'),
(22, 'Thailand', 'Assumption University of Thailand', 'abac@au.edu', '592/3 Soi Ramkhamhaeng 24 Ramkhamhaeng Rd., Hua Mak, Bangkok 10240  Tel. (66) 0-2300-4543-62 Fax. (66) 0-2300-4563'),
(23, 'Thailand', 'Suan Dusit University', '', '295 Nakhon Ratchasima Rd, Khwaeng Dusit, Khet Dusit, ????????????? 10300, Thailand');

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
  `visa_scan` varchar(255) NOT NULL,
  `start_internship` date NOT NULL,
  `end_internship` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `mou`
--

CREATE TABLE `mou` (
  `id` int(11) NOT NULL,
  `document_id` varchar(255) NOT NULL,
  `partner` varchar(255) NOT NULL,
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

INSERT INTO `mou` (`id`, `document_id`, `partner`, `program`, `continent`, `country`, `start`, `end`, `scan`, `tanggal_input`, `id_user`) VALUES
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
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `nama_website` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `nama_website`, `logo`, `alamat`, `deskripsi`, `theme`) VALUES
(0, 'SIIRO NSP', 'LOGO-IRO.jpg', 'Jl Raya Ciboalang No 21', 'Sistem Informasi IRO', 'red');

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
-- Indexes for table `ais_berangkat`
--
ALTER TABLE `ais_berangkat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ais_kelompok`
--
ALTER TABLE `ais_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ais_pembayaran`
--
ALTER TABLE `ais_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ais_peserta`
--
ALTER TABLE `ais_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ais_pulang`
--
ALTER TABLE `ais_pulang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ais_setting`
--
ALTER TABLE `ais_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conference_email`
--
ALTER TABLE `conference_email`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `setting`
--
ALTER TABLE `setting`
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
-- AUTO_INCREMENT for table `ais_berangkat`
--
ALTER TABLE `ais_berangkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ais_kelompok`
--
ALTER TABLE `ais_kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ais_pembayaran`
--
ALTER TABLE `ais_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ais_peserta`
--
ALTER TABLE `ais_peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ais_pulang`
--
ALTER TABLE `ais_pulang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ais_setting`
--
ALTER TABLE `ais_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conference_email`
--
ALTER TABLE `conference_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `intern`
--
ALTER TABLE `intern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intern_file`
--
ALTER TABLE `intern_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
