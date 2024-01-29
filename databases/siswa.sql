-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 12:18 PM
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
-- Database: `smk_pgri`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nis` int(4) NOT NULL,
  `kelas` int(2) NOT NULL DEFAULT 10 COMMENT 'Kelas di SMK',
  `email` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `nis`, `kelas`, `email`, `jurusan`, `gambar`) VALUES
(1, 'Adam', 1111, 11, 'adam@gmail.com', 'RPL', 'adam.jpg'),
(2, 'Aditya', 1112, 11, 'aditya@gmail.com', 'RPL', 'aditya.jpg'),
(3, 'Amelia', 1113, 11, 'amelia@gmail.com', 'RPL', 'amelia.jpg'),
(4, 'Bramanda', 1114, 11, 'bramanda@gmail.com', 'RPL', 'bramanda.jpg'),
(5, 'Dhini', 1115, 11, 'dhini@gmail.com', 'RPL', 'dhini.jpg'),
(6, 'Dio', 1116, 11, 'dio@gmail.com', 'RPL', 'dio.jpg'),
(7, 'Hendrik', 1117, 11, 'hendrik@gmail.com', 'RPL', 'hendrik.jpg'),
(8, 'Kezya', 1118, 11, 'kezya@gmail.com', 'RPL', 'kezya.jpg'),
(9, 'La Ode', 1119, 11, 'la_ode@gmail.com', 'RPL', 'la_ode.jpg'),
(10, 'Muhammad Fauzan', 1120, 11, 'muhammad_fauzan@gmail.com', 'RPL', 'muhammad_fauzan.jpg'),
(11, 'Muhammad Nur', 1121, 11, 'muhammad_nur@gmail.com', 'RPL', 'muhammad_nur.jpg'),
(12, 'Noval', 1122, 11, 'noval@gmail.com', 'RPL', 'noval.jpg'),
(13, 'Raffaelo', 1123, 11, 'raffaelo@gmail.com', 'RPL', 'raffaelo.jpg'),
(14, 'Ratu Syifa', 1124, 11, 'ratu_syifa@gmail.com', 'RPL', 'ratu_syifa.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
