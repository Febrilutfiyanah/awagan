-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2024 at 08:27 AM
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
-- Database: `akun`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(25) DEFAULT NULL,
  `email` varchar(21) DEFAULT NULL,
  `pengguna` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `username`, `password`, `email`, `pengguna`) VALUES
(1, 'admin', 'tokoitu123', 'admin@toko.com', 'admin'),
(2, 'kasir1', 'tokoitu234', 'kasir1@toko.com', 'kasir'),
(3, 'kasir2', 'tokoitu345', 'kasir2@toko.com', 'kasir');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tanggal_pembuatan` varchar(10) DEFAULT NULL,
  `total` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`, `tanggal_pembuatan`, `total`) VALUES
(1, 1, '2024-08-27', '1.500.00'),
(2, 2, '2024-08-28', '6.700.000'),
(3, 3, '2024-08-29', '2.600.000');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(20) DEFAULT NULL,
  `merek` varchar(9) DEFAULT NULL,
  `stok` int(31) DEFAULT NULL,
  `harga` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_barang`, `nama_barang`, `merek`, `stok`, `harga`) VALUES
(1, 'Samsung a05', 'Samsung', 10, '1.500.000'),
(2, 'Samsung a15', 'samsung', 15, '2.399.000'),
(3, 'Samsung s24 ultra', 'samsung', 5, '22.000.000'),
(4, 'Samsung s23 fe', 'samsung', 8, '10.000.000'),
(5, 'Samsung a25', 'samsung', 5, '4.700.000'),
(6, 'Iphone 11', 'iphone', 5, '6.700.000'),
(7, 'Iphone 13', 'iphone', 5, '10.8000.000'),
(8, 'Iphone 15 pro max', 'iphone', 10, '33.000.000'),
(9, 'Oppo a60', 'oppo', 5, '2.700.000'),
(10, 'Oppo reno 12pro', 'oppo', 2, '10.000.000'),
(11, 'Vivo y 100', 'vivo', 6, '3.600.000'),
(12, 'Vivo v 30 pro', 'vivo ', 5, '9.000.000'),
(13, 'Realmi c65', 'realme', 3, '2.600.000'),
(14, 'Realme note 50', 'realme', 6, '1.700.000'),
(15, 'Xiaomi note 12 pro', 'xiaomi', 2, '4.300.000');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(20) NOT NULL,
  `nama_toko` varchar(11) DEFAULT NULL,
  `alamat_toko` text DEFAULT NULL,
  `kontak_toko` varchar(21) DEFAULT NULL,
  `email_toko` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `nama_toko`, `alamat_toko`, `kontak_toko`, `email_toko`) VALUES
(1, 'TOF Phone G', 'Jl. Werkudoro', '+62877-3943-8653', 'Tofphone@g');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_akun` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `metode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_akun`, `tanggal`, `total`, `metode`) VALUES
(1, 1, 1, '2024-08-29', '1.500.000', 'tunai'),
(2, 2, 2, '2024-09-01', '6.700.000', 'tunai'),
(3, 3, 3, '2024-09-03', '3.600.000', 'tunai'),
(4, 4, 4, '2024-09-04', '1.700.000', 'tunai'),
(5, 5, 5, '2024-09-04', '3.600.000', 'tunai'),
(6, 6, 6, '2024-09-04', '1.700.000', 'tunai'),
(7, 7, 7, '2024-09-05', '3.600.000', 'tunai'),
(8, 8, 8, '2024-09-05', '3.600.000', 'tunai'),
(9, 9, 9, '2024-09-05', '6.700.000', 'tunai'),
(10, 10, 10, '2024-09-09', '6.700.000', 'tunai');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumalah` int(11) NOT NULL,
  `harga_satuan` varchar(10) NOT NULL,
  `total_harga` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_detail`, `id_transaksi`, `id_barang`, `jumalah`, `harga_satuan`, `total_harga`) VALUES
(1, 1, 1, 1, '1.500.000', '1.500.000'),
(2, 2, 2, 3, '6.700.000', '20.100.000'),
(3, 3, 3, 2, '1.700.000', '3.400.000'),
(4, 4, 4, 4, '3.600.000', '14.400.000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(7) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(12) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `no_telepon`, `alamat`, `tanggal_daftar`) VALUES
(1, 'budi santoso', 'budi@gmail.c', '0812345678', 'Jl.Nanas No.10', '2024-08-27'),
(2, 'Ani Suryani', 'ani@gmail.co', '0818765432', 'Jl. Sudirman No. 5', '2024-08-28'),
(3, 'Siti Rahma', 'siti@gmai.co', '0819988776', 'Jl. Diponegoro No.3', '2024-08-30'),
(4, 'Seli ayu', 'serli@gmail.', '0823546721', 'Jl. Merdeka No. 10', '2024-09-01'),
(5, 'jl. Dewi sartika', 'sartika@gima', '0823435666', 'Jl. Sukarno No. 2', '2024-09-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`),
  ADD KEY `username` (`username`,`password`,`email`,`pengguna`),
  ADD KEY `username_2` (`username`,`email`,`pengguna`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `stok` (`stok`),
  ADD KEY `harga` (`harga`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_akun`),
  ADD KEY `id_akun` (`id_akun`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_transaksi_2` (`id_transaksi`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `produk` (`id_barang`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Constraints for table `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_profil`) REFERENCES `akun` (`id_akun`);

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`id_detail`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `produk` (`id_barang`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `transaksi` (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
