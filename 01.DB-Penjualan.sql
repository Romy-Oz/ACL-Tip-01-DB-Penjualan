-- www.youtube.com/@romyoz
-- Romy-Oz
-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2025 at 01:07 PM
-- Server version: 8.0.19
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan2`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Barang_Id` int NOT NULL,
  `NamaBarang` varchar(30) NOT NULL,
  `HargaBarang` int NOT NULL,
  `JumlahBarang` int NOT NULL,
  `KodeBarang` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`Barang_Id`, `NamaBarang`, `HargaBarang`, `JumlahBarang`, `KodeBarang`) VALUES
(1, 'Pensil HB', 1500, 100, 'BRG001'),
(2, 'Pulpen Biru', 2000, 150, 'BRG002'),
(3, 'Buku Tulis', 5000, 200, 'BRG003'),
(4, 'Penghapus', 1000, 120, 'BRG004'),
(5, 'Rautan', 1200, 130, 'BRG005'),
(6, 'Spidol Merah', 3500, 90, 'BRG006'),
(7, 'Spidol Biru', 3500, 80, 'BRG007'),
(8, 'Penggaris 30cm', 2500, 60, 'BRG008'),
(9, 'Tip-Ex', 4000, 70, 'BRG009'),
(10, 'Kertas HVS', 40000, 50, 'BRG010'),
(11, 'Amplop', 500, 300, 'BRG011'),
(12, 'Map Plastik', 1500, 250, 'BRG012'),
(13, 'Sticky Notes', 8000, 110, 'BRG013'),
(14, 'Binder', 20000, 40, 'BRG014'),
(15, 'Kalkulator', 75000, 30, 'BRG015'),
(16, 'Stempel', 20000, 25, 'BRG016'),
(17, 'Lakban', 6000, 70, 'BRG017'),
(18, 'Double Tape', 7000, 60, 'BRG018'),
(19, 'Lem Kertas', 4000, 90, 'BRG019'),
(20, 'Lem UHU', 10000, 80, 'BRG020'),
(21, 'Bantex', 3000, 100, 'BRG021'),
(22, 'File Holder', 2500, 150, 'BRG022'),
(23, 'Paper Clip', 1200, 300, 'BRG023'),
(24, 'Stapler', 18000, 40, 'BRG024'),
(25, 'Isi Staples', 5000, 100, 'BRG025'),
(26, 'Cutter', 8500, 60, 'BRG026'),
(27, 'Gunting', 10000, 70, 'BRG027'),
(28, 'Tipex Roll', 9500, 50, 'BRG028'),
(29, 'Board Marker', 6000, 90, 'BRG029'),
(30, 'Kertas Origami', 3500, 120, 'BRG030'),
(31, 'Notebook', 15000, 80, 'BRG031'),
(32, 'Pensil Warna', 25000, 60, 'BRG032'),
(33, 'Penghapus Papan', 9000, 40, 'BRG033'),
(34, 'Map Kertas', 2000, 180, 'BRG034'),
(35, 'Ordner', 30000, 25, 'BRG035'),
(36, 'Label Stiker', 3500, 100, 'BRG036'),
(37, 'CD Blank', 2000, 150, 'BRG037'),
(38, 'DVD Blank', 3000, 140, 'BRG038'),
(39, 'Flashdisk 16GB', 80000, 20, 'BRG039'),
(40, 'Flashdisk 32GB', 120000, 15, 'BRG040');

-- --------------------------------------------------------

--
-- Table structure for table `jualdetail`
--

CREATE TABLE `jualdetail` (
  `JualDetail_Id` int NOT NULL,
  `Barang_Id_FK` int NOT NULL,
  `KuantitasJual` int NOT NULL,
  `HargaJual` int NOT NULL,
  `JualHId_FK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jualdetail`
--

INSERT INTO `jualdetail` (`JualDetail_Id`, `Barang_Id_FK`, `KuantitasJual`, `HargaJual`, `JualHId_FK`) VALUES
(1, 1, 2, 1500, 1),
(2, 2, 1, 2000, 1),
(3, 3, 3, 5000, 2),
(4, 4, 1, 1000, 2),
(5, 5, 2, 1200, 3),
(6, 6, 2, 3500, 3),
(7, 7, 1, 3500, 4),
(8, 8, 1, 2500, 4),
(9, 9, 2, 4000, 4),
(10, 10, 1, 40000, 5),
(11, 11, 2, 500, 5),
(12, 12, 3, 1500, 6),
(13, 13, 1, 8000, 6),
(14, 14, 1, 20000, 7),
(15, 15, 1, 75000, 7),
(16, 16, 2, 20000, 8),
(17, 17, 1, 6000, 8),
(18, 18, 2, 7000, 8),
(19, 19, 2, 4000, 9),
(20, 20, 1, 10000, 9),
(21, 21, 1, 3000, 10),
(22, 22, 2, 2500, 10),
(23, 23, 3, 1200, 11),
(24, 24, 1, 18000, 11),
(25, 25, 2, 5000, 12),
(26, 26, 1, 8500, 12),
(27, 27, 1, 10000, 12),
(28, 28, 1, 9500, 13),
(29, 29, 2, 6000, 13),
(30, 30, 3, 3500, 14),
(31, 31, 1, 15000, 14),
(32, 32, 2, 25000, 15),
(33, 33, 1, 9000, 15),
(34, 34, 2, 2000, 16),
(35, 35, 1, 30000, 16),
(36, 36, 3, 3500, 17),
(37, 37, 2, 2000, 17),
(38, 38, 1, 3000, 17),
(39, 39, 10, 8000, 18),
(40, 40, 1, 120000, 18),
(41, 1, 2, 1500, 19),
(42, 2, 2, 2000, 19),
(43, 3, 1, 5000, 19),
(44, 4, 1, 1000, 20),
(45, 5, 2, 1200, 20),
(46, 6, 2, 3500, 21),
(47, 7, 1, 3500, 21),
(48, 8, 1, 2500, 22),
(49, 9, 2, 4000, 22),
(50, 10, 1, 40000, 22),
(51, 11, 3, 500, 23),
(52, 12, 2, 1500, 23),
(53, 13, 1, 8000, 24),
(54, 14, 1, 20000, 24),
(55, 15, 1, 75000, 24),
(56, 16, 2, 20000, 25),
(57, 17, 1, 6000, 25),
(58, 18, 2, 7000, 26),
(59, 19, 1, 4000, 26),
(60, 20, 1, 10000, 26),
(61, 21, 1, 3000, 27),
(62, 22, 2, 2500, 27),
(63, 23, 3, 1200, 27),
(64, 24, 1, 18000, 28),
(65, 25, 2, 5000, 28),
(66, 26, 1, 8500, 29),
(67, 27, 1, 10000, 29),
(68, 28, 1, 9500, 30),
(69, 29, 2, 6000, 30),
(70, 30, 3, 3500, 30),
(71, 31, 1, 15000, 31),
(72, 32, 2, 25000, 31),
(73, 33, 1, 9000, 32),
(74, 34, 2, 2000, 32),
(75, 35, 1, 30000, 32),
(76, 36, 3, 3500, 33),
(77, 37, 2, 2000, 33),
(78, 38, 1, 3000, 34),
(79, 39, 15, 80000, 34),
(80, 40, 1, 120000, 35),
(81, 1, 2, 1500, 35),
(82, 2, 2, 2000, 35),
(83, 3, 1, 5000, 36),
(84, 4, 1, 1000, 36),
(85, 5, 2, 1200, 37),
(86, 6, 2, 3500, 37),
(87, 7, 1, 3500, 38),
(88, 8, 1, 2500, 38),
(89, 9, 2, 4000, 38),
(90, 10, 1, 40000, 39),
(91, 11, 2, 500, 39),
(92, 12, 3, 1500, 40),
(93, 13, 1, 8000, 40),
(94, 14, 1, 20000, 40);

-- --------------------------------------------------------

--
-- Table structure for table `jualh`
--

CREATE TABLE `jualh` (
  `JualHid` int NOT NULL,
  `Pelanggan_Id_FK` int NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jualh`
--

INSERT INTO `jualh` (`JualHid`, `Pelanggan_Id_FK`, `Tanggal`) VALUES
(1, 1, '2025-05-01'),
(2, 2, '2025-05-02'),
(3, 3, '2025-05-03'),
(4, 4, '2025-05-04'),
(5, 5, '2025-05-05'),
(6, 6, '2025-05-06'),
(7, 7, '2025-05-07'),
(8, 8, '2025-05-08'),
(9, 9, '2025-05-09'),
(10, 10, '2025-05-10'),
(11, 11, '2025-05-11'),
(12, 12, '2025-05-12'),
(13, 13, '2025-05-13'),
(14, 14, '2025-05-14'),
(15, 15, '2025-05-15'),
(16, 16, '2025-05-16'),
(17, 17, '2025-05-17'),
(18, 18, '2025-05-18'),
(19, 19, '2025-05-19'),
(20, 20, '2025-05-20'),
(21, 1, '2025-05-21'),
(22, 2, '2025-05-22'),
(23, 3, '2025-05-23'),
(24, 4, '2025-05-24'),
(25, 5, '2025-05-25'),
(26, 6, '2025-05-26'),
(27, 7, '2025-05-27'),
(28, 8, '2025-05-28'),
(29, 9, '2025-05-29'),
(30, 10, '2025-05-30'),
(31, 11, '2025-06-01'),
(32, 12, '2025-06-02'),
(33, 13, '2025-06-03'),
(34, 14, '2025-06-04'),
(35, 15, '2025-06-05'),
(36, 16, '2025-06-06'),
(37, 17, '2025-06-07'),
(38, 18, '2025-06-08'),
(39, 19, '2025-06-09'),
(40, 20, '2025-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Pelanggan_Id` int NOT NULL,
  `PelangganNama` varchar(255) NOT NULL,
  `Pelanggan_HP` varchar(20) NOT NULL,
  `PelangganKode` varchar(6) NOT NULL,
  `Pelanggan_Email` varchar(255) DEFAULT NULL,
  `Pelanggan_City` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Pelanggan_Id`, `PelangganNama`, `Pelanggan_HP`, `PelangganKode`, `Pelanggan_Email`, `Pelanggan_City`) VALUES
(1, 'Andi Wijaya', '081234567890', 'PLG001', 'andi@example.com', 'Jakarta'),
(2, 'Budi Santoso', '082233445566', 'PLG002', 'budi@example.com', 'Bandung'),
(3, 'Citra Dewi', '083345678901', 'PLG003', 'citra@example.com', 'Surabaya'),
(4, 'Dina Kurnia', '085566778899', 'PLG004', 'dina@example.com', 'Yogyakarta'),
(5, 'Eko Prasetyo', '081122334455', 'PLG005', 'eko@example.com', 'Semarang'),
(6, 'Fajar Hidayat', '082233889900', 'PLG006', 'fajar@example.com', 'Makassar'),
(7, 'Gina Lestari', '081345678912', 'PLG007', 'gina@example.com', 'Medan'),
(8, 'Heri Ramdhan', '085577889900', 'PLG008', 'heri@example.com', 'Palembang'),
(9, 'Ika Safitri', '082122334455', 'PLG009', 'ika@example.com', 'Bali'),
(10, 'Joko Susanto', '081256789012', 'PLG010', 'joko@example.com', 'Pontianak'),
(11, 'Kiki Ardiansyah', '082334455667', 'PLG011', 'kiki@example.com', 'Manado'),
(12, 'Lina Marlina', '081345678123', 'PLG012', 'lina@example.com', 'Padang'),
(13, 'Miko Satria', '083344556677', 'PLG013', 'miko@example.com', 'Malang'),
(14, 'Nina Rahma', '081223344556', 'PLG014', 'nina@example.com', 'Solo'),
(15, 'Oka Darma', '084455667788', 'PLG015', 'oka@example.com', 'Balikpapan'),
(16, 'Putri Anjani', '085599667788', 'PLG016', 'putri@example.com', 'Bogor'),
(17, 'Qori Azhari', '082233445577', 'PLG017', 'qori@example.com', 'Depok'),
(18, 'Rendi Saputra', '081234556677', 'PLG018', 'rendi@example.com', 'Tangerang'),
(19, 'Sari Utami', '082123456789', 'PLG019', 'sari@example.com', 'Cirebon'),
(20, 'Taufik Nugroho', '083322110099', 'PLG020', 'taufik@example.com', 'Bekasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Barang_Id`),
  ADD UNIQUE KEY `KodeBarang` (`KodeBarang`);

--
-- Indexes for table `jualdetail`
--
ALTER TABLE `jualdetail`
  ADD PRIMARY KEY (`JualDetail_Id`),
  ADD KEY `Barang_Id_FK` (`Barang_Id_FK`),
  ADD KEY `JualHId_FK` (`JualHId_FK`);

--
-- Indexes for table `jualh`
--
ALTER TABLE `jualh`
  ADD PRIMARY KEY (`JualHid`),
  ADD KEY `Pelanggan_Id_FK` (`Pelanggan_Id_FK`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Pelanggan_Id`),
  ADD UNIQUE KEY `PelangganKode` (`PelangganKode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `Barang_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jualdetail`
--
ALTER TABLE `jualdetail`
  MODIFY `JualDetail_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `jualh`
--
ALTER TABLE `jualh`
  MODIFY `JualHid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `Pelanggan_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jualdetail`
--
ALTER TABLE `jualdetail`
  ADD CONSTRAINT `jualdetail_ibfk_1` FOREIGN KEY (`Barang_Id_FK`) REFERENCES `barang` (`Barang_Id`),
  ADD CONSTRAINT `jualdetail_ibfk_2` FOREIGN KEY (`JualHId_FK`) REFERENCES `jualh` (`JualHid`);

--
-- Constraints for table `jualh`
--
ALTER TABLE `jualh`
  ADD CONSTRAINT `jualh_ibfk_1` FOREIGN KEY (`Pelanggan_Id_FK`) REFERENCES `pelanggan` (`Pelanggan_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
