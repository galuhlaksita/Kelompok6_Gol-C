-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2021 at 03:58 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbparkir`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `nim_mahasiswa` varchar(10) NOT NULL,
  `nama_mahasiswa` varchar(40) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor_polisi` varchar(100) NOT NULL,
  `jenis` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `password_admin` varchar(256) NOT NULL,
  `nama_admin` varchar(100) DEFAULT NULL,
  `email_admin` varchar(50) DEFAULT NULL,
  `no_hp_admin` varchar(50) DEFAULT NULL,
  `img_admin` varchar(256) DEFAULT NULL,
  `level_admin` int(11) DEFAULT NULL,
  `create_date_admin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `username_admin`, `password_admin`, `nama_admin`, `email_admin`, `no_hp_admin`, `img_admin`, `level_admin`, `create_date_admin`) VALUES
('A004', 'admin', '$2y$10$/QU9h5JnAxk/KqHkXg6Q0u5LsPLu1pHHdHGnD/WtlKyGRak5amLjm', 'Admin', 'admin1@gmail.com', '089682261128', 'assets/dist/img/default.png', 2, '0000-00-00 00:00:00'),
('A006', 'owner', '$2y$10$j1lDCDGnkzO01CElfAZe1e9Wxo7pZhwbkPUs5kKSGDq2GHV.aqiUm', 'OWNER', 'owner@parkrinaja.com', '089682261128', 'assets/dist/img/default.png', 1, '0000-00-00 00:00:00'),
('A011', 'lulaa', '$2y$10$nJjMEbaaTaidevS.5VGXWOOIzOwuzh1PjgfrThlPKzMuCcjihUJue', 'lulaa', 'lula123@gmail.com', '0857235674718', 'assets/dist/img/default.png', 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keluar`
--

CREATE TABLE `tbl_keluar` (
  `kd_keluar` varchar(50) NOT NULL,
  `kd_masuk` varchar(50) DEFAULT NULL,
  `kd_member` varchar(50) DEFAULT NULL,
  `tgl_jam_masuk` datetime DEFAULT NULL,
  `tgl_jam_keluar` datetime DEFAULT NULL,
  `lama_parkir_keluar` varchar(50) DEFAULT NULL,
  `status_keluar` int(11) DEFAULT NULL,
  `create_keluar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_keluar`
--

INSERT INTO `tbl_keluar` (`kd_keluar`, `kd_masuk`, `kd_member`, `tgl_jam_masuk`, `tgl_jam_keluar`, `lama_parkir_keluar`, `status_keluar`, `create_keluar`) VALUES
('K00000001', 'M00000033', NULL, '2019-04-22 13:26:38', '2019-04-25 12:21:44', '70 Jam,55 Menit', 1, 'OWNER'),
('K00000002', 'M00000034', NULL, '2019-04-25 12:35:09', '2019-04-25 12:43:08', '0 Jam,7 Menit', 1, 'OWNER'),
('K00000003', 'M00000032', NULL, '2019-04-17 22:44:53', '2019-04-25 19:44:35', '188 Jam,59 Menit', 1, 'Kang Parkir'),
('K00000004', 'M00000035', NULL, '2019-04-25 19:45:41', '2019-04-25 19:46:32', '0 Jam,0 Menit', 1, 'Kang Parkir'),
('K00000005', 'M00000038', NULL, '2021-07-16 13:11:32', '2021-07-16 13:13:10', '0 Jam,1 Menit', 1, 'Admin'),
('K00000006', 'M00000041', NULL, '2021-07-17 20:28:25', '2021-07-17 22:16:55', '1 Jam,48 Menit', 1, 'OWNER'),
('K00000007', 'M00000042', NULL, '2021-07-17 22:25:42', '2021-07-17 22:29:49', '0 Jam,4 Menit', 1, 'OWNER'),
('K00000008', 'M00000043', NULL, '2021-07-17 22:34:29', '2021-07-17 22:34:51', '0 Jam,0 Menit', 1, 'OWNER'),
('K00000009', 'M00000047', NULL, '2021-07-18 15:00:17', '2021-07-18 15:15:08', '0 Jam,14 Menit', 1, 'OWNER'),
('K00000010', 'M00000049', NULL, '2021-07-18 15:14:40', '2021-07-18 16:09:58', '0 Jam,55 Menit', 1, 'lulaa'),
('K00000011', 'M00000048', NULL, '2021-07-18 15:00:54', '2021-07-18 16:38:14', '1 Jam,37 Menit', 1, 'OWNER'),
('K00000012', 'M00000051', 'NULL', '2021-07-18 16:52:04', '2021-07-20 11:24:44', '42 Jam,32 Menit', 1, 'OWNER'),
('K00000013', 'M00000053', 'NULL', '2021-07-20 11:28:07', '2021-07-20 19:39:00', '8 Jam,10 Menit', 1, 'OWNER'),
('K00000014', 'M00000054', 'NULL', '2021-07-20 19:39:37', '2021-07-20 23:28:58', '3 Jam,49 Menit', 1, 'OWNER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kendaraan`
--

CREATE TABLE `tbl_kendaraan` (
  `kd_kendaraan` varchar(50) NOT NULL,
  `nama_kendaraan` varchar(50) DEFAULT NULL,
  `jenis_kendaraan` int(11) NOT NULL,
  `create_by_kendaraan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kendaraan`
--

INSERT INTO `tbl_kendaraan` (`kd_kendaraan`, `nama_kendaraan`, `jenis_kendaraan`, `create_by_kendaraan`) VALUES
('JK007', 'Motor', 1, 'owner'),
('JK008', 'Mobil', 1, 'owner');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_masuk`
--

CREATE TABLE `tbl_masuk` (
  `kd_masuk` varchar(50) NOT NULL,
  `kd_member` varchar(50) NOT NULL,
  `kd_kendaraan` varchar(50) DEFAULT NULL,
  `plat_masuk` varchar(50) DEFAULT NULL,
  `tgl_masuk` datetime DEFAULT NULL,
  `status_masuk` int(11) DEFAULT NULL,
  `create_masuk` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_masuk`
--

INSERT INTO `tbl_masuk` (`kd_masuk`, `kd_member`, `kd_kendaraan`, `plat_masuk`, `tgl_masuk`, `status_masuk`, `create_masuk`) VALUES
('M00000032', 'NULL', 'JK003', 'B 4514 VBN', '2019-04-17 22:44:53', 2, 'Kang Parkir'),
('M00000033', 'MBR00000001', 'JK004', 'B 4514 BLN', '2019-04-22 13:26:38', 2, 'Kang Parkir'),
('M00000034', 'NULL', 'JK001', 'B 4514 BLN', '2019-04-25 12:35:09', 2, 'OWNER'),
('M00000035', 'MBR00000002', 'JK005', 'B 7894 BLN', '2019-04-25 19:45:41', 2, 'Kang Parkir'),
('M00000036', 'NULL', 'JK001', 'B 4781 JHG', '2019-04-25 19:46:13', 1, 'Kang Parkir'),
('M00000037', 'NULL', 'JK001', 'S 1E23 Z', '2021-06-23 23:22:31', 1, 'Kang Parkir'),
('M00000038', 'NULL', 'JK001', 'B 1234 CA', '2021-07-16 13:11:32', 2, 'Admin'),
('M00000039', 'NULL', 'JK002', 'P 5555 DB', '2021-07-16 21:06:15', 1, 'OWNER'),
('M00000040', 'NULL', 'JK001', 'P 5432 FG', '2021-07-16 22:07:52', 1, 'OWNER'),
('M00000041', 'NULL', 'JK001', 'B 1234 BC', '2021-07-17 20:28:25', 2, 'OWNER'),
('M00000042', 'NULL', 'JK001', 'P 2005 LL', '2021-07-17 22:25:42', 2, 'OWNER'),
('M00000043', 'NULL', 'JK001', 'P 2005 LL', '2021-07-17 22:34:29', 2, 'OWNER'),
('M00000044', 'NULL', 'JK001', 'B 6789 DE', '2021-07-18 01:37:08', 1, 'OWNER'),
('M00000045', '', 'JK002', 'B 2435 ZA', '2021-07-18 01:47:51', 1, 'OWNER'),
('M00000046', '', 'JK001', 'B 8768 FG', '2021-07-18 01:48:53', 1, 'OWNER'),
('M00000047', '', 'JK007', 'B 5467 AS', '2021-07-18 15:00:17', 2, 'OWNER'),
('M00000048', '', 'JK008', 'A 0756 GA', '2021-07-18 15:00:54', 2, 'OWNER'),
('M00000049', '', 'JK008', 'B 6765 AW', '2021-07-18 15:14:40', 2, 'OWNER'),
('M00000050', '', 'JK007', 'B 9627 AS', '2021-07-18 16:41:57', 2, 'OWNER'),
('M00000051', '', 'JK008', 'B 3456 AQ', '2021-07-18 16:52:04', 2, 'OWNER'),
('M00000052', '', 'JK007', 'B 9875 QZ', '2021-07-18 16:52:48', 1, 'OWNER'),
('M00000053', '', 'JK007', 'D 5435 AW', '2021-07-20 11:28:07', 2, 'OWNER'),
('M00000054', '', 'JK007', 'B 8754 AS', '2021-07-20 19:39:37', 2, 'OWNER'),
('M00000055', '', 'JK008', 'S 57478 SD', '2021-07-20 20:34:00', 1, 'OWNER'),
('M00000056', '', 'JK007', 'B 23475 AE', '2021-07-20 23:29:28', 1, 'OWNER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qrcode`
--

CREATE TABLE `tbl_qrcode` (
  `nim` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `prodi` varchar(40) NOT NULL,
  `qr_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_qrcode`
--

INSERT INTO `tbl_qrcode` (`nim`, `nama`, `prodi`, `qr_code`) VALUES
(1, 'Silfi', 'Manajemen Informatika', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`nim_mahasiswa`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_keluar`
--
ALTER TABLE `tbl_keluar`
  ADD PRIMARY KEY (`kd_keluar`);

--
-- Indexes for table `tbl_kendaraan`
--
ALTER TABLE `tbl_kendaraan`
  ADD PRIMARY KEY (`kd_kendaraan`);

--
-- Indexes for table `tbl_masuk`
--
ALTER TABLE `tbl_masuk`
  ADD PRIMARY KEY (`kd_masuk`);

--
-- Indexes for table `tbl_qrcode`
--
ALTER TABLE `tbl_qrcode`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_qrcode`
--
ALTER TABLE `tbl_qrcode`
  MODIFY `nim` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
