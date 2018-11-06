-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2018 at 10:25 AM
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
(9, 'SI 1', '', '', 2018),
(10, 'SI 2', '', '', 2018),
(11, 'SI 3', '', '', 2018),
(12, 'SI 4', '', '', 2018),
(13, 'SI 5', '', '', 2018),
(14, 'SI 6', '', '', 2018),
(15, 'SI 7', '', '', 2018),
(16, 'SI 8', '', '', 2018),
(17, 'SI 9', '', '', 2018),
(18, 'SI 10', '', '', 2018),
(19, 'SI 11', '', '', 2018),
(20, 'SI 12', '', '', 2018),
(21, 'TI 1', '', '', 2018),
(22, 'TI 2', '', '', 2018),
(23, 'TI 3', '', '', 2018),
(24, 'TI 4', '', '', 2018),
(25, 'TI 5', '', '', 2018),
(26, 'TI 6', '', '', 2018),
(27, 'TI 7', '', '', 2018),
(28, 'TI 8', '', '', 2018),
(29, 'TI 9', '', '', 2018),
(30, 'TI 10', '', '', 2018),
(31, 'TS 1', '', '', 2018),
(32, 'TS 2', '', '', 2018),
(33, 'TS 3', '', '', 2018),
(34, 'TS 4', '', '', 2018),
(35, 'TS 5', '', '', 2018),
(36, 'TS 6', '', '', 2018),
(37, 'TS 7', '', '', 2018),
(39, 'TE 1', '', '', 2018),
(40, 'TE 2', '', '', 2018),
(41, 'TM 1', '', '', 2018),
(42, 'TM 2', '', '', 2018),
(43, 'TM 3', '', '', 2018),
(44, 'SI1', '', '', 2019);

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
  `nim` varchar(255) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_kampus` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_ktp` varchar(255) NOT NULL,
  `scan_ktp` varchar(255) NOT NULL,
  `nomor_paspor` varchar(255) NOT NULL,
  `scan_paspor` varchar(255) NOT NULL,
  `periode_tahun` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `ikut_travel` varchar(255) NOT NULL,
  `pembayaran` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ais_peserta`
--

INSERT INTO `ais_peserta` (`id`, `kelompok`, `status`, `nama`, `nim`, `tanggal_lahir`, `tempat_lahir`, `jurusan`, `email`, `email_kampus`, `nomor_hp`, `alamat`, `nomor_ktp`, `scan_ktp`, `nomor_paspor`, `scan_paspor`, `periode_tahun`, `password`, `foto`, `ikut_travel`, `pembayaran`) VALUES
(9, '21', 'Peserta', 'M. Anton Permana', '', NULL, '', 'Teknik Informatika', 'anton.permana@nusaputra.ac.id', '', '', '', '3202040406960004', 'eal88ztgkb48kkk.jpg', 'B4094399', 'f5letyzzws8wwc0.jpg', 2018, '', '0', 'Tidak', 0),
(10, '21', 'Peserta', 'Agham Rahmadi Setiawan', '', '0000-00-00', '', 'Teknik Informatika', 'agham.rahmadi@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(12, '21,30,22', 'Pembimbing', 'Dedi Supardi, ST,M.Kom', '', NULL, '', '', 'dedi.supardi@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(13, '21', 'Peserta', 'Aryo Ardianto', '', '0000-00-00', '', 'Teknik Informatika', 'aryo.ardianto@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(14, '21', 'Peserta', 'Aditya Rachmawan', '', '0000-00-00', '', 'Teknik Informatika', 'aditya.rachmawan@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(19, '20', 'Peserta', 'Muhammad Ikhsan Thohir', '', '1993-04-15', 'Sukabumi', 'Sistem Inforamsi', 'ikhsan.thohir@gmail.com', '', '081615399070', 'Jl. Raya Cibolang Baru', '3202291504930003', 'bymg1tymcpkc4s4.jpg', 'B4094375', 'd2x4pxt4jq8gosw.jpg', 2018, '', '0', 'Ya', 0),
(20, '22', 'Peserta', 'Deki Akbar', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'deki.akbar@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(21, '22', 'Peserta', 'M. Gilang Fauzi', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'gilang.fauzi@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(22, '22', 'Peserta', 'Restu Nugraha', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'restu.nugraha@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(23, '22', 'Peserta', 'Ujang Heru Irawan', '', NULL, '', 'Teknik Informatika', 'ujang.heru@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(24, '23', 'Peserta', 'Asep Ramdan', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'asep.ramdan@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(25, '23', 'Peserta', 'Irfanudin', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'irfanudin@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(26, '23', 'Peserta', 'Nasrullah', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'nasrullah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(27, '23', 'Peserta', 'Lutfi Abdillah', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'lutfi.abdillah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(28, '24', 'Peserta', 'M. Azizudin', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'm.azizudin@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1000000),
(29, '24', 'Peserta', 'Saepul Rohman', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'saepul.rohman@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(30, '24', 'Peserta', 'Cici Lestari', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'cici.lestari@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(31, '24', 'Peserta', 'Wildatun Kasipah', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'wildatun.kasipah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(32, '25', 'Peserta', 'Opie Sopyan', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'opie.sopyan@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(33, '25', 'Peserta', 'Neng Robiyah', '', NULL, '', 'Teknik Informatika', 'neng.robiyah@nusaputra.ac.id', '', '', 'Kp. Sukamukti, RT003/005, Desa Cimenteng, Kec. Campaka, Kab. Cianjur', '3203155611950007', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(34, '25', 'Peserta', 'Siti Ravika Nuryani', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'siti.ravika@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(35, '25', 'Peserta', 'Redha Noormansyah', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'redha.noormansyah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(36, '26', 'Peserta', 'Elpid Multipi', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'elpid.multipi@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(37, '26', 'Peserta', 'Aditya Rismawan', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'aditya.rismawan@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(38, '26', 'Peserta', 'Yusup Maulana Nyaman', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'yusup.maulana@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(39, '26', 'Peserta', 'Gunawansyah', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'gunawansyah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1500000),
(40, '27', 'Peserta', 'Miraz Zumhadi Suwono', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'miraz.zumhadi@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(41, '27', 'Peserta', 'Euis Liani', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'euis.liani@nusaputra.ac.id', '', '', '', '32052854xx460003', 'd8ht7nyv5socgko.jpeg', '', '', 2018, '', '0', 'Tidak', 1000000),
(42, '27', 'Peserta', 'Dika Meldiana', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'dika.meldiana@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(43, '27', 'Peserta', 'Ade Suryana', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'ade.suryana@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(44, '28', 'Peserta', 'Ujang Indra Lesmana', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'ujang.indra@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(45, '28', 'Peserta', 'Adjie Nurharsoyo', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'adjie.nurharsoyo@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(46, '28', 'Peserta', 'Dicki Priyanto', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'dicki.priyanto@nusaputra.ac.id', '', '', '', '3602191007940004', '3056p4m5aw008o4.jpeg', '', '', 2018, '', '0', 'Tidak', 2000000),
(47, '28', 'Peserta', 'Deden', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'deden@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(48, '29', 'Peserta', 'Gilang Ginanjar', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'gilang.ginanjar@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(49, '29', 'Peserta', 'Indra Indriansyah', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'indra.indriansyah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 0),
(50, '29', 'Peserta', 'Farenza Reynalda', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'farenza.reynalda@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(51, '39', 'Peserta', 'Ragil Muhamad Fauzi', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'ragil.muhamad@nusaputra.ac.id', '', '', '', '3202080706960009', 'fl1dro9l2n4kog8.jpeg', '', '', 2018, '', '0', 'Tidak', 0),
(52, '29', 'Peserta', 'Firman Pratama', '', '0000-00-00', '', 'Desain Komunikasi Visual', 'firman.pratama@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(53, '30', 'Peserta', 'Muhamad Ismail', '', NULL, '', 'Teknik Informatika', 'muhamad.ismail@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(54, '30', 'Peserta', 'Solahudin', '', NULL, '', 'Teknik Informatika', 'solahudin@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(55, '30', 'Peserta', 'Rizal', '', NULL, '', 'Teknik Informatika', 'rizal@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(56, '9', 'Peserta', 'Kudin Rustaman', '', NULL, '', 'Sistem Inforamsi', 'kudin.rustaman@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Ya', 3000000),
(57, '9', 'Peserta', 'Yunita Gusti Nurani', '', NULL, '', 'Sistem Inforamsi', 'yunita.gusti@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(58, '9', 'Peserta', 'Neng Resti Noviansyah', '', NULL, '', 'Sistem Inforamsi', 'neng.resti@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1000000),
(59, '9', 'Peserta', 'Aditya Nurfitri', '', NULL, '', 'Sistem Inforamsi', 'aditya.nurfitri@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Ya', 2147483647),
(60, '10', 'Peserta', 'Ali Fahtiar Rahmawati', '', NULL, '', 'Sistem Inforamsi', 'ali.fahtiar@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1500000),
(61, '10', 'Peserta', 'Titin', '', NULL, '', 'Sistem Inforamsi', 'titin@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(62, '10', 'Peserta', 'Putri', '', NULL, '', 'Sistem Inforamsi', 'putri@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 0),
(63, '10', 'Peserta', 'Rian Rama Putra', '', NULL, '', 'Sistem Inforamsi', 'rian.rama@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(64, '11', 'Peserta', 'Muhammad Nurdin', '', NULL, '', 'Sistem Inforamsi', 'muhammad.nurdin@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 0),
(65, '11', 'Peserta', 'Sholahudin', '', NULL, '', 'Sistem Inforamsi', 'sholahudin@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 400000),
(66, '11', 'Peserta', 'Nopian rizki', '', NULL, '', 'Sistem Inforamsi', 'nopian.rizki@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1500000),
(67, '11', 'Peserta', 'Elsa Maula Utami', '', NULL, '', 'Sistem Inforamsi', 'elsa.maula@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(68, '12', 'Peserta', 'Muhammad Miftah', '', NULL, '', 'Sistem Inforamsi', 'muhammad.miftah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(69, '12', 'Peserta', 'Linda Santya', '', NULL, '', 'Sistem Inforamsi', 'linda.santya@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(70, '12', 'Peserta', 'Vilka Mandala', '', NULL, '', 'Sistem Inforamsi', 'vilka.mandala@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 0),
(71, '12', 'Peserta', 'Rena', '', NULL, '', 'Sistem Inforamsi', 'rena@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 0),
(72, '13', 'Peserta', 'Yulia Amanda', '', NULL, '', 'Sistem Inforamsi', 'yulia.amanda@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 0),
(73, '13', 'Peserta', 'deudeu Lisnawati', '', NULL, '', 'Sistem Inforamsi', 'deudeu.lisnawati@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(74, '13', 'Peserta', 'Desi Nuraeni', '', NULL, '', 'Sistem Inforamsi', 'desi.nuraeni@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(75, '13', 'Peserta', 'Bayu Firmansyah', '', NULL, '', 'Sistem Inforamsi', 'bayu.firmansyah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 0),
(76, '14', 'Peserta', 'Neng Sirly', '', NULL, '', 'Sistem Inforamsi', 'neng.sirly@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(77, '14', 'Peserta', 'Wahyudin', '', NULL, '', 'Sistem Inforamsi', 'wahyudin@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 0),
(78, '14', 'Peserta', 'Dea Fitriah', '', NULL, '', 'Sistem Inforamsi', 'dea.fitriah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(79, '14', 'Peserta', 'Santi nur alawiyah', '', NULL, '', 'Sistem Inforamsi', 'santi.nur@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(80, '15', 'Peserta', 'Erdi Ardiansyah', '', NULL, '', 'Sistem Inforamsi', 'erdi.ardiansyah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(81, '15', 'Peserta', 'Ana Zanatun Amalia', '', NULL, '', 'Sistem Inforamsi', 'ana.zanatun@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1000000),
(82, '15', 'Peserta', 'Sarah Rahman', '', NULL, '', 'Sistem Inforamsi', 'sarah.rahman@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1000000),
(83, '15', 'Peserta', 'Imam Fahrudin', '', NULL, '', 'Sistem Inforamsi', 'imam.fahrudin@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1000000),
(84, '16', 'Peserta', 'Ujang Isa Solehudin', '', NULL, '', 'Sistem Inforamsi', 'ujang.isa@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(85, '16', 'Peserta', 'Wulandari', '', NULL, '', 'Sistem Inforamsi', 'wulandari@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(86, '16', 'Peserta', 'Iis Nuraisyah', '', NULL, '', 'Sistem Inforamsi', 'iis.nuraisyah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(87, '16', 'Peserta', 'Nira Maesarah', '', NULL, '', 'Sistem Inforamsi', 'nira.maesarah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(88, '17', 'Peserta', 'Rio Bagus S', '', NULL, '', 'Sistem Inforamsi', 'rio.bagus@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(89, '17', 'Peserta', 'Hela Rahmasari', '', NULL, '', 'Sistem Inforamsi', 'hela.rahmasari@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1500000),
(90, '17', 'Peserta', 'Lorentina', '', NULL, '', 'Sistem Inforamsi', 'lorentina@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(91, '17', 'Peserta', 'Sri Ayu Ratnasari', '', NULL, '', 'Sistem Inforamsi', 'sri.ayu@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(92, '18', 'Peserta', 'Neng Nurhasanah', '', NULL, '', 'Sistem Inforamsi', 'neng.nurhasanah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(93, '18', 'Peserta', 'Intri Triani', '', NULL, '', 'Sistem Inforamsi', 'intri.triani@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(94, '18', 'Peserta', 'Tia Octaviani', '', NULL, '', 'Sistem Inforamsi', 'tia.octaviani@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(95, '18', 'Peserta', 'Gensa', '', NULL, '', 'Sistem Inforamsi', 'gensa@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 2000000),
(96, '19', 'Peserta', 'Nur Apriyanti', '', NULL, '', 'Sistem Inforamsi', 'nur.apriyanti@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(97, '19', 'Peserta', 'Rahayu Awaliyah', '', NULL, '', 'Sistem Inforamsi', 'rahayu.awaliyah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(98, '19', 'Peserta', 'Annisa Desi Pratiwi', '', NULL, '', 'Sistem Inforamsi', 'annisa.desi@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1000000),
(99, '19', 'Peserta', 'Agum Taufikurahman', '', NULL, '', 'Sistem Inforamsi', 'agum.taufikurahman@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 1000000),
(100, '20', 'Peserta', 'Nur Hasanah', '', NULL, '', 'Sistem Inforamsi', 'nur.hasanah@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 500000),
(101, '20', 'Peserta', 'Ucu Sutarmin', '', NULL, '', 'Sistem Inforamsi', 'ucu.sutarmin@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(102, '20', 'Peserta', 'Netta Septania', '', NULL, '', 'Sistem Inforamsi', 'netta.septania@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', 'Tidak', 3000000),
(103, '9,10,17', 'Pembimbing', 'Dudih Gustian, ST, M.Kom', '', NULL, '', '', 'dudih.gustian@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(104, '11,26', 'Pembimbing', 'M. Muslih, ST, M.Kom', '', NULL, '', '', 'muhamad.muslih@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(105, '12', 'Pembimbing', 'Nunik Destria A, ST,M.Kom', '', NULL, '', '', 'nunik@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(106, '18,13,14', 'Pembimbing', 'Sudin, S.T, M.Kom', '', NULL, '', '', 'sudin@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(107, '15,16', 'Pembimbing', 'Samsul Fahmi, M.Pd', '', NULL, '', '', 'samsul.pahmi@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(108, '19,40', 'Pembimbing', 'Mia Arma Desima, ST, MT', '', NULL, '', '', 'mia.arma@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(109, '20,29', 'Pembimbing', 'Anang Suryana, SPd, M.Si', '', NULL, '', '', 'anang.suryana@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(110, '23,24', 'Pembimbing', 'Hermanto, ST,M.Kom', '', NULL, '', '', 'hermanto@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(111, '23', 'Pembimbing', 'Muhammad Mahmud', '', NULL, '', '', 'muhammad.mahmud@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(112, '24', 'Pembimbing', 'Adrian Reza', '', NULL, '', '', 'adrian.reza@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(113, '25,26', 'Pembimbing', 'Somantri, ST, M.kom', '', NULL, '', '', 'somantri@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(114, '25', 'Pembimbing', 'Rian Hidayat M.Kom', '', NULL, '', '', '', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(115, '27,28', 'Pembimbing', 'Anggy Pradiftha J', '', NULL, '', '', 'mr.pradiftha@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(116, '30', 'Pembimbing', 'Mupaat', '', NULL, '', '', 'mupaat@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(117, '9', 'Pembimbing', 'Wisuda Jatmiko', '', NULL, '', '', 'wisuda.jatmiko@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(118, '18', 'Pembimbing', 'Dede Cahyadi', '', NULL, '', '', 'dede.cahyadi@nusaputra.ac.id', '', '', '', '', '', '', '', 2018, '', '0', '', 0),
(119, '44', 'Peserta', 'PESERTA 1', '', NULL, 'SUKABUMI', '', 'ikhsan.thohir@gmail.com', 'ikhsan.thohir@nusaputra.ac.id', '', '', '', 'p9mhyx78ntc8gs.jpg', '', '', 2019, 'nusaputraku', '3bysn0cqfpycgws.png', 'Tidak', 0);

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
(1, 'ICCED 2018', '2018', 'Thailand', '2018-09-06', 5700000, 3000000, ''),
(2, 'ICCED 2017', '2017', 'Malaysia', '0000-00-00', 0, 3000000, ''),
(3, 'ICCED 2019', '2019', 'Singapore', '2019-04-10', 0, 3000000, '');

-- --------------------------------------------------------

--
-- Table structure for table `arsip`
--

CREATE TABLE `arsip` (
  `id_arsip` int(11) NOT NULL,
  `nama_arsip` varchar(255) NOT NULL,
  `jenis_arsip` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `keterangan` text,
  `pemilik` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arsip_jenis`
--

CREATE TABLE `arsip_jenis` (
  `id_jenis_arsip` int(11) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arsip_jenis`
--

INSERT INTO `arsip_jenis` (`id_jenis_arsip`, `nama_jenis`, `keterangan`) VALUES
(2, 'Bukti Transfer', 'Bukti Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `id_kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `id_user`, `id_kategori`, `judul`, `slug`, `isi`, `gambar`, `tag`, `tanggal`) VALUES
(1, '1', '3', 'Cara membuat blog sederhana dengan codeigniter', 'blog-code-igniter', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: Raleway, sans-serif; font-size: 15px;\">Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</span></p>\r\n', 'aafa4-1917474.jpg', 'blog codeigniter', '2018-06-28 07:00:00'),
(2, '1', '1', 'Teknik SEO bagi pemula untuk blogsopt dan wordpress', 'teknik-seo', '<p>\r\n	Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\r\n', 'cf20d-w_2014_339.jpg', 'seo', '2018-06-05 07:00:00'),
(3, '1', '1', 'Sistem Informasi Perpustakaan', 'sistem-inforsis-perpus', '<p>\r\n	Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\r\n', '505de-bridge.jpg', 'perpus', '2018-06-05 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `berita_kategori`
--

CREATE TABLE `berita_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita_kategori`
--

INSERT INTO `berita_kategori` (`id`, `nama`, `jenis`, `keterangan`) VALUES
(1, 'Tips Trik', '', ''),
(2, 'Berita', '', ''),
(3, 'News', '', ''),
(4, 'Politik', '', ''),
(5, 'Sport', '', ''),
(6, 'Technology', '', '');

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
  `country` varchar(255) NOT NULL,
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

--
-- Dumping data for table `intern`
--

INSERT INTO `intern` (`id`, `periode_tahun`, `photo`, `name`, `date_of_birth`, `place_of_birth`, `gender`, `nationality`, `address`, `zip_code`, `city`, `state`, `country`, `phone`, `email`, `last_university`, `passport_number`, `passport_issue`, `passport_expiry`, `passport_scan`, `visa_scan`, `start_internship`, `end_internship`) VALUES
(1, '2018', '', 'Celine Bartelds', '0000-00-00', '', '', '', '', '', '', '', 'Netherland', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '2018-06-11', '2018-06-09'),
(2, '2018', '', 'Sebastian Schone', '0000-00-00', '', '', '', '', '', '', '', 'Germany', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '2018-06-08', '2018-06-30'),
(3, '2018', '', 'Anna Guaita Crespo', '0000-00-00', '', '', '', '', '', '', '', 'Spain', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '2018-06-03', '2018-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `intern_file`
--

CREATE TABLE `intern_file` (
  `id` int(11) NOT NULL,
  `nama_intern` varchar(255) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `disimpan_di` varchar(255) NOT NULL,
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
-- Table structure for table `nspgo_negara`
--

CREATE TABLE `nspgo_negara` (
  `id` int(11) NOT NULL,
  `nama_negara` varchar(255) NOT NULL,
  `harga_poin` int(11) NOT NULL,
  `kode_negara` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nspgo_negara`
--

INSERT INTO `nspgo_negara` (`id`, `nama_negara`, `harga_poin`, `kode_negara`, `keterangan`) VALUES
(1, 'Singapura', 5, 'sg', '');

-- --------------------------------------------------------

--
-- Table structure for table `nspgo_peserta`
--

CREATE TABLE `nspgo_peserta` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `tahun_angkatan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `ketarangan` varchar(255) NOT NULL,
  `poin_dari` varchar(255) DEFAULT NULL,
  `poin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nspgo_peserta`
--

INSERT INTO `nspgo_peserta` (`id`, `nama`, `jurusan`, `semester`, `tahun_angkatan`, `status`, `ketarangan`, `poin_dari`, `poin`) VALUES
(8, '123', '', '', '', '', '', NULL, ''),
(9, 'asd', '', '', '', '', '', '8', '');

-- --------------------------------------------------------

--
-- Table structure for table `sertifikat_conference`
--

CREATE TABLE `sertifikat_conference` (
  `id_sertifikat` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `nomor_hash` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `presenter` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sertifikat_conference`
--

INSERT INTO `sertifikat_conference` (`id_sertifikat`, `nomor`, `nomor_hash`, `author`, `presenter`, `judul`) VALUES
(1, '25', 'f6e1126cedebf23e1463aee73f9df08783640400', 'Achmad Tarmizi , Ika Chandra Hapsari , Achmad Nizar Hidayanto , Adhi Yuniarto L.Y , Herkules', 'Ika Chandra Hapsari', 'Information Security Awareness National Nuclear Energy Agency of Indonesia (BATAN)'),
(2, '29', '', 'Xiaolong Ma , Bin Gao , Zhiguo Jiang , Jianjun Chen', 'Xiaolong Ma', 'A Novel System Solution for Crowd Supervision '),
(3, '85', '1352246e33277e9d3c9090a434fa72cfa6536ae2', 'Satria Robi Trisnanto , Gagus Ketut Sunnardianto , Iwan Setiawan', 'Satria Robi Trisnanto', 'Fabrication of Superhydrophobic CuO Coating onSteel by Electrodeposition Modified with Stearic Acid'),
(4, '31', '', 'Elfira Fauziah , Putu W. Handayani , Qorib Munajat', 'Qorib Munajat', 'The Implementation of Internet Memes toBuild Brand Awareness of E-Commerce in Indonesia'),
(5, '89', '', 'Gabriella Sekar Shada , Media Anugerah Ayu', 'Gabriella Sekar Shada', 'Designing Android User Interface for University Mobile Library'),
(6, '33', 'b6692ea5df920cad691c20319a6fffd7a4a766b8', '<p>Kuncoro Baroto , Puspa Sandhyaduhita , Wahyu Wibowo , Achmad Hidayanto</p>', 'Puspa Sandhyaduhita', 'Factors Affecting the Effectiveness of SCM-IS: a Case of XYZ'),
(7, '97', '812ed4562d3211363a7b813aa9cd2cf042b63bb2', '<p>Gerard Borg , Zia Ud-Din Javaid , Michael Blacksell , Paul Redman , Daniel Tempra , Marina Artiyasa , Teddy Mantoro , Media A. Ayu</p>', 'Gerard Borg', 'ANU-MIMO: A Community Wireless NetworkInfrastructure for Remote Populations'),
(8, '100', '', 'Ahmad Hidayatullah , Media Ayu Anugerah', 'Ahmad Hidayatullah', 'A Recommender System for E-Commerce Using Multi-Objective Ranked Bandits Algorithm'),
(9, '32', 'cb4e5208b4cd87268b208e49452ed6e89a68e0b8', 'Yudhistira Normandia , Larastri Kumaralalita , Achmad Nizar Hidayanto , Widijanto Satyo Nugroho , Muhammad Rifki Shihab', 'Muhammad Rifki Shihab', 'Measurement of Employee Information Security\nAwareness using Analytic Hierarchy Process \n(AHP): A Case Study of Foreign Affairs Ministry'),
(10, '24', '4d134bc072212ace2df385dae143139da74ec0ef', 'Hamdi Hidayatullah , Achmad Nizar Hidayanto , Fatimah Azzahro , Widijanto Satyo Nugroho , Oddi Muhammad Ikbar', 'Fatimah Azzahro', 'An Empirical Examination of Factors Affecting\nBehavioral Intention to use CCIS using TOE \nFramework'),
(11, '27', '', 'Ariel Dame Sari Sirait , Widia Resti Fitriani , Achmad Nizar Hidayanto , Betty Purwandari , Meidi Kosandi', 'Widia Resti Fitriani', 'Evaluation of Social Media Preference \nas e-Participation Channel for Students  \nusing Fuzzy AHP and TOPSIS '),
(12, '80', '', 'Gerard Borg , Zia-Ud-Din Javaid , Asaduzzaman Khandaker', 'Gerard Borg', 'SDD-MIMO: Ubiquitous Embedded MIMO for\ncommunity broadband'),
(13, '23', '', 'Herdaya Adiyasa , Achmad Nizar Hidayanto , Ave Adriana Pinem , Solikin , Edi Surya Negara , Poppy Buana Mega Putri', 'Ave Adriana Pinem', 'Exploring the Factors for Cloud Computing\nAdoption in Indonesia'),
(14, '67', '', 'Rama Krishna Kakani , A.D Darji', 'A.D Darji', 'Transactional Test Environment For Faster And\nEarly Verification Of Digital Designs'),
(15, '47', '', 'Abid Jamil , Ghulam Mustafa , Rehan Ashraf , Tahir Farooq', 'Abid Jamil', 'Student Performance prediction using algorithms of Data Mining'),
(16, '18', '', 'Nur Fitriah Ayuning Budi , Achmad Nizar Hidayanto , Puspa I. Sandhyaduhita , Theresia Wati', 'Nur Fitriah Ayuning Budi', 'Developing Information Quality Model and\nMeasuring Information Quality for Further \nImprovement: A Case of ERP System of A StateOwned\nCompany\n'),
(17, '56', '', 'Muhammad Faisal Ibrahim', 'Muhammad Faisal Ibrahim', 'Integration Dual Channel Supply Chain with\nPermissible Delay in Payment & Delay of Online \nProduct Launch Considerations '),
(18, '36', '', 'Meyliana , Henry Antonius Eka Widjaja , Audika Putri Larasati , Resi Respati , Violeta Ranaputri', 'Meyliana', 'The Evaluation of Enterprise Resource Planning\n(ERP) Financial Accounting and Control using \nTechnology Acceptance Model '),
(19, '63', '', 'Rizqy Puspitasari , Satrio Baskoro Yudhoatmojo , Ika Chandra Hapsari , Achmad Nizar Hidayanto', 'Satrio Baskoro Yudhoatmojo', 'Analysis of Success Level and Supporting Factors of IT Outsourcing Implementation : A Case Study at PT Bank Bukopin Tbk.'),
(20, '65', '', 'Rahmat Sulaiman , Burham Isnanto , Hengki , Chandra Kirana', 'Rahmat Sulaiman', 'Cryptography in (LSB) Method Using RC4 Algorithm and AES Algorithm in Digital Image to Improve Message Security'),
(21, '72', '', 'Syah Alam , Anggy Pradiftha Junfithrana , Indra Surjati , Yuli Kurnia Ningsih , Harry Ramza , Markus Upa', '?', 'Improving Performance and Size Reduction Of\nTruncated Microstrip Antenna Using U Slot            \nFor LTE Application '),
(22, '7', '', 'Fatimah Shera Puteri , Putu Wuri Handayani , Fatimah Azzahro , Ave Andriana Pinem', 'Putu Wuri Handayani', 'Analysis of Investor Intention to Invest Capital in Small and Medium Enterprises Through Peer-to-peer Lending in Indonesia'),
(23, '101', '', 'Chamode Anjana Hewawasam Puwakpitiyage , Vegnish Rao a/1 Paramesura Rao , Farhana Islam , Dalia Abdul Kareen Shafiq , Dini Oktarina Dwi Handayani , Hamwira Yacoob , Teddy Mantoro', 'Dini Oktarina Dwi Handayani', 'Design and Development of Facial Recognitionbased Library Management System (FRLMS)'),
(24, '83', '', 'Rahmi Karolina , Syahrizal , M. Agung P Handana , Deni Yusriadi Hasibuan', 'Rahmi Karolina', 'Development Of Interlock Bricks With Eruption Ash Of Mount Sinabung As One of Its Constituent Materials'),
(25, '86', '', 'Dina Fitria Murad , Yaya Heryadi , Bambang Dwi Wijanarko , Sani Muhamad Isa , Widodo Budiharto', '?', 'Recommendation System for Smart LMS using Machine Learning: A Systematic Literature  Review '),
(26, '87', '', 'Erick Fernando , Dina Fitria Murad , Bambang Dwi Wijanarko', '?', 'Classification and Advantages Parallel Computing in Process Computation : A Systematic Literature Review\n'),
(27, '103', '', 'Kurniawan , Engkos Achmad Kuncoro , Bambang Dwi Wijanarko , Ridho Bramulya Ikhsan', '?', 'Study of the Use of Artificial Intelligence in\nStrategic Planning in the Logistics Services \nIndustry in Indonesia'),
(28, '2', '', 'Dudih Gustian , Ali Fahtiar Rahmawati , Titin , Rian Rama Putra , Putri Anisa', 'Dudih Gustian', 'COMPARISON OF CLASSIFICATION DATA MINING IN PROCESS MAJORS STUDENTS'),
(29, '11', '', 'Dewi Sartika T , Iqbal Sadam Mustakim , Eka Nurachman , Lyisa Nurpaidah , Randi Ferdiansah , M. Ammar , Rida I. Sitepu', 'Dewi Sartika T', 'Measurement and Modeling of Infiltration Rate at Campus Area-University of Nusa Putra, Sukabumi'),
(30, '17', '', 'Yudi Nata , Yana Mulyana , Oscar Haris , Usup , Muhammad Saripul Hidayat', 'YUDI NATA', 'OPTIMIZING THE V FLOW MODEL ON THE BELT CONVEYOR  IN GETTING THE OPTIMAL COAL FLOW RATE WITH CFD METHOD'),
(31, '28', '', 'Agustami Sitorus , Albi Fauzi , Gilang Ramadhan , Rahman , Kuswandi', 'Agustami Sitorus', 'Conceptual Design of Harvesters Knife for Chinese Spinach (Ipomoea Reptans Poir.): CAD Approach'),
(32, '37', '', 'Anang Suryana , Farenza Reynaldi , Firman Pratama , Gilang Ginanjar , Indra Indriansyah , Deni Hasman', 'Anang Suryana', 'IMPLEMENTATION OF HAVERSINE FORMULA ON THE LIMITATION OF E-VOTING RADIUS BASED ON ANDROID '),
(33, '45', '', 'Samsul Pahmi , Sudin Saepudin , Nira Maesarah , Ujang Isa Solehudin , Wulandari', 'Samsul Pahmi', 'Implementation of CART (Classification And Regression Trees) Algorithm For Determining  Factors Affecting Employee Performance'),
(34, '46', '', 'Samsul Pahmi , Nunik Destria Arianti , Ana Zanatun Amalia , Imam Fahrudin , Sarah Rahman , Erdi Ardiansyah', 'Samsul Pahmi', 'Estimated Missing Data On Multiple Linear Regression using Algorithm EM (Expectation-Maximization) For Prediction Revenue Company '),
(35, '69', '', 'Paikun , Muhammad Kahpi , Rina Krisnawati , Andri Agustian , Randi Rohimat , Jasmansyah', 'Paikun', 'Estimates of Material Need on Houses Construction Using Regression Model Program'),
(36, '73', '', 'Bambang Jatmika , Miptahul Pallah , Nuriya Akmaliyah , Ardi Sardi , Rezha Firdaus Kusuma Barkah , Agus Darmawan', 'Bambang Jatmika', 'The Evaluation on the Saturation Degree on Pelabuhan II Street of Sukabumi City '),
(37, '93', '', 'Paikun , Trihono Kadri , Dikdik Firmansyah , Umar Faisal , Siti Maratun Sholihah , Fachry Badil Usman , Jasmansyah', 'Paikun', 'Conceptual Estimation of Cost Significant Model on Shop-Houses Construction  '),
(38, '82', '', 'Anggy Pradiftha Junfithrana , Euis Liani , Miraz Z. Suwono , Dika Meldiana , Ade Suryana', 'Anggy Pradiftha Junfithrana', 'Rice Donation System in Orphanage Based on\nInternet of Things, Raspberry-Pi, and Blockchain'),
(39, '84', '', 'Anggy Pradiftha Junfithrana , Mia Arma Desima , Dicki Priyanto , Ujang Indra Lesmana , Deden , Adjie', 'Mia Arma Desima', 'Improving Security Accesibility Using Speech Recognition System Based on Pitch, Cepstrum and\nResonance Frequency  '),
(40, '96', '', 'Hasan Basri , Bambang Jatmika , Zainal Arifin , Suci Sundari , Apriliana , Budi Barkah , Hermanto', 'Bambang Jatmika / Hermanto', 'Measurement of Accessibility Index Using Gravity Model Based on GIS in Sukabumi District '),
(41, '19', '', 'Muhamad Muslih , Somantri , Dedi Supardi , Yusup Maulana Nyaman , Aditya Rismawan , Gunawansyah', 'Somantri', 'Developing Smart Workspace Based IOT\nwith Artificial Intelligence Using Bot Chat \nTelegram ');

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
(0, 'SIIRO', 'LOGO-IRO.jpg', 'Jl Raya Ciboalang No 21', 'Sistem Informasi IRO', 'brown');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id` int(11) NOT NULL,
  `id_nomor` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `ringkasan` varchar(255) NOT NULL,
  `scan_file` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surat_nomor`
--

CREATE TABLE `surat_nomor` (
  `id` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `surat_ke` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `id_surat` varchar(255) NOT NULL,
  `id_peserta_ais` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_nomor`
--

INSERT INTO `surat_nomor` (`id`, `nomor`, `surat_ke`, `jenis`, `bulan`, `tahun`, `id_surat`, `id_peserta_ais`) VALUES
(7, '001/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '43'),
(8, '001/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '59'),
(9, '001/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '37'),
(10, '001/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '10'),
(11, '32/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(12, '33/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(13, '34/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(14, '35/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(15, '35/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(16, '36/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(17, '37/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(18, '38/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(19, '38/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(20, '39/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(21, '40/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(22, '41/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(23, '42/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(24, '42/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(25, '43/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(26, '43/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(27, '42/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(28, '41/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(29, '40/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(30, '39/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '23'),
(31, '42/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '88'),
(32, '47/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '83'),
(33, '48/U.NSP/AIS/VIII/2018', 0, '', '', '', '', '83');

-- --------------------------------------------------------

--
-- Table structure for table `surat_setting`
--

CREATE TABLE `surat_setting` (
  `id_surat_setting` int(11) NOT NULL,
  `jenis_surat` varchar(255) NOT NULL,
  `format_surat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_setting`
--

INSERT INTO `surat_setting` (`id_surat_setting`, `jenis_surat`, `format_surat`) VALUES
(1, 'surat_keterangan_ais', '<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-align: center;\">&nbsp;</p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-align: center;\">&nbsp;</p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-align: center;\">&nbsp;</p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-align: center;\">&nbsp;</p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-align: center;\">&nbsp;</p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-align: center;\">&nbsp;</p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-align: center;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: underline; -webkit-text-decoration-skip: none; text-decoration-skip-ink: none; vertical-align: baseline; white-space: pre-wrap;\">SURAT KETERANGAN</span></p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-align: center;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Nomor: %nomor%</span></p>\n<p><strong id=\"docs-internal-guid-5065605f-7fff-30c5-4dd1-b8bc839cdfd7\" style=\"font-weight: normal;\"><br /><br /></strong></p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Yang bertandatangan di bawah ini :</span></p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Nama Lengkap :</span><span style=\"background-color: transparent; font-family: \'Times New Roman\'; font-size: 12pt; white-space: pre-wrap;\"> Anggy Pradiftha Junfithrana, S.Pd, M.T</span></p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Jabatan</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: Kepala Kantor Urusan Internasional</span></p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Dengan ini menerangkan&nbsp;bahwa Mahasiswa kami:</span></p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 12pt;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Nama &nbsp;Lengkap</span>&nbsp;&nbsp;<span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: %nama%</span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br class=\"kix-line-break\" /></span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">NIM</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: </span><span style=\"font-family: \'Times New Roman\'; font-size: 16px; white-space: pre-wrap;\">%nim%</span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br class=\"kix-line-break\" /></span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Program Studi </span>&nbsp; &nbsp;<span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: </span><span style=\"font-family: \'Times New Roman\'; font-size: 16px; white-space: pre-wrap;\">%jurusan%</span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br class=\"kix-line-break\" /></span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Semester</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: </span><span style=\"font-family: \'Times New Roman\'; font-size: 16px; white-space: pre-wrap;\">%semester%</span></p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 12pt;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Sehubungan dengan Skripsi/Tugas Akhir, yang&nbsp;bersangkutan akan mengikuti kegiatan seminar International Conference on Computing, Engineering, and Design (ICCED 2018) pada :</span></p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 12pt;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Tanggal</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: 4-9 September 2018</span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br class=\"kix-line-break\" /></span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Tempat</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: Asian Institute of Technology Conference Center</span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br class=\"kix-line-break\" /></span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Alamat</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: Khlong Nueng, Khlong Luang District, Pathum Thani 12120, Thailand</span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br class=\"kix-line-break\" /></span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Website</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: http://icced.nusaputra.ac.id</span></p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 12pt;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Demikianlah surat ini dibuat dengan sebenarnya dan dapat dipergunakan sebagaimana mestinya.</span></p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 12pt;\">&nbsp;</p>\n<p dir=\"ltr\" style=\"line-height: 1.2; margin-top: 0pt; margin-bottom: 12pt;\"><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Sukabumi, %tanggal%<br /></span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Kepala Kantor Urusan Internasional<br /></span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><img style=\"border: none; transform: rotate(0.00rad); -webkit-transform: rotate(0.00rad);\" src=\"https://lh4.googleusercontent.com/ByF1RDBdFuIEZX3RKi2cOwVf7vTmaFjSDnDO7wY3A0fDSbhdWLdQL2d7JpZYtdketWoy_uiM1CcNfrv9HXeoJZe8k0zpIpNs9zNub3x1zhcsF4k2KurRsZAN5JBYgbrcatuuxfzn\" width=\"238\" height=\"102\" /><br /></span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Universitas Nusa Putra<br /></span><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">(Anggy Pradiftha Junfithrana, S.Pd, M.T)</span></p>\n<p><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">&nbsp;</span></p>'),
(2, 'surat_sponsor_paspor_ais', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `akses_level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `nama_user`, `foto`, `akses_level`) VALUES
(13, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Ikhsan Thohir', '7zgum9mv0eo8k8c.png', 'admin'),
(17, 'operator', 'fe96dd39756ac41b74283a9292652d366d73931f', 'Operator', '1h6xpx0b57k08ck.png', 'operator'),
(18, 'peserta_ais', 'afaec4d6a6360d4830744be50c190a02db2fcfa3', 'PESERTA AIS', 'wj13sc6qzcgss0.png', 'peserta_ais');

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
-- Indexes for table `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`id_arsip`);

--
-- Indexes for table `arsip_jenis`
--
ALTER TABLE `arsip_jenis`
  ADD PRIMARY KEY (`id_jenis_arsip`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
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
-- Indexes for table `nspgo_negara`
--
ALTER TABLE `nspgo_negara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nspgo_peserta`
--
ALTER TABLE `nspgo_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sertifikat_conference`
--
ALTER TABLE `sertifikat_conference`
  ADD PRIMARY KEY (`id_sertifikat`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_nomor`
--
ALTER TABLE `surat_nomor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_setting`
--
ALTER TABLE `surat_setting`
  ADD PRIMARY KEY (`id_surat_setting`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ais_pembayaran`
--
ALTER TABLE `ais_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ais_peserta`
--
ALTER TABLE `ais_peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `ais_pulang`
--
ALTER TABLE `ais_pulang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ais_setting`
--
ALTER TABLE `ais_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `arsip`
--
ALTER TABLE `arsip`
  MODIFY `id_arsip` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arsip_jenis`
--
ALTER TABLE `arsip_jenis`
  MODIFY `id_jenis_arsip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `conference_email`
--
ALTER TABLE `conference_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `intern`
--
ALTER TABLE `intern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `nspgo_negara`
--
ALTER TABLE `nspgo_negara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nspgo_peserta`
--
ALTER TABLE `nspgo_peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sertifikat_conference`
--
ALTER TABLE `sertifikat_conference`
  MODIFY `id_sertifikat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_nomor`
--
ALTER TABLE `surat_nomor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `surat_setting`
--
ALTER TABLE `surat_setting`
  MODIFY `id_surat_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
