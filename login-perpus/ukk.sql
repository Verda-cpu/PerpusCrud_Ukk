-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Nov 2021 pada 16.19
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(15) NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `pengarang` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `gambar_produk` varchar(225) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `judul`, `pengarang`, `penerbit`, `deskripsi`, `gambar_produk`) VALUES
(7, 'Laskar Pelangi ', 'Andrea Hirata', 'Bentang Pustaka ', 'buku bercerita tentang persahabatan 7 orang anak', '40-2103.jpg'),
(8, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia Jakarta', 'Novel ini bercerita tentang kehidupan 6 santri dari 6 daerah yang berbeda menuntut ilmu di Pondok Ma', '552-435.jpg'),
(10, 'Bu berlian1', 'BU BERLIAN1', 'Bentang Pustaka 1', 'buku1', '842-220px-NarutoCoverTankobon1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(12) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', '$2y$10$uTrIYjRAf1VCtkUkPG.9JO/68G3XjgEalFyh/YKSRWNKZe9JgywRm', 'super admin'),
(2, 'admin2', '$2y$10$kORTJzQf/y/rL3DkN1Ny5uwQzjXeJNYXKgInP1mBibCWeQMLmwtpW', 'admin'),
(3, 'verda_zhaf', '$2y$10$I.UO.i79PJa4nwIKHei6tepPYFq1JJeYdS3o9WWism8cTdsD4igMm', 'Verda'),
(4, 'verdazhaf_', '$2y$10$4jh9LqM0o4axImx6PlrwwutPApcTG7NE2EnP2TvvlXCUYXy3zvz0G', 'Mohammad Verda Zhafif Zulfandy '),
(5, 'admin123', '$2y$10$HHiFHM/FxisJ6ZoUo5X57e9P/qx42U8JjuMYd4YvJVrGd3xs/hiF.', 'Verda'),
(6, 'verdazhaf123', '$2y$10$gtho.DqNlt6pHLU0G3GCFOrqbQANeotu9PyNhmQF6M0jxToBuivuW', 'Mohammad Verda Zhafif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
