-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2024 pada 16.14
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sensordata`
--

CREATE TABLE `sensordata` (
  `id` int(6) UNSIGNED NOT NULL,
  `sensor` text DEFAULT NULL,
  `lokasi` text DEFAULT NULL,
  `value1` text DEFAULT NULL,
  `value2` text DEFAULT NULL,
  `value3` text DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sensordata`
--

INSERT INTO `sensordata` (`id`, `sensor`, `lokasi`, `value1`, `value2`, `value3`, `waktu`) VALUES
(1, 'dht', 'kampus', '35', NULL, NULL, '2022-11-15 00:23:47'),
(2, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:30:30'),
(3, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:30:36'),
(4, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:30:41'),
(5, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:30:46'),
(6, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:30:52'),
(7, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:30:57'),
(8, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:31:04'),
(9, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:31:09'),
(10, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:31:23'),
(11, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:31:29'),
(12, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:31:40'),
(13, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:31:46'),
(14, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:31:51'),
(15, 'DHT', 'Kampus', 'nan', 'nan', 'nan', '2023-11-20 13:31:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_smart_home`
--

CREATE TABLE `tbl_smart_home` (
  `id` int(11) NOT NULL,
  `lampu_kamar` tinyint(1) NOT NULL,
  `lampu_depan` tinyint(1) NOT NULL,
  `lampu_belakang` tinyint(1) NOT NULL,
  `tanggal_jam` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_smart_home`
--

INSERT INTO `tbl_smart_home` (`id`, `lampu_kamar`, `lampu_depan`, `lampu_belakang`, `tanggal_jam`) VALUES
(1, 1, 1, 1, '2023-12-31 00:00:23'),
(2, 1, 0, 1, '2024-01-01 22:22:08'),
(3, 0, 0, 1, '2024-01-01 22:22:10'),
(4, 0, 0, 0, '2024-01-01 22:22:13'),
(5, 0, 1, 0, '2024-01-01 22:22:15'),
(6, 1, 1, 0, '2024-01-01 22:22:18'),
(7, 1, 1, 1, '2024-01-01 22:22:20'),
(8, 1, 0, 1, '2024-01-12 15:25:32'),
(9, 0, 0, 1, '2024-01-12 15:25:35'),
(10, 1, 0, 1, '2024-01-12 15:25:39'),
(11, 1, 0, 0, '2024-01-12 15:25:41'),
(12, 0, 0, 0, '2024-01-12 15:25:46'),
(13, 0, 1, 0, '2024-01-12 15:26:15'),
(14, 1, 1, 0, '2024-01-12 15:26:18'),
(15, 1, 1, 1, '2024-01-12 15:26:19'),
(16, 1, 0, 1, '2024-01-12 15:52:50'),
(17, 1, 1, 1, '2024-01-12 15:52:53'),
(18, 0, 1, 1, '2024-01-12 15:52:55'),
(19, 1, 1, 1, '2024-01-12 15:52:57'),
(20, 1, 1, 0, '2024-01-12 15:52:59'),
(21, 1, 1, 1, '2024-01-12 15:53:01'),
(22, 1, 0, 1, '2024-01-12 18:28:32'),
(23, 0, 0, 1, '2024-01-12 18:28:36'),
(24, 0, 0, 0, '2024-01-12 18:28:38'),
(25, 0, 0, 1, '2024-01-12 18:28:40'),
(26, 1, 0, 1, '2024-01-12 18:28:41'),
(27, 1, 1, 1, '2024-01-12 18:28:43'),
(28, 1, 0, 1, '2024-01-14 21:17:50'),
(29, 0, 0, 1, '2024-01-14 21:17:55'),
(30, 0, 0, 0, '2024-01-14 21:17:57'),
(31, 0, 0, 1, '2024-01-14 21:17:59'),
(32, 1, 0, 1, '2024-01-14 21:18:01'),
(33, 1, 1, 1, '2024-01-14 21:18:05'),
(34, 1, 0, 1, '2024-01-14 21:18:10'),
(35, 1, 1, 1, '2024-01-14 21:18:24'),
(36, 1, 0, 1, '2024-01-14 22:10:13'),
(37, 0, 0, 1, '2024-01-14 22:10:21'),
(38, 0, 0, 0, '2024-01-14 22:10:24'),
(39, 0, 1, 0, '2024-01-14 22:10:27'),
(40, 1, 1, 0, '2024-01-14 22:10:29'),
(41, 1, 1, 1, '2024-01-14 22:10:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sensordata`
--
ALTER TABLE `sensordata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_smart_home`
--
ALTER TABLE `tbl_smart_home`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sensordata`
--
ALTER TABLE `sensordata`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_smart_home`
--
ALTER TABLE `tbl_smart_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
