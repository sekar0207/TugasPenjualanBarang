-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Apr 2020 pada 08.08
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
-- Database: `dbpenjualan`
--
CREATE DATABASE IF NOT EXISTS `dbpenjualan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbpenjualan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `idBarang` char(3) NOT NULL,
  `namaBarang` varchar(30) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(5) NOT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`idBarang`, `namaBarang`, `harga`, `stok`, `foto`) VALUES
('B01', 'Smartphone Dukata X-01', 2000000, 5, 'example.png'),
('B02', 'Smartphone Dukata X-02', 2000000, 5, 'example.png'),
('B03', 'Smartphone Dukata X-03', 2000000, 20, 'example.png'),
('B04', 'Smartphone Dukata X-04', 2000000, 50, 'example.png'),
('B05', 'Smartphone Dukata X-05', 2000000, 100, 'example.png'),
('B06', 'Tablet Dukata T-10', 2000000, 10, 'example1.png'),
('B07', 'Tablet Dukata T-11', 2000000, 20, 'example1.png'),
('B08', 'Tablet Dukata T-12', 2000000, 45, 'example1.png'),
('B09', 'Tablet Dukata T-13', 2000000, 50, 'example1.png'),
('B10', 'Laptop Dukata L-20', 5000000, 5, 'example2.png'),
('B11', 'Laptop Dukata L-21', 5000000, 6, 'example2.png'),
('B12', 'Laptop Dukata L-22', 5000000, 10, 'example2.png'),
('B13', 'Laptop Dukata L-23', 5000000, 12, 'example2.png'),
('B14', 'Laptop Dukata L-24', 5000000, 15, 'example2.png'),
('B15', 'Laptop Dukata L-25', 5000000, 20, 'example2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `idMember` int(3) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`idMember`, `nama`, `jk`, `alamat`) VALUES
(1, 'Angga Try Ramdany', 'Laki-laki', 'Cirebon'),
(2, 'Aris Arianto', 'Laki-laki', 'Rancaekek'),
(3, 'Fachri Abdussalam', 'Laki-laki', 'Sukabumi'),
(4, 'Nurfatah', 'Laki-laki', 'Ciamis'),
(5, 'Rizki Agusti Ghofur', 'Laki-laki', 'Cibiru'),
(6, 'Rifqi Muttaqin', 'Laki-laki', 'Banten'),
(7, 'Erviaga', 'Laki-laki', NULL),
(8, 'Eko Budi Setiawan', 'Laki-laki', 'Padang'),
(9, 'Angga Try Ramdany', 'Laki-laki', 'Cirebon'),
(10, 'Aris Arianto', 'Laki-laki', 'Rancaekek'),
(11, 'Fachri Abdussalam', 'Laki-laki', 'Sukabumi'),
(12, 'Nurfatah', 'Laki-laki', 'Ciamis'),
(13, 'Rizki Agusti Ghofur', 'Laki-laki', 'Cibiru'),
(14, 'Rifqi Muttaqin', 'Laki-laki', 'Banten'),
(15, 'Erviaga', 'Laki-laki', NULL),
(16, 'Eko Budi Setiawan', 'Laki-laki', 'yogya'),
(17, 'Fanny Andalia', 'Perempuan', 'Padang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `idPenjualan` char(3) NOT NULL,
  `idBarang` char(3) NOT NULL,
  `tglTransaksi` date NOT NULL,
  `qty` int(3) NOT NULL,
  `idUser` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`idPenjualan`, `idBarang`, `tglTransaksi`, `qty`, `idUser`) VALUES
('T01', 'B01', '2018-01-06', 1, 'P01'),
('T02', 'B02', '2018-01-06', 4, 'P01'),
('T03', 'B06', '2018-01-06', 1, 'P01'),
('T04', 'B12', '2018-01-11', 1, 'P02'),
('T05', 'B08', '2018-01-14', 2, 'P01'),
('T06', 'B03', '2018-01-15', 1, 'P01'),
('T07', 'B02', '2018-01-20', 1, 'P01'),
('T08', 'B01', '2018-02-17', 10, 'P02'),
('T09', 'B03', '2018-02-17', 1, 'P02'),
('T10', 'B06', '2018-02-17', 2, 'P02'),
('T11', 'B03', '2018-02-17', 1, 'P02'),
('T12', 'B02', '2018-02-17', 2, 'P02'),
('T13', 'B07', '2018-02-17', 1, 'P02'),
('T14', 'B15', '2018-02-17', 1, 'P02'),
('T15', 'B12', '2018-03-15', 1, 'P03'),
('T16', 'B05', '2018-03-15', 1, 'P03'),
('T17', 'B01', '2018-03-15', 1, 'P03'),
('T18', 'B02', '2018-03-15', 2, 'P03'),
('T19', 'B14', '2018-03-15', 1, 'P03'),
('T20', 'B09', '2018-03-15', 1, 'P03'),
('T21', 'B10', '2018-03-17', 1, 'P01'),
('T22', 'B07', '2018-03-17', 1, 'P01'),
('T23', 'B13', '2018-03-17', 1, 'P01'),
('T24', 'B11', '2018-03-28', 1, 'P02'),
('T25', 'B12', '2018-03-31', 1, 'P03'),
('T26', 'B10', '2018-04-01', 2, 'P01'),
('T27', 'B10', '2018-04-01', 2, 'P01'),
('T28', 'B02', '2018-04-01', 3, 'P01'),
('T29', 'B01', '2018-04-01', 2, 'P01'),
('T30', 'B08', '2018-04-05', 1, 'P01'),
('T31', 'B09', '2018-04-06', 1, 'P02'),
('T32', 'B09', '2018-04-08', 1, 'P02'),
('T33', 'B08', '2018-04-08', 1, 'P02'),
('T34', 'B02', '2018-04-08', 1, 'P02'),
('T35', 'B03', '2018-04-08', 1, 'P02'),
('T36', 'B14', '2018-04-10', 1, 'P03'),
('T37', 'B15', '2018-04-12', 1, 'P01'),
('T38', 'B15', '2018-04-14', 1, 'P01'),
('T39', 'B12', '2018-04-14', 1, 'P01'),
('T40', 'B13', '2018-04-14', 1, 'P01'),
('T41', 'B01', '2018-04-15', 1, 'P02'),
('T42', 'B01', '2018-04-15', 1, 'P02'),
('T43', 'B02', '2018-04-15', 1, 'P02'),
('T44', 'B03', '2018-04-15', 1, 'P02'),
('T45', 'B02', '2018-04-15', 2, 'P02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idUser` char(3) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `level` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idUser`, `nama`, `email`, `password`, `level`) VALUES
('A01', 'Admin', 'admin@email.com', '21232f297a57a5a743894a0e4a801fc3', 'Admin'),
('P01', 'Petugas', 'petugas@email.com', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'Petugas'),
('P02', 'Petugas1', 'petugas1@email.com', 'b53fe7751b37e40ff34d012c7774d65f', 'Petugas'),
('P03', 'Petugas2', 'petugas2@email.com', 'ac5604a8b8504d4ff5b842480df02e91', 'Petugas'),
('P04', 'Eko Budi Setiawan', 'ekobudisetiawan@ymail.com', 'ece6ee96c720d7f2b8976f3574114fd9', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`idMember`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`idPenjualan`),
  ADD KEY `idBarang` (`idBarang`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `idMember` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
