-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2018 at 05:13 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skuy`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun_user`
--

CREATE TABLE `akun_user` (
  `id_user` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `akses` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun_user`
--

INSERT INTO `akun_user` (`id_user`, `username`, `password`, `akses`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(6, 'ferdy', 'f9af294304691d958534a8e06db9f19e', 'user'),
(7, 'fadil', 'd0503276f86a627d6c29bc963106570e', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `data_kendaraan`
--

CREATE TABLE `data_kendaraan` (
  `id_kendaraan` varchar(6) NOT NULL,
  `nama_kendaraan` text NOT NULL,
  `merk` text NOT NULL,
  `jenis_kendaraan` text NOT NULL,
  `plat_nomor` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_sewa`
--

CREATE TABLE `data_sewa` (
  `no_sewa` int(255) NOT NULL,
  `nik` varchar(13) NOT NULL,
  `id_kendaraan` varchar(6) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_deadline` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `nik` varchar(13) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` text NOT NULL,
  `email` text NOT NULL,
  `foto` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`nik`, `nama`, `alamat`, `no_hp`, `email`, `foto`, `id_user`) VALUES
('6701170103', 'Ferdy Pittardi', '', '', '', '', 6),
('6701174081', 'Fadil Armando Athallah', '', '', '', '', 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vpengguna`
-- (See below for the actual view)
--
CREATE TABLE `vpengguna` (
`id_user` int(11)
,`username` text
,`password` text
,`nik` varchar(13)
,`nama` text
,`akses` varchar(5)
);

-- --------------------------------------------------------

--
-- Structure for view `vpengguna`
--
DROP TABLE IF EXISTS `vpengguna`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vpengguna`  AS  select `akun_user`.`id_user` AS `id_user`,`akun_user`.`username` AS `username`,`akun_user`.`password` AS `password`,`data_user`.`nik` AS `nik`,`data_user`.`nama` AS `nama`,`akun_user`.`akses` AS `akses` from (`akun_user` join `data_user` on((`akun_user`.`id_user` = `data_user`.`id_user`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun_user`
--
ALTER TABLE `akun_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `data_kendaraan`
--
ALTER TABLE `data_kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `data_sewa`
--
ALTER TABLE `data_sewa`
  ADD PRIMARY KEY (`no_sewa`),
  ADD UNIQUE KEY `nik` (`nik`,`id_kendaraan`),
  ADD KEY `id_kendaraan` (`id_kendaraan`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun_user`
--
ALTER TABLE `akun_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_sewa`
--
ALTER TABLE `data_sewa`
  ADD CONSTRAINT `data_sewa_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_user` (`nik`),
  ADD CONSTRAINT `data_sewa_ibfk_2` FOREIGN KEY (`id_kendaraan`) REFERENCES `data_kendaraan` (`id_kendaraan`);

--
-- Constraints for table `data_user`
--
ALTER TABLE `data_user`
  ADD CONSTRAINT `data_user_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `akun_user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
