-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 04 Des 2017 pada 03.12
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sport`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sport`
--

CREATE TABLE `tb_sport` (
  `no_berita` int(11) NOT NULL,
  `judul_berita` varchar(30) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `isi_berita` text NOT NULL,
  `tempat_berita` varchar(30) NOT NULL,
  `tanggal_berita` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_sport`
--

INSERT INTO `tb_sport` (`no_berita`, `judul_berita`, `kategori`, `isi_berita`, `tempat_berita`, `tanggal_berita`) VALUES
(1, 'Rio Ihsan hadir Di YTFFID 2019', 'Hiburan', 'Rio Ihsan, ya siapa yang tidak mengenal youtuber kreatif ini, memulai karirnya sejak tahun 2015, dia masuk menjadi 3 youtuber ter-favorit di Indonesia, diatasnya ada Chandraliow, Agung Hapsah, yang memang sangat dikenal di per-youtubean indonesia. ', 'Jakarta, Indonesia', '20/10/2019'),
(2, 'Rino Aziz Menikah dengan Mimi ', 'Hiburan', 'Rino Aziz, Rapper terminal Indonesia I I membuat Jabari yang sangat mengejutkan netizen is Seluruh Dunia, dengan menyatakan Ingin seger menikahi sang kekasihnya yaitu Mimi Peri', 'Sydney, Australia', '21/10/2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_sport`
--
ALTER TABLE `tb_sport`
  ADD PRIMARY KEY (`no_berita`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_sport`
--
ALTER TABLE `tb_sport`
  MODIFY `no_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
