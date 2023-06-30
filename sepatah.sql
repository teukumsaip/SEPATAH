-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql203.infinityfree.com
-- Generation Time: Jun 30, 2023 at 07:58 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_34519783_sepatah`
--

-- --------------------------------------------------------

--
-- Table structure for table `berkas_bimbingan`
--

CREATE TABLE `berkas_bimbingan` (
  `id` int(11) NOT NULL,
  `nrp` text NOT NULL,
  `filename` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berkas_bimbingan`
--

INSERT INTO `berkas_bimbingan` (`id`, `nrp`, `filename`, `date`) VALUES
(6, '23', '05111640000041_AsepJunaedi2.pdf', '2023-06-30 21:11:39'),
(9, '24', 'CONTOH_BERKAS_PENGAJUAN1.pdf', '2023-06-21 16:19:30'),
(11, '25', 'CONTOH_BERKAS_PENGAJUAN2.pdf', '2023-06-21 21:35:37'),
(12, '26', 'TA_DENY_ARIYANSYAH_2017_NIM_12146226_SISTEM_INFORMASI_PORTAL_BERITA_ONLINE_HOAX_BERBASIS_WEBSITE.pdf', '2023-06-30 14:11:08'),
(13, '26', 'TA_DENY_ARIYANSYAH_2017_NIM_12146226_SISTEM_INFORMASI_PORTAL_BERITA_ONLINE_HOAX_BERBASIS_WEBSITE1.pdf', '2023-06-30 14:11:14'),
(14, '26', 'TA_DENY_ARIYANSYAH_2017_NIM_12146226_SISTEM_INFORMASI_PORTAL_BERITA_ONLINE_HOAX_BERBASIS_WEBSITE2.pdf', '2023-06-30 14:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `bidangminat`
--

CREATE TABLE `bidangminat` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidangminat`
--

INSERT INTO `bidangminat` (`id`, `nama`) VALUES
(1, 'Minat 1'),
(2, 'Minat 2'),
(3, 'Minat 3');

-- --------------------------------------------------------

--
-- Table structure for table `bukti_bimbingan`
--

CREATE TABLE `bukti_bimbingan` (
  `id` int(11) NOT NULL,
  `nrp` text NOT NULL,
  `filename` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bukti_bimbingan`
--

INSERT INTO `bukti_bimbingan` (`id`, `nrp`, `filename`, `date`) VALUES
(6, '23', '7978043.jpg', '2023-06-30 15:11:44'),
(7, '24', 'VectorPortal-Barack-Obama-Face.jpg', '2023-06-21 16:14:05'),
(8, '25', 'VectorPortal-Barack-Obama-Face1.jpg', '2023-06-21 21:33:41'),
(9, '26', 'kisspng-national-institute-of-technology-logo-design-prodi-5be1b2da8a1526_5040007315415180425656.jpg', '2023-06-30 14:11:06'),
(10, '26', 'kisspng-national-institute-of-technology-logo-design-prodi-5be1b2da8a1526_50400073154151804256561.jpg', '2023-06-30 14:11:10'),
(11, '26', 'kisspng-national-institute-of-technology-logo-design-prodi-5be1b2da8a1526_50400073154151804256562.jpg', '2023-06-30 14:11:14'),
(12, '26', 'kisspng-national-institute-of-technology-logo-design-prodi-5be1b2da8a1526_50400073154151804256563.jpg', '2023-06-30 14:11:18'),
(13, '26', 'kisspng-national-institute-of-technology-logo-design-prodi-5be1b2da8a1526_50400073154151804256564.jpg', '2023-06-30 14:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_judul`
--

CREATE TABLE `pengajuan_judul` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nrp` text NOT NULL,
  `judul` text NOT NULL,
  `bidangminat` text NOT NULL,
  `berkas` text NOT NULL,
  `tanggal` date NOT NULL,
  `tanggalverif` date NOT NULL,
  `status` text NOT NULL,
  `info` text NOT NULL,
  `dosbing1` text NOT NULL,
  `dosbing2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_judul`
--

INSERT INTO `pengajuan_judul` (`id`, `nama`, `nrp`, `judul`, `bidangminat`, `berkas`, `tanggal`, `tanggalverif`, `status`, `info`, `dosbing1`, `dosbing2`) VALUES
(10, 'Asep Junaedi', '23', 'AAAA', 'Minat 1', 'CONTOH_BERKAS_PENGAJUAN.pdf', '2023-06-21', '2023-06-21', 'diterima', '', '100', '101'),
(12, 'Budi Safrudin', '24', 'BBBB', 'Minat 2', 'CONTOH_BERKAS_PENGAJUAN3.pdf', '2023-06-21', '2023-06-21', 'diterima', '', '102', '101'),
(13, 'Kelompok 1', '25', 'Kajian Akhlak Dalam Dunia One Piece Berkaitan Dengan Kehidupan Masyarakat Indonesia Pada Tahun 1965-1998', 'Minat 3', 'CONTOH_BERKAS_PENGAJUAN5.pdf', '2023-06-21', '2023-06-21', 'diterima', '', '100', '101'),
(14, 'Dadang Conelo', '27', 'analisa pemahaman mahasiswa informatika mengenai sex bebeas', 'Minat 1', 'FORMULIR_PENDAFATARAN_ASRAMA.pdf', '2023-06-30', '0000-00-00', 'tolak', '', '100', ''),
(15, 'Sinta Husaini', '26', 'Analisa Pengetahuan Mahasiswa akan Pentingnya Shalat Tepat Waktu', 'Minat 2', 'BOOK_Danny_Tritjhajo_Penulisan_Karya_Ilmiah_Tuntunan_bagi_Mahasiswa_Bab_51.pdf', '2023-06-30', '2023-06-30', 'diterima', 'good job, aku sih yes', '100', '101');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_sidang`
--

CREATE TABLE `pengajuan_sidang` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nrp` text NOT NULL,
  `tanggal` date NOT NULL,
  `judul` text NOT NULL,
  `jam` time NOT NULL,
  `status` text NOT NULL,
  `penguji` text NOT NULL,
  `tglsidang` date NOT NULL,
  `nilai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_sidang`
--

INSERT INTO `pengajuan_sidang` (`id`, `nama`, `nrp`, `tanggal`, `judul`, `jam`, `status`, `penguji`, `tglsidang`, `nilai`) VALUES
(6, 'Asep Junaedi', '23', '2023-06-30', 'Desain dan Analisis Algoritma Brute Force Dalam Pemecahan Sandi Di Era Modern', '21:11:39', 'done', '102', '2023-07-07', '90'),
(7, 'Budi Safrudin', '24', '2023-06-21', 'BBBB', '16:14:05', 'done', '100', '2023-06-22', '87'),
(8, 'Kelompok 1', '25', '2023-06-21', 'Kajian Akhlak Dalam Dunia One Piece Berkaitan Dengan Kehidupan Masyarakat Indonesia Pada Tahun 1965-1998', '21:33:41', 'done', '102', '2023-06-22', '87'),
(12, 'Sinta Husaini', '26', '2023-06-30', 'Analisa Pengetahuan Mahasiswa akan Pentingnya Shalat Tepat Waktu', '14:11:18', 'done', '102', '2023-07-01', '99');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nrp` text NOT NULL,
  `password` text NOT NULL,
  `nama` text NOT NULL,
  `gender` text NOT NULL,
  `tipe` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nrp`, `password`, `nama`, `gender`, `tipe`, `photo`) VALUES
(1, '23', 'user', 'Asep Junaedi', 'laki-laki', 'mahasiswa', '1288638615831.png'),
(2, '100', 'dosen', 'Pak Dosen', 'laki-laki', 'dosen', 'user.png'),
(3, 'rmk', 'admin', 'Tim Verifikasi RMK', 'laki-laki', 'rmk', 'user.png'),
(4, 'kaprodi', 'admin', 'Kaprodi', 'laki-laki', 'kaprodi', 'user.png'),
(5, '101', 'dosen', 'Pak Dosen 2', 'laki-laki', 'dosen', 'user.png'),
(6, '24', 'user', 'Budi Safrudin', 'laki-laki', 'mahasiswa', 'user.png'),
(7, '102', 'dosen', 'Pak dosen 3', 'laki-laki', 'dosen', ''),
(9, '22', 'user', 'Kelompok 1', '', 'mahasiswa', 'user.png'),
(10, '25', 'user', 'Jefri Gunawan', 'laki-laki', 'mahasiswa', 'user.png'),
(11, '26', 'user', 'Sinta Husaini', 'perempuan', 'mahasiswa', 'user.png'),
(12, '27', 'user', 'Dadang Conelo', 'laki-laki', 'mahasiswa', 'user.png'),
(13, '28', 'user', 'Monkey D. Luffy', 'laki-laki', 'mahasiswa', 'user.png'),
(14, '29', 'user', 'Indah Syaqila', 'perempuan', 'mahasiswa', 'user.png'),
(15, '30', 'user', 'Dewi Bujini', 'perempuan', 'mahasiswa', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berkas_bimbingan`
--
ALTER TABLE `berkas_bimbingan`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `bidangminat`
--
ALTER TABLE `bidangminat`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `bukti_bimbingan`
--
ALTER TABLE `bukti_bimbingan`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pengajuan_judul`
--
ALTER TABLE `pengajuan_judul`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pengajuan_sidang`
--
ALTER TABLE `pengajuan_sidang`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berkas_bimbingan`
--
ALTER TABLE `berkas_bimbingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bidangminat`
--
ALTER TABLE `bidangminat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bukti_bimbingan`
--
ALTER TABLE `bukti_bimbingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pengajuan_judul`
--
ALTER TABLE `pengajuan_judul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pengajuan_sidang`
--
ALTER TABLE `pengajuan_sidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
