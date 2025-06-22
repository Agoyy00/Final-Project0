-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 06:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_login`
--

CREATE TABLE `tab_login` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tab_perentalan`
--

CREATE TABLE `tab_perentalan` (
  `ID` int(11) NOT NULL,
  `id_produk` int(50) NOT NULL,
  `jumlah_bayar` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tab_perentalan`
--

INSERT INTO `tab_perentalan` (`ID`, `id_produk`, `jumlah_bayar`) VALUES
(6, 6, 20000),
(7, 9, 20000),
(8, 8, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `tab_produk`
--

CREATE TABLE `tab_produk` (
  `ID` int(11) NOT NULL,
  `id_merk` int(50) NOT NULL,
  `id_produk` int(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `tipe_produk` varchar(50) NOT NULL,
  `deskripsi` varchar(150) NOT NULL,
  `harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tab_produk`
--

INSERT INTO `tab_produk` (`ID`, `id_merk`, `id_produk`, `nama_produk`, `tipe_produk`, `deskripsi`, `harga`) VALUES
(6, 2, 4, 'Indomie', 'Mie', 'Rasanya Enak', 10000),
(8, 2, 1, 'avanza', 'SUV', 'Mobil Keluarga', 500000),
(9, 4, 3, 'ftygu', 'edrftgyh', 'edtrftg', 20000),
(10, 2, 2, 'asdasd', 'asd', 'asd', 321321),
(11, 1, 3, 'sad', 'asd', 'asd', 123),
(12, 2, 3, 'asd', 'asd', 'asd', 13213),
(13, 4, 3, 'bugati', 'sport', 'gacor', 123123);

-- --------------------------------------------------------

--
-- Table structure for table `tab_register`
--

CREATE TABLE `tab_register` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `repassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tab_register`
--

INSERT INTO `tab_register` (`ID`, `username`, `password`, `repassword`) VALUES
(6, 'asd', 'asd', 'asd'),
(7, 'rayes', 'rayes', 'rayes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_login`
--
ALTER TABLE `tab_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tab_perentalan`
--
ALTER TABLE `tab_perentalan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_id_produk` (`id_produk`);

--
-- Indexes for table `tab_produk`
--
ALTER TABLE `tab_produk`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tab_register`
--
ALTER TABLE `tab_register`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_login`
--
ALTER TABLE `tab_login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tab_perentalan`
--
ALTER TABLE `tab_perentalan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tab_produk`
--
ALTER TABLE `tab_produk`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tab_register`
--
ALTER TABLE `tab_register`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tab_perentalan`
--
ALTER TABLE `tab_perentalan`
  ADD CONSTRAINT `fk_id_produk` FOREIGN KEY (`id_produk`) REFERENCES `tab_produk` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
