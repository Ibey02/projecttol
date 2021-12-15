-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 05:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rfidui`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftarrfid`
--

CREATE TABLE `tb_daftarrfid` (
  `id` int(100) NOT NULL,
  `rfid` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `saldo` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_daftarrfid`
--

INSERT INTO `tb_daftarrfid` (`id`, `rfid`, `nama`, `alamat`, `telepon`, `saldo`) VALUES
(1, 'ASDF123', 'admin', 'indonesia', '1234', 0),
(2, 'A732894B', 'DAFFA', 'INDONESIA', '08263832', 3041131),
(3, '2AA5B715', 'ARLAND', 'JAUH', '0816283', 0),
(7, 'AA89015', 'dyfy', 't7t7', '97986', 15000),
(8, 'ET33', 'CSACA', 'CACA', '08674', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `tb_edit`
--

CREATE TABLE `tb_edit` (
  `lokasi` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_edit`
--

INSERT INTO `tb_edit` (`lokasi`, `harga`) VALUES
('cibubur', 5000),
('padalarang', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_monitoring`
--

CREATE TABLE `tb_monitoring` (
  `rfid` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `golongan` varchar(100) NOT NULL,
  `jumlahkendaraan` varchar(100) NOT NULL,
  `jumlah pendapatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_monitoring`
--

INSERT INTO `tb_monitoring` (`rfid`, `status`, `lokasi`, `golongan`, `jumlahkendaraan`, `jumlah pendapatan`) VALUES
('8A375A1A', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_realtime`
--

CREATE TABLE `tb_realtime` (
  `no` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rfid` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `golongan` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_simpan`
--

CREATE TABLE `tb_simpan` (
  `no` int(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rfid` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `saldoawal` int(100) NOT NULL,
  `saldoakhir` int(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'user1', 'user1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_daftarrfid`
--
ALTER TABLE `tb_daftarrfid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_edit`
--
ALTER TABLE `tb_edit`
  ADD PRIMARY KEY (`harga`);

--
-- Indexes for table `tb_realtime`
--
ALTER TABLE `tb_realtime`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_simpan`
--
ALTER TABLE `tb_simpan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_daftarrfid`
--
ALTER TABLE `tb_daftarrfid`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_edit`
--
ALTER TABLE `tb_edit`
  MODIFY `harga` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;

--
-- AUTO_INCREMENT for table `tb_realtime`
--
ALTER TABLE `tb_realtime`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_simpan`
--
ALTER TABLE `tb_simpan`
  MODIFY `no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
