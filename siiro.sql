-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 12:40 PM
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
(43, 'TM 3', '', '', 2018);

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
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_ktp` varchar(255) NOT NULL,
  `scan_ktp` varchar(255) NOT NULL,
  `nomor_paspor` varchar(255) NOT NULL,
  `scan_paspor` varchar(255) NOT NULL,
  `ikut_travel` varchar(255) NOT NULL,
  `pembayaran` int(11) DEFAULT '0',
  `periode_tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ais_peserta`
--

INSERT INTO `ais_peserta` (`id`, `kelompok`, `status`, `nama`, `tanggal_lahir`, `tempat_lahir`, `jurusan`, `email`, `nomor_hp`, `alamat`, `nomor_ktp`, `scan_ktp`, `nomor_paspor`, `scan_paspor`, `ikut_travel`, `pembayaran`, `periode_tahun`) VALUES
(9, '21', 'Peserta', 'M. Anton Permana', NULL, '', 'Teknik Informatika', 'anton.permana@nusaputra.ac.id', '', '', '', '', '', '', 'Ikut', 0, 2018),
(10, '21', 'Peserta', 'Agham Rahmadi Setiawan', '0000-00-00', '', 'Teknik Informatika', 'agham.rahmadi@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(12, '4,13', 'Pembimbing', 'Dedi Supardi, ST,M.Kom', '0000-00-00', '', '', 'dedi.supardi@nusaputra.ac.id', '', '', '', '', '', '', '', 0, 2018),
(13, '21', 'Peserta', 'Aryo Ardianto', '0000-00-00', '', 'Teknik Informatika', 'aryo.ardianto@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(14, '21', 'Peserta', 'Aditya Rachmawan', '0000-00-00', '', 'Teknik Informatika', 'aditya.rachmawan@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(19, '20', 'Peserta', 'Muhammad Ikhsan Thohir', '1993-04-15', 'Sukabumi', 'Sistem Inforamsi', 'ikhsan.thohir@gmail.com', '081615399070', 'Jl. Raya Cibolang Baru', '', 'bymg1tymcpkc4s4.jpg', 'B4094375', 'd2x4pxt4jq8gosw.jpg', 'Ikut', 0, 2018),
(20, '22', 'Peserta', 'Deki Akbar', '0000-00-00', '', 'Desain Komunikasi Visual', 'deki.akbar@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(21, '22', 'Peserta', 'M. Gilang Fauzi', '0000-00-00', '', 'Desain Komunikasi Visual', 'gilang.fauzi@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(22, '22', 'Peserta', 'Restu Nugraha', '0000-00-00', '', 'Desain Komunikasi Visual', 'restu.nugraha@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(23, '22', 'Peserta', 'Ujang Heru Irawan', '0000-00-00', '', 'Desain Komunikasi Visual', 'ujang.heru@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(24, '23', 'Peserta', 'Asep Ramdan', '0000-00-00', '', 'Desain Komunikasi Visual', 'asep.ramdan@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(25, '23', 'Peserta', 'Irfanudin', '0000-00-00', '', 'Desain Komunikasi Visual', 'irfanudin@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(26, '23', 'Peserta', 'Nasrullah', '0000-00-00', '', 'Desain Komunikasi Visual', 'nasrullah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(27, '23', 'Peserta', 'Lutfi Abdillah', '0000-00-00', '', 'Desain Komunikasi Visual', 'lutfi.abdillah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(28, '24', 'Peserta', 'M. Azizudin', '0000-00-00', '', 'Desain Komunikasi Visual', 'm.azizudin@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(29, '24', 'Peserta', 'Saepul Rohman', '0000-00-00', '', 'Desain Komunikasi Visual', 'saepul.rohman@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(30, '24', 'Peserta', 'Cici Lestari', '0000-00-00', '', 'Desain Komunikasi Visual', 'cici.lestari@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(31, '24', 'Peserta', 'Wildatun Kasipah', '0000-00-00', '', 'Desain Komunikasi Visual', 'wildatun.kasipah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(32, '25', 'Peserta', 'Opie Sopyan', '0000-00-00', '', 'Desain Komunikasi Visual', 'opie.sopyan@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(33, '25', 'Peserta', 'Neng Robiyah', '0000-00-00', '', 'Desain Komunikasi Visual', 'neng.robiyah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(34, '25', 'Peserta', 'Siti Ravika Nuryani', '0000-00-00', '', 'Desain Komunikasi Visual', 'siti.ravika@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(35, '25', 'Peserta', 'Redha Noormansyah', '0000-00-00', '', 'Desain Komunikasi Visual', 'redha.noormansyah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(36, '26', 'Peserta', 'Elpid Multipi', '0000-00-00', '', 'Desain Komunikasi Visual', 'elpid.multipi@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(37, '26', 'Peserta', 'Aditya Rismawan', '0000-00-00', '', 'Desain Komunikasi Visual', 'aditya.rismawan@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(38, '26', 'Peserta', 'Yusup Maulana Nyaman', '0000-00-00', '', 'Desain Komunikasi Visual', 'yusup.maulana@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(39, '26', 'Peserta', 'Gunawansyah', '0000-00-00', '', 'Desain Komunikasi Visual', 'gunawansyah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(40, '27', 'Peserta', 'Miraz Zumhadi Suwono', '0000-00-00', '', 'Desain Komunikasi Visual', 'miraz.zumhadi@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(41, '27', 'Peserta', 'Euis Liani', '0000-00-00', '', 'Desain Komunikasi Visual', 'euis.liani@nusaputra.ac.id', '', '', '32052854xx460003', 'd8ht7nyv5socgko.jpeg', '', '', 'Tidak', 0, 2018),
(42, '27', 'Peserta', 'Dika Meldiana', '0000-00-00', '', 'Desain Komunikasi Visual', 'dika.meldiana@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(43, '27', 'Peserta', 'Ade Suryana', '0000-00-00', '', 'Desain Komunikasi Visual', 'ade.suryana@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(44, '28', 'Peserta', 'Ujang Indra Lesmana', '0000-00-00', '', 'Desain Komunikasi Visual', 'ujang.indra@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(45, '28', 'Peserta', 'Adjie Nurharsoyo', '0000-00-00', '', 'Desain Komunikasi Visual', 'adjie.nurharsoyo@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(46, '28', 'Peserta', 'Dicki Priyanto', '0000-00-00', '', 'Desain Komunikasi Visual', 'dicki.priyanto@nusaputra.ac.id', '', '', '3602191007940004', '3056p4m5aw008o4.jpeg', '', '', 'Tidak', 0, 2018),
(47, '28', 'Peserta', 'Deden', '0000-00-00', '', 'Desain Komunikasi Visual', 'deden@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(48, '29', 'Peserta', 'Gilang Ginanjar', '0000-00-00', '', 'Desain Komunikasi Visual', 'gilang.ginanjar@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(49, '29', 'Peserta', 'Indra Indriansyah', '0000-00-00', '', 'Desain Komunikasi Visual', 'indra.indriansyah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(50, '29', 'Peserta', 'Farenza Reynalda', '0000-00-00', '', 'Desain Komunikasi Visual', 'farenza.reynalda@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(51, '39', 'Peserta', 'Ragil Muhamad Fauzi', '0000-00-00', '', 'Desain Komunikasi Visual', 'ragil.muhamad@nusaputra.ac.id', '', '', '3202080706960009', 'fl1dro9l2n4kog8.jpeg', '', '', 'Tidak', 0, 2018),
(52, '29', 'Peserta', 'Firman Pratama', '0000-00-00', '', 'Desain Komunikasi Visual', 'firman.pratama@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 2000000, 2018),
(53, '30', 'Peserta', 'Muhamad Ismail', '0000-00-00', '', 'Desain Komunikasi Visual', 'muhamad.ismail@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 3000000, 2018),
(54, '30', 'Peserta', 'Solahudin', '0000-00-00', '', 'Desain Komunikasi Visual', 'solahudin@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 3000000, 2018),
(55, '30', 'Peserta', 'Rizal', '0000-00-00', '', 'Desain Komunikasi Visual', 'rizal@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 3000000, 2018),
(56, '9', 'Peserta', 'Kudin Rustaman', '0000-00-00', '', 'Desain Komunikasi Visual', 'kudin.rustaman@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 3000000, 2018),
(57, '9', 'Peserta', 'Yunita Gusti Nurani', '0000-00-00', '', 'Desain Komunikasi Visual', 'yunita.gusti@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 2000000, 2018),
(58, '9', 'Peserta', 'Neng Resti Noviansyah', '0000-00-00', '', 'Desain Komunikasi Visual', 'neng.resti@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 1000000, 2018),
(59, '9', 'Peserta', 'Aditya Nurfitri', '0000-00-00', '', 'Desain Komunikasi Visual', 'aditya.nurfitri@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 2000000, 2018),
(60, '10', 'Peserta', 'Ali Fahtiar Rahmawati', '0000-00-00', '', 'Desain Komunikasi Visual', 'ali.fahtiar@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 1500000, 2018),
(61, '10', 'Peserta', 'Titin', '0000-00-00', '', 'Desain Komunikasi Visual', 'titin@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 3000000, 2018),
(62, '10', 'Peserta', 'Putri', '0000-00-00', '', 'Desain Komunikasi Visual', 'putri@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(63, '10', 'Peserta', 'Rian Rama Putra', '0000-00-00', '', 'Desain Komunikasi Visual', 'rian.rama@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 3000000, 2018),
(64, '11', 'Peserta', 'Muhammad Nurdin', '0000-00-00', '', 'Desain Komunikasi Visual', 'muhammad.nurdin@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(65, '11', 'Peserta', 'Sholahudin', '0000-00-00', '', 'Desain Komunikasi Visual', 'sholahudin@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 400000, 2018),
(66, '11', 'Peserta', 'Nopian rizki', '0000-00-00', '', 'Desain Komunikasi Visual', 'nopian.rizki@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 1500000, 2018),
(67, '11', 'Peserta', 'Elsa Maula Utami', '0000-00-00', '', 'Desain Komunikasi Visual', 'elsa.maula@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 2000000, 2018),
(68, '12', 'Peserta', 'Muhammad Miftah', '0000-00-00', '', 'Desain Komunikasi Visual', 'muhammad.miftah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 500000, 2018),
(69, '12', 'Peserta', 'Linda Santya', NULL, '', 'Desain Komunikasi Visual', 'linda.santya@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 3000000, 2018),
(70, '12', 'Peserta', 'Vilka Mandala', NULL, '', 'Desain Komunikasi Visual', 'vilka.mandala@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(71, '12', 'Peserta', 'Rena', NULL, '', 'Desain Komunikasi Visual', 'rena@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(72, '13', 'Peserta', 'Yulia Amanda', NULL, '', 'Desain Komunikasi Visual', 'yulia.amanda@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(73, '13', 'Peserta', 'deudeu Lisnawati', NULL, '', 'Desain Komunikasi Visual', 'deudeu.lisnawati@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 2000000, 2018),
(74, '13', 'Peserta', 'Desi Nuraeni', NULL, '', 'Sistem Inforamsi', 'desi.nuraeni@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 2000000, 2018),
(75, '13', 'Peserta', 'Bayu Firmansyah', NULL, '', 'Sistem Inforamsi', 'bayu.firmansyah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(76, '14', 'Peserta', 'Neng Sirly', NULL, '', 'Sistem Inforamsi', 'neng.sirly@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 2000000, 2018),
(77, '14', 'Peserta', 'Wahyudin', NULL, '', 'Sistem Inforamsi', 'wahyudin@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 0, 2018),
(78, '14', 'Peserta', 'Dea Fitriah', NULL, '', 'Sistem Inforamsi', 'dea.fitriah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 500000, 2018),
(79, '14', 'Peserta', 'Santi nur alawiyah', NULL, '', 'Sistem Inforamsi', 'santi.nur@nusaputra.ac.id', '', '', '', '', '', '', 'Ya', 3000000, 2018),
(80, '15', 'Peserta', 'Erdi Ardiansyah', NULL, '', 'Desain Komunikasi Visual', 'erdi.ardiansyah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 2000000, 2018),
(81, '15', 'Peserta', 'Ana Zanatun Amalia', NULL, '', 'Desain Komunikasi Visual', 'ana.zanatun@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 1000000, 2018),
(82, '15', 'Peserta', 'Sarah Rahman', NULL, '', 'Desain Komunikasi Visual', 'sarah.rahman@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 1000000, 2018),
(83, '15', 'Peserta', 'Imam Fahrudin', NULL, '', 'Sistem Inforamsi', 'imam.fahrudin@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 1000000, 2018),
(84, '16', 'Peserta', 'Ujang Isa Solehudin', NULL, '', 'Sistem Inforamsi', 'ujang.isa@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 2000000, 2018),
(85, '16', 'Peserta', 'Wulandari', NULL, '', 'Sistem Inforamsi', 'wulandari@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 3000000, 2018),
(86, '16', 'Peserta', 'Iis Nuraisyah', NULL, '', 'Desain Komunikasi Visual', 'iis.nuraisyah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 3000000, 2018),
(87, '16', 'Peserta', 'Nira Maesarah', NULL, '', 'Sistem Inforamsi', 'nira.maesarah@nusaputra.ac.id', '', '', '', '', '', '', 'Tidak', 2000000, 2018);

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
(0, 'SIIRO', 'LOGO-IRO.jpg', 'Jl Raya Ciboalang No 21', 'Sistem Informasi IRO', 'orange');

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
  `id_surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_nomor`
--

INSERT INTO `surat_nomor` (`id`, `nomor`, `surat_ke`, `jenis`, `bulan`, `tahun`, `id_surat`) VALUES
(1, 'IRO-NSP/AIP/2018/12/1', 1, 'sertifikat', '12', '2018', ''),
(2, 'IRO/AIP/2018/06/1', 1, 'sertifikat', '06', '2018', ''),
(3, '001/AIP/IRO-NSP/6/2018', 0, '', '', '', '');

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

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `akses_level` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `telp`, `username`, `password`, `akses_level`, `foto`, `last_login`) VALUES
(7, 'Ikhsan Thohir', 'ikhsan.thohir@gmail.com', '081615399070', 'ikhsan', '67a7872c5aeb341d482f955cd8ff9b951a26e74e', 'admin', 'muhammad_ikhsan_thohir_3412.jpg', '2018-06-21 01:43:35'),
(40, 'Eizan', 'eizan@gmail.com', '', 'eizan', '67a7872c5aeb341d482f955cd8ff9b951a26e74e', 'member', 'eizan_1243.png', '2018-06-16 05:39:36');

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
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `ais_pembayaran`
--
ALTER TABLE `ais_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ais_peserta`
--
ALTER TABLE `ais_peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

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
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_nomor`
--
ALTER TABLE `surat_nomor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
