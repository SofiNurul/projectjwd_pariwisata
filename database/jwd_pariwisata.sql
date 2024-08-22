-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Agu 2024 pada 18.59
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jwd_pariwisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_pesanan`
--

CREATE TABLE `daftar_pesanan` (
  `id_daftar_pesanan` int(11) NOT NULL,
  `id_paket_wisata` int(11) NOT NULL,
  `nama_pemesan` varchar(150) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tanggal_pemesanan` int(11) NOT NULL,
  `jumlah_peserta` int(11) NOT NULL,
  `jumlah_hari` int(11) NOT NULL,
  `akomodasi` varchar(1) NOT NULL,
  `transportasi` varchar(1) NOT NULL,
  `makanan` varchar(1) NOT NULL,
  `harga_paket` int(11) NOT NULL,
  `total_tagihan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar_pesanan`
--

INSERT INTO `daftar_pesanan` (`id_daftar_pesanan`, `id_paket_wisata`, `nama_pemesan`, `no_tlp`, `tanggal_pemesanan`, `jumlah_peserta`, `jumlah_hari`, `akomodasi`, `transportasi`, `makanan`, `harga_paket`, `total_tagihan`) VALUES
(2, 2, 'Nurulafifa', '08351627', 2024, 1, 1, 'Y', 'Y', 'Y', 14000000, 14000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_wisata`
--

CREATE TABLE `paket_wisata` (
  `id_paket_wisata` int(11) NOT NULL,
  `nama_paket` varchar(200) NOT NULL,
  `deksripsi_paket` text NOT NULL,
  `img_paket` varchar(150) NOT NULL,
  `link_video` text NOT NULL,
  `harga_penginapan` int(11) NOT NULL,
  `harga_transportasi` int(11) NOT NULL,
  `harga_servis_makan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `paket_wisata`
--

INSERT INTO `paket_wisata` (`id_paket_wisata`, `nama_paket`, `deksripsi_paket`, `img_paket`, `link_video`, `harga_penginapan`, `harga_transportasi`, `harga_servis_makan`) VALUES
(1, 'Paket Wisata Pulau Bali', 'Bali Magz:Eat,Explore and Enjoy Bali', 'bali.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qjP4QdZK7tc?si=fWT1Yz8iRU9UJM1u\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 2000000, 7000000, 500000),
(2, 'Paket Wisata Pulau Komodo', 'Komodo National Park and Alor', 'komodo.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RaTWq98hzF0?si=iRpZNbR8SG6kGF91\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 3000000, 10000000, 1000000),
(3, 'Paket Wisata Yogyakarta', 'Menikmati Keindahan Yogyakarta', 'yogyakarta.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1V_4-f5Ocy4?si=BM9CDzC20-oPmMJj\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 1000000, 3000000, 500000),
(4, 'Paket Wisata Bromo', 'Bromo Tengger Semeru National Park', 'bromo.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7xCd6ow9210?si=TNNXk1Wr4cmaLV8z\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 2500000, 3000000, 1500000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_pesanan`
--
ALTER TABLE `daftar_pesanan`
  ADD PRIMARY KEY (`id_daftar_pesanan`);

--
-- Indeks untuk tabel `paket_wisata`
--
ALTER TABLE `paket_wisata`
  ADD PRIMARY KEY (`id_paket_wisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_pesanan`
--
ALTER TABLE `daftar_pesanan`
  MODIFY `id_daftar_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `paket_wisata`
--
ALTER TABLE `paket_wisata`
  MODIFY `id_paket_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
