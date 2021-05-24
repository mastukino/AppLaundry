-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2021 pada 05.41
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laundry_ci`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kasir`
--

CREATE TABLE `tb_kasir` (
  `id_kasir` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kasir`
--

INSERT INTO `tb_kasir` (`id_kasir`, `nama`, `password`, `level`) VALUES
('KSR180001', 'yuyu', 'a2FzaXI=', 'kasir'),
('KSR180002', 'manager', 'bWFuYWdlcg==', 'manager'),
('KSR180003', 'kasir', 'a2FzaXI=', 'kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `id_konsumen` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_konsumen`
--

INSERT INTO `tb_konsumen` (`id_konsumen`, `nama`, `alamat`, `hp`) VALUES
('KON180001', 'Riski Andriyanto', 'BSI Residence Blok C1 No. 10, Batam Kota', '0893732723723'),
('KON180002', 'Muhammad Riza Afthoni', 'BSI Residence Blok B1 No. 11, Batam Kota', '089656987973'),
('KON180003', 'Mamat', 'BSI Residence Blok A1 No. 13, Batam Kota', '9322332232323');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_paket`
--

CREATE TABLE `tb_paket` (
  `id_paket` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_paket`
--

INSERT INTO `tb_paket` (`id_paket`, `nama`, `harga`) VALUES
('PKT180001', 'Cuci', '5000'),
('PKT180002', 'Strika', '8000'),
('PKT180003', 'Cuci & Strika', '10000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` varchar(11) NOT NULL,
  `id_kasir` varchar(11) NOT NULL,
  `id_konsumen` varchar(11) NOT NULL,
  `id_paket` varchar(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jml_kilo` varchar(11) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_kasir`, `id_konsumen`, `id_paket`, `tgl_transaksi`, `jml_kilo`, `total`) VALUES
('TRA180001', 'KSR180001', 'KON180002', 'PKT180001', '2021-05-24', '10', '50000'),
('TRA180002', 'KSR180003', 'KON180003', 'PKT180003', '2021-05-24', '2.4', '24000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kasir`
--
ALTER TABLE `tb_kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indeks untuk tabel `tb_paket`
--
ALTER TABLE `tb_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
