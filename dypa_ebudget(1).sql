-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2022 pada 05.21
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dypa_ebudget`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_anggaran_lain`
--

CREATE TABLE `2022_anggaran_lain` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `cabang` varchar(200) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `deskripsi` text NOT NULL,
  `dana_anggaran` varchar(200) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `pemakaian` varchar(200) NOT NULL,
  `dana_terpakai` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `laporan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_anggaran_lain`
--

INSERT INTO `2022_anggaran_lain` (`id`, `id_pengurus`, `posisi`, `cabang`, `kategori`, `tgl_dibuat`, `deskripsi`, `dana_anggaran`, `tgl_laporan`, `pemakaian`, `dana_terpakai`, `status`, `laporan`) VALUES
(1, 'kepala_income', 'Kepala Income', 'Tajur', 'Biaya Lainnya', '2022-07-04', 'pemblian lainnya', '200000', '2022-07-06', 'laporan pembelian lainnya', '150000', 'OK', 'Terverifikasi'),
(2, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Biaya Lainnya', '2022-07-05', 'pembelian lainnya', '600000', '2022-07-06', 'laporan pembelian lainnya', '500000', 'OK', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_aset_yayasan`
--

CREATE TABLE `2022_aset_yayasan` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `cabang` varchar(100) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `deskripsi` text NOT NULL,
  `qty_anggaran` varchar(200) NOT NULL,
  `dana_anggaran` varchar(250) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `pemakaian` text NOT NULL,
  `qty_pembelian` varchar(100) NOT NULL,
  `dana_terpakai` varchar(250) NOT NULL,
  `status` varchar(30) NOT NULL,
  `laporan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_aset_yayasan`
--

INSERT INTO `2022_aset_yayasan` (`id`, `id_pengurus`, `kategori`, `cabang`, `jenis`, `posisi`, `tgl_dibuat`, `deskripsi`, `qty_anggaran`, `dana_anggaran`, `tgl_laporan`, `pemakaian`, `qty_pembelian`, `dana_terpakai`, `status`, `laporan`) VALUES
(1, 'kepala_income', 'Aset Yayasan', 'Tajur', 'Pembelian Barang', 'Kepala Income', '2022-07-05', 'pengajuan pembelian laptop', '10', '5000000', '2022-07-06', 'lapoan pembelian laptop', '10', '4900000', 'OK', 'Terverifikasi'),
(2, 'kepala_income', 'Aset Yayasan', 'Tajur', 'Pembangunan', 'Kepala Income', '2022-07-05', 'pembelian bahan beton', '', '10000000', '2022-07-06', 'laporan pembelian bahan beton', '', '9500000', 'OK', 'Terverifikasi'),
(3, 'kepala_pengajuan', 'Aset Yayasan', 'Bogor', 'Pembelian Barang', 'Pengajuan RAB', '2022-07-04', 'pembelian hp', '5', '5000000', '2022-07-06', 'laporan pembelian hp', '5', '4500000', 'OK', 'Terverifikasi'),
(4, 'kepala_pengajuan', 'Aset Yayasan', 'Bogor', 'Pembangunan', 'Pengajuan RAB', '2022-07-05', 'pembelian bata', '', '600000', '2022-07-06', 'laporan pembelian bata', '', '500000', 'OK', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_data_anggaran_lain`
--

CREATE TABLE `2022_data_anggaran_lain` (
  `id` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `anggaran_anggaran_lain_tajur` varchar(100) NOT NULL,
  `terpakai_anggaran_lain_tajur` varchar(100) NOT NULL,
  `anggaran_anggaran_lain_bogor` varchar(100) NOT NULL,
  `terpakai_anggaran_lain_bogor` varchar(100) NOT NULL,
  `anggaran_global` varchar(100) NOT NULL,
  `terpakai_global` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_data_anggaran_lain`
--

INSERT INTO `2022_data_anggaran_lain` (`id`, `bulan`, `tahun`, `anggaran_anggaran_lain_tajur`, `terpakai_anggaran_lain_tajur`, `anggaran_anggaran_lain_bogor`, `terpakai_anggaran_lain_bogor`, `anggaran_global`, `terpakai_global`) VALUES
(1, 'Januari', '2022', '', '', '', '', '', ''),
(2, 'Februari', '2022', '', '', '', '', '', ''),
(3, 'Maret', '2022', '', '', '', '', '', ''),
(4, 'April', '2022', '', '', '', '', '', ''),
(5, 'Mei', '2022', '', '', '', '', '', ''),
(6, 'Juni', '2022', '', '', '', '', '', ''),
(7, 'Juli', '2022', '200000', '150000', '600000', '500000', '800000', '650000'),
(8, 'Agustus', '2022', '', '', '', '', '', ''),
(9, 'September', '2022', '', '', '', '', '', ''),
(10, 'Oktober', '2022', '', '', '', '', '', ''),
(11, 'November', '2022', '', '', '', '', '', ''),
(12, 'Desember', '2022', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_data_aset_yayasan`
--

CREATE TABLE `2022_data_aset_yayasan` (
  `id` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `anggaran_pembangunan_bogor` varchar(100) NOT NULL,
  `terpakai_pembangunan_bogor` varchar(100) NOT NULL,
  `anggaran_pembangunan_tajur` varchar(100) NOT NULL,
  `terpakai_pembangunan_tajur` varchar(100) NOT NULL,
  `anggaran_pembangunan` varchar(100) NOT NULL,
  `terpakai_pembangunan` varchar(100) NOT NULL,
  `anggaran_pembelian_bogor` varchar(100) NOT NULL,
  `terpakai_pembelian_bogor` varchar(100) NOT NULL,
  `anggaran_pembelian_tajur` varchar(100) NOT NULL,
  `terpakai_pembelian_tajur` varchar(100) NOT NULL,
  `anggaran_pembelian` varchar(100) NOT NULL,
  `terpakai_pembelian` varchar(100) NOT NULL,
  `anggaran_global` varchar(100) NOT NULL,
  `terpakai_global` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_data_aset_yayasan`
--

INSERT INTO `2022_data_aset_yayasan` (`id`, `bulan`, `tahun`, `anggaran_pembangunan_bogor`, `terpakai_pembangunan_bogor`, `anggaran_pembangunan_tajur`, `terpakai_pembangunan_tajur`, `anggaran_pembangunan`, `terpakai_pembangunan`, `anggaran_pembelian_bogor`, `terpakai_pembelian_bogor`, `anggaran_pembelian_tajur`, `terpakai_pembelian_tajur`, `anggaran_pembelian`, `terpakai_pembelian`, `anggaran_global`, `terpakai_global`) VALUES
(1, 'Januari', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'Februari', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'Maret', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'April', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Mei', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Juni', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Juli', '2022', '600000', '500000', '10000000', '9500000', '10600000', '10000000', '5000000', '4500000', '5000000', '4900000', '10000000', '9400000', '20600000', '19400000'),
(8, 'Agustus', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'September', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'Oktober', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'November', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 'Desember', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_data_gaji_karyawan`
--

CREATE TABLE `2022_data_gaji_karyawan` (
  `id` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `anggaran_gaji_karyawan_tajur` varchar(100) NOT NULL,
  `terpakai_gaji_karyawan_tajur` varchar(100) NOT NULL,
  `anggaran_gaji_karyawan_bogor` varchar(100) NOT NULL,
  `terpakai_gaji_karyawan_bogor` varchar(100) NOT NULL,
  `anggaran_global` varchar(100) NOT NULL,
  `terpakai_global` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_data_gaji_karyawan`
--

INSERT INTO `2022_data_gaji_karyawan` (`id`, `bulan`, `tahun`, `anggaran_gaji_karyawan_tajur`, `terpakai_gaji_karyawan_tajur`, `anggaran_gaji_karyawan_bogor`, `terpakai_gaji_karyawan_bogor`, `anggaran_global`, `terpakai_global`) VALUES
(1, 'Januari', '2022', '', '', '', '', '', ''),
(2, 'Februari', '2022', '', '', '', '', '', ''),
(3, 'Maret', '2022', '', '', '', '', '', ''),
(4, 'April', '2022', '', '', '', '', '', ''),
(5, 'Mei', '2022', '52600000', '51546154', '', '', '52600000', '51546154'),
(6, 'Juni', '2022', '', '', '', '', '', ''),
(7, 'Juli', '2022', '20000000', '19500000', '600000', '500000', '20600000', '20000000'),
(8, 'Agustus', '2022', '', '', '', '', '', ''),
(9, 'September', '2022', '', '', '', '', '', ''),
(10, 'Oktober', '2022', '', '', '', '', '', ''),
(11, 'November', '2022', '', '', '', '', '', ''),
(12, 'Desember', '2022', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_data_income`
--

CREATE TABLE `2022_data_income` (
  `id` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `income_tanpaResi` varchar(100) NOT NULL,
  `income_global` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_data_income`
--

INSERT INTO `2022_data_income` (`id`, `bulan`, `tahun`, `income_tanpaResi`, `income_global`) VALUES
(1, 'Januari', '2022', '', ''),
(2, 'Februari', '2022', '', ''),
(3, 'Maret', '2022', '', ''),
(4, 'April', '2022', '', ''),
(5, 'Mei', '2022', '3751694', '29869087'),
(6, 'Juni', '2022', '', '3350001'),
(7, 'Juli', '2022', '', ''),
(8, 'Agustus', '2022', '', ''),
(9, 'September', '2022', '', ''),
(10, 'Oktober', '2022', '', ''),
(11, 'November', '2022', '', ''),
(12, 'Desember', '2022', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_data_logistik`
--

CREATE TABLE `2022_data_logistik` (
  `id` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `anggaran_logistik_tajur` varchar(100) NOT NULL,
  `terpakai_logistik_tajur` varchar(100) NOT NULL,
  `anggaran_logistik_bogor` varchar(100) NOT NULL,
  `terpakai_logistik_bogor` varchar(100) NOT NULL,
  `anggaran_global` varchar(100) NOT NULL,
  `terpakai_global` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_data_logistik`
--

INSERT INTO `2022_data_logistik` (`id`, `bulan`, `tahun`, `anggaran_logistik_tajur`, `terpakai_logistik_tajur`, `anggaran_logistik_bogor`, `terpakai_logistik_bogor`, `anggaran_global`, `terpakai_global`) VALUES
(1, 'Januari', '2022', '', '', '', '', '', ''),
(2, 'Februari', '2022', '', '', '', '', '', ''),
(3, 'Maret', '2022', '', '', '', '', '', ''),
(4, 'April', '2022', '', '', '', '', '', ''),
(5, 'Mei', '2022', '1948500', '1909500', '', '', '1948500', '1909500'),
(6, 'Juni', '2022', '', '', '', '', '', ''),
(7, 'Juli', '2022', '1100000', '1000000', '2500000', '1400000', '3600000', '2400000'),
(8, 'Agustus', '2022', '', '', '', '', '', ''),
(9, 'September', '2022', '', '', '', '', '', ''),
(10, 'Oktober', '2022', '', '', '', '', '', ''),
(11, 'November', '2022', '', '', '', '', '', ''),
(12, 'Desember', '2022', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_data_maintenance`
--

CREATE TABLE `2022_data_maintenance` (
  `id` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `anggaran_maintenance_aset_tajur` varchar(100) NOT NULL,
  `terpakai_maintenance_aset_tajur` varchar(100) NOT NULL,
  `anggaran_maintenance_aset_bogor` varchar(100) NOT NULL,
  `terpakai_maintenance_aset_bogor` varchar(100) NOT NULL,
  `anggaran_maintenance_aset` varchar(100) NOT NULL,
  `terpakai_maintenance_aset` varchar(100) NOT NULL,
  `anggaran_maintenance_gedung_tajur` varchar(100) NOT NULL,
  `terpakai_maintenance_gedung_tajur` varchar(100) NOT NULL,
  `anggaran_maintenance_gedung_bogor` varchar(100) NOT NULL,
  `terpakai_maintenance_gedung_bogor` varchar(100) NOT NULL,
  `anggaran_maintenance_gedung` varchar(100) NOT NULL,
  `terpakai_maintenance_gedung` varchar(100) NOT NULL,
  `anggaran_global` varchar(100) NOT NULL,
  `terpakai_global` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_data_maintenance`
--

INSERT INTO `2022_data_maintenance` (`id`, `bulan`, `tahun`, `anggaran_maintenance_aset_tajur`, `terpakai_maintenance_aset_tajur`, `anggaran_maintenance_aset_bogor`, `terpakai_maintenance_aset_bogor`, `anggaran_maintenance_aset`, `terpakai_maintenance_aset`, `anggaran_maintenance_gedung_tajur`, `terpakai_maintenance_gedung_tajur`, `anggaran_maintenance_gedung_bogor`, `terpakai_maintenance_gedung_bogor`, `anggaran_maintenance_gedung`, `terpakai_maintenance_gedung`, `anggaran_global`, `terpakai_global`) VALUES
(1, 'Januari', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'Februari', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'Maret', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'April', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Mei', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Juni', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Juli', '2022', '300000', '250000', '600000', '500000', '900000', '750000', '200000', '150000', '600000', '500000', '800000', '650000', '1700000', '1400000'),
(8, 'Agustus', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'September', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'Oktober', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'November', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 'Desember', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_data_operasional_yayasan`
--

CREATE TABLE `2022_data_operasional_yayasan` (
  `id` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `anggaran_operasional_yayasan_tajur` varchar(100) NOT NULL,
  `terpakai_operasional_yayasan_tajur` varchar(100) NOT NULL,
  `anggaran_operasional_yayasan_bogor` varchar(100) NOT NULL,
  `terpakai_operasional_yayasan_bogor` varchar(100) NOT NULL,
  `anggaran_global` varchar(100) NOT NULL,
  `terpakai_global` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_data_operasional_yayasan`
--

INSERT INTO `2022_data_operasional_yayasan` (`id`, `bulan`, `tahun`, `anggaran_operasional_yayasan_tajur`, `terpakai_operasional_yayasan_tajur`, `anggaran_operasional_yayasan_bogor`, `terpakai_operasional_yayasan_bogor`, `anggaran_global`, `terpakai_global`) VALUES
(1, 'Januari', '2022', '', '', '', '', '', ''),
(2, 'Februari', '2022', '', '', '', '', '', ''),
(3, 'Maret', '2022', '', '', '', '', '', ''),
(4, 'April', '2022', '', '', '', '', '', ''),
(5, 'Mei', '2022', '', '', '', '', '', ''),
(6, 'Juni', '2022', '', '', '', '', '', ''),
(7, 'Juli', '2022', '110000', '100000', '80000', '50000', '190000', '150000'),
(8, 'Agustus', '2022', '', '', '', '', '', ''),
(9, 'September', '2022', '', '', '', '', '', ''),
(10, 'Oktober', '2022', '', '', '', '', '', ''),
(11, 'November', '2022', '', '', '', '', '', ''),
(12, 'Desember', '2022', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_data_program`
--

CREATE TABLE `2022_data_program` (
  `id` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `anggaran_pendidikan` varchar(100) NOT NULL,
  `terpakai_pendidikan` varchar(100) NOT NULL,
  `anggaran_kesehatan` varchar(100) NOT NULL,
  `terpakai_kesehatan` varchar(100) NOT NULL,
  `anggaran_program_tajur` varchar(100) NOT NULL,
  `terpakai_program_tajur` varchar(100) NOT NULL,
  `anggaran_pendidikan_bogor` varchar(100) NOT NULL,
  `terpakai_pendidikan_bogor` varchar(100) NOT NULL,
  `anggaran_kesehatan_bogor` varchar(100) NOT NULL,
  `terpakai_kesehatan_bogor` varchar(100) NOT NULL,
  `anggaran_program_bogor` varchar(100) NOT NULL,
  `terpakai_program_bogor` varchar(100) NOT NULL,
  `anggaran_global` varchar(100) NOT NULL,
  `terpakai_global` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_data_program`
--

INSERT INTO `2022_data_program` (`id`, `bulan`, `tahun`, `anggaran_pendidikan`, `terpakai_pendidikan`, `anggaran_kesehatan`, `terpakai_kesehatan`, `anggaran_program_tajur`, `terpakai_program_tajur`, `anggaran_pendidikan_bogor`, `terpakai_pendidikan_bogor`, `anggaran_kesehatan_bogor`, `terpakai_kesehatan_bogor`, `anggaran_program_bogor`, `terpakai_program_bogor`, `anggaran_global`, `terpakai_global`) VALUES
(1, 'Januari', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'Februari', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'Maret', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'April', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Mei', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Juni', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Juli', '2022', '500000', '450000', '120000', '100000', '6620000', '5050000', '6000000', '4500000', '4000000', '3500000', '10600000', '8500000', '17220000', '13550000'),
(8, 'Agustus', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'September', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'Oktober', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'November', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 'Desember', '2022', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_data_uang_makan`
--

CREATE TABLE `2022_data_uang_makan` (
  `id` int(11) NOT NULL,
  `bulan` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `anggaran_uang_makan_tajur` varchar(100) NOT NULL,
  `terpakai_uang_makan_tajur` varchar(100) NOT NULL,
  `anggaran_uang_makan_bogor` varchar(100) NOT NULL,
  `terpakai_uang_makan_bogor` varchar(100) NOT NULL,
  `anggaran_global` varchar(100) NOT NULL,
  `terpakai_global` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_data_uang_makan`
--

INSERT INTO `2022_data_uang_makan` (`id`, `bulan`, `tahun`, `anggaran_uang_makan_tajur`, `terpakai_uang_makan_tajur`, `anggaran_uang_makan_bogor`, `terpakai_uang_makan_bogor`, `anggaran_global`, `terpakai_global`) VALUES
(1, 'Januari', '2022', '', '', '', '', '', ''),
(2, 'Februari', '2022', '', '', '', '', '', ''),
(3, 'Maret', '2022', '', '', '', '', '', ''),
(4, 'April', '2022', '', '', '', '', '', ''),
(5, 'Mei', '2022', '5100000', '3300000', '', '', '5100000', '3300000'),
(6, 'Juni', '2022', '', '', '', '', '', ''),
(7, 'Juli', '2022', '150000', '100000', '50000', '45000', '200000', '145000'),
(8, 'Agustus', '2022', '', '', '', '', '', ''),
(9, 'September', '2022', '', '', '', '', '', ''),
(10, 'Oktober', '2022', '', '', '', '', '', ''),
(11, 'November', '2022', '', '', '', '', '', ''),
(12, 'Desember', '2022', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_gaji_karyawan`
--

CREATE TABLE `2022_gaji_karyawan` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `cabang` varchar(200) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `deskripsi` text NOT NULL,
  `dana_anggaran` varchar(200) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `pemakaian` text NOT NULL,
  `dana_terpakai` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `laporan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_gaji_karyawan`
--

INSERT INTO `2022_gaji_karyawan` (`id`, `id_pengurus`, `posisi`, `cabang`, `kategori`, `tgl_dibuat`, `deskripsi`, `dana_anggaran`, `tgl_laporan`, `pemakaian`, `dana_terpakai`, `status`, `laporan`) VALUES
(1, 'kepala_income', 'Kepala Income', 'Depok', 'Gaji Karyawan', '2022-05-26', 'Gaji karyawan', '52600000', '2022-05-28', 'Gaji karyawan', '51546154', 'OK', 'Terverifikasi'),
(2, 'kepala_income', 'Kepala Income', 'Tajur', 'Gaji Karyawan', '2022-07-04', 'gaji bulanan', '20000000', '2022-07-06', 'laporan gaji bulanan', '19500000', 'OK', 'Terverifikasi'),
(3, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Gaji Karyawan', '2022-07-05', 'gaji bogor', '600000', '2022-07-06', 'laporan gaji ', '500000', 'OK', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_galeri_anggaran_lain`
--

CREATE TABLE `2022_galeri_anggaran_lain` (
  `id` int(11) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `program` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `dokumentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_galeri_anggaran_lain`
--

INSERT INTO `2022_galeri_anggaran_lain` (`id`, `nomor_id`, `id_pengurus`, `program`, `nama`, `dokumentasi`) VALUES
(1, '2', 'kepala_pengajuan', 'Biaya Lainnya', 'Titi Sugianti', '62c4f788954fe.jpg'),
(2, '1', 'kepala_income', 'Biaya Lainnya', 'Fadhila Amelia Putri', '62c4fb5b72ab1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_galeri_aset_yayasan`
--

CREATE TABLE `2022_galeri_aset_yayasan` (
  `id` int(11) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `program` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `dokumentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_galeri_aset_yayasan`
--

INSERT INTO `2022_galeri_aset_yayasan` (`id`, `nomor_id`, `id_pengurus`, `program`, `nama`, `dokumentasi`) VALUES
(1, '4', 'kepala_pengajuan', 'Aset Yayasan', 'Titi Sugianti', '62c4f6867256b.jpg'),
(2, '3', 'kepala_pengajuan', 'Aset Yayasan', 'Titi Sugianti', '62c4f6a43cff0.jpg'),
(3, '1', 'kepala_income', 'Aset Yayasan', 'Fadhila Amelia Putri', '62c4f83ecad86.jpg'),
(4, '2', 'kepala_income', 'Aset Yayasan', 'Fadhila Amelia Putri', '62c4f876283d3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_galeri_gaji_karyawan`
--

CREATE TABLE `2022_galeri_gaji_karyawan` (
  `id` int(11) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `program` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `dokumentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_galeri_gaji_karyawan`
--

INSERT INTO `2022_galeri_gaji_karyawan` (`id`, `nomor_id`, `id_pengurus`, `program`, `nama`, `dokumentasi`) VALUES
(1, '1', 'kepala_income', 'Gaji Karyawan', 'Fadhila Amelia Putri', '6291f1ebe9edc.jpeg'),
(2, '3', 'kepala_pengajuan', 'Gaji Karyawan', 'Titi Sugianti', '62c4f7709d9c2.jpg'),
(3, '2', 'kepala_income', 'Gaji Karyawan', 'Fadhila Amelia Putri', '62c4f99e7c2a9.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_galeri_logistik`
--

CREATE TABLE `2022_galeri_logistik` (
  `id` int(11) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `program` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `dokumentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_galeri_logistik`
--

INSERT INTO `2022_galeri_logistik` (`id`, `nomor_id`, `id_pengurus`, `program`, `nama`, `dokumentasi`) VALUES
(1, '2', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '62860ad4e9477.jpg'),
(5, '1', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291efcc92a3e.jpeg'),
(6, '1', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291efcda6ce7.jpeg'),
(7, '3', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f0580e62c.jpeg'),
(8, '3', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f0590f77e.jpeg'),
(9, '3', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f05a0d045.jpeg'),
(10, '3', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f05c5e2a9.jpeg'),
(11, '3', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f05c89851.jpeg'),
(12, '3', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f05d8a7fd.jpeg'),
(13, '3', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f05ea5523.jpeg'),
(14, '3', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f05fcdd99.jpeg'),
(15, '3', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f060e8a23.jpeg'),
(16, '3', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f061f2582.jpeg'),
(17, '4', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f0a0514b0.jpeg'),
(18, '4', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '6291f0a150f0a.jpeg'),
(19, '11', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '62c3dd2d7c6d2.jpg'),
(20, '12', 'kepala_income', 'Logistik Gedung DYPA', 'Fadhila Amelia Putri', '62c3dd453b47e.jpg'),
(21, '10', 'kepala_pengajuan', 'Logistik Gedung DYPA', 'Titi Sugianti', '62c3dd6c955d2.jpg'),
(22, '9', 'kepala_pengajuan', 'Logistik Gedung DYPA', 'Titi Sugianti', '62c3dd807b2ec.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_galeri_maintenance`
--

CREATE TABLE `2022_galeri_maintenance` (
  `id` int(11) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `program` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `dokumentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_galeri_maintenance`
--

INSERT INTO `2022_galeri_maintenance` (`id`, `nomor_id`, `id_pengurus`, `program`, `nama`, `dokumentasi`) VALUES
(1, '4', 'kepala_pengajuan', 'Maintenance Aset', 'Titi Sugianti', '62c4f79eb34cf.jpg'),
(2, '3', 'kepala_pengajuan', 'Maintenance Gedung', 'Titi Sugianti', '62c4f7b6bf2b3.jpg'),
(3, '2', 'kepala_income', 'Maintenance Aset', 'Fadhila Amelia Putri', '62c4fb7653347.jpg'),
(4, '1', 'kepala_income', 'Maintenance Gedung', 'Fadhila Amelia Putri', '62c4fb8bb4598.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_galeri_operasional_yayasan`
--

CREATE TABLE `2022_galeri_operasional_yayasan` (
  `id` int(11) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `program` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `dokumentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_galeri_operasional_yayasan`
--

INSERT INTO `2022_galeri_operasional_yayasan` (`id`, `nomor_id`, `id_pengurus`, `program`, `nama`, `dokumentasi`) VALUES
(1, '3', 'kepala_pengajuan', 'Operasional Yayasan', 'Titi Sugianti', '62c4f7c9980a7.jpg'),
(2, '1', 'kepala_income', 'Operasional Yayasan', 'Fadhila Amelia Putri', '62c4fba019258.jpg'),
(3, '2', 'kepala_income', 'Operasional Yayasan', 'Fadhila Amelia Putri', '62c4fbb2cfbae.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_galeri_pemasukan`
--

CREATE TABLE `2022_galeri_pemasukan` (
  `id` int(11) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `program` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `dokumentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_galeri_program`
--

CREATE TABLE `2022_galeri_program` (
  `id` int(11) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `program` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `dokumentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_galeri_program`
--

INSERT INTO `2022_galeri_program` (`id`, `nomor_id`, `id_pengurus`, `program`, `nama`, `dokumentasi`) VALUES
(1, '2', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291e12a5ce1b.jpeg'),
(2, '2', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291e12b80d2b.jpeg'),
(3, '1', 'kepala_income', 'Program Pendidikan Yatim', 'Fadhila Amelia Putri', '6291ea992c1e6.jpeg'),
(4, '1', 'kepala_income', 'Program Pendidikan Yatim', 'Fadhila Amelia Putri', '6291ea9a25cd9.jpeg'),
(5, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef2cec4bb.jpeg'),
(6, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef2e4b4a1.jpeg'),
(7, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef2fa59e1.jpeg'),
(8, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef3105b22.jpeg'),
(9, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef325ae73.jpeg'),
(10, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef33cf23b.jpeg'),
(11, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef3550da3.jpeg'),
(12, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef365b213.jpeg'),
(13, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef37c7176.jpeg'),
(14, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef392c401.jpeg'),
(15, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef3a937e9.jpeg'),
(16, '3', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '6291ef3be71e1.jpeg'),
(17, '7', 'kepala_pengajuan', 'Program Pendidikan Yatim', 'Titi Sugianti', '62c269149a54c.jpg'),
(18, '8', 'kepala_income', 'Program Pendidikan Yatim', 'Fadhila Amelia Putri', '62c26959851a1.jpg'),
(19, '10', 'kepala_pengajuan', 'Program Santunan Yatim', 'Titi Sugianti', '62c2addbaf4e0.jpg'),
(20, '9', 'kepala_pengajuan', 'Program Kesehatan Yatim', 'Titi Sugianti', '62c2ae0613ba9.jpg'),
(21, '10', 'kepala_income', 'Program Kesehatan Yatim', 'Fadhila Amelia Putri', '62c3bce6786df.jpg'),
(22, '9', 'kepala_income', 'Program Pendidikan Yatim', 'Fadhila Amelia Putri', '62c3bcff07e88.jpg'),
(23, '11', 'kepala_income', 'Program Santunan Yatim', 'Fadhila Amelia Putri', '62c3bd1d58114.jpg'),
(24, '12', 'kepala_pengajuan', 'Program Pendidikan Yatim', 'Titi Sugianti', '62c3bd3b25454.jpg'),
(25, '13', 'kepala_pengajuan', 'Program Kesehatan Yatim', 'Titi Sugianti', '62c3bd4a421a2.jpg'),
(26, '14', 'kepala_pengajuan', 'Program Santunan Yatim', 'Titi Sugianti', '62c3bd6549d2b.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_galeri_uang_makan`
--

CREATE TABLE `2022_galeri_uang_makan` (
  `id` int(11) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `program` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `dokumentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_galeri_uang_makan`
--

INSERT INTO `2022_galeri_uang_makan` (`id`, `nomor_id`, `id_pengurus`, `program`, `nama`, `dokumentasi`) VALUES
(2, '1', 'kepala_income', 'Uang Makan', 'Fadhila Amelia Putri', '6291f2a0a2d28.jpg'),
(3, '3', 'kepala_pengajuan', 'Uang Makan', 'Titi Sugianti', '62c4f6b91e013.jpg'),
(4, '2', 'kepala_income', 'Uang Makan', 'Fadhila Amelia Putri', '62c4f989baa73.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_income`
--

CREATE TABLE `2022_income` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `gedung` varchar(200) NOT NULL,
  `tgl_pemasukan` date NOT NULL,
  `income` varchar(250) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_income`
--

INSERT INTO `2022_income` (`id`, `id_pengurus`, `kategori`, `posisi`, `gedung`, `tgl_pemasukan`, `income`, `status`) VALUES
(1, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-01', '5000', 'Terverifikasi'),
(2, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-02', '200000', 'Terverifikasi'),
(3, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-04', '215000', 'Terverifikasi'),
(4, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-05', '50000', 'Terverifikasi'),
(5, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-06', '300000', 'Terverifikasi'),
(6, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-08', '100000', 'Terverifikasi'),
(7, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-09', '304800', 'Terverifikasi'),
(8, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-10', '3000000', 'Terverifikasi'),
(9, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-11', '1652870', 'Terverifikasi'),
(10, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-12', '556186', 'Terverifikasi'),
(11, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-13', '1213000', 'Terverifikasi'),
(12, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-14', '530293', 'Terverifikasi'),
(13, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-15', '750000', 'Terverifikasi'),
(14, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-16', '500000', 'Terverifikasi'),
(15, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-17', '1850060', 'Terverifikasi'),
(16, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-18', '2401639', 'Terverifikasi'),
(17, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-19', '1423000', 'Terverifikasi'),
(18, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-20', '1775300', 'Terverifikasi'),
(19, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-21', '1370512', 'Terverifikasi'),
(20, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-22', '450383', 'Terverifikasi'),
(21, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-23', '1130000', 'Terverifikasi'),
(22, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-24', '1676000', 'Terverifikasi'),
(23, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-25', '661800', 'Terverifikasi'),
(24, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-26', '2526744', 'Terverifikasi'),
(25, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-27', '2934000', 'Terverifikasi'),
(26, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-28', '632500', 'Terverifikasi'),
(27, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-29', '200000', 'Terverifikasi'),
(28, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-30', '1060000', 'Terverifikasi'),
(29, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-05-31', '400000', 'Terverifikasi'),
(30, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-06-01', '395000', 'Terverifikasi'),
(31, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-06-02', '1590000', 'Terverifikasi'),
(32, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Facebook Depok', '2022-06-03', '1365001', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_incometanparesi`
--

CREATE TABLE `2022_incometanparesi` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `gedung` varchar(200) NOT NULL,
  `tgl_pemasukan` date NOT NULL,
  `income` varchar(250) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_incometanparesi`
--

INSERT INTO `2022_incometanparesi` (`id`, `id_pengurus`, `kategori`, `posisi`, `gedung`, `tgl_pemasukan`, `income`, `status`) VALUES
(1, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-01', '160000', 'Terverifikasi'),
(2, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-06', '510000', 'Terverifikasi'),
(3, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-09', '300000', 'Terverifikasi'),
(4, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-15', '100000', 'Terverifikasi'),
(5, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-17', '130293', 'Terverifikasi'),
(6, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-16', '300000', 'Terverifikasi'),
(7, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-18', '25000', 'Terverifikasi'),
(8, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-19', '100000', 'Terverifikasi'),
(9, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-20', '545000', 'Terverifikasi'),
(10, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-22', '100000', 'Terverifikasi'),
(11, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-23', '400000', 'Terverifikasi'),
(12, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-25', '10000', 'Terverifikasi'),
(13, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-26', '200000', 'Terverifikasi'),
(14, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-27', '620000', 'Terverifikasi'),
(15, 'kepala_income', 'Media Sosial', 'Kepala Income', 'Tanpa Resi', '2022-05-31', '251401', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_logistik`
--

CREATE TABLE `2022_logistik` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `cabang` varchar(200) NOT NULL,
  `logistik` varchar(250) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `deskripsi` text NOT NULL,
  `dana_anggaran` varchar(200) NOT NULL,
  `tgl_pemakaian` date NOT NULL,
  `deskripsi_pemakaian` varchar(200) NOT NULL,
  `dana_terpakai` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `laporan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_logistik`
--

INSERT INTO `2022_logistik` (`id`, `id_pengurus`, `posisi`, `cabang`, `logistik`, `tgl_pengajuan`, `deskripsi`, `dana_anggaran`, `tgl_pemakaian`, `deskripsi_pemakaian`, `dana_terpakai`, `status`, `laporan`) VALUES
(1, 'kepala_income', 'Kepala Income', 'Tajur', 'Logistik Gedung DYPA', '2022-05-11', 'Logistik Krediting', '1035000', '2022-05-28', 'Krediting', '732500', 'OK', 'Terverifikasi'),
(2, 'kepala_income', 'Kepala Income', 'Tajur', 'Logistik Gedung DYPA', '2022-05-11', 'Logistik Kebersihan', '85000', '2022-05-19', 'Laporan logistik kebersihan', '82200', 'OK', 'Terverifikasi'),
(3, 'kepala_income', 'Kepala Income', 'Tajur', 'Logistik Gedung DYPA', '2022-05-11', 'Logistik kebutuhan yayasan', '547200', '2022-05-28', 'Kebutuhan yayasan', '787600', 'OK', 'Terverifikasi'),
(4, 'kepala_income', 'Kepala Income', 'Tajur', 'Logistik Gedung DYPA', '2022-05-11', 'Logistik konsumtif', '281300', '2022-05-28', 'Konsumtif', '307200', 'OK', 'Terverifikasi'),
(5, 'kepala_income', 'Kepala Income', 'Tajur', 'Logistik Gedung DYPA', '2022-06-02', 'Logistik Krediting bogor dan tajur halang', '5718850', '2022-06-21', 'Logistik krediting bogor dan tajur halang', '5166850', 'OK', 'Terverifikasi'),
(6, 'kepala_income', 'Kepala Income', 'Tajur', 'Logistik Gedung DYPA', '2022-06-02', 'Logistik Kebutuhan Yayasan Bogor Dan Tajur Halang', '1421600', '2022-06-21', 'Logistik kebutuhan yayasan bogor dan tajur halang', '1201000', 'OK', 'Terverifikasi'),
(7, 'kepala_income', 'Kepala Income', 'Tajur', 'Logistik Gedung DYPA', '2022-06-02', 'logistik kebersihan tajur halang', '40000', '2022-06-21', 'Kebersihan tajur halang', '15300', 'OK', 'Terverifikasi'),
(8, 'kepala_income', 'Kepala Income', 'Tajur', 'Logistik Gedung DYPA', '2022-06-02', 'logistik konsumtif bogor dan tajur halang', '906000', '2022-06-21', 'Logistik konsumtif bogor dan tajur halang', '801000', 'OK', 'Terverifikasi'),
(9, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Logistik Gedung DYPA', '2022-07-05', 'logistik bogor', '500000', '2022-07-05', 'laporan logistik bogor', '250000', 'OK', 'Terverifikasi'),
(10, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Logistik Gedung DYPA', '2022-07-06', 'logistik konsumtif', '2000000', '2022-07-05', 'laporan logistik konsumtif', '1150000', 'OK', 'Terverifikasi'),
(11, 'kepala_income', 'Kepala Income', 'Tajur', 'Logistik Gedung DYPA', '2022-07-04', 'pengajuan logistik non konsumtif', '1000000', '2022-07-05', 'laporan logistik non konsumtif', '950000', 'OK', 'Terverifikasi'),
(12, 'kepala_income', 'Kepala Income', 'Tajur', 'Logistik Gedung DYPA', '2022-07-04', 'pengajuan logistik konsumtif', '100000', '2022-07-05', 'laporan logistik konsumtif', '50000', 'OK', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_log_aktivity`
--

CREATE TABLE `2022_log_aktivity` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `tanggal` datetime NOT NULL,
  `aktivitas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_log_aktivity`
--

INSERT INTO `2022_log_aktivity` (`id`, `nama`, `posisi`, `ip`, `tanggal`, `aktivitas`) VALUES
(1, 'Vicky Abdul Rohman', 'Management Keuangan', '180.251.176.94', '2022-05-18 10:16:52', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(2, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.245.58.110', '2022-05-18 11:10:16', 'MUHAMMAD NAZAR YANA Telah Membuat Akun Baru Facebook Depok'),
(3, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.245.58.110', '2022-05-18 11:10:35', 'MUHAMMAD NAZAR YANA Telah Login Halaman Facebook Depok'),
(4, 'Izzy Azkia Hafidz ', 'Facebook Depok', '180.245.58.110', '2022-05-18 11:11:20', 'Izzy Azkia Hafidz  Telah Membuat Akun Baru Facebook Depok'),
(5, 'Muhammad Nazar Yana', 'Facebook Depok', '180.245.58.110', '2022-05-18 11:11:24', 'Muhammad Nazar Yana Telah Membuat Akun media sosial dengan nama akun Dompet Yatim'),
(6, 'Izzy Azkia Hafidz ', 'Facebook Depok', '180.245.58.110', '2022-05-18 11:11:34', 'Izzy Azkia Hafidz  Telah Login Halaman Facebook Depok'),
(7, 'Muhammad Nazar Yana', 'Facebook Depok', '180.245.58.110', '2022-05-18 11:11:41', 'Muhammad Nazar Yana Telah Membuat Akun media sosial dengan nama akun Dompet Yatim II'),
(8, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.245.58.110', '2022-05-18 11:12:37', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menginput income akun Dompet Yatim hari ini'),
(9, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.245.58.110', '2022-05-18 11:13:48', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menginput income akun Dompet Yatim II hari ini'),
(10, 'Hilman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:17:25', 'Hilman Telah Membuat Akun Baru Facebook Depok'),
(11, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:17:30', 'Mutmainah Telah Membuat Akun Baru Facebook Depok'),
(12, 'Sri Lestari', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:17:30', 'Sri Lestari Telah Membuat Akun Baru Facebook Depok'),
(13, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:17:33', 'Lutfhi Aditya Rachman Telah Membuat Akun Baru Facebook Depok'),
(14, 'Sri Lestari', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:17:39', 'Sri Lestari Telah Login Halaman Facebook Depok'),
(15, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:17:43', 'Mutmainah Telah Login Halaman Facebook Depok'),
(16, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:17:46', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(17, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.78.176', '2022-05-18 11:17:50', 'Anita Sri Wulandari Telah Membuat Akun Baru Facebook Depok'),
(18, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:17:52', 'Adam Telah Membuat Akun Baru Facebook Depok'),
(19, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.78.176', '2022-05-18 11:17:58', 'Anita Sri Wulandari Telah Login Halaman Facebook Depok'),
(20, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:18:09', 'Adam Telah Login Halaman Facebook Depok'),
(21, 'Novit Riyadi', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:18:52', 'Novit Riyadi Telah Membuat Akun Baru Facebook Depok'),
(22, 'Riki', 'Facebook Depok', '182.2.139.185', '2022-05-18 11:19:06', 'Riki Telah Membuat Akun Baru Facebook Depok'),
(23, 'Riki', 'Facebook Depok', '182.2.139.185', '2022-05-18 11:19:17', 'Riki Telah Login Halaman Facebook Depok'),
(24, 'Eza', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:19:38', 'Eza Telah Membuat Akun Baru Facebook Depok'),
(25, 'Novit Riyadi', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:19:49', 'Novit Riyadi Telah Login Halaman Facebook Depok'),
(26, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:19:52', 'Dedi Makarim Manaf Telah Membuat Akun Baru Facebook Depok'),
(27, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:20:09', 'Dedi Makarim Manaf Telah Login Halaman Facebook Depok'),
(28, 'Sodru ', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:20:15', 'Sodru  Telah Membuat Akun Baru Facebook Depok'),
(29, 'Resma Febiyanti', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:20:16', 'Resma Febiyanti Telah Membuat Akun Baru Facebook Depok'),
(30, 'Iman Nuriawan', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:20:31', 'Iman Nuriawan Telah Membuat Akun Baru Facebook Depok'),
(31, 'Resma Febiyanti', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:20:32', 'Resma Febiyanti Telah Login Halaman Facebook Depok'),
(32, 'Sodru ', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:20:39', 'Sodru  Telah Login Halaman Facebook Depok'),
(33, 'Iman Nuriawan', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:20:44', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(34, 'Hilman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:20:59', 'Hilman Telah Login Halaman Facebook Depok'),
(35, 'Ezaalfajri', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:22:34', 'Ezaalfajri Telah Membuat Akun Baru Facebook Depok'),
(36, 'Ezaalfajri', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:22:50', 'Ezaalfajri Telah Login Halaman Facebook Depok'),
(37, 'Sezha Octaviana', 'Facebook Depok', '115.178.196.132', '2022-05-18 11:23:04', 'Sezha Octaviana Telah Membuat Akun Baru Facebook Depok'),
(38, 'Sezha Octaviana', 'Facebook Depok', '115.178.196.132', '2022-05-18 11:23:19', 'Sezha Octaviana Telah Login Halaman Facebook Depok'),
(39, 'Sri Lestari', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:24:00', 'Sri Lestari Telah Membuat Akun media sosial dengan nama akun Gerbang Sedekah Yatim'),
(40, 'Sri Lestari', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:24:37', 'Sri Lestari Telah Membuat Akun media sosial dengan nama akun Putri Rahmadhani'),
(41, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:25:04', 'Mutmainah Telah Membuat Akun media sosial dengan nama akun sedekah yatim i'),
(42, 'Sezha Octaviana', 'Facebook Depok', '115.178.196.132', '2022-05-18 11:25:27', 'Sezha Octaviana Telah Membuat Akun media sosial dengan nama akun Kholid Fatullah'),
(43, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:25:35', 'Lutfhi Aditya Rachman Telah Membuat Akun media sosial dengan nama akun Infaq Yatim'),
(44, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:25:36', 'Adam Telah Membuat Akun media sosial dengan nama akun Zaeni Mucthar'),
(45, 'Sezha Octaviana', 'Facebook Depok', '115.178.196.132', '2022-05-18 11:25:38', 'Sezha Octaviana Telah Membuat Akun media sosial dengan nama akun Keberkahan Yatim'),
(46, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:25:47', 'Mutmainah Telah Membuat Akun media sosial dengan nama akun Bersama yatim'),
(47, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.78.176', '2022-05-18 11:25:55', 'Anita Sri Wulandari Telah Membuat Akun media sosial dengan nama akun Yatim piatu dompet amanah'),
(48, 'Novit Riyadi', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:25:59', 'Novit Riyadi Telah Membuat Akun media sosial dengan nama akun Anita Sri Wulandari'),
(49, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:26:06', 'Adam Telah Membuat Akun media sosial dengan nama akun Jihan ramadhani'),
(50, 'Ezaalfajri', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:26:08', 'Ezaalfajri Telah Membuat Akun media sosial dengan nama akun Aulia jahra'),
(51, 'Iman Nuriawan', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:26:11', 'Iman Nuriawan Telah Membuat Akun media sosial dengan nama akun Berbagi yatim'),
(52, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:26:22', 'Lutfhi Aditya Rachman Telah Membuat Akun media sosial dengan nama akun Cahaya Abelia'),
(53, 'Novit Riyadi', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:26:30', 'Novit Riyadi Telah Membuat Akun media sosial dengan nama akun Peduli bersama yatim'),
(54, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.78.176', '2022-05-18 11:26:43', 'Anita Sri Wulandari Telah Membuat Akun media sosial dengan nama akun regi alfiyansyah'),
(55, 'Resma Febiyanti', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:26:49', 'Resma Febiyanti Telah Membuat Akun media sosial dengan nama akun Yatim piatu amanah i'),
(56, 'Riki', 'Facebook Depok', '182.2.139.185', '2022-05-18 11:26:55', 'Riki Telah Membuat Akun media sosial dengan nama akun Zakat Yatim'),
(57, 'Iman Nuriawan', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:26:57', 'Iman Nuriawan Telah Membuat Akun media sosial dengan nama akun Dompet yatim piatu'),
(58, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:27:06', 'Dedi Makarim Manaf Telah Membuat Akun media sosial dengan nama akun Farhan Fikri Fadillah'),
(59, 'Ezaalfajri', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:27:07', 'Ezaalfajri Telah Membuat Akun media sosial dengan nama akun Meylisa Dwi Anggraheni Puspitasari '),
(60, 'Riki', 'Facebook Depok', '182.2.139.185', '2022-05-18 11:27:15', 'Riki Telah Membuat Akun media sosial dengan nama akun Rezeki Yatim'),
(61, 'Hilman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:27:18', 'Hilman Telah Membuat Akun media sosial dengan nama akun Yanti'),
(62, 'Sodru ', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:27:25', 'Sodru  Telah Membuat Akun media sosial dengan nama akun Muhammad Rizky Amin '),
(63, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:27:34', 'Dedi Makarim Manaf Telah Membuat Akun media sosial dengan nama akun Sedekah Yatim'),
(64, 'Sodru ', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:28:17', 'Sodru  Telah Membuat Akun media sosial dengan nama akun Mari bantu Yatim '),
(65, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:28:50', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun sedekah yatim i hari ini'),
(66, 'Hilman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:28:52', 'Hilman Divisi Facebook Depok Telah Menginput income akun Yanti hari ini'),
(67, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:29:14', 'Mutmainah Divisi Facebook Depok Telah Mengubah income akun Sedekah Yatim I'),
(68, 'Resma Febiyanti', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:29:23', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i hari ini'),
(69, 'Sezha Octaviana', 'Facebook Depok', '115.178.196.132', '2022-05-18 11:29:30', 'Sezha Octaviana Divisi Facebook Depok Telah Menginput income akun Kholid Fatullah hari ini'),
(70, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:29:40', 'Adam Divisi Facebook Depok Telah Menginput income akun Jihan ramadhani hari ini'),
(71, 'Novit Riyadi', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:30:42', 'Novit Riyadi Divisi Facebook Depok Telah Menginput income akun Peduli bersama yatim hari ini'),
(72, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:30:51', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim hari ini'),
(73, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:30:54', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim hari ini'),
(74, 'Iman Nuriawan', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:31:07', 'Iman Nuriawan Divisi Facebook Depok Telah Menginput income akun Berbagi yatim hari ini'),
(75, 'Resma Febiyanti', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:32:16', 'Resma Febiyanti Telah Membuat Akun media sosial dengan nama akun Fitri mulyani '),
(76, 'Sodru ', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:33:58', 'Sodru  Divisi Facebook Depok Telah Menginput income akun Muhammad Rizky Amin  hari ini'),
(77, 'Hilman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:36:33', 'Hilman Divisi Facebook Depok Telah Melaporkan harian akun dari Yanti'),
(78, 'Resma Febiyanti', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:41:26', 'Resma Febiyanti Telah Login Halaman Facebook Depok'),
(79, 'Riki', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:43:11', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(80, 'Hilman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:43:45', 'Hilman Telah Membuat Akun media sosial dengan nama akun Udin'),
(81, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:44:16', 'Dedi Makarim Manaf Telah Login Halaman Facebook Depok'),
(82, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:50:07', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(83, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:51:11', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Cahaya Abelia hari ini'),
(84, 'Iman Nuriawan', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:51:39', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(85, 'Hilman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:53:05', 'Hilman Facebook Depok Telah Logout dari halamannya'),
(86, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:53:32', 'Adam Facebook Depok Telah Logout dari halamannya'),
(87, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:54:15', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim hari ini'),
(88, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:55:24', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim hari ini'),
(89, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:56:35', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim hari ini'),
(90, 'Riki Subagja', 'Ketua Yayasan', '180.251.176.94', '2022-05-18 11:57:37', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(91, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:58:38', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim hari ini'),
(92, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 11:59:37', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim hari ini'),
(93, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.176.94', '2022-05-18 12:01:39', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim hari ini'),
(94, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-18 14:12:58', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(95, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-18 14:14:12', 'Iman Nuriawan Divisi Facebook Depok Telah Menginput income akun Berbagi yatim hari ini'),
(96, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-18 14:15:14', 'Iman Nuriawan Divisi Facebook Depok Telah Menginput income akun Berbagi yatim hari ini'),
(97, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-18 14:15:35', 'Iman Nuriawan Divisi Facebook Depok Telah Mengubah income akun Berbagi Yatim'),
(98, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-18 14:17:57', 'Iman Nuriawan Divisi Facebook Depok Telah Mengubah income akun Berbagi Yatim'),
(99, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-18 14:18:16', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(100, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:19:37', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun sedekah yatim i hari ini'),
(101, 'Vicky Abdul Rohman', 'Management Keuangan', '180.251.176.94', '2022-05-18 14:20:10', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(102, 'Resma Febiyanti', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:20:12', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i hari ini'),
(103, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:20:22', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun sedekah yatim i hari ini'),
(104, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:20:45', 'Mutmainah Divisi Facebook Depok Telah Mengubah income akun Sedekah Yatim I'),
(105, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:21:32', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun sedekah yatim i hari ini'),
(106, 'Resma Febiyanti', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:22:18', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i hari ini'),
(107, 'Resma Febiyanti', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:23:25', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i hari ini'),
(108, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:23:56', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun sedekah yatim i hari ini'),
(109, 'Sezha Octaviana', 'Facebook Depok', '115.178.199.132', '2022-05-18 14:24:20', 'Sezha Octaviana Divisi Facebook Depok Telah Menginput income akun Kholid Fatullah hari ini'),
(110, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:24:57', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun Bersama yatim hari ini'),
(111, 'Mutmainah', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:25:33', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun Bersama yatim hari ini'),
(112, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:25:58', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim hari ini'),
(113, 'Riki', 'Facebook Depok', '182.2.167.13', '2022-05-18 14:26:40', 'Riki Divisi Facebook Depok Telah Menginput income akun Zakat Yatim hari ini'),
(114, 'Riki', 'Facebook Depok', '182.2.167.13', '2022-05-18 14:27:23', 'Riki Divisi Facebook Depok Telah Menginput income akun Zakat Yatim hari ini'),
(115, 'Riki', 'Facebook Depok', '182.2.167.13', '2022-05-18 14:28:12', 'Riki Divisi Facebook Depok Telah Menginput income akun Zakat Yatim hari ini'),
(116, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:29:33', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim hari ini'),
(117, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.176.94', '2022-05-18 14:29:34', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(118, 'Sri Lestari', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:31:24', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim hari ini'),
(119, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:31:48', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim hari ini'),
(120, 'Sri Lestari', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:32:11', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim hari ini'),
(121, 'Sri Lestari', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:33:10', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim hari ini'),
(122, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:33:47', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim hari ini'),
(123, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.6.116', '2022-05-18 14:34:22', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah hari ini'),
(124, 'Sri Lestari', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:34:27', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim hari ini'),
(125, 'Sri Lestari', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:35:31', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani hari ini'),
(126, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.6.116', '2022-05-18 14:36:16', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah hari ini'),
(127, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:37:02', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim hari ini'),
(128, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.6.116', '2022-05-18 14:38:12', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah hari ini'),
(129, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.6.116', '2022-05-18 14:39:44', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah hari ini'),
(130, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.6.116', '2022-05-18 14:40:58', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah hari ini'),
(131, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.6.116', '2022-05-18 14:41:46', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah income akun Yatim Piatu Dompet Amanah'),
(132, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.6.116', '2022-05-18 14:42:48', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah hari ini'),
(133, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.6.116', '2022-05-18 14:44:06', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah hari ini'),
(134, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:44:46', 'Adam Telah Login Halaman Facebook Depok'),
(135, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.6.116', '2022-05-18 14:44:51', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah hari ini'),
(136, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:46:13', 'Adam Divisi Facebook Depok Telah Menginput income akun Jihan ramadhani hari ini'),
(137, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:47:18', 'Adam Divisi Facebook Depok Telah Menginput income akun Zaeni Mucthar hari ini'),
(138, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:49:00', 'Adam Divisi Facebook Depok Telah Menginput income akun Zaeni Mucthar hari ini'),
(139, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:50:22', 'Adam Divisi Facebook Depok Telah Menginput income akun Zaeni Mucthar hari ini'),
(140, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:52:58', 'Adam Divisi Facebook Depok Telah Mengubah income akun Jihan Ramadhani'),
(141, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 14:53:16', 'Adam Facebook Depok Telah Logout dari halamannya'),
(142, 'Ezaalfajri', 'Facebook Depok', '114.4.212.231', '2022-05-18 15:00:37', 'Ezaalfajri Divisi Facebook Depok Telah Menginput income akun Meylisa Dwi Anggraheni Puspitasari  hari ini'),
(143, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:07:50', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(144, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:09:02', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Bersama yatim'),
(145, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:12:04', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(146, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:12:34', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(147, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:12:59', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(148, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:13:26', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Putri Rahmadhani'),
(149, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:14:49', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(150, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:15:08', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(151, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:15:21', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun sedekah yatim i'),
(152, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:15:45', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(153, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:16:17', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(154, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:16:39', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zakat Yatim'),
(155, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:16:58', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zakat Yatim'),
(156, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:17:14', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(157, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:17:30', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Berbagi yatim'),
(158, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:17:49', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(159, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:18:04', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(160, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:18:21', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(161, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:18:50', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(162, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:19:05', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(163, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:19:23', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zaeni Mucthar'),
(164, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:20:01', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(165, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:20:23', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Jihan ramadhani'),
(166, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:20:43', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(167, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:21:20', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun sedekah yatim i'),
(168, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:21:31', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Meylisa Dwi Anggraheni Puspitasari '),
(169, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:21:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(170, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:22:45', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(171, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:23:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun sedekah yatim i'),
(172, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:24:18', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(173, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:25:13', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(174, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:25:32', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(175, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:25:50', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(176, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:26:05', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Kholid Fatullah'),
(177, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:26:22', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(178, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:37:49', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Muhammad Rizky Amin '),
(179, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:38:06', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun sedekah yatim i'),
(180, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 15:38:31', 'Adam Telah Login Halaman Facebook Depok'),
(181, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:40:13', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Berbagi yatim'),
(182, 'Adam', 'Facebook Depok', '180.251.176.94', '2022-05-18 15:40:27', 'Adam Facebook Depok Telah Logout dari halamannya'),
(183, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:55:00', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Kholid Fatullah'),
(184, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:55:31', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Peduli bersama yatim'),
(185, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:55:52', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(186, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:56:05', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(187, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:56:24', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zakat Yatim'),
(188, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:56:58', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zaeni Mucthar'),
(189, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:57:26', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Bersama yatim'),
(190, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:57:55', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(191, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:58:19', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(192, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:58:35', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(193, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:58:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Cahaya Abelia'),
(194, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:59:17', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Jihan ramadhani'),
(195, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-18 15:59:34', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(196, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 15:59:44', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun sedekah yatim i'),
(197, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-18 16:00:16', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(198, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-18 16:00:48', 'Adam Telah Login Halaman Facebook Depok'),
(199, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-18 16:01:44', 'Adam Facebook Depok Telah Logout dari halamannya'),
(200, 'Liana Amalia', 'Facebook Depok', '180.245.58.110', '2022-05-18 16:06:04', 'Liana Amalia Telah Membuat Akun Baru Facebook Depok'),
(201, 'Liana Amalia', 'Facebook Depok', '180.245.58.110', '2022-05-18 16:06:12', 'Liana Amalia Telah Login Halaman Facebook Depok'),
(202, 'Liana Amalia', 'Facebook Depok', '180.245.58.110', '2022-05-18 16:06:51', 'Liana Amalia Telah Membuat Akun media sosial dengan nama akun Sedekah dompet yatim'),
(203, 'Liana Amalia', 'Facebook Depok', '180.245.58.110', '2022-05-18 16:07:07', 'Liana Amalia Telah Membuat Akun media sosial dengan nama akun Liana amalia'),
(204, 'Haidar Sulthan', 'Facebook Depok', '103.179.252.203', '2022-05-18 16:10:29', 'Haidar Sulthan Telah Membuat Akun Baru Facebook Depok'),
(205, 'Haidar Sulthan', 'Facebook Depok', '103.179.252.203', '2022-05-18 16:11:12', 'Haidar Sulthan Telah Login Halaman Facebook Depok'),
(206, 'Haidar Sulthan', 'Facebook Depok', '103.179.252.203', '2022-05-18 16:11:45', 'Haidar Sulthan Telah Membuat Akun media sosial dengan nama akun Haidar Sultan'),
(207, 'Meisya Anastasia', 'Facebook Depok', '180.245.58.110', '2022-05-18 16:12:33', 'Meisya Anastasia Telah Membuat Akun Baru Facebook Depok'),
(208, 'Meisya Anastasia', 'Facebook Depok', '180.245.58.110', '2022-05-18 16:12:45', 'Meisya Anastasia Telah Login Halaman Facebook Depok'),
(209, 'Meisya Anastasia', 'Facebook Depok', '180.245.58.110', '2022-05-18 16:17:51', 'Meisya Anastasia Telah Membuat Akun media sosial dengan nama akun Dompet Sedekah Yatim'),
(210, 'Haidar Sulthan', 'Facebook Depok', '103.179.252.203', '2022-05-18 16:18:28', 'Haidar Sulthan Divisi Facebook Depok Telah Menginput income akun Haidar Sultan hari ini'),
(211, 'Haidar Sulthan', 'Facebook Depok', '103.179.252.203', '2022-05-18 16:19:33', 'Haidar Sulthan Divisi Facebook Depok Telah Menginput income akun Haidar Sultan hari ini'),
(212, 'Meisya Anastasia', 'Facebook Depok', '180.245.58.110', '2022-05-18 16:19:52', 'Meisya Anastasia Divisi Facebook Depok Telah Menginput income akun Dompet Sedekah Yatim hari ini'),
(213, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 16:45:42', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Haidar Sultan'),
(214, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 16:45:53', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Haidar Sultan'),
(215, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 16:46:05', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Yatim'),
(216, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 16:46:14', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Yatim II'),
(217, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.7.75', '2022-05-18 16:46:23', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Sedekah Yatim'),
(218, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-18 16:51:06', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Cahaya Abelia hari ini'),
(219, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.6.116', '2022-05-18 16:53:15', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun regi alfiyansyah hari ini'),
(220, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-18 16:59:52', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(221, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-18 17:05:57', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(222, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.85.63', '2022-05-18 21:14:07', 'MUHAMMAD NAZAR YANA Telah Login Halaman Facebook Depok'),
(223, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.85.63', '2022-05-18 21:16:39', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menginput income akun Dompet Yatim II hari ini'),
(224, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.29', '2022-05-19 08:17:37', 'Sezha Octaviana Divisi Facebook Depok Telah Menginput income akun Kholid Fatullah hari ini'),
(225, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:10:11', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah hari ini'),
(226, 'Sodru ', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:17:57', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(227, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.95.131', '2022-05-19 09:19:48', 'MUHAMMAD NAZAR YANA Telah Login Halaman Facebook Depok'),
(228, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:20:00', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(229, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:21:24', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(230, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:24:17', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(231, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:27:38', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(232, 'Sodru ', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:28:47', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Mari bantu Yatim '),
(233, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:31:48', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(234, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:34:50', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim'),
(235, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:36:00', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim'),
(236, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:37:27', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(237, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:39:54', 'Iman Nuriawan Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim Piatu'),
(238, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:41:00', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(239, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:41:10', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(240, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:43:51', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(241, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:44:07', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(242, 'Meisya Anastasia', 'Facebook Depok', '180.252.95.131', '2022-05-19 09:44:13', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Sedekah Yatim'),
(243, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:45:25', 'Adam Telah Login Halaman Facebook Depok'),
(244, 'Meisya Anastasia', 'Facebook Depok', '180.252.95.131', '2022-05-19 09:45:28', 'Meisya Anastasia Telah Membuat Akun media sosial dengan nama akun Riki Saputra'),
(245, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:45:48', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(246, 'Sodru ', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:47:11', 'Sodru  Divisi Facebook Depok Telah Menginput income akun Mari bantu Yatim  hari ini'),
(247, 'Omiati', 'Facebook Depok', '180.252.95.131', '2022-05-19 09:47:55', 'Omiati Telah Membuat Akun Baru Facebook Depok'),
(248, 'Omiati', 'Facebook Depok', '180.252.95.131', '2022-05-19 09:48:02', 'Omiati Telah Login Halaman Facebook Depok'),
(249, 'Meisya Anastasia', 'Facebook Depok', '180.252.95.131', '2022-05-19 09:48:10', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Riki Saputra'),
(250, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:48:12', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(251, 'Meisya Anastasia', 'Facebook Depok', '180.252.95.131', '2022-05-19 09:48:26', 'Meisya Anastasia Facebook Depok Telah Logout dari halamannya'),
(252, 'Omiati', 'Facebook Depok', '180.252.95.131', '2022-05-19 09:48:38', 'Omiati Telah Membuat Akun media sosial dengan nama akun Dompet Infaq Yatim'),
(253, 'Omiati', 'Facebook Depok', '180.252.95.131', '2022-05-19 09:48:54', 'Omiati Telah Membuat Akun media sosial dengan nama akun Dompet Peduli Yatim'),
(254, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:49:17', 'Iman Nuriawan Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim Piatu'),
(255, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:49:28', 'Sri Lestari Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Gerbang Sedekah Yatim'),
(256, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:49:43', 'Sri Lestari Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Putri Rahmadhani'),
(257, 'Meisya Anastasia', 'Facebook Depok', '180.252.95.131', '2022-05-19 09:50:01', 'Meisya Anastasia Telah Login Halaman Facebook Depok'),
(258, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:50:13', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Regi Alfiyansyah'),
(259, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:52:16', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(260, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:52:29', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(261, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:52:37', 'Riki Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Rezeki Yatim'),
(262, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:52:47', 'Iman Nuriawan Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim Piatu'),
(263, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:52:51', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Yatim piatu dompet amanah'),
(264, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:53:22', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(265, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:53:49', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Regi Alfiyansyah'),
(266, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:54:18', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun regi alfiyansyah'),
(267, 'Haidar Sulthan', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:55:33', 'Haidar Sulthan Divisi Facebook Depok Telah Melaporkan harian akun dari Haidar Sultan'),
(268, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:55:46', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(269, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:56:24', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Cahaya Abelia'),
(270, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:56:31', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Infaq Yatim'),
(271, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:56:35', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(272, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:57:37', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(273, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:58:42', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(274, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 09:59:35', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(275, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:01:01', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(276, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:01:06', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(277, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:01:52', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(278, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:02:02', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah laporan harian akun dari Cahaya Abelia'),
(279, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:02:09', 'Novit Riyadi Divisi Facebook Depok Telah Mengubah laporan harian akun dari Anita Sri Wulandari'),
(280, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:03:07', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(281, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:03:44', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(282, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:03:54', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(283, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:04:31', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(284, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:05:30', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(285, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:06:08', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(286, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:08:06', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(287, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:08:35', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(288, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:08:50', 'Iman Nuriawan Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim Piatu'),
(289, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:09:12', 'Adam Divisi Facebook Depok Telah Mengubah laporan harian akun dari Jihan Ramadhani'),
(290, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:10:07', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(291, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:10:59', 'Adam Divisi Facebook Depok Telah Mengubah laporan harian akun dari Jihan Ramadhani'),
(292, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:11:17', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim');
INSERT INTO `2022_log_aktivity` (`id`, `nama`, `posisi`, `ip`, `tanggal`, `aktivitas`) VALUES
(293, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:11:59', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(294, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:14:07', 'Novit Riyadi Divisi Facebook Depok Telah Mengubah laporan harian akun dari Anita Sri Wulandari'),
(295, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:14:11', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(296, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:14:22', 'Novit Riyadi Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Anita Sri Wulandari'),
(297, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:14:34', 'Novit Riyadi Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Peduli bersama yatim'),
(298, 'Izzy Azkia Hafidz ', 'Facebook Depok', '180.252.95.131', '2022-05-19 10:15:12', 'Izzy Azkia Hafidz  Telah Login Halaman Facebook Depok'),
(299, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:15:19', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(300, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:15:27', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(301, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:15:46', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(302, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:16:36', 'Novit Riyadi Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Peduli bersama yatim'),
(303, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.246', '2022-05-19 10:17:01', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(304, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:17:21', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(305, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:18:28', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(306, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:18:40', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(307, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:18:58', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(308, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:19:07', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(309, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:19:54', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Farhan Fikri Fadillah'),
(310, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:20:54', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(311, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:21:28', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(312, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:21:51', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(313, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:22:54', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(314, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:23:08', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(315, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:24:10', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(316, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:24:12', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(317, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:25:12', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Sedekah Yatim'),
(318, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:25:18', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Farhan Fikri Fadillah'),
(319, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:25:31', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(320, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:25:31', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(321, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:25:32', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(322, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:26:03', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(323, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:26:22', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(324, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:26:30', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(325, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:26:53', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(326, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:27:03', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(327, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:27:22', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(328, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:27:51', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(329, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:28:10', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(330, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:29:00', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(331, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:29:50', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(332, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:30:07', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Cahaya Abelia'),
(333, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:30:14', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Cahaya Abelia'),
(334, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:30:30', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(335, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:30:39', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(336, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:31:25', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Cahaya Abelia'),
(337, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:31:31', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Cahaya Abelia'),
(338, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:31:42', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Cahaya Abelia'),
(339, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:31:48', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Cahaya Abelia'),
(340, 'Riki', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:31:59', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(341, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:32:02', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah laporan harian akun dari Infaq Yatim'),
(342, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:32:29', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(343, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:32:29', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Cahaya Abelia'),
(344, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:32:54', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(345, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:33:17', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(346, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:33:33', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(347, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:34:12', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(348, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:34:54', 'Adam Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Jihan ramadhani'),
(349, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:35:05', 'Adam Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Jihan ramadhani'),
(350, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:35:15', 'Adam Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Jihan ramadhani'),
(351, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:35:17', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(352, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:35:19', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(353, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:35:45', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(354, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:36:47', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(355, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:37:21', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(356, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:37:27', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim'),
(357, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:38:25', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(358, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:38:31', 'Adam Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zaeni Mucthar'),
(359, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:38:54', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(360, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:39:07', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(361, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:39:47', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(362, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:40:48', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(363, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:40:49', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(364, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:40:55', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(365, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:41:31', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(366, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:41:35', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim'),
(367, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:41:56', 'Mutmainah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim I'),
(368, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:43:05', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(369, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:43:34', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(370, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:43:55', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(371, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:44:12', 'Mutmainah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim I'),
(372, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:44:33', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(373, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:45:11', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(374, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:45:12', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(375, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:45:14', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(376, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:45:31', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Yatim piatu dompet amanah'),
(377, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:45:41', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(378, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:46:14', 'Mutmainah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim I'),
(379, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:46:18', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(380, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:46:57', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(381, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:47:24', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Yatim piatu dompet amanah'),
(382, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:47:57', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(383, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:48:10', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(384, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:48:16', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(385, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:49:54', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(386, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:50:16', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(387, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:50:22', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(388, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:51:18', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(389, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:51:19', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(390, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:52:51', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(391, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:52:54', 'Novit Riyadi Divisi Facebook Depok Telah Mengubah laporan harian akun dari Anita Sri Wulandari'),
(392, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:53:26', 'Novit Riyadi Divisi Facebook Depok Telah Mengubah laporan harian akun dari Anita Sri Wulandari'),
(393, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:54:03', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(394, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:55:59', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(395, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:56:13', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(396, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:56:47', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(397, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:57:32', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(398, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:57:38', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(399, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:57:41', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(400, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:58:47', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(401, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:59:37', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(402, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 10:59:37', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(403, 'Ezaalfajri', 'Facebook Depok', '114.4.212.231', '2022-05-19 10:59:45', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(404, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:00:26', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(405, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:00:55', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(406, 'Ezaalfajri', 'Facebook Depok', '114.4.212.231', '2022-05-19 11:01:26', 'Ezaalfajri Telah Login Halaman Facebook Depok'),
(407, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:01:30', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(408, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:01:35', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(409, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:01:47', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(410, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:01:57', 'Novit Riyadi Divisi Facebook Depok Telah Mengubah laporan harian akun dari Anita Sri Wulandari'),
(411, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:02:47', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(412, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:02:54', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(413, 'Ezaalfajri', 'Facebook Depok', '114.4.212.231', '2022-05-19 11:03:41', 'Ezaalfajri Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Meylisa Dwi Anggraheni Puspitasari '),
(414, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:04:17', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(415, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:05:14', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(416, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:05:22', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(417, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:06:30', 'Adam Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zaeni Mucthar'),
(418, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:07:03', 'Novit Riyadi Divisi Facebook Depok Telah Mengubah laporan harian akun dari Anita Sri Wulandari'),
(419, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:08:41', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(420, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:09:26', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(421, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:09:51', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(422, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:10:30', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(423, 'Ezaalfajri', 'Facebook Depok', '114.4.212.231', '2022-05-19 11:11:09', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(424, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:11:23', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani hari ini'),
(425, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:12:21', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(426, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:12:23', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(427, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:12:33', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(428, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:13:19', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(429, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:13:21', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(430, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:13:53', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(431, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:15:02', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(432, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:15:22', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(433, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 11:16:00', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Logistik Gedung DYPA'),
(434, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:16:29', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(435, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:17:05', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(436, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 11:17:48', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Logistik Gedung DYPA'),
(437, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:18:09', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(438, 'Ezaalfajri', 'Facebook Depok', '114.4.212.231', '2022-05-19 11:18:26', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(439, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 11:18:42', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Logistik Gedung DYPA'),
(440, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 11:19:09', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah Anggaran Logistik Gedung DYPA'),
(441, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 11:19:26', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah Anggaran Logistik Gedung DYPA'),
(442, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:19:47', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(443, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 11:19:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Logistik Gedung DYPA'),
(444, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:20:28', 'Adam Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zaeni Mucthar'),
(445, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 11:20:58', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Program Pendidikan Yatim dengan perencanaan Pendidikan Yatim'),
(446, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:20:59', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(448, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:21:25', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(449, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 11:21:26', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Program Santunan Yatim dengan perencanaan Santunan yatim'),
(450, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:22:03', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(451, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:22:16', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(452, 'Haidar Sulthan', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:22:20', 'Haidar Sulthan Divisi Facebook Depok Telah Melaporkan harian akun dari Haidar Sultan'),
(453, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:22:28', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(454, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:22:47', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(455, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:23:36', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim'),
(456, 'Ezaalfajri', 'Facebook Depok', '114.4.212.231', '2022-05-19 11:23:57', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(457, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:25:12', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(458, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:25:33', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(459, 'Haidar Sulthan', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:25:35', 'Haidar Sulthan Divisi Facebook Depok Telah Melaporkan harian akun dari Haidar Sultan'),
(460, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:25:36', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(461, 'Adam', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:26:13', 'Adam Facebook Depok Telah Logout dari halamannya'),
(462, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:27:13', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(463, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.246', '2022-05-19 11:27:35', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Pendidikan Yatim dengan perencanaan Pendidikan Yatim'),
(464, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.246', '2022-05-19 11:27:45', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Santunan Yatim dengan perencanaan Santunan yatim'),
(465, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:28:11', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(466, 'Haidar Sulthan', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:28:12', 'Haidar Sulthan Divisi Facebook Depok Telah Melaporkan harian akun dari Haidar Sultan'),
(467, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.246', '2022-05-19 11:28:18', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan Logistik Krediting'),
(468, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.246', '2022-05-19 11:28:29', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan Logistik Kebersihan'),
(469, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.246', '2022-05-19 11:28:39', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan Logistik kebutuhan yayasan'),
(470, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.246', '2022-05-19 11:28:49', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan Logistik konsumtif'),
(471, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:29:10', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(472, 'Haidar Sulthan', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:29:33', 'Haidar Sulthan Divisi Facebook Depok Telah Melaporkan harian akun dari Haidar Sultan'),
(473, 'Haidar Sulthan', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:29:54', 'Haidar Sulthan Divisi Facebook Depok Telah Mengubah laporan harian akun dari Haidar Sultan'),
(474, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:30:29', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(475, 'Mutmainah', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:31:14', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(476, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:33:11', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(477, 'Ezaalfajri', 'Facebook Depok', '114.4.212.231', '2022-05-19 11:34:06', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(478, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:34:09', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(479, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:34:49', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(480, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:37:22', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(481, 'Ezaalfajri', 'Facebook Depok', '114.4.212.231', '2022-05-19 11:38:06', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(482, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:40:55', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(483, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:41:13', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(484, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:41:53', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(485, 'Ezaalfajri', 'Facebook Depok', '114.4.212.231', '2022-05-19 11:45:22', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(486, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:45:57', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(487, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:56:57', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(488, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:57:22', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(489, 'Haidar Sulthan', 'Facebook Depok', '180.252.90.246', '2022-05-19 11:57:34', 'Haidar Sulthan Facebook Depok Telah Logout dari halamannya'),
(490, 'Haidar Sulthan', 'Facebook Depok', '180.252.173.42', '2022-05-19 12:43:22', 'Haidar Sulthan Telah Login Halaman Facebook Depok'),
(491, 'Haidar Sulthan', 'Facebook Depok', '180.252.173.42', '2022-05-19 12:43:24', 'Haidar Sulthan Facebook Depok Telah Logout dari halamannya'),
(492, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 12:49:04', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(493, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 12:54:33', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(494, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 12:56:05', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Regi Alfiyansyah'),
(495, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 13:02:25', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(496, 'Haidar Sulthan', 'Facebook Depok', '180.252.90.246', '2022-05-19 13:03:57', 'Haidar Sulthan Telah Login Halaman Facebook Depok'),
(497, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 13:05:22', 'Sri Lestari Divisi Facebook Depok Telah Menghapus Income media sosial dari akun Putri Rahmadhani'),
(498, 'Sri Lestari', 'Facebook Depok', '180.252.90.246', '2022-05-19 13:06:32', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim hari ini'),
(499, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.246', '2022-05-19 13:08:21', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(500, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-19 13:17:19', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(501, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-19 13:23:33', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(502, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 13:24:57', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(503, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-19 13:25:25', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(504, 'Haidar Sultan Khabir', 'Leader Facebook', '180.252.173.42', '2022-05-19 13:28:10', 'Haidar Sultan Khabir Telah Login Halaman Leader Facebook'),
(505, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 13:28:16', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(506, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-19 13:30:24', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(507, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 13:31:13', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(508, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 13:32:39', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(509, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 13:33:13', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Regi Alfiyansyah'),
(510, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 13:35:09', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Regi Alfiyansyah'),
(511, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-19 13:35:25', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(512, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 13:35:33', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Regi Alfiyansyah'),
(513, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 13:36:26', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Regi Alfiyansyah'),
(514, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-19 13:38:56', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(515, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-19 13:39:28', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(516, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 13:39:33', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(517, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 13:51:13', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(518, 'Haidar Sultan Khabir', 'Leader Facebook', '180.252.173.42', '2022-05-19 13:56:36', 'Haidar Sultan Khabir Leader Facebook Telah Logout dari halamannya'),
(519, 'Riki Subagja', 'Ketua Yayasan', '180.252.173.42', '2022-05-19 13:56:40', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(520, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 13:58:05', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(521, 'Riki Subagja', 'Ketua Yayasan', '180.252.173.42', '2022-05-19 14:00:12', 'Riki Subagja Ketua Yayasan Telah Logout dari halamannya'),
(522, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:00:17', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(523, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:04:45', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(524, 'Riki Subagja', 'Ketua Yayasan', '180.252.173.42', '2022-05-19 14:04:48', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(525, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 14:06:05', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(526, 'Riki Subagja', 'Ketua Yayasan', '180.252.173.42', '2022-05-19 14:08:14', 'Riki Subagja Ketua Yayasan Telah Logout dari halamannya'),
(527, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:08:24', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(528, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:08:39', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(529, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:08:44', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(530, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:08:49', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(531, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:08:53', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(532, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:08:58', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(533, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:09:01', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(534, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:09:07', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(535, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:09:08', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(536, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:09:10', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(537, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:09:11', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(538, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:09:16', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(539, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:09:24', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(540, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 14:09:27', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(541, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.173.42', '2022-05-19 14:09:36', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(542, 'Novit Riyadi', 'Facebook Depok', '180.252.90.246', '2022-05-19 14:12:23', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(543, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.173.42', '2022-05-19 14:13:25', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(544, 'Haidar Sultan Khabir', 'Leader Facebook', '180.252.173.42', '2022-05-19 14:13:31', 'Haidar Sultan Khabir Telah Login Halaman Leader Facebook'),
(545, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 14:16:10', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zaeni Mucthar'),
(546, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.32.192', '2022-05-19 14:18:09', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Berbagi yatim'),
(547, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 14:18:29', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(548, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 14:18:44', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(549, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 14:18:55', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun regi alfiyansyah'),
(550, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 14:19:11', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Cahaya Abelia'),
(551, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 14:19:23', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(552, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 14:19:54', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Yatim II'),
(553, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 14:27:59', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun regi alfiyansyah hari ini'),
(554, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.82.60', '2022-05-19 14:31:07', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Regi Alfiyansyah'),
(555, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.246', '2022-05-19 14:31:14', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(556, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 14:32:19', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(557, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 14:33:46', 'Iman Nuriawan Divisi Facebook Depok Telah Menginput income akun Berbagi yatim hari ini'),
(558, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.246', '2022-05-19 14:45:56', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(559, 'Iman Nuriawan', 'Facebook Depok', '180.252.90.246', '2022-05-19 14:47:11', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(560, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 15:03:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Mari bantu Yatim '),
(561, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 15:03:45', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Kholid Fatullah'),
(562, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 15:03:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun regi alfiyansyah'),
(563, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 15:04:17', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Berbagi yatim'),
(564, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.246', '2022-05-19 15:04:25', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(565, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.32.192', '2022-05-19 15:47:15', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(566, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.32.192', '2022-05-19 15:47:23', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(567, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.32.192', '2022-05-19 15:47:30', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(568, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.32.192', '2022-05-19 15:47:48', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(569, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.32.192', '2022-05-19 15:51:36', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(570, 'Adam', 'Facebook Depok', '180.251.182.56', '2022-05-19 15:54:06', 'Adam Telah Login Halaman Facebook Depok'),
(571, 'Adam', 'Facebook Depok', '180.251.182.56', '2022-05-19 15:57:03', 'Adam Facebook Depok Telah Logout dari halamannya'),
(572, 'Haidar Sultan Khabir', 'Leader Facebook', '180.252.173.42', '2022-05-19 15:58:47', 'Haidar Sultan Khabir Leader Facebook Telah Logout dari halamannya'),
(573, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.173.42', '2022-05-19 15:58:53', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(574, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.173.42', '2022-05-19 15:59:10', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(575, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.173.42', '2022-05-19 15:59:24', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(576, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:05:11', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial');
INSERT INTO `2022_log_aktivity` (`id`, `nama`, `posisi`, `ip`, `tanggal`, `aktivitas`) VALUES
(577, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:06:21', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(578, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:06:55', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(579, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:08:03', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(580, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:08:27', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(581, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:09:41', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(582, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:11:06', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(583, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:11:16', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(584, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:11:24', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(585, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.182.56', '2022-05-19 16:11:32', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim hari ini'),
(586, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:11:33', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(587, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:11:40', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(588, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-19 16:11:48', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(589, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.32.192', '2022-05-19 16:16:04', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nLaporan logistik kebersihan'),
(590, 'Ezaalfajri', 'Facebook Depok', '180.251.182.56', '2022-05-19 16:44:20', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(591, 'Sodru ', 'Facebook Depok', '180.251.182.56', '2022-05-19 16:50:16', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Mari bantu Yatim '),
(592, 'Ezaalfajri', 'Facebook Depok', '180.251.182.56', '2022-05-19 16:52:46', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(593, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-19 16:53:32', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(594, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-19 16:57:00', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(595, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-19 17:03:16', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(596, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-19 17:06:29', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(597, 'Sodru ', 'Facebook Depok', '180.251.182.56', '2022-05-19 17:08:43', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(598, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-19 17:09:30', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(599, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-19 17:14:25', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(600, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-19 17:25:34', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(601, 'Sodru ', 'Facebook Depok', '180.251.182.56', '2022-05-19 18:14:57', 'Sodru  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Muhammad Rizky Amin '),
(602, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 08:16:39', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(603, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:13:50', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim hari ini'),
(604, 'Iman Nuriawan', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:24:32', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(605, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.32.75', '2022-05-20 09:35:23', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah hari ini'),
(606, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.32.75', '2022-05-20 09:42:35', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(607, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:42:36', 'Sezha Octaviana Telah Login Halaman Facebook Depok'),
(608, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:43:43', 'Sezha Octaviana Divisi Facebook Depok Telah Menginput income akun Kholid Fatullah hari ini'),
(609, 'Riki', 'Facebook Depok', '182.3.40.177', '2022-05-20 09:49:27', 'Riki Divisi Facebook Depok Telah Menginput income akun Zakat Yatim hari ini'),
(610, 'Iman Nuriawan', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:51:11', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(611, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:55:13', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim'),
(612, 'Sri Lestari', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:55:16', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(613, 'Iman Nuriawan', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:56:50', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(614, 'Iman Nuriawan', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:57:06', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(615, 'Sri Lestari', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:57:55', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(616, 'Mutmainah', 'Facebook Depok', '180.251.182.56', '2022-05-20 09:57:55', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(617, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.32.75', '2022-05-20 09:59:36', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(618, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:02:16', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(619, 'Sodru ', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:03:39', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(620, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:11:02', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Farhan Fikri Fadillah'),
(621, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:15:14', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(622, 'Mutmainah', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:18:03', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(623, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:18:41', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(624, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:18:51', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(625, 'Mutmainah', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:19:45', 'Mutmainah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Bersama Yatim'),
(626, 'Mutmainah', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:20:59', 'Mutmainah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim I'),
(627, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:21:23', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(628, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:23:11', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(629, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:25:17', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(630, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:26:05', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(631, 'Mutmainah', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:26:48', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun Bersama yatim hari ini'),
(632, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 10:27:30', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(633, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:27:31', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(634, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:27:58', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(635, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 10:27:59', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(636, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 10:28:15', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Kholid Fatullah'),
(637, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 10:28:24', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zakat Yatim'),
(638, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:28:57', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(639, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:31:45', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(640, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:32:37', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah income akun Infaq Yatim'),
(641, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 10:33:14', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(642, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 10:33:49', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(643, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 10:33:57', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(644, 'Liana Amalia', 'Facebook Depok', '180.252.80.160', '2022-05-20 10:34:43', 'Liana Amalia Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah dompet yatim'),
(645, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:37:50', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(646, 'Liana Amalia', 'Facebook Depok', '180.252.80.160', '2022-05-20 10:39:17', 'Liana Amalia Divisi Facebook Depok Telah Melaporkan harian akun dari Liana amalia'),
(647, 'Liana Amalia', 'Facebook Depok', '180.252.80.160', '2022-05-20 10:40:01', 'Liana Amalia Telah Membuat Akun media sosial dengan nama akun Dompet yatim piatu II'),
(648, 'Izzy Azkia Hafidz ', 'Facebook Depok', '180.252.80.160', '2022-05-20 10:41:42', 'Izzy Azkia Hafidz  Telah Membuat Akun media sosial dengan nama akun Infaq Dompet Yatim'),
(649, 'Izzy Azkia Hafidz ', 'Facebook Depok', '180.252.80.160', '2022-05-20 10:42:16', 'Izzy Azkia Hafidz  Telah Membuat Akun media sosial dengan nama akun Dompet Yatim Amanah'),
(650, 'Izzy Azkia Hafidz ', 'Facebook Depok', '180.252.80.160', '2022-05-20 10:42:29', 'Izzy Azkia Hafidz  Telah Membuat Akun media sosial dengan nama akun Izzy Azkia Hafidz'),
(651, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:43:14', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(652, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:49:09', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(653, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:54:29', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(654, 'Sezha Octaviana', 'Facebook Depok', '180.251.182.56', '2022-05-20 10:55:42', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(655, 'Resma Febiyanti', 'Facebook Depok', '180.251.182.56', '2022-05-20 11:08:53', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i hari ini'),
(656, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 11:26:20', 'Riki Telah Login Halaman Facebook Depok'),
(657, 'Ezaalfajri', 'Facebook Depok', '114.10.65.148', '2022-05-20 11:51:59', 'Ezaalfajri Divisi Facebook Depok Telah Menginput income akun Meylisa Dwi Anggraheni Puspitasari  hari ini'),
(658, 'Haidar Sulthan', 'Facebook Depok', '180.251.182.56', '2022-05-20 12:52:19', 'Haidar Sulthan Facebook Depok Telah Logout dari halamannya'),
(659, 'Haidar Sultan Khabir', 'Leader Facebook', '180.251.182.56', '2022-05-20 12:52:40', 'Haidar Sultan Khabir Telah Login Halaman Leader Facebook'),
(660, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 13:39:36', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(661, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 13:44:00', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(662, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 13:45:54', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Rezeki Yatim'),
(663, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 13:47:51', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(664, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 13:51:34', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(665, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 13:54:01', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(666, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 14:01:47', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(667, 'Riki', 'Facebook Depok', '180.251.182.56', '2022-05-20 14:04:15', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(668, 'Riki', 'Facebook Depok', '114.124.210.86', '2022-05-20 14:08:45', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(669, 'Riki', 'Facebook Depok', '114.124.247.231', '2022-05-20 14:11:56', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(670, 'Riki', 'Facebook Depok', '114.124.247.231', '2022-05-20 14:15:57', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(671, 'Riki', 'Facebook Depok', '114.124.247.231', '2022-05-20 14:16:38', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Rezeki Yatim'),
(672, 'Riki', 'Facebook Depok', '114.124.247.231', '2022-05-20 14:17:07', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Rezeki Yatim'),
(673, 'Riki', 'Facebook Depok', '114.124.247.231', '2022-05-20 14:18:36', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Rezeki Yatim'),
(674, 'Riki', 'Facebook Depok', '114.124.247.231', '2022-05-20 14:19:47', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(675, 'Resma Febiyanti', 'Facebook Depok', '180.251.182.56', '2022-05-20 14:50:00', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i hari ini'),
(676, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.163.14', '2022-05-20 14:56:15', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(678, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 16:35:18', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Bersama yatim'),
(679, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 16:35:25', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Meylisa Dwi Anggraheni Puspitasari '),
(680, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 16:35:31', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(681, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 16:35:40', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(682, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.56', '2022-05-20 16:35:51', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(683, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '114.4.214.143', '2022-05-20 19:46:04', 'MUHAMMAD NAZAR YANA Telah Login Halaman Facebook Depok'),
(684, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-20 21:25:22', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(685, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.56', '2022-05-20 21:54:13', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(686, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 22:44:50', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(687, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 22:47:11', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(688, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 22:52:23', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(689, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 22:59:47', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(690, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 23:03:30', 'Novit Riyadi Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Peduli bersama yatim'),
(691, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 23:03:46', 'Novit Riyadi Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Peduli bersama yatim'),
(692, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 23:04:08', 'Novit Riyadi Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Peduli bersama yatim'),
(693, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 23:05:47', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(694, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 23:09:21', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(695, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 23:12:34', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(696, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 23:18:38', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(697, 'Novit Riyadi', 'Facebook Depok', '180.251.182.56', '2022-05-20 23:21:54', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(698, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 07:46:22', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(699, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 07:48:58', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(700, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 07:49:57', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Dompet Yatim'),
(701, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 07:49:58', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Dompet Yatim'),
(702, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 07:51:38', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(703, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 07:52:59', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(704, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 07:53:59', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(705, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 07:55:38', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(706, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 07:56:30', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(707, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 07:57:25', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(708, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 08:00:19', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(709, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 08:02:01', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(710, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 08:03:01', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(711, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 08:04:26', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(712, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 08:05:16', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(713, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 08:06:42', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(714, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 08:07:26', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(715, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '120.188.38.181', '2022-05-21 08:08:13', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(716, 'Haidar Sultan Khabir', 'Leader Facebook', '180.252.94.65', '2022-05-21 09:23:20', 'Haidar Sultan Khabir Leader Facebook Telah Logout dari halamannya'),
(717, 'Haidar Sulthan', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:24:40', 'Haidar Sulthan Telah Login Halaman Facebook Depok'),
(718, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:25:52', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim'),
(719, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:26:43', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Yatim'),
(720, 'Resma Febiyanti', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:30:58', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i tanggal 21-05-2022'),
(721, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.94.65', '2022-05-21 09:33:06', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi Laporan logistik kebersihan'),
(722, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-21 09:33:48', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(723, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:35:10', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Farhan Fikri Fadillah'),
(724, 'Sri Lestari', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:37:26', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(725, 'Sri Lestari', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:38:29', 'Sri Lestari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Putri Rahmadhani'),
(726, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-21 09:40:52', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(727, 'Riki', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:45:40', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(728, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-21 09:46:32', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(729, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-21 09:46:46', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(730, 'Riki', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:47:25', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(731, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 09:50:56', 'Liana Amalia Telah Login Halaman Facebook Depok'),
(732, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 09:52:14', 'Liana Amalia Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Sedekah dompet yatim'),
(733, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 09:52:25', 'Liana Amalia Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Liana amalia'),
(734, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.37.216', '2022-05-21 09:53:45', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(735, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 09:57:16', 'Liana Amalia Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah dompet yatim'),
(736, 'Mutmainah', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:58:15', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(737, 'Sri Lestari', 'Facebook Depok', '180.252.94.65', '2022-05-21 09:58:40', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(738, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-21 10:00:14', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(739, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:01:34', 'Liana Amalia Divisi Facebook Depok Telah Mengubah laporan harian akun dari Sedekah Dompet Yatim'),
(740, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-21 10:02:10', 'Iman Nuriawan Divisi Facebook Depok Telah Menginput income akun Berbagi yatim tanggal 21-05-2022'),
(741, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:02:59', 'Liana Amalia Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah dompet yatim'),
(742, 'Sodru ', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:04:57', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(743, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 10:07:23', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah laporan income terbaru'),
(744, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-21 10:07:40', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(745, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 10:07:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(746, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:08:13', 'Liana Amalia Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah dompet yatim'),
(747, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:08:29', 'Meisya Anastasia Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Riki Saputra'),
(748, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:08:40', 'Meisya Anastasia Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Dompet Sedekah Yatim'),
(749, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:09:23', 'Liana Amalia Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah dompet yatim'),
(750, 'Ezaalfajri', 'Facebook Depok', '114.10.65.148', '2022-05-21 10:09:37', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(751, 'Ezaalfajri', 'Facebook Depok', '114.10.65.148', '2022-05-21 10:12:10', 'Ezaalfajri Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Meylisa Dwi Anggraheni Puspitasari '),
(752, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:13:17', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Sedekah Yatim'),
(753, 'Ezaalfajri', 'Facebook Depok', '114.10.65.148', '2022-05-21 10:13:38', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(754, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:16:00', 'Liana Amalia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu II'),
(755, 'Izzy Azkia Hafidz ', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:16:05', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(756, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.37.216', '2022-05-21 10:16:58', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(757, 'Ezaalfajri', 'Facebook Depok', '114.10.65.148', '2022-05-21 10:17:33', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(758, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:18:04', 'Liana Amalia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu II'),
(759, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:18:44', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Riki Saputra'),
(760, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:18:44', 'Liana Amalia Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim Piatu II'),
(761, 'Izzy Azkia Hafidz ', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:20:24', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(762, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:20:32', 'Liana Amalia Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim Piatu II'),
(763, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 10:21:05', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(764, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 10:21:13', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Berbagi yatim'),
(765, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:21:15', 'Liana Amalia Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Dompet yatim piatu II'),
(766, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 10:21:27', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(767, 'Izzy Azkia Hafidz ', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:21:53', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(768, 'Mutmainah', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:23:15', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(769, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:23:39', 'Meisya Anastasia Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Sedekah Yatim'),
(770, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:25:11', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Sedekah Yatim'),
(771, 'Liana Amalia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:25:55', 'Liana Amalia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu II'),
(772, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:26:16', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Riki Saputra'),
(773, 'Haidar Sulthan', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:27:40', 'Haidar Sulthan Facebook Depok Telah Logout dari halamannya'),
(774, 'Haidar Sultan Khabir', 'Leader Facebook', '180.252.94.65', '2022-05-21 10:27:43', 'Haidar Sultan Khabir Telah Login Halaman Leader Facebook'),
(775, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 10:34:53', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Sedekah Yatim'),
(776, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:39:16', 'Adam Telah Login Halaman Facebook Depok'),
(777, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:40:24', 'Adam Facebook Depok Telah Logout dari halamannya'),
(778, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:42:09', 'Adam Telah Login Halaman Facebook Depok'),
(779, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:46:03', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(780, 'Sodru ', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:49:02', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Mari bantu Yatim '),
(781, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:53:49', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(782, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:54:41', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(783, 'Sezha Octaviana', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:56:36', 'Sezha Octaviana Telah Login Halaman Facebook Depok'),
(784, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 10:59:10', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(785, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:01:48', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(786, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:04:38', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(787, 'Mutmainah', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:04:45', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun Bersama yatim tanggal 21-05-2022'),
(788, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:07:48', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(789, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:09:15', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(790, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:12:33', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(791, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:14:01', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(792, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:15:32', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(793, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:17:41', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(794, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:19:26', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(795, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:19:39', 'Adam Facebook Depok Telah Logout dari halamannya'),
(796, 'Riki', 'Facebook Depok', '180.252.94.65', '2022-05-21 11:20:49', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(797, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 11:40:15', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Riki Saputra'),
(798, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 11:41:05', 'Meisya Anastasia Divisi Facebook Depok Telah Mengubah laporan harian akun dari Riki Saputra'),
(799, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 11:41:59', 'Meisya Anastasia Facebook Depok Telah Logout dari halamannya'),
(800, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-21 13:12:32', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(801, 'Iman Nuriawan', 'Facebook Depok', '120.188.6.51', '2022-05-21 13:14:26', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(802, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 13:14:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Bersama yatim'),
(803, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 13:15:07', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(804, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 13:22:40', 'Meisya Anastasia Telah Login Halaman Facebook Depok'),
(805, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 13:25:25', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Sedekah Yatim'),
(806, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.193', '2022-05-21 13:27:49', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Riki Saputra'),
(807, 'Novit Riyadi', 'Facebook Depok', '180.252.94.65', '2022-05-21 13:41:29', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(808, 'Novit Riyadi', 'Facebook Depok', '180.252.94.65', '2022-05-21 13:42:35', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(809, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:42:50', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(810, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:43:40', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(811, 'Sodru ', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:44:26', 'Sodru  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Muhammad Rizky Amin '),
(812, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:44:53', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(813, 'Sodru ', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:45:01', 'Sodru  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Mari Bantu Yatim '),
(814, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:45:31', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah laporan harian akun dari Cahaya Abelia'),
(815, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:46:12', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(816, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:47:45', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(817, 'Mutmainah', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:55:06', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun Bersama yatim tanggal 21-05-2022'),
(818, 'Mutmainah', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:55:36', 'Mutmainah Divisi Facebook Depok Telah Mengubah income akun Bersama Yatim'),
(819, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.94.65', '2022-05-21 14:55:52', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(820, 'Sri Lestari', 'Facebook Depok', '180.252.94.65', '2022-05-21 15:03:48', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani tanggal 21-05-2022'),
(821, 'Adam', 'Facebook Depok', '180.252.94.65', '2022-05-21 15:32:17', 'Adam Telah Login Halaman Facebook Depok'),
(822, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 15:39:17', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Bersama yatim'),
(823, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 15:39:51', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Putri Rahmadhani'),
(824, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 15:40:07', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(825, 'Sri Lestari', 'Facebook Depok', '180.252.94.65', '2022-05-21 15:46:43', 'Sri Lestari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Gerbang Sedekah Yatim'),
(826, 'Sri Lestari', 'Facebook Depok', '180.252.94.65', '2022-05-21 15:49:25', 'Sri Lestari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Gerbang Sedekah Yatim'),
(827, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.4.225', '2022-05-21 15:56:22', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 21-05-2022'),
(828, 'Resma Febiyanti', 'Facebook Depok', '180.252.94.65', '2022-05-21 15:56:34', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(829, 'Resma Febiyanti', 'Facebook Depok', '180.252.94.65', '2022-05-21 16:04:32', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(830, 'Resma Febiyanti', 'Facebook Depok', '180.252.94.65', '2022-05-21 16:07:20', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(831, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 16:08:01', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(832, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.94.65', '2022-05-21 16:08:16', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(833, 'Resma Febiyanti', 'Facebook Depok', '180.252.94.65', '2022-05-21 16:08:19', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(834, 'Resma Febiyanti', 'Facebook Depok', '180.252.94.65', '2022-05-21 16:08:45', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(835, 'Resma Febiyanti', 'Facebook Depok', '180.252.94.65', '2022-05-21 16:09:41', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(836, 'Resma Febiyanti', 'Facebook Depok', '180.252.94.65', '2022-05-21 16:10:34', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(837, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-22 19:27:10', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(838, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-22 19:29:08', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(839, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-22 19:31:39', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(840, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-22 20:07:12', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(841, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-22 20:10:43', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(842, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-22 20:13:23', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(843, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-22 20:13:32', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(844, 'Mutmainah', 'Facebook Depok', '114.124.131.76', '2022-05-22 20:46:15', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(845, 'Mutmainah', 'Facebook Depok', '114.124.130.12', '2022-05-22 20:50:38', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(846, 'Novit Riyadi', 'Facebook Depok', '120.188.7.33', '2022-05-22 21:07:07', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(847, 'Novit Riyadi', 'Facebook Depok', '120.188.7.33', '2022-05-22 21:09:13', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(848, 'Adam', 'Facebook Depok', '114.5.250.35', '2022-05-22 21:32:53', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(849, 'Novit Riyadi', 'Facebook Depok', '120.188.7.33', '2022-05-22 21:33:38', 'Novit Riyadi Divisi Facebook Depok Telah Mengubah laporan harian akun dari Anita Sri Wulandari'),
(850, 'Novit Riyadi', 'Facebook Depok', '120.188.7.33', '2022-05-22 21:49:06', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(851, 'Novit Riyadi', 'Facebook Depok', '120.188.7.33', '2022-05-22 21:52:56', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(852, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-22 21:56:03', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(853, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-22 21:57:41', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(854, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-22 21:59:06', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(855, 'Adam', 'Facebook Depok', '114.5.250.35', '2022-05-22 22:12:10', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(856, 'Adam', 'Facebook Depok', '114.5.250.35', '2022-05-22 22:13:05', 'Adam Facebook Depok Telah Logout dari halamannya'),
(857, 'Adam', 'Facebook Depok', '114.5.250.35', '2022-05-22 22:13:11', 'Adam Telah Login Halaman Facebook Depok'),
(858, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:29:13', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(859, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:32:44', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(860, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:34:25', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(861, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:38:13', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Izzy Azkia Hafidz'),
(862, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:39:46', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Izzy Azkia Hafidz'),
(863, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:42:05', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Izzy Azkia Hafidz'),
(864, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:42:59', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Izzy Azkia Hafidz'),
(865, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:43:19', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Izzy Azkia Hafidz'),
(866, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:43:47', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Izzy Azkia Hafidz');
INSERT INTO `2022_log_aktivity` (`id`, `nama`, `posisi`, `ip`, `tanggal`, `aktivitas`) VALUES
(867, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:43:58', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Izzy Azkia Hafidz'),
(868, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:45:06', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Izzy Azkia Hafidz'),
(869, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:46:01', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Izzy Azkia Hafidz'),
(870, 'Izzy Azkia Hafidz ', 'Facebook Depok', '182.2.139.182', '2022-05-22 22:47:40', 'Izzy Azkia Hafidz  Divisi Facebook Depok Telah Melaporkan harian akun dari Izzy Azkia Hafidz'),
(871, 'Adam', 'Facebook Depok', '114.5.250.35', '2022-05-22 22:49:57', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(872, 'Adam', 'Facebook Depok', '114.5.250.35', '2022-05-22 22:50:38', 'Adam Facebook Depok Telah Logout dari halamannya'),
(873, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-22 23:03:56', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(874, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-22 23:05:34', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(875, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.94.65', '2022-05-22 23:06:39', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim tanggal 22-05-2022'),
(876, 'Ezaalfajri', 'Facebook Depok', '180.252.94.65', '2022-05-22 23:21:19', 'Ezaalfajri Telah Login Halaman Facebook Depok'),
(877, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:32:37', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(878, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:33:18', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Infaq Yatim'),
(879, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:33:43', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(880, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:33:56', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Infaq Yatim'),
(881, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:34:22', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Infaq Yatim'),
(882, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:34:46', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(883, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:35:27', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah laporan harian akun dari Infaq Yatim'),
(884, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:36:27', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(885, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:37:54', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(886, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:38:48', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(887, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:40:27', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(888, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:41:14', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(889, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:49:16', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Infaq Yatim'),
(890, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:49:26', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Infaq Yatim'),
(891, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:49:36', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Infaq Yatim'),
(892, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:49:47', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Infaq Yatim'),
(893, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:50:28', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah laporan harian akun dari Infaq Yatim'),
(894, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:53:48', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(895, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:54:26', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(896, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:55:14', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(897, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:57:25', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(898, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-22 23:58:10', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(899, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.37.250', '2022-05-23 00:07:38', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(900, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-23 03:25:30', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(901, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-23 03:26:16', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(902, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-23 03:27:11', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(903, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 03:31:22', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(904, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 03:31:34', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(905, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 03:31:42', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(906, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 03:31:51', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(907, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-23 03:32:30', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(908, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-23 03:32:39', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(909, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 03:53:14', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(910, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-23 03:55:07', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(911, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 03:57:17', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(912, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-23 04:00:13', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(913, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-23 04:02:50', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(914, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 04:04:40', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(915, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 04:06:54', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(916, 'Sezha Octaviana', 'Facebook Depok', '114.124.131.89', '2022-05-23 04:08:33', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(917, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 04:11:26', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(918, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 04:13:25', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(919, 'Sezha Octaviana', 'Facebook Depok', '114.124.130.25', '2022-05-23 04:16:08', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(920, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.29', '2022-05-23 08:27:22', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(921, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.29', '2022-05-23 08:28:17', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 23-05-2022'),
(922, 'Iman Nuriawan', 'Facebook Depok', '180.252.82.162', '2022-05-23 08:58:52', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(923, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:00:16', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(924, 'Sri Lestari', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:01:38', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim tanggal 22-05-2022'),
(925, 'Sri Lestari', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:03:17', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani tanggal 22-05-2022'),
(926, 'Iman Nuriawan', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:03:59', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(927, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:05:37', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(928, 'Resma Febiyanti', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:12:33', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(929, 'Resma Febiyanti', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:13:57', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(930, 'Resma Febiyanti', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:14:34', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(931, 'Resma Febiyanti', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:15:10', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(932, 'Sri Lestari', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:15:15', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(933, 'Resma Febiyanti', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:16:34', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i tanggal 23-05-2022'),
(934, 'Iman Nuriawan', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:17:36', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(935, 'Iman Nuriawan', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:17:53', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(936, 'Sri Lestari', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:19:13', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(937, 'Adam', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:21:28', 'Adam Telah Login Halaman Facebook Depok'),
(938, 'Sezha Octaviana', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:29:22', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(939, 'Iman Nuriawan', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:30:39', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(940, 'Adam', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:30:57', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(941, 'Iman Nuriawan', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:31:45', 'Iman Nuriawan Divisi Facebook Depok Telah Menginput income akun Berbagi yatim tanggal 23-05-2022'),
(942, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.213.192', '2022-05-23 09:33:54', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Regi Alfiyansyah'),
(943, 'Adam', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:34:47', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(944, 'Anita Sri Wulandari', 'Facebook Depok', '114.4.213.192', '2022-05-23 09:34:51', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Regi Alfiyansyah'),
(945, 'Adam', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:35:02', 'Adam Facebook Depok Telah Logout dari halamannya'),
(946, 'Sezha Octaviana', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:36:21', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(947, 'Sezha Octaviana', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:38:40', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(948, 'Sezha Octaviana', 'Facebook Depok', '180.252.82.162', '2022-05-23 09:45:58', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(949, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '125.160.188.76', '2022-05-23 09:52:50', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(950, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '125.160.188.76', '2022-05-23 09:53:36', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(951, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '125.160.188.76', '2022-05-23 09:54:25', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(952, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '125.160.188.76', '2022-05-23 09:55:09', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(953, 'Adam', 'Facebook Depok', '180.252.82.162', '2022-05-23 10:05:54', 'Adam Telah Login Halaman Facebook Depok'),
(954, 'Sezha Octaviana', 'Facebook Depok', '180.252.82.162', '2022-05-23 10:45:57', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(955, 'Sezha Octaviana', 'Facebook Depok', '180.252.82.162', '2022-05-23 10:50:32', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(956, 'Sezha Octaviana', 'Facebook Depok', '180.252.82.162', '2022-05-23 10:57:38', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(957, 'Sezha Octaviana', 'Facebook Depok', '180.252.82.162', '2022-05-23 10:59:55', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(958, 'Sezha Octaviana', 'Facebook Depok', '180.252.82.162', '2022-05-23 11:02:28', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(959, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.35.128', '2022-05-23 12:55:54', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(960, 'Meisya Anastasia', 'Facebook Depok', '125.160.188.76', '2022-05-23 13:09:23', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Sedekah Yatim'),
(961, 'Meisya Anastasia', 'Facebook Depok', '125.160.188.76', '2022-05-23 13:11:51', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Riki Saputra'),
(962, 'Anita Sri Wulandari', 'Facebook Depok', '120.188.35.128', '2022-05-23 13:14:40', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(964, 'Sodru ', 'Facebook Depok', '180.252.82.162', '2022-05-23 14:49:48', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Mari bantu Yatim '),
(965, 'Sodru ', 'Facebook Depok', '180.252.82.162', '2022-05-23 14:53:44', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Mari bantu Yatim '),
(966, 'Ezaalfajri', 'Facebook Depok', '180.252.82.162', '2022-05-23 14:56:40', 'Ezaalfajri Divisi Facebook Depok Telah Menginput income akun Meylisa Dwi Anggraheni Puspitasari  tanggal 23-05-2022'),
(967, 'Iman Nuriawan', 'Facebook Depok', '180.252.82.162', '2022-05-23 15:53:05', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(968, 'Iman Nuriawan', 'Facebook Depok', '180.252.82.162', '2022-05-23 15:55:18', 'Iman Nuriawan Divisi Facebook Depok Telah Menginput income akun Berbagi yatim tanggal 23-05-2022'),
(969, 'Iman Nuriawan', 'Facebook Depok', '180.252.82.162', '2022-05-23 16:09:24', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(970, 'Resma Febiyanti', 'Facebook Depok', '180.252.82.162', '2022-05-23 16:10:10', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i tanggal 23-05-2022'),
(971, 'Resma Febiyanti', 'Facebook Depok', '180.252.82.162', '2022-05-23 16:11:39', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i tanggal 23-05-2022'),
(972, 'Sodru ', 'Facebook Depok', '180.252.82.162', '2022-05-23 16:24:34', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Mari bantu Yatim '),
(973, 'Sodru ', 'Facebook Depok', '180.252.82.162', '2022-05-23 16:43:13', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(974, 'Sodru ', 'Facebook Depok', '180.252.82.162', '2022-05-23 16:50:35', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(975, 'Sodru ', 'Facebook Depok', '180.252.82.162', '2022-05-23 16:52:00', 'Sodru  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Muhammad Rizky Amin '),
(976, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-24 09:11:36', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(977, 'Ezaalfajri', 'Facebook Depok', '180.252.82.162', '2022-05-24 09:26:04', 'Ezaalfajri Divisi Facebook Depok Telah Menginput income akun Meylisa Dwi Anggraheni Puspitasari  tanggal 24-05-2022'),
(978, 'Novit Riyadi', 'Facebook Depok', '180.252.82.162', '2022-05-24 09:26:51', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Anita Sri Wulandari'),
(979, 'Novit Riyadi', 'Facebook Depok', '180.252.82.162', '2022-05-24 09:28:35', 'Novit Riyadi Divisi Facebook Depok Telah Melaporkan harian akun dari Peduli bersama yatim'),
(980, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.42', '2022-05-24 09:30:43', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(981, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-24 09:32:31', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(982, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:43:26', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Putri Rahmadhani'),
(983, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:43:48', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(984, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:44:31', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(985, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:44:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(986, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:45:22', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(987, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:45:45', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(988, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:46:37', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Berbagi yatim'),
(989, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:46:48', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Berbagi yatim'),
(990, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:47:00', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Meylisa Dwi Anggraheni Puspitasari '),
(991, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:49:40', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(992, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:49:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(993, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:50:05', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(994, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:53:37', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(995, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:54:06', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(996, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:54:47', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(997, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:55:23', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(998, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:55:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(999, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:56:07', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1000, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:56:18', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1001, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.162', '2022-05-24 09:56:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1002, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.82.162', '2022-05-24 10:08:30', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Farhan Fikri Fadillah tanggal 24-05-2022'),
(1003, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.42', '2022-05-24 10:34:15', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 24-05-2022'),
(1004, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.8.34', '2022-05-24 14:27:56', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 24-05-2022'),
(1005, 'Haidar Sulthan', 'Facebook Depok', '180.252.82.162', '2022-05-24 15:39:23', 'Haidar Sulthan Telah Login Halaman Facebook Depok'),
(1006, 'Haidar Sulthan', 'Facebook Depok', '180.252.82.162', '2022-05-24 15:41:53', 'Haidar Sulthan Divisi Facebook Depok Telah Menginput income akun Haidar Sultan tanggal 24-05-2022'),
(1007, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-24 17:12:57', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(1008, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-24 17:13:08', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(1009, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.23', '2022-05-24 18:14:50', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(1010, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-24 22:41:16', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim tanggal 24-05-2022'),
(1011, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-24 23:04:23', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(1012, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-25 00:29:27', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(1013, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-25 09:47:47', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(1014, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-25 09:49:23', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(1015, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-25 09:50:27', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(1016, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-25 09:54:06', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(1017, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-25 09:54:15', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(1018, 'Adam', 'Facebook Depok', '114.5.250.35', '2022-05-25 09:54:47', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(1019, 'Adam', 'Facebook Depok', '114.5.250.35', '2022-05-25 09:57:21', 'Adam Facebook Depok Telah Logout dari halamannya'),
(1020, 'Iman Nuriawan', 'Facebook Depok', '36.88.139.219', '2022-05-25 09:58:40', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(1021, 'Iman Nuriawan', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:07:09', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(1022, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:11:19', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah laporan harian akun dari Farhan Fikri Fadillah'),
(1023, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:13:55', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(1024, 'Sodru ', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:17:12', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(1025, 'Sodru ', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:26:12', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(1026, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:30:12', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1027, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:34:10', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1028, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:38:51', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1029, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:40:55', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1030, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:48:07', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(1031, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:51:35', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1032, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:53:09', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(1033, 'Anita Sri Wulandari', 'Facebook Depok', '36.88.139.219', '2022-05-25 10:56:43', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 24-05-2022'),
(1034, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.14', '2022-05-25 10:57:11', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 25-05-2022'),
(1035, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.14', '2022-05-25 11:00:13', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 25-05-2022'),
(1036, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.14', '2022-05-25 11:00:28', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah income akun Infaq Yatim'),
(1037, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 11:03:56', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1038, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 11:08:33', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1039, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 11:10:55', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1040, 'Anita Sri Wulandari', 'Facebook Depok', '36.88.139.219', '2022-05-25 13:01:28', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 24-05-2022'),
(1041, 'Ezaalfajri', 'Facebook Depok', '36.88.139.219', '2022-05-25 13:40:57', 'Ezaalfajri Telah Login Halaman Facebook Depok'),
(1042, 'Ezaalfajri', 'Facebook Depok', '36.88.139.219', '2022-05-25 14:15:16', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(1044, 'Riki Subagja', 'Ketua Yayasan', '180.252.171.70', '2022-05-25 14:32:16', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1045, 'Riki Subagja', 'Ketua Yayasan', '180.252.171.70', '2022-05-25 14:35:01', 'Riki Subagja Ketua Yayasan Telah Logout dari halamannya'),
(1047, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 14:58:41', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Meylisa Dwi Anggraheni Puspitasari '),
(1048, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 14:59:25', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Haidar Sultan'),
(1049, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 14:59:33', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1050, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 14:59:55', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1051, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 15:00:22', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1052, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 15:00:36', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Farhan Fikri Fadillah'),
(1053, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 15:00:51', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1054, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 15:02:30', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1055, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 15:02:37', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1056, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 15:02:46', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1057, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 15:02:52', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1058, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-25 15:18:03', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Mengubah income akun Sedekah Yatim'),
(1059, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 15:20:59', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(1060, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-25 15:21:09', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1061, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-25 15:41:02', 'Riki Divisi Facebook Depok Telah Menginput income akun Zakat Yatim tanggal 25-05-2022'),
(1062, 'Ezaalfajri', 'Facebook Depok', '36.88.139.219', '2022-05-25 16:55:21', 'Ezaalfajri Divisi Facebook Depok Telah Menginput income akun Meylisa Dwi Anggraheni Puspitasari  tanggal 25-05-2022'),
(1063, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.17', '2022-05-25 18:56:02', 'Lutfhi Aditya Rachman Facebook Depok Telah Logout dari halamannya'),
(1064, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.17', '2022-05-25 18:56:06', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(1065, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.17', '2022-05-25 18:58:14', 'Lutfhi Aditya Rachman Facebook Depok Telah Logout dari halamannya'),
(1066, 'Vicky Abdul Rohman', 'Management Keuangan', '116.206.9.17', '2022-05-25 18:58:26', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(1067, 'Vicky Abdul Rohman', 'Management Keuangan', '116.206.9.17', '2022-05-25 19:00:30', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(1068, 'Vicky Abdul Rohman', 'Management Keuangan', '36.88.139.219', '2022-05-25 19:03:16', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(1069, 'Vicky Abdul Rohman', 'Management Keuangan', '36.88.139.219', '2022-05-25 19:04:45', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(1070, 'Sodru ', 'Facebook Depok', '36.88.139.219', '2022-05-26 09:19:56', 'Sodru  Divisi Facebook Depok Telah Menginput income akun Mari bantu Yatim  tanggal 26-05-2022'),
(1071, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.8.12', '2022-05-26 09:40:31', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(1072, 'Anita Sri Wulandari', 'Facebook Depok', '36.88.139.219', '2022-05-26 09:55:07', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(1073, 'Anita Sri Wulandari', 'Facebook Depok', '36.88.139.219', '2022-05-26 09:58:00', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 26-05-2022'),
(1074, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.8.12', '2022-05-26 09:58:01', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(1075, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-26 10:05:10', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(1076, 'Sri Lestari', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:05:15', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(1077, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-26 10:07:51', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(1078, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.8.12', '2022-05-26 10:10:10', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 26-05-2022'),
(1079, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-26 10:11:21', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(1080, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-26 10:11:35', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(1081, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-26 10:15:22', 'Adam Telah Login Halaman Facebook Depok'),
(1082, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-26 10:17:16', 'Adam Divisi Facebook Depok Telah Menginput income akun Jihan ramadhani tanggal 26-05-2022'),
(1083, 'Ezaalfajri', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:17:58', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(1084, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-26 10:20:29', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(1085, 'Ezaalfajri', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:21:03', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(1086, 'Sri Lestari', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:21:45', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(1087, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-26 10:23:18', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(1088, 'Ezaalfajri', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:24:21', 'Ezaalfajri Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Meylisa Dwi Anggraheni Puspitasari '),
(1089, 'Ezaalfajri', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:26:01', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(1090, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-26 10:26:25', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(1091, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-26 10:28:36', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(1092, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 10:30:15', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zakat Yatim'),
(1093, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-26 10:30:17', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(1094, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:30:43', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(1095, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 10:30:46', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Mari bantu Yatim '),
(1096, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 10:30:57', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Jihan ramadhani'),
(1097, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 10:31:21', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Meylisa Dwi Anggraheni Puspitasari '),
(1098, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 10:31:33', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1099, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 10:31:47', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1100, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 10:32:00', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1101, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 10:32:05', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1102, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:32:12', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1103, 'Ezaalfajri', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:32:14', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(1104, 'Riki', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:33:13', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(1105, 'Ezaalfajri', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:34:18', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(1106, 'Mutmainah', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:34:21', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(1107, 'Sezha Octaviana', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:37:46', 'Sezha Octaviana Divisi Facebook Depok Telah Menginput income akun Keberkahan Yatim tanggal 25-05-2022'),
(1108, 'Anita Sri Wulandari', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:40:43', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(1109, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-26 10:47:04', 'Adam Facebook Depok Telah Logout dari halamannya'),
(1110, 'Sezha Octaviana', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:54:54', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(1111, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-26 10:59:33', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(1112, 'Sezha Octaviana', 'Facebook Depok', '36.88.139.219', '2022-05-26 11:09:05', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(1113, 'Anita Sri Wulandari', 'Facebook Depok', '36.88.139.219', '2022-05-26 11:12:52', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 26-05-2022'),
(1114, 'Anita Sri Wulandari', 'Facebook Depok', '36.88.139.219', '2022-05-26 11:17:49', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 26-05-2022'),
(1115, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.85.59', '2022-05-26 12:15:27', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menginput income akun Dompet Yatim II tanggal 26-05-2022'),
(1116, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.85.59', '2022-05-26 13:10:16', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(1117, 'Sri Lestari', 'Facebook Depok', '36.88.139.219', '2022-05-26 13:21:08', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim tanggal 26-05-2022'),
(1118, 'Sri Lestari', 'Facebook Depok', '36.88.139.219', '2022-05-26 13:22:22', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim tanggal 26-05-2022'),
(1119, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 14:14:44', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Keberkahan Yatim'),
(1120, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 14:15:26', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(1121, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 14:15:41', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Yatim II'),
(1122, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 14:15:57', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(1123, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 14:16:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1124, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 14:16:37', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1125, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 14:17:15', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1126, 'Fadhila Amelia Putri', 'Kepala Income', '36.88.139.219', '2022-05-26 14:17:25', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1127, 'Lutfhi Aditya Rachman', 'Facebook Depok', '36.88.139.219', '2022-05-26 14:18:02', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah laporan harian akun dari Infaq Yatim'),
(1128, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-26 14:32:51', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim tanggal 26-05-2022'),
(1129, 'Sodru ', 'Facebook Depok', '36.88.139.219', '2022-05-26 14:58:50', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(1130, 'Sodru ', 'Facebook Depok', '36.88.139.219', '2022-05-26 15:12:55', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(1131, 'Sodru ', 'Facebook Depok', '36.88.139.219', '2022-05-26 15:33:04', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Mari bantu Yatim '),
(1132, 'Sodru ', 'Facebook Depok', '36.88.139.219', '2022-05-26 15:40:45', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Mari bantu Yatim '),
(1133, 'Sri Lestari', 'Facebook Depok', '36.88.139.219', '2022-05-26 15:50:23', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim tanggal 26-05-2022'),
(1134, 'Anita Sri Wulandari', 'Facebook Depok', '36.88.139.219', '2022-05-26 16:11:09', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 26-05-2022'),
(1135, 'Anita Sri Wulandari', 'Facebook Depok', '36.88.139.219', '2022-05-26 16:35:54', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 26-05-2022'),
(1136, 'Sodru ', 'Facebook Depok', '36.88.139.219', '2022-05-26 20:36:41', 'Sodru  Divisi Facebook Depok Telah Menginput income akun Muhammad Rizky Amin  tanggal 26-05-2022'),
(1137, 'Dedi Makarim Manaf', 'Facebook Depok', '36.88.139.219', '2022-05-27 08:50:25', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim tanggal 27-05-2022'),
(1138, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.82.16', '2022-05-27 09:27:11', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim tanggal 27-05-2022'),
(1139, 'Sri Lestari', 'Facebook Depok', '180.252.82.16', '2022-05-27 10:00:39', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani tanggal 27-05-2022'),
(1140, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.82.16', '2022-05-27 10:02:19', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 27-05-2022'),
(1141, 'Mutmainah', 'Facebook Depok', '180.252.82.16', '2022-05-27 10:02:31', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun Bersama yatim tanggal 26-05-2022'),
(1142, 'Resma Febiyanti', 'Facebook Depok', '180.252.82.16', '2022-05-27 10:04:18', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i tanggal 27-05-2022'),
(1143, 'Sezha Octaviana', 'Facebook Depok', '180.252.82.16', '2022-05-27 10:06:13', 'Sezha Octaviana Divisi Facebook Depok Telah Menginput income akun Keberkahan Yatim tanggal 26-05-2022'),
(1144, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-27 10:07:08', 'Adam Telah Login Halaman Facebook Depok'),
(1145, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-27 10:08:49', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(1146, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.82.16', '2022-05-27 10:13:10', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(1147, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:15:50', 'Zakia Nadila Seftiani Telah Membuat Akun Baru Facebook Depok'),
(1148, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:16:43', 'Zakia Nadila Seftiani Telah Login Halaman Facebook Depok'),
(1149, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:16:55', 'Yuni Sarah Telah Membuat Akun Baru Facebook Depok'),
(1150, 'Nurmala Sari ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:27', 'Nurmala Sari  Telah Membuat Akun Baru Facebook Depok'),
(1151, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:28', 'Alfiatul Khoyyiroh Telah Membuat Akun Baru Facebook Depok');
INSERT INTO `2022_log_aktivity` (`id`, `nama`, `posisi`, `ip`, `tanggal`, `aktivitas`) VALUES
(1152, 'Linda Indriyani ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:31', 'Linda Indriyani  Telah Membuat Akun Baru Facebook Depok'),
(1153, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:39', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1154, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:43', 'Alfiatul Khoyyiroh Telah Login Halaman Facebook Depok'),
(1155, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:45', 'Siti Amaliah Telah Membuat Akun Baru Facebook Depok'),
(1156, 'Linda Indriyani ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:45', 'Linda Indriyani  Telah Login Halaman Facebook Depok'),
(1157, 'Nurmala Sari ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:45', 'Nurmala Sari  Telah Login Halaman Facebook Depok'),
(1158, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:50', 'Silvi Agnia  Telah Membuat Akun Baru Facebook Depok'),
(1159, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:56', 'Siti Amaliah Telah Login Halaman Facebook Depok'),
(1160, 'Zahra Maulida', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:17:58', 'Zahra Maulida Telah Membuat Akun Baru Facebook Depok'),
(1161, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:18:08', 'Silvi Agnia  Telah Login Halaman Facebook Depok'),
(1162, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:18:11', 'Zakia Nadila Seftiani Telah Membuat Akun media sosial dengan nama akun Zakia Nadila '),
(1163, 'Nurmala Sari ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:18:13', 'Nurmala Sari  Telah Membuat Akun media sosial dengan nama akun Nurmala Sari'),
(1164, 'Zahra Maulida', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:18:21', 'Zahra Maulida Telah Login Halaman Facebook Depok'),
(1165, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:18:26', 'Zakia Nadila Seftiani Telah Membuat Akun media sosial dengan nama akun Kebahagiaan yatim'),
(1166, 'Nurmala Sari ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:18:42', 'Nurmala Sari  Telah Membuat Akun media sosial dengan nama akun Pahala Sedekah Yatim Piatu'),
(1167, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:18:48', 'Silvi Agnia  Telah Membuat Akun media sosial dengan nama akun Silvi agnia'),
(1168, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:18:49', 'Alfiatul Khoyyiroh Telah Membuat Akun media sosial dengan nama akun Alfiatul Khoyyiroh'),
(1169, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-27 10:19:00', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(1170, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:19:02', 'Siti Amaliah Telah Membuat Akun media sosial dengan nama akun Siti Amaliah'),
(1171, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:19:04', 'Silvi Agnia  Telah Membuat Akun media sosial dengan nama akun Infaq yatim piatu'),
(1172, 'Sodru ', 'Facebook Depok', '180.252.82.16', '2022-05-27 10:19:05', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Muhammad Rizky Amin '),
(1173, 'Linda Indriyani ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:19:06', 'Linda Indriyani  Telah Membuat Akun media sosial dengan nama akun Linda Indriyani '),
(1174, 'Zahra Maulida', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:19:14', 'Zahra Maulida Telah Membuat Akun media sosial dengan nama akun Zahra Maulida'),
(1175, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:19:15', 'Alfiatul Khoyyiroh Telah Membuat Akun media sosial dengan nama akun Senyuman Yatim Piatu'),
(1176, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:19:18', 'Yuni Sarah Telah Membuat Akun media sosial dengan nama akun Yuni Sarah'),
(1177, 'Linda Indriyani ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:19:25', 'Linda Indriyani  Telah Membuat Akun media sosial dengan nama akun Donasi Dompet Yatim'),
(1178, 'Zahra Maulida', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:19:39', 'Zahra Maulida Telah Membuat Akun media sosial dengan nama akun Dompet Berkah Yatim'),
(1179, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:19:42', 'Yuni Sarah Telah Membuat Akun media sosial dengan nama akun Berkah Dompet Yatim'),
(1180, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:20:00', 'Siti Amaliah Telah Membuat Akun media sosial dengan nama akun Dompet keberkahan yatim'),
(1181, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-27 10:20:20', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(1182, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:21:03', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1183, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-27 10:24:45', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(1184, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:24:57', 'Zakia Nadila Seftiani Telah Login Halaman Facebook Depok'),
(1185, 'Okta Viane Berliana', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:26:19', 'Okta Viane Berliana Telah Membuat Akun Baru Facebook Depok'),
(1186, 'Okta Viane Berliana', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:26:33', 'Okta Viane Berliana Telah Login Halaman Facebook Depok'),
(1187, 'Okta Viane Berliana', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:27:30', 'Okta Viane Berliana Telah Membuat Akun media sosial dengan nama akun Okta berliana'),
(1188, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:27:46', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menginput income akun Dompet Yatim II tanggal 27-05-2022'),
(1189, 'Okta Viane Berliana', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:27:59', 'Okta Viane Berliana Telah Membuat Akun media sosial dengan nama akun Dompet semangat yatim'),
(1190, 'Riki Subagja', 'Ketua Yayasan', '103.157.24.27', '2022-05-27 10:34:37', 'Riki Subagja Ketua Yayasan Telah Logout dari halamannya'),
(1192, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:39:03', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Silvi agnia'),
(1193, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:39:36', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq yatim piatu'),
(1194, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.82.16', '2022-05-27 10:53:09', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(1195, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:54:41', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1196, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:56:03', 'Meisya Anastasia Telah Login Halaman Facebook Depok'),
(1197, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:56:20', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1198, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:57:46', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1199, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:58:36', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1200, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 10:59:52', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1201, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:00:49', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1202, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:01:51', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1203, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:02:41', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1204, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.82.16', '2022-05-27 11:03:28', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 27-05-2022'),
(1205, 'Resma Febiyanti', 'Facebook Depok', '180.252.82.16', '2022-05-27 11:05:41', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i tanggal 27-05-2022'),
(1206, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.82.16', '2022-05-27 11:07:01', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 27-05-2022'),
(1207, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:09:17', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1208, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:10:08', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1209, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:10:35', 'Meisya Anastasia Divisi Facebook Depok Telah Mengubah laporan harian akun dari Infaq Dompet Yatim'),
(1210, 'Linda Indriyani ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:10:39', 'Linda Indriyani  Facebook Depok Telah Logout dari halamannya'),
(1211, 'Linda Indriyani ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:10:49', 'Linda Indriyani  Telah Login Halaman Facebook Depok'),
(1212, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:12:14', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1213, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:12:57', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1214, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:13:36', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1215, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:13:48', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1216, 'Linda Indriyani ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:13:57', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Linda Indriyani '),
(1217, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:15:29', 'Silvi Agnia  Telah Login Halaman Facebook Depok'),
(1218, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:15:34', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1219, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:15:43', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1220, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:15:44', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1221, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.82.16', '2022-05-27 11:15:46', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(1222, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:18:33', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1223, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:19:13', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1224, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:19:41', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Berkah Dompet Yatim'),
(1225, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:21:12', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1226, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:21:38', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Yuni Sarah'),
(1227, 'Linda Indriyani ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:22:52', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Linda Indriyani '),
(1228, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:24:16', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Yuni Sarah'),
(1229, 'Zahra Maulida', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:24:28', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Zahra Maulida'),
(1230, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:24:32', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1231, 'Meisya Anastasia', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:24:39', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1232, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.82.16', '2022-05-27 11:25:13', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(1233, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:26:04', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1234, 'Nurmala Sari ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:26:05', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Nurmala Sari'),
(1235, 'Linda Indriyani ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:26:05', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Donasi Dompet Yatim'),
(1236, 'Zahra Maulida', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:26:15', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Zahra Maulida'),
(1237, 'Yuni Sarah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:26:55', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1238, 'Zahra Maulida', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:27:07', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Berkah Yatim'),
(1239, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:27:28', 'Silvi Agnia  Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Infaq yatim piatu'),
(1240, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:27:49', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Zakia Nadila '),
(1241, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:28:00', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet keberkahan yatim'),
(1242, 'Nurmala Sari ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:28:03', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Nurmala Sari'),
(1243, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:28:17', 'Silvi Agnia  Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Silvi agnia'),
(1244, 'Nurmala Sari ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:28:57', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Pahala Sedekah Yatim Piatu'),
(1245, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:29:47', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Silvi agnia'),
(1246, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:31:11', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Alfiatul Khoyyiroh'),
(1247, 'Okta Viane Berliana', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:31:19', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Okta berliana'),
(1248, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:31:33', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Silvi agnia'),
(1249, 'Okta Viane Berliana', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:32:36', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Okta berliana'),
(1250, 'Silvi Agnia ', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:32:43', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq yatim piatu'),
(1251, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.82.16', '2022-05-27 11:32:47', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(1252, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:33:10', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Zakia Nadila '),
(1253, 'Okta Viane Berliana', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:33:27', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet semangat yatim'),
(1254, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:34:46', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Kebahagiaan yatim'),
(1255, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:35:23', 'Siti Amaliah Telah Login Halaman Facebook Depok'),
(1256, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:36:34', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah income akun Dompet Yatim II'),
(1257, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:38:26', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Siti Amaliah'),
(1258, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:38:33', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Alfiatul Khoyyiroh'),
(1259, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:43:17', 'Siti Amaliah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Siti Amaliah'),
(1260, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.16', '2022-05-27 11:43:51', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nlogistik Krediting'),
(1261, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:45:02', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Siti Amaliah'),
(1262, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:46:25', 'Siti Amaliah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Siti Amaliah'),
(1263, 'Siti Amaliah', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:47:10', 'Siti Amaliah Facebook Depok Telah Logout dari halamannya'),
(1264, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.90.133', '2022-05-27 11:48:16', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Senyuman Yatim Piatu'),
(1265, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.16', '2022-05-27 12:05:55', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nLogistik kebutuhan yayasan'),
(1266, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.82.16', '2022-05-27 12:06:14', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah Laporan Program Logistik Gedung DYPA menjadi\r\nlogistik Krediting'),
(1268, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.82.16', '2022-05-27 18:53:52', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Farhan Fikri Fadillah tanggal 27-05-2022'),
(1269, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.82.16', '2022-05-28 06:58:27', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi logistik Krediting'),
(1270, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.82.16', '2022-05-28 06:58:37', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi Logistik kebutuhan yayasan'),
(1271, 'Sri Lestari', 'Facebook Depok', '180.251.182.139', '2022-05-28 09:32:35', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim tanggal 27-05-2022'),
(1272, 'Resma Febiyanti', 'Facebook Depok', '180.251.182.139', '2022-05-28 09:42:17', 'Resma Febiyanti Telah Login Halaman Facebook Depok'),
(1273, 'Haidar Sultan Khabir', 'Leader Facebook', '180.251.182.139', '2022-05-28 09:43:02', 'Haidar Sultan Khabir Leader Facebook Telah Logout dari halamannya'),
(1274, 'Haidar Sulthan', 'Facebook Depok', '180.251.182.139', '2022-05-28 09:43:22', 'Haidar Sulthan Telah Login Halaman Facebook Depok'),
(1275, 'Silvi Agnia ', 'Facebook Depok', '180.252.81.180', '2022-05-28 09:44:43', 'Silvi Agnia  Telah Login Halaman Facebook Depok'),
(1276, 'Haidar Sulthan', 'Facebook Depok', '180.251.182.139', '2022-05-28 09:44:48', 'Haidar Sulthan Divisi Facebook Depok Telah Menginput income akun Haidar Sultan tanggal 27-05-2022'),
(1277, 'Anita Sri Wulandari', 'Facebook Depok', '180.251.182.139', '2022-05-28 09:44:57', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 27-05-2022'),
(1278, 'Resma Febiyanti', 'Facebook Depok', '180.251.182.139', '2022-05-28 09:45:56', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i tanggal 27-05-2022'),
(1279, 'Resma Febiyanti', 'Facebook Depok', '180.251.182.139', '2022-05-28 09:48:44', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i tanggal 27-05-2022'),
(1280, 'Anita Sri Wulandari', 'Facebook Depok', '180.251.182.139', '2022-05-28 09:50:40', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 27-05-2022'),
(1281, 'Siti Amaliah', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:06:29', 'Siti Amaliah Telah Login Halaman Facebook Depok'),
(1282, 'Meisya Anastasia', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:06:53', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1283, 'Meisya Anastasia', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:08:03', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1284, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-28 10:08:48', 'Adam Telah Login Halaman Facebook Depok'),
(1285, 'Siti Amaliah', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:09:27', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Siti Amaliah'),
(1286, 'Siti Amaliah', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:14:11', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet keberkahan yatim'),
(1287, 'Meisya Anastasia', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:14:30', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1288, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-28 10:14:40', 'Adam Divisi Facebook Depok Telah Menginput income akun Zaeni Mucthar tanggal 27-05-2022'),
(1289, 'Siti Amaliah', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:15:04', 'Siti Amaliah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Siti Amaliah'),
(1290, 'Siti Amaliah', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:15:46', 'Siti Amaliah Facebook Depok Telah Logout dari halamannya'),
(1291, 'Linda Indriyani ', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:15:53', 'Linda Indriyani  Telah Login Halaman Facebook Depok'),
(1292, 'Meisya Anastasia', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:16:23', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1293, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-28 10:16:48', 'Adam Divisi Facebook Depok Telah Menginput income akun Zaeni Mucthar tanggal 27-05-2022'),
(1294, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:18:30', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1295, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:19:54', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1296, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-28 10:20:41', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Zaeni Mucthar'),
(1297, 'Linda Indriyani ', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:22:39', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Linda Indriyani '),
(1298, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.139', '2022-05-28 10:23:07', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(1299, 'Linda Indriyani ', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:24:33', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Donasi Dompet Yatim'),
(1300, 'Meisya Anastasia', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:25:49', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1301, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-28 10:27:09', 'Adam Divisi Facebook Depok Telah Melaporkan harian akun dari Jihan ramadhani'),
(1302, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-28 10:27:50', 'Adam Facebook Depok Telah Logout dari halamannya'),
(1303, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:28:40', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1305, 'Nurmala Sari ', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:30:13', 'Nurmala Sari  Telah Login Halaman Facebook Depok'),
(1306, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:30:31', 'Alfiatul Khoyyiroh Telah Login Halaman Facebook Depok'),
(1307, 'Nurmala Sari ', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:32:00', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Nurmala Sari'),
(1308, 'Riki', 'Facebook Depok', '180.251.182.139', '2022-05-28 10:32:59', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1309, 'Nurmala Sari ', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:33:15', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Pahala Sedekah Yatim Piatu'),
(1310, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:33:32', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Alfiatul Khoyyiroh'),
(1311, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:33:36', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1312, 'Silvi Agnia ', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:34:10', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Silvi agnia'),
(1313, 'Dedi Makarim Manaf', 'Facebook Depok', '180.251.182.139', '2022-05-28 10:34:32', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(1314, 'Silvi Agnia ', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:35:05', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq yatim piatu'),
(1315, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:35:16', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Senyuman Yatim Piatu'),
(1316, 'Mutmainah', 'Facebook Depok', '180.251.182.139', '2022-05-28 10:39:23', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(1317, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:39:59', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1318, 'Riki', 'Facebook Depok', '180.251.182.139', '2022-05-28 10:40:45', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1319, 'Riki', 'Facebook Depok', '180.251.182.139', '2022-05-28 10:45:51', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(1320, 'Iman Nuriawan', 'Facebook Depok', '114.4.83.125', '2022-05-28 10:54:29', 'Iman Nuriawan Divisi Facebook Depok Telah Menginput income akun Berbagi yatim tanggal 27-05-2022'),
(1321, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:54:40', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1322, 'Iman Nuriawan', 'Facebook Depok', '114.4.83.125', '2022-05-28 10:55:14', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(1323, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:56:13', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1324, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 10:56:44', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1325, 'Riki', 'Facebook Depok', '180.251.182.139', '2022-05-28 10:59:50', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1326, 'Riki', 'Facebook Depok', '180.251.182.139', '2022-05-28 11:02:04', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1327, 'Riki', 'Facebook Depok', '180.251.182.139', '2022-05-28 11:03:37', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1328, 'Ezaalfajri', 'Facebook Depok', '180.251.182.139', '2022-05-28 11:04:06', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(1329, 'Ezaalfajri', 'Facebook Depok', '180.251.182.139', '2022-05-28 11:07:51', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(1330, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:12:37', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1331, 'Anita Sri Wulandari', 'Facebook Depok', '180.251.182.139', '2022-05-28 11:12:57', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(1332, 'Anita Sri Wulandari', 'Facebook Depok', '180.251.182.139', '2022-05-28 11:16:22', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(1334, 'Omiati', 'Leader Facebook', '125.161.111.157', '2022-05-28 11:18:58', 'Omiati Telah Login Halaman Leader Facebook'),
(1335, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:19:39', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Zakia Nadila '),
(1336, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:25:08', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Kebahagiaan yatim'),
(1337, 'Zahra Maulida', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:30:02', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Berkah Yatim'),
(1338, 'Zahra Maulida', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:31:01', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Zahra Maulida'),
(1339, 'Yuni Sarah', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:33:45', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1340, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:35:31', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1341, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:35:48', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Dompet Yatim'),
(1342, 'Yuni Sarah', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:37:08', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Yuni Sarah'),
(1343, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:37:39', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1344, 'Yuni Sarah', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:38:33', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Berkah Dompet Yatim'),
(1345, 'Yuni Sarah', 'Facebook Depok', '180.252.81.180', '2022-05-28 11:38:46', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1346, 'Anita Sri Wulandari', 'Facebook Depok', '180.251.182.139', '2022-05-28 13:24:15', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 28-05-2022'),
(1347, 'Resma Febiyanti', 'Facebook Depok', '180.251.182.139', '2022-05-28 13:44:30', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(1348, 'Haidar Sulthan', 'Facebook Depok', '180.251.182.139', '2022-05-28 13:54:52', 'Haidar Sulthan Facebook Depok Telah Logout dari halamannya'),
(1349, 'Haidar Sultan Khabir', 'Leader Facebook', '180.251.182.139', '2022-05-28 13:54:58', 'Haidar Sultan Khabir Telah Login Halaman Leader Facebook'),
(1350, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-28 14:44:06', 'Adam Telah Login Halaman Facebook Depok'),
(1351, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-28 14:47:47', 'Adam Facebook Depok Telah Logout dari halamannya'),
(1352, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:04:37', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Bersama yatim'),
(1353, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:05:02', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1354, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:05:22', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(1355, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:05:39', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1356, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:05:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Keberkahan Yatim'),
(1357, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:06:23', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(1358, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:10:12', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Muhammad Rizky Amin '),
(1359, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:10:39', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(1360, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:11:03', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(1361, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:11:24', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Putri Rahmadhani'),
(1362, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:11:55', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Yatim II'),
(1363, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:13:45', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1364, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-28 15:14:50', 'Adam Telah Login Halaman Facebook Depok'),
(1365, 'Adam', 'Facebook Depok', '114.4.214.164', '2022-05-28 15:15:03', 'Adam Facebook Depok Telah Logout dari halamannya'),
(1366, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:15:22', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Berbagi yatim'),
(1367, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:16:36', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1368, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:17:04', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zaeni Mucthar'),
(1369, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:17:24', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(1370, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:17:49', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zaeni Mucthar'),
(1371, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:18:06', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1372, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:18:40', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1373, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:20:13', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(1374, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:20:32', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1375, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:20:49', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Haidar Sultan'),
(1376, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:21:13', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Farhan Fikri Fadillah'),
(1377, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:21:30', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(1378, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:26:36', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1379, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:26:50', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1380, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:27:01', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1381, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:27:09', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1382, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:36:01', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nLogistik konsumtif'),
(1383, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:45:30', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Program Santunan Yatim '),
(1384, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:46:42', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah Laporan Program Logistik Gedung DYPA menjadi\r\nLogistik konsumtif'),
(1385, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 15:46:45', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah Laporan Program Logistik Gedung DYPA menjadi\r\nLogistik konsumtif'),
(1386, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 16:05:08', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Uang Makan'),
(1387, 'Vicky Abdul Rohman', 'Management Keuangan', '180.251.182.139', '2022-05-28 16:06:15', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi Logistik konsumtif'),
(1388, 'Vicky Abdul Rohman', 'Management Keuangan', '180.251.182.139', '2022-05-28 16:07:04', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Santunan Yatim dengan deskripsi Santuanan mingguan'),
(1389, 'Vicky Abdul Rohman', 'Management Keuangan', '180.251.182.139', '2022-05-28 16:07:39', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Uang makan karyawan dengan perencanaan Uang makan karyawan'),
(1390, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 16:09:29', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Uang Makan dengan pemakaian\r\nUang makan karyawan'),
(1391, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 16:11:14', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Gaji Karyawan'),
(1392, 'Vicky Abdul Rohman', 'Management Keuangan', '180.251.182.139', '2022-05-28 16:12:01', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Gaji Karyawan dengan perencanaan Gaji karyawan'),
(1393, 'Vicky Abdul Rohman', 'Management Keuangan', '180.251.182.139', '2022-05-28 16:12:29', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Uang Makan dengan deskripsi Uang makan karyawan'),
(1394, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 16:25:45', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Program Pendidikan Yatim '),
(1395, 'Fadhila Amelia Putri', 'Kepala Income', '180.251.182.139', '2022-05-28 16:36:16', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Program Santunan Yatim dengan perencanaan Santunan bulanan'),
(1396, 'Vicky Abdul Rohman', 'Management Keuangan', '180.251.182.139', '2022-05-28 16:39:43', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Santunan Yatim dengan perencanaan Santunan bulanan'),
(1397, 'Vicky Abdul Rohman', 'Management Keuangan', '180.251.182.139', '2022-05-28 16:40:06', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Pendidikan Yatim dengan deskripsi Pendidikan yatim'),
(1398, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.4.124', '2022-05-28 16:45:16', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Program Santunan Yatim '),
(1399, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.4.124', '2022-05-28 16:47:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nKrediting'),
(1400, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.4.124', '2022-05-28 16:50:16', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nKebutuhan yayasan'),
(1401, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.4.124', '2022-05-28 16:51:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nKonsumtif'),
(1402, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.4.124', '2022-05-28 16:56:59', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Gaji Karyawan dengan pemakaian\r\nGaji karyawan'),
(1403, 'Fadhila Amelia Putri', 'Kepala Income', '120.188.4.124', '2022-05-28 17:00:00', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Uang Makan dengan pemakaian\r\nUang makan karyawan'),
(1404, 'Zahra Maulida', 'Facebook Depok', '115.178.207.28', '2022-05-29 08:18:09', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Zahra Maulida'),
(1405, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.214.154', '2022-05-29 13:58:00', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Farhan Fikri Fadillah tanggal 29-05-2022'),
(1406, 'Mutmainah', 'Facebook Depok', '114.124.131.87', '2022-05-29 21:38:07', 'Mutmainah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Bersama Yatim'),
(1407, 'Mutmainah', 'Facebook Depok', '114.124.131.87', '2022-05-29 22:00:59', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(1408, 'Yuni Sarah', 'Facebook Depok', '114.5.219.48', '2022-05-29 22:15:01', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1409, 'Yuni Sarah', 'Facebook Depok', '114.5.219.48', '2022-05-29 22:23:24', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1410, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '114.5.211.196', '2022-05-29 22:27:47', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1411, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '114.5.211.196', '2022-05-29 22:32:37', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menginput income akun Dompet Yatim II tanggal 28-05-2022'),
(1412, 'Anita Sri Wulandari', 'Facebook Depok', '125.160.239.190', '2022-05-29 23:42:51', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 28-05-2022'),
(1413, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.13.166', '2022-05-29 23:48:29', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(1414, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.13.166', '2022-05-29 23:53:00', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(1415, 'Anita Sri Wulandari', 'Facebook Depok', '125.160.239.190', '2022-05-30 00:07:57', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 27-05-2022'),
(1416, 'Anita Sri Wulandari', 'Facebook Depok', '125.160.239.190', '2022-05-30 00:27:52', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(1417, 'Anita Sri Wulandari', 'Facebook Depok', '125.160.239.190', '2022-05-30 00:48:15', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(1418, 'Sezha Octaviana', 'Facebook Depok', '114.124.237.12', '2022-05-30 01:20:40', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(1419, 'Sezha Octaviana', 'Facebook Depok', '114.124.237.12', '2022-05-30 01:27:13', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(1420, 'Sezha Octaviana', 'Facebook Depok', '114.124.237.12', '2022-05-30 01:28:21', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(1421, 'Sezha Octaviana', 'Facebook Depok', '114.124.237.12', '2022-05-30 01:31:31', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(1422, 'Sezha Octaviana', 'Facebook Depok', '114.124.237.12', '2022-05-30 01:34:50', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(1423, 'Sezha Octaviana', 'Facebook Depok', '114.124.237.12', '2022-05-30 01:40:27', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(1424, 'Sezha Octaviana', 'Facebook Depok', '114.124.237.12', '2022-05-30 01:43:56', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kholid Fatullah'),
(1425, 'Zahra Maulida', 'Facebook Depok', '114.79.7.69', '2022-05-30 05:53:18', 'Zahra Maulida Telah Login Halaman Facebook Depok'),
(1426, 'Zakia Nadila Seftiani', 'Facebook Depok', '114.4.82.51', '2022-05-30 06:29:08', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Zakia Nadila '),
(1427, 'Zakia Nadila Seftiani', 'Facebook Depok', '114.4.82.51', '2022-05-30 06:49:03', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Kebahagiaan yatim'),
(1428, 'Zakia Nadila Seftiani', 'Facebook Depok', '114.4.82.51', '2022-05-30 06:53:00', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Zakia Nadila '),
(1429, 'Zakia Nadila Seftiani', 'Facebook Depok', '114.4.82.51', '2022-05-30 06:54:18', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Kebahagiaan yatim'),
(1430, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-30 09:01:58', 'Iman Nuriawan Telah Login Halaman Facebook Depok'),
(1431, 'Nurmala Sari ', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:04:53', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Nurmala Sari'),
(1432, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-30 09:06:23', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(1433, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-30 09:07:10', 'Iman Nuriawan Divisi Facebook Depok Telah Mengubah laporan harian akun dari Berbagi Yatim'),
(1434, 'Alfiatul Khoyyiroh', 'Facebook Depok', '120.188.5.186', '2022-05-30 09:13:35', 'Alfiatul Khoyyiroh Telah Login Halaman Facebook Depok'),
(1435, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-30 09:18:33', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(1436, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-30 09:19:16', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(1437, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-30 09:20:51', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu');
INSERT INTO `2022_log_aktivity` (`id`, `nama`, `posisi`, `ip`, `tanggal`, `aktivitas`) VALUES
(1438, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-30 09:21:39', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(1439, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-30 09:22:34', 'Iman Nuriawan Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet yatim piatu'),
(1440, 'Iman Nuriawan', 'Facebook Depok', '114.5.211.197', '2022-05-30 09:22:48', 'Iman Nuriawan Facebook Depok Telah Logout dari halamannya'),
(1441, 'Nurmala Sari ', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:24:19', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Nurmala Sari'),
(1442, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:24:27', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Zakia Nadila '),
(1443, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:24:58', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kebahagiaan yatim'),
(1444, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:26:13', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Mengubah laporan harian akun dari Kebahagiaan Yatim'),
(1445, 'Ezaalfajri', 'Facebook Depok', '180.252.214.154', '2022-05-30 09:27:00', 'Ezaalfajri Divisi Facebook Depok Telah Menginput income akun Meylisa Dwi Anggraheni Puspitasari  tanggal 28-05-2022'),
(1446, 'Linda Indriyani ', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:27:22', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Linda Indriyani '),
(1447, 'Ezaalfajri', 'Facebook Depok', '180.252.214.154', '2022-05-30 09:38:07', 'Ezaalfajri Telah Login Halaman Facebook Depok'),
(1448, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:40:31', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Alfiatul Khoyyiroh'),
(1449, 'Siti Amaliah', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:43:23', 'Siti Amaliah Telah Login Halaman Facebook Depok'),
(1450, 'Omiati', 'Leader Facebook', '125.161.111.157', '2022-05-30 09:45:45', 'Omiati Leader Facebook Telah Logout dari halamannya'),
(1451, 'Siti Amaliah', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:45:51', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Siti Amaliah'),
(1453, 'Siti Amaliah', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:46:42', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet keberkahan yatim'),
(1454, 'Siti Amaliah', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:51:31', 'Siti Amaliah Facebook Depok Telah Logout dari halamannya'),
(1455, 'Sri Lestari', 'Facebook Depok', '116.206.8.55', '2022-05-30 09:52:07', 'Sri Lestari Telah Login Halaman Facebook Depok'),
(1456, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:52:12', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakia Nadila '),
(1457, 'Sri Lestari', 'Facebook Depok', '116.206.8.55', '2022-05-30 09:53:58', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani tanggal 29-05-2022'),
(1458, 'Siti Amaliah', 'Facebook Depok', '180.251.176.219', '2022-05-30 09:54:26', 'Siti Amaliah Telah Login Halaman Facebook Depok'),
(1459, 'Sri Lestari', 'Facebook Depok', '116.206.8.55', '2022-05-30 09:56:04', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani tanggal 28-05-2022'),
(1460, 'Siti Amaliah', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:04:56', 'Siti Amaliah Facebook Depok Telah Logout dari halamannya'),
(1461, 'Mutmainah', 'Facebook Depok', '180.252.214.154', '2022-05-30 10:08:14', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(1462, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:10:11', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1463, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.214.154', '2022-05-30 10:10:22', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Santunan Yatim dengan deskripsi Santunan bulanan'),
(1464, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:11:04', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1465, 'Yuni Sarah', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:11:41', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1466, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.214.154', '2022-05-30 10:14:07', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi Krediting'),
(1467, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.214.154', '2022-05-30 10:14:19', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi Kebutuhan yayasan'),
(1468, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.214.154', '2022-05-30 10:14:23', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(1469, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.214.154', '2022-05-30 10:14:37', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi Konsumtif'),
(1470, 'Yuni Sarah', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:15:34', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Yuni Sarah'),
(1471, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:15:59', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1472, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:16:53', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(1473, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:16:57', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(1474, 'Yuni Sarah', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:17:10', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1475, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:17:43', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1476, 'Yuni Sarah', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:18:36', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1477, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.214.154', '2022-05-30 10:18:55', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(1478, 'Yuni Sarah', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:20:14', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Berkah Dompet Yatim'),
(1479, 'Yuni Sarah', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:21:15', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1480, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:31:46', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakia Nadila '),
(1481, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.214.154', '2022-05-30 10:38:48', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(1482, 'Meisya Anastasia', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:40:12', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1483, 'Meisya Anastasia', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:42:36', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1484, 'Meisya Anastasia', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:44:51', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1485, 'Silvi Agnia ', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:46:48', 'Silvi Agnia  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Silvi Agnia'),
(1486, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:47:38', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1487, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:48:01', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Meylisa Dwi Anggraheni Puspitasari '),
(1488, 'Silvi Agnia ', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:48:04', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Silvi agnia'),
(1489, 'Meisya Anastasia', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:48:46', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1490, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:49:01', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Yatim II'),
(1491, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:49:38', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1492, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:50:13', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Putri Rahmadhani'),
(1493, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:50:39', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Farhan Fikri Fadillah'),
(1494, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:50:51', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Putri Rahmadhani'),
(1495, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:51:19', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1496, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:51:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1497, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.214.154', '2022-05-30 10:51:37', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1498, 'Meisya Anastasia', 'Facebook Depok', '180.251.176.219', '2022-05-30 10:52:31', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1499, 'Riki', 'Facebook Depok', '180.252.214.154', '2022-05-30 10:58:56', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1500, 'Silvi Agnia ', 'Facebook Depok', '180.251.176.219', '2022-05-30 11:05:53', 'Silvi Agnia  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Infaq Yatim Piatu'),
(1501, 'Okta Viane Berliana', 'Facebook Depok', '120.188.92.196', '2022-05-30 13:31:53', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Okta berliana'),
(1502, 'Riki', 'Facebook Depok', '114.124.246.131', '2022-05-30 13:34:49', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1503, 'Okta Viane Berliana', 'Facebook Depok', '120.188.92.196', '2022-05-30 13:36:36', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet semangat yatim'),
(1504, 'Okta Viane Berliana', 'Facebook Depok', '120.188.92.196', '2022-05-30 13:37:31', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Okta berliana'),
(1505, 'Okta Viane Berliana', 'Facebook Depok', '120.188.92.196', '2022-05-30 13:38:42', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet semangat yatim'),
(1506, 'Resma Febiyanti', 'Facebook Depok', '180.252.214.154', '2022-05-30 14:27:30', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Fitri mulyani  tanggal 30-05-2022'),
(1507, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.214.154', '2022-05-30 14:38:36', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim tanggal 30-05-2022'),
(1508, 'Resma Febiyanti', 'Facebook Depok', '180.252.214.154', '2022-05-30 15:23:14', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1509, 'Resma Febiyanti', 'Facebook Depok', '180.252.214.154', '2022-05-30 15:25:55', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1510, 'Nurmala Sari ', 'Facebook Depok', '182.2.139.94', '2022-05-30 16:33:36', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Pahala Sedekah Yatim Piatu'),
(1511, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.15', '2022-05-30 16:59:27', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(1512, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.15', '2022-05-30 17:01:01', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 30-05-2022'),
(1513, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.15', '2022-05-30 17:01:44', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Cahaya Abelia tanggal 30-05-2022'),
(1514, 'Zahra Maulida', 'Facebook Depok', '115.178.223.149', '2022-05-30 19:58:47', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Berkah Yatim'),
(1515, 'Sri Lestari', 'Facebook Depok', '180.252.214.154', '2022-05-31 09:16:57', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani tanggal 31-05-2022'),
(1516, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.214.154', '2022-05-31 09:17:04', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim tanggal 30-05-2022'),
(1517, 'Linda Indriyani ', 'Facebook Depok', '114.5.213.9', '2022-05-31 09:41:42', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Linda Indriyani '),
(1518, 'Mutmainah', 'Facebook Depok', '180.252.214.154', '2022-05-31 09:57:36', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun Bersama yatim tanggal 31-05-2022'),
(1519, 'Zahra Maulida', 'Facebook Depok', '180.251.180.186', '2022-05-31 10:06:00', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Zahra Maulida'),
(1520, 'Zahra Maulida', 'Facebook Depok', '180.251.180.186', '2022-05-31 10:08:34', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Berkah Yatim'),
(1521, 'Silvi Agnia ', 'Facebook Depok', '180.251.180.186', '2022-05-31 10:09:33', 'Silvi Agnia  Telah Login Halaman Facebook Depok'),
(1522, 'Meisya Anastasia', 'Facebook Depok', '180.251.176.135', '2022-05-31 10:12:48', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1523, 'Meisya Anastasia', 'Facebook Depok', '180.251.176.135', '2022-05-31 10:13:41', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1524, 'Silvi Agnia ', 'Facebook Depok', '180.251.180.186', '2022-05-31 10:14:13', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq yatim piatu'),
(1525, 'Silvi Agnia ', 'Facebook Depok', '180.251.180.186', '2022-05-31 10:17:37', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq yatim piatu'),
(1526, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.214.154', '2022-05-31 10:18:39', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(1527, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.176.135', '2022-05-31 10:19:09', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menginput income akun Dompet Yatim II tanggal 30-05-2022'),
(1528, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.214.154', '2022-05-31 10:19:28', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun regi alfiyansyah tanggal 30-05-2022'),
(1529, 'Silvi Agnia ', 'Facebook Depok', '180.251.180.186', '2022-05-31 10:22:22', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Silvi agnia'),
(1530, 'Riki', 'Facebook Depok', '180.252.214.154', '2022-05-31 10:24:15', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1531, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.214.154', '2022-05-31 10:25:28', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 30-05-2022'),
(1532, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.214.154', '2022-05-31 10:30:32', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(1533, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.176.135', '2022-05-31 10:33:14', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Alfiatul Khoyyiroh'),
(1534, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.214.154', '2022-05-31 10:35:27', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(1535, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.251.176.135', '2022-05-31 10:37:34', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Zakia Nadila '),
(1536, 'Mutmainah', 'Facebook Depok', '180.252.214.154', '2022-05-31 10:38:32', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(1537, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.180.186', '2022-05-31 10:52:55', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1538, 'Siti Amaliah', 'Facebook Depok', '180.251.176.135', '2022-05-31 10:55:28', 'Siti Amaliah Telah Login Halaman Facebook Depok'),
(1539, 'Siti Amaliah', 'Facebook Depok', '180.251.176.135', '2022-05-31 10:57:30', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Siti Amaliah'),
(1540, 'Siti Amaliah', 'Facebook Depok', '180.251.176.135', '2022-05-31 10:59:57', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet keberkahan yatim'),
(1541, 'Omiati', 'Facebook Depok', '180.251.176.135', '2022-05-31 11:00:20', 'Omiati Facebook Depok Telah Logout dari halamannya'),
(1542, 'Omiati', 'Leader Facebook', '180.251.176.135', '2022-05-31 11:00:41', 'Omiati Telah Login Halaman Leader Facebook'),
(1543, 'Siti Amaliah', 'Facebook Depok', '180.251.176.135', '2022-05-31 11:01:32', 'Siti Amaliah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Siti Amaliah'),
(1544, 'Siti Amaliah', 'Facebook Depok', '180.251.176.135', '2022-05-31 11:03:45', 'Siti Amaliah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Siti Amaliah'),
(1545, 'Siti Amaliah', 'Facebook Depok', '180.251.176.135', '2022-05-31 11:04:27', 'Siti Amaliah Facebook Depok Telah Logout dari halamannya'),
(1546, 'Nurmala Sari ', 'Facebook Depok', '180.251.180.186', '2022-05-31 11:06:59', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Nurmala Sari'),
(1547, 'Nurmala Sari ', 'Facebook Depok', '180.251.180.186', '2022-05-31 11:07:30', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Pahala Sedekah Yatim Piatu'),
(1548, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.180.186', '2022-05-31 11:08:54', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1549, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.180.186', '2022-05-31 11:23:20', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1550, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.180.186', '2022-05-31 11:29:17', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1551, 'Yuni Sarah', 'Facebook Depok', '180.251.176.135', '2022-05-31 11:37:34', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1552, 'Yuni Sarah', 'Facebook Depok', '180.251.176.135', '2022-05-31 11:41:02', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Yuni Sarah'),
(1553, 'Yuni Sarah', 'Facebook Depok', '180.251.176.135', '2022-05-31 11:42:57', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Berkah Dompet Yatim'),
(1554, 'Yuni Sarah', 'Facebook Depok', '180.251.176.135', '2022-05-31 11:43:13', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1555, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.214.154', '2022-05-31 12:48:17', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(1556, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.176.135', '2022-05-31 13:08:39', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1557, 'Resma Febiyanti', 'Facebook Depok', '180.252.214.154', '2022-05-31 13:26:35', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1558, 'Resma Febiyanti', 'Facebook Depok', '180.252.214.154', '2022-05-31 13:35:00', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1559, 'Resma Febiyanti', 'Facebook Depok', '180.252.214.154', '2022-05-31 13:41:34', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1560, 'Resma Febiyanti', 'Facebook Depok', '180.252.214.154', '2022-05-31 13:46:16', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1561, 'Resma Febiyanti', 'Facebook Depok', '180.252.214.154', '2022-05-31 13:46:43', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(1562, 'Mutmainah', 'Facebook Depok', '180.252.214.154', '2022-05-31 14:47:30', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun sedekah yatim i tanggal 31-05-2022'),
(1563, 'Mutmainah', 'Facebook Depok', '180.252.214.154', '2022-05-31 14:48:11', 'Mutmainah Divisi Facebook Depok Telah Mengubah income akun Sedekah Yatim I'),
(1564, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.214.154', '2022-05-31 15:16:40', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(1565, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.251.176.135', '2022-05-31 15:25:38', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Kebahagiaan yatim'),
(1566, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.53', '2022-06-01 09:04:29', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(1567, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.53', '2022-06-01 09:10:26', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 31-05-2022'),
(1568, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.53', '2022-06-01 09:10:55', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menghapus Income media sosial dari akun Cahaya Abelia'),
(1569, 'Lutfhi Aditya Rachman', 'Facebook Depok', '116.206.9.53', '2022-06-01 09:14:46', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 30-05-2022'),
(1570, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.87', '2022-06-01 09:40:45', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(1571, 'Nurmala Sari ', 'Facebook Depok', '180.245.47.102', '2022-06-01 09:42:11', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Nurmala Sari'),
(1572, 'Nurmala Sari ', 'Facebook Depok', '180.245.47.102', '2022-06-01 09:42:41', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Pahala Sedekah Yatim Piatu'),
(1573, 'Omiati', 'Leader Facebook', '180.245.47.102', '2022-06-01 09:43:35', 'Omiati Leader Facebook Telah Logout dari halamannya'),
(1574, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.87', '2022-06-01 09:43:38', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Uang Makan dengan deskripsi Uang makan karyawan'),
(1575, 'Omiati', 'Facebook Depok', '180.245.47.102', '2022-06-01 09:43:41', 'Omiati Telah Login Halaman Facebook Depok'),
(1576, 'Omiati', 'Facebook Depok', '180.245.47.102', '2022-06-01 09:45:27', 'Omiati Divisi Facebook Depok Telah Menginput income akun Dompet Peduli Yatim tanggal 01-06-2022'),
(1577, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.90.87', '2022-06-01 09:45:47', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Gaji Karyawan dengan deskripsi Gaji karyawan'),
(1578, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.87', '2022-06-01 09:46:10', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(1579, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:47:03', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(1580, 'Meisya Anastasia', 'Facebook Depok', '180.245.47.102', '2022-06-01 09:47:47', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1581, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:47:51', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1582, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:48:38', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1583, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:49:19', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun regi alfiyansyah'),
(1584, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:49:31', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Yatim II'),
(1585, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:50:41', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Bersama yatim'),
(1586, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:51:30', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Putri Rahmadhani'),
(1587, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:51:43', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun sedekah yatim i'),
(1588, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:52:42', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1589, 'Nurmala Sari ', 'Facebook Depok', '180.245.47.102', '2022-06-01 09:53:38', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Pahala Sedekah Yatim Piatu'),
(1590, 'Nurmala Sari ', 'Facebook Depok', '180.245.47.102', '2022-06-01 09:54:02', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Nurmala Sari'),
(1591, 'Meisya Anastasia', 'Facebook Depok', '180.245.47.102', '2022-06-01 09:55:23', 'Meisya Anastasia Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Infaq Dompet Yatim'),
(1592, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:56:47', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Fitri mulyani '),
(1593, 'Meisya Anastasia', 'Facebook Depok', '180.245.47.102', '2022-06-01 09:56:57', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1594, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:56:59', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(1595, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:57:11', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1596, 'Zahra Maulida', 'Facebook Depok', '180.252.81.200', '2022-06-01 09:57:59', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Zahra Maulida'),
(1597, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:58:48', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membatalkan Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(1598, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:58:55', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membatalkan Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(1599, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:59:13', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1600, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 09:59:20', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1601, 'Meisya Anastasia', 'Facebook Depok', '180.245.47.102', '2022-06-01 09:59:22', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1602, 'Yuni Sarah', 'Facebook Depok', '180.245.47.102', '2022-06-01 10:01:33', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1603, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:02:03', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(1604, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:02:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(1605, 'Zahra Maulida', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:02:45', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Berkah Yatim'),
(1606, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:02:50', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(1607, 'Yuni Sarah', 'Facebook Depok', '180.245.47.102', '2022-06-01 10:03:13', 'Yuni Sarah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yuni Sarah'),
(1608, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:03:14', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(1609, 'Yuni Sarah', 'Facebook Depok', '180.245.47.102', '2022-06-01 10:03:42', 'Yuni Sarah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yuni Sarah'),
(1610, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:04:05', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput income Media Sosial'),
(1611, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:04:55', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah laporan income terbaru'),
(1612, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:05:59', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah laporan income terbaru'),
(1613, 'Yuni Sarah', 'Facebook Depok', '180.245.47.102', '2022-06-01 10:06:16', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Yuni Sarah'),
(1614, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:06:35', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah laporan income terbaru'),
(1615, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:06:46', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1616, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:06:55', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1617, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:07:05', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1618, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:07:21', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1619, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:07:35', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1620, 'Omiati', 'Facebook Depok', '180.245.47.102', '2022-06-01 10:09:11', 'Omiati Facebook Depok Telah Logout dari halamannya'),
(1621, 'Yuni Sarah', 'Facebook Depok', '180.245.47.102', '2022-06-01 10:09:14', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Berkah Dompet Yatim'),
(1622, 'Omiati', 'Leader Facebook', '180.245.47.102', '2022-06-01 10:09:16', 'Omiati Telah Login Halaman Leader Facebook'),
(1623, 'Yuni Sarah', 'Facebook Depok', '180.245.47.102', '2022-06-01 10:09:24', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1624, 'Mutmainah', 'Facebook Depok', '180.252.90.87', '2022-06-01 10:11:40', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(1625, 'Mutmainah', 'Facebook Depok', '180.252.90.87', '2022-06-01 10:12:18', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(1626, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:12:58', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah laporan income terbaru'),
(1627, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:13:22', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah laporan income terbaru'),
(1628, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:13:38', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1629, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:13:44', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Senyuman Yatim Piatu'),
(1630, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-01 10:13:46', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1631, 'Silvi Agnia ', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:14:22', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Silvi agnia'),
(1632, 'Linda Indriyani ', 'Facebook Depok', '180.245.47.102', '2022-06-01 10:14:34', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Linda Indriyani '),
(1633, 'Linda Indriyani ', 'Facebook Depok', '180.245.47.102', '2022-06-01 10:15:49', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Donasi Dompet Yatim'),
(1634, 'Silvi Agnia ', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:17:12', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq yatim piatu'),
(1635, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:18:48', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Alfiatul Khoyyiroh'),
(1636, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:19:41', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1637, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:20:47', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1638, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:20:55', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Senyuman Yatim Piatu'),
(1639, 'Sodru ', 'Facebook Depok', '180.252.90.87', '2022-06-01 10:21:34', 'Sodru  Divisi Facebook Depok Telah Menginput income akun Mari bantu Yatim  tanggal 01-06-2022'),
(1640, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:21:54', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakia Nadila '),
(1641, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:24:05', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Zakia Nadila '),
(1642, 'Silvi Agnia ', 'Facebook Depok', '180.252.81.200', '2022-06-01 10:43:52', 'Silvi Agnia  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Infaq Yatim Piatu'),
(1643, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.87', '2022-06-01 10:57:18', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(1644, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.87', '2022-06-01 11:01:11', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(1645, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.87', '2022-06-01 11:01:27', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(1646, 'Omiati', 'Leader Facebook', '180.245.47.102', '2022-06-01 11:05:47', 'Omiati Leader Facebook Telah Logout dari halamannya'),
(1647, 'Omiati', 'Facebook Depok', '180.245.47.102', '2022-06-01 11:05:52', 'Omiati Telah Login Halaman Facebook Depok'),
(1648, 'Siti Amaliah', 'Facebook Depok', '180.245.47.102', '2022-06-01 11:24:30', 'Siti Amaliah Telah Login Halaman Facebook Depok'),
(1649, 'Siti Amaliah', 'Facebook Depok', '180.245.47.102', '2022-06-01 11:27:28', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Siti Amaliah'),
(1650, 'Siti Amaliah', 'Facebook Depok', '180.245.47.102', '2022-06-01 11:29:21', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet keberkahan yatim'),
(1651, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.245.47.102', '2022-06-01 11:56:12', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Kebahagiaan yatim'),
(1652, 'Riki', 'Facebook Depok', '180.252.90.87', '2022-06-01 13:45:12', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1653, 'Riki', 'Facebook Depok', '180.252.90.87', '2022-06-01 13:51:22', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1654, 'Ezaalfajri', 'Facebook Depok', '180.252.90.87', '2022-06-01 13:52:57', 'Ezaalfajri Divisi Facebook Depok Telah Menginput income akun Meylisa Dwi Anggraheni Puspitasari  tanggal 01-06-2022'),
(1655, 'Riki', 'Facebook Depok', '180.252.90.87', '2022-06-01 13:53:02', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Rezeki Yatim'),
(1656, 'Riki', 'Facebook Depok', '180.252.90.87', '2022-06-01 13:54:22', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(1657, 'Riki', 'Facebook Depok', '180.252.90.87', '2022-06-01 13:55:23', 'Riki Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakat Yatim'),
(1658, 'Riki', 'Facebook Depok', '180.252.90.87', '2022-06-01 13:57:56', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1659, 'Riki', 'Facebook Depok', '180.252.90.87', '2022-06-01 13:59:02', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1660, 'Riki', 'Facebook Depok', '180.252.90.87', '2022-06-01 14:00:02', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Rezeki Yatim'),
(1661, 'Mutmainah', 'Facebook Depok', '180.252.90.87', '2022-06-01 15:42:30', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun Bersama yatim tanggal 01-06-2022'),
(1662, 'Nurmala Sari ', 'Facebook Depok', '114.5.210.28', '2022-06-01 18:59:24', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Nurmala Sari'),
(1663, 'Nurmala Sari ', 'Facebook Depok', '114.5.210.28', '2022-06-01 19:28:45', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Nurmala Sari'),
(1664, 'Riki', 'Facebook Depok', '180.252.90.87', '2022-06-01 21:18:55', 'Riki Divisi Facebook Depok Telah Menginput income akun Zakat Yatim tanggal 01-06-2022'),
(1665, 'Zakia Nadila Seftiani', 'Facebook Depok', '114.4.82.19', '2022-06-01 21:59:52', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakia Nadila '),
(1666, 'Zakia Nadila Seftiani', 'Facebook Depok', '114.4.82.19', '2022-06-01 22:30:07', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakia Nadila '),
(1667, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.90.70', '2022-06-01 22:36:53', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Mengubah laporan harian akun dari Alfiatul Khoyyiroh'),
(1668, 'Sodru ', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:15:21', 'Sodru  Divisi Facebook Depok Telah Menginput income akun Mari bantu Yatim  tanggal 02-06-2022'),
(1669, 'Sodru ', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:31:16', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Mari bantu Yatim '),
(1670, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:33:20', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(1671, 'Nurmala Sari ', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:33:32', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Pahala Sedekah Yatim Piatu'),
(1672, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:35:33', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(1673, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:36:59', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah laporan harian akun dari Infaq Yatim'),
(1674, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:37:45', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Mengubah laporan harian akun dari Senyuman Yatim Piatu'),
(1675, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:40:36', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Sedekah Yatim'),
(1676, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:43:42', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(1677, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:44:08', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah laporan harian akun dari Cahaya Abelia'),
(1678, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:44:20', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah laporan harian akun dari Cahaya Abelia'),
(1679, 'Okta Viane Berliana', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:46:59', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Okta berliana'),
(1680, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:48:01', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Mengubah laporan harian akun dari Cahaya Abelia'),
(1681, 'Okta Viane Berliana', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:48:22', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet semangat yatim'),
(1682, 'Okta Viane Berliana', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:49:23', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Okta berliana'),
(1683, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:50:00', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1684, 'Okta Viane Berliana', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:50:53', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet semangat yatim'),
(1685, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:51:36', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1686, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:52:15', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Senyuman Yatim Piatu'),
(1687, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:52:35', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Senyuman Yatim Piatu'),
(1688, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.177.120', '2022-06-02 09:53:50', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Senyuman Yatim Piatu'),
(1689, 'Sodru ', 'Facebook Depok', '180.252.90.87', '2022-06-02 09:54:19', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(1690, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:00:12', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Senyuman Yatim Piatu'),
(1691, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:00:31', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(1692, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:02:20', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1693, 'Riki', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:03:51', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1694, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:04:31', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Senyuman Yatim Piatu'),
(1695, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:04:57', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Mengubah laporan harian akun dari Senyuman Yatim Piatu'),
(1696, 'Linda Indriyani ', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:06:20', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Linda Indriyani '),
(1697, 'Linda Indriyani ', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:08:05', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Donasi Dompet Yatim'),
(1698, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:08:06', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1699, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:09:30', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Mengubah laporan harian akun dari Senyuman Yatim Piatu'),
(1700, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:09:37', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(1701, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:10:00', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1702, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:10:30', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1703, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:12:19', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1704, 'Mutmainah', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:13:45', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(1705, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:14:07', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1706, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:14:45', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1707, 'Sri Lestari', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:14:46', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(1708, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:14:53', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1709, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:16:59', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1710, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:17:31', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1711, 'Zahra Maulida', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:17:51', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Berkah Yatim'),
(1712, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:18:17', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari regi alfiyansyah'),
(1713, 'Zahra Maulida', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:21:11', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Zahra Maulida'),
(1714, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:21:52', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1715, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:25:32', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1719, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-02 10:32:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Meylisa Dwi Anggraheni Puspitasari '),
(1720, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-02 10:33:08', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Peduli Yatim'),
(1721, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-02 10:33:35', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Bersama yatim'),
(1722, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:33:38', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1723, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-02 10:33:42', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zakat Yatim');
INSERT INTO `2022_log_aktivity` (`id`, `nama`, `posisi`, `ip`, `tanggal`, `aktivitas`) VALUES
(1724, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-02 10:33:48', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Mari bantu Yatim '),
(1725, 'Meisya Anastasia', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:33:55', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1726, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:34:00', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1727, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-02 10:34:02', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1728, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.90.87', '2022-06-02 10:34:11', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1729, 'Meisya Anastasia', 'Facebook Depok', '180.251.177.120', '2022-06-02 10:36:00', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1730, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:36:26', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1731, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:40:50', 'Resma Febiyanti Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Yatim piatu amanah i'),
(1732, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:41:56', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1733, 'Mutmainah', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:41:58', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(1734, 'Riki Subagja', 'Ketua Yayasan', '180.252.172.110', '2022-06-02 10:41:59', 'Riki Subagja Ketua Yayasan Telah Logout dari halamannya'),
(1735, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:42:52', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1736, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:44:54', 'Resma Febiyanti Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Fitri mulyani '),
(1737, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:45:58', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1738, 'Sri Lestari', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:46:36', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(1739, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:47:24', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1740, 'Sezha Octaviana', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:49:11', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(1741, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:52:07', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1742, 'Sezha Octaviana', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:52:18', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(1743, 'Nurmala Sari ', 'Facebook Depok', '180.252.92.192', '2022-06-02 10:52:21', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Nurmala Sari'),
(1744, 'Sezha Octaviana', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:53:27', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(1745, 'Nurmala Sari ', 'Facebook Depok', '180.252.92.192', '2022-06-02 10:53:36', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Pahala Sedekah Yatim Piatu'),
(1746, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:54:20', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1747, 'Sezha Octaviana', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:55:14', 'Sezha Octaviana Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Kholid Fatullah'),
(1748, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:55:16', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1749, 'Sezha Octaviana', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:56:25', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(1750, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:56:46', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1751, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 10:59:49', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1752, 'Sezha Octaviana', 'Facebook Depok', '180.252.90.87', '2022-06-02 11:00:13', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(1753, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 11:01:46', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1754, 'Sezha Octaviana', 'Facebook Depok', '180.252.90.87', '2022-06-02 11:01:55', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(1755, 'Yuni Sarah', 'Facebook Depok', '180.252.92.192', '2022-06-02 11:02:46', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1756, 'Omiati', 'Facebook Depok', '180.251.177.120', '2022-06-02 11:03:05', 'Omiati Telah Login Halaman Facebook Depok'),
(1757, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 11:03:36', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1758, 'Yuni Sarah', 'Facebook Depok', '180.252.92.192', '2022-06-02 11:04:04', 'Yuni Sarah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yuni Sarah'),
(1759, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.92.192', '2022-06-02 11:05:48', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Zakia Nadila '),
(1760, 'Yuni Sarah', 'Facebook Depok', '180.252.92.192', '2022-06-02 11:06:19', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Yuni Sarah'),
(1761, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.90.87', '2022-06-02 11:06:46', 'Anita Sri Wulandari Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Dompet Amanah'),
(1762, 'Omiati', 'Facebook Depok', '180.252.92.192', '2022-06-02 11:06:53', 'Omiati Facebook Depok Telah Logout dari halamannya'),
(1763, 'Omiati', 'Leader Facebook', '180.252.92.192', '2022-06-02 11:06:58', 'Omiati Telah Login Halaman Leader Facebook'),
(1764, 'Yuni Sarah', 'Facebook Depok', '180.252.92.192', '2022-06-02 11:08:30', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Berkah Dompet Yatim'),
(1765, 'Yuni Sarah', 'Facebook Depok', '180.252.92.192', '2022-06-02 11:08:46', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1766, 'Siti Amaliah', 'Facebook Depok', '180.252.92.192', '2022-06-02 11:13:23', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Siti Amaliah'),
(1767, 'Resma Febiyanti', 'Facebook Depok', '180.252.90.87', '2022-06-02 11:14:42', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1768, 'Siti Amaliah', 'Facebook Depok', '180.252.92.192', '2022-06-02 11:25:04', 'Siti Amaliah Facebook Depok Telah Logout dari halamannya'),
(1769, 'Ezaalfajri', 'Facebook Depok', '180.252.90.87', '2022-06-02 11:42:10', 'Ezaalfajri Divisi Facebook Depok Telah Melaporkan harian akun dari Meylisa Dwi Anggraheni Puspitasari '),
(1770, 'Sri Lestari', 'Facebook Depok', '180.252.90.87', '2022-06-02 11:54:04', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani tanggal 02-06-2022'),
(1771, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.92.192', '2022-06-02 13:08:55', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Kebahagiaan yatim'),
(1772, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.90.87', '2022-06-02 13:35:40', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Menginput income akun Infaq Yatim tanggal 02-06-2022'),
(1773, 'Meisya Anastasia', 'Facebook Depok', '180.252.92.192', '2022-06-02 14:25:34', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim Amanah'),
(1774, 'Meisya Anastasia', 'Facebook Depok', '180.252.92.192', '2022-06-02 14:27:58', 'Meisya Anastasia Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim Amanah'),
(1775, 'Okta Viane Berliana', 'Facebook Depok', '180.251.177.120', '2022-06-02 14:40:16', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Okta berliana'),
(1776, 'Okta Viane Berliana', 'Facebook Depok', '180.251.177.120', '2022-06-02 14:48:07', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet semangat yatim'),
(1777, 'Sri Lestari', 'Facebook Depok', '114.4.83.182', '2022-06-02 15:10:37', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani tanggal 02-06-2022'),
(1778, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:06:59', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Mari bantu Yatim '),
(1779, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:07:22', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Putri Rahmadhani'),
(1780, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:07:30', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Infaq Yatim'),
(1781, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:09:20', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Putri Rahmadhani'),
(1782, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:09:33', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1783, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:09:40', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1784, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.81.124', '2022-06-02 16:13:06', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 02-06-2022'),
(1785, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:13:23', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Program Kesehatan Yatim dengan perencanaan kesehatan yatim bogor'),
(1786, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:15:03', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Program Santunan Yatim dengan perencanaan santunan mingguan bogor dan tajur halang'),
(1787, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:16:22', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Program Pendidikan Yatim dengan perencanaan pendidikan yatim bogor dan tajur halang'),
(1788, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:18:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Logistik Gedung DYPA'),
(1789, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:18:56', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah Anggaran Logistik Gedung DYPA'),
(1790, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:20:17', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Logistik Gedung DYPA'),
(1791, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:20:47', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Logistik Gedung DYPA'),
(1792, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:21:55', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Logistik Gedung DYPA'),
(1793, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.81.124', '2022-06-02 16:22:38', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengubah Anggaran Logistik Gedung DYPA'),
(1794, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.177.120', '2022-06-02 16:38:00', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Alfiatul Khoyyiroh'),
(1795, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.251.177.120', '2022-06-02 16:39:52', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Senyuman Yatim Piatu'),
(1796, 'Nurmala Sari ', 'Facebook Depok', '180.252.92.192', '2022-06-02 17:03:00', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Nurmala Sari'),
(1797, 'Sodru ', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:15:31', 'Sodru  Divisi Facebook Depok Telah Menginput income akun Mari bantu Yatim  tanggal 03-06-2022'),
(1798, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:26:37', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Melaporkan harian akun dari Farhan Fikri Fadillah'),
(1799, 'Mutmainah', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:26:59', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun Bersama yatim tanggal 02-06-2022'),
(1800, 'Sri Lestari', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:27:57', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Putri Rahmadhani tanggal 03-06-2022'),
(1801, 'Sodru ', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:32:09', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Mari bantu Yatim '),
(1802, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:33:08', 'Resma Febiyanti Divisi Facebook Depok Telah Menginput income akun Yatim piatu amanah i tanggal 03-06-2022'),
(1803, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:33:28', 'Resma Febiyanti Divisi Facebook Depok Telah Menghapus Income media sosial dari akun Yatim piatu amanah i'),
(1804, 'Sodru ', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:34:21', 'Sodru  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Berbagi Yatim'),
(1805, 'Sezha Octaviana', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:34:59', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Kholid Fatullah'),
(1806, 'Sezha Octaviana', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:38:28', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(1807, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:38:39', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(1808, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:39:08', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(1809, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:39:35', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(1810, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:39:54', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(1811, 'Haidar Sultan', 'Leader Facebook', '180.252.80.236', '2022-06-03 09:40:18', 'Haidar Sultan Leader Facebook Telah Logout dari halamannya'),
(1812, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:40:21', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(1813, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:40:46', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(1814, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:41:05', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(1815, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:41:23', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(1816, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:41:43', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(1817, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:41:54', 'Lutfhi Aditya Rachman Telah Login Halaman Facebook Depok'),
(1818, 'Sezha Octaviana', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:41:56', 'Sezha Octaviana Divisi Facebook Depok Telah Melaporkan harian akun dari Keberkahan Yatim'),
(1819, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:42:04', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yatim Piatu Amanah I'),
(1820, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:43:15', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Yatim'),
(1821, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:44:03', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1822, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:45:37', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Fitri mulyani '),
(1823, 'Lutfhi Aditya Rachman', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:45:43', 'Lutfhi Aditya Rachman Divisi Facebook Depok Telah Melaporkan harian akun dari Cahaya Abelia'),
(1824, 'Sri Lestari', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:46:53', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Putri Rahmadhani'),
(1825, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:47:21', 'Resma Febiyanti Divisi Facebook Depok Telah Mengubah laporan harian akun dari Fitri Mulyani '),
(1826, 'Sezha Octaviana', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:48:17', 'Sezha Octaviana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Keberkahan Yatim'),
(1827, 'Sodru ', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:49:03', 'Sodru  Divisi Facebook Depok Telah Melaporkan harian akun dari Berbagi yatim'),
(1828, 'Resma Febiyanti', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:51:47', 'Resma Febiyanti Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu amanah i'),
(1829, 'Zahra Maulida', 'Facebook Depok', '180.252.88.193', '2022-06-03 09:53:18', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Zahra Maulida'),
(1830, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.80.236', '2022-06-03 09:53:55', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Kesehatan Yatim dengan perencanaan kesehatan yatim bogor'),
(1831, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:53:57', 'Anita Sri Wulandari Telah Login Halaman Facebook Depok'),
(1832, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.80.236', '2022-06-03 09:54:12', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Santunan Yatim dengan perencanaan santunan mingguan bogor dan tajur halang'),
(1833, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.80.236', '2022-06-03 09:54:26', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Pendidikan Yatim dengan perencanaan pendidikan yatim bogor dan tajur halang'),
(1834, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.80.236', '2022-06-03 09:55:16', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan Logistik Krediting bogor dan tajur halang'),
(1835, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.80.236', '2022-06-03 09:55:16', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan Logistik Krediting bogor dan tajur halang'),
(1836, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.80.236', '2022-06-03 09:56:09', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan Logistik Kebutuhan Yayasan Bogor Dan Tajur Halang'),
(1837, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.80.236', '2022-06-03 09:56:19', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan logistik kebersihan tajur halang'),
(1838, 'Vicky Abdul Rohman', 'Management Keuangan', '180.252.80.236', '2022-06-03 09:56:32', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan logistik konsumtif bogor dan tajur halang'),
(1839, 'Zahra Maulida', 'Facebook Depok', '180.252.88.193', '2022-06-03 09:57:07', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Berkah Yatim'),
(1840, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.80.236', '2022-06-03 09:57:54', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun regi alfiyansyah tanggal 02-06-2022'),
(1841, 'Mutmainah', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:01:18', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun sedekah yatim i tanggal 03-06-2022'),
(1842, 'Zahra Maulida', 'Facebook Depok', '180.252.88.193', '2022-06-03 10:02:45', 'Zahra Maulida Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zahra Maulida'),
(1843, 'Linda Indriyani ', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:03:13', 'Linda Indriyani  Divisi Facebook Depok Telah Melaporkan harian akun dari Donasi Dompet Yatim'),
(1844, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:03:52', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim II'),
(1845, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:04:08', 'Anita Sri Wulandari Divisi Facebook Depok Telah Menginput income akun Yatim piatu dompet amanah tanggal 02-06-2022'),
(1846, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:04:58', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1847, 'Mutmainah', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:08:33', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari sedekah yatim i'),
(1848, 'Sri Lestari', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:09:56', 'Sri Lestari Divisi Facebook Depok Telah Melaporkan harian akun dari Gerbang Sedekah Yatim'),
(1849, 'Mutmainah', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:10:40', 'Mutmainah Divisi Facebook Depok Telah Melaporkan harian akun dari Bersama yatim'),
(1850, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 10:24:26', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1851, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 10:24:47', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Bersama yatim'),
(1852, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 10:25:12', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Putri Rahmadhani'),
(1853, 'Dedi Makarim Manaf', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:29:07', 'Dedi Makarim Manaf Divisi Facebook Depok Telah Menginput income akun Sedekah Yatim tanggal 03-06-2022'),
(1854, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 10:32:19', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membatalkan Income Harian Media Sosial dengan nama akun Mari bantu Yatim '),
(1855, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 10:33:16', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu dompet amanah'),
(1856, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 10:33:25', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun regi alfiyansyah'),
(1857, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 10:33:33', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Yatim piatu amanah i'),
(1858, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 10:33:41', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun sedekah yatim i'),
(1859, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 10:34:34', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1860, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 10:34:40', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1861, 'Haidar Sultan', 'Leader Facebook', '180.252.80.236', '2022-06-03 10:36:33', 'Haidar Sultan Telah Login Halaman Leader Facebook'),
(1862, 'Sri Lestari', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:37:32', 'Sri Lestari Divisi Facebook Depok Telah Menginput income akun Gerbang Sedekah Yatim tanggal 03-06-2022'),
(1863, 'Ezaalfajri', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:38:49', 'Ezaalfajri Divisi Facebook Depok Telah Menginput income akun Meylisa Dwi Anggraheni Puspitasari  tanggal 03-06-2022'),
(1864, 'Nurmala Sari ', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:40:36', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Nurmala Sari'),
(1865, 'Nurmala Sari ', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:44:01', 'Nurmala Sari  Divisi Facebook Depok Telah Melaporkan harian akun dari Pahala Sedekah Yatim Piatu'),
(1866, 'Meisya Anastasia', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:50:41', 'Meisya Anastasia Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq Dompet Yatim'),
(1867, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:51:34', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Alfiatul Khoyyiroh'),
(1868, 'Silvi Agnia ', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:52:09', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq yatim piatu'),
(1869, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:52:26', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Yatim'),
(1870, 'Riki', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:53:07', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Zakat Yatim'),
(1871, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:54:32', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Dompet Yatim'),
(1872, 'Riki', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:55:20', 'Riki Telah Membuat Akun media sosial dengan nama akun Donasi Peduli Yatim'),
(1873, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:55:46', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1874, 'Silvi Agnia ', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:55:57', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Silvi agnia'),
(1875, 'Nurmala Sari ', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:56:38', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Nurmala Sari'),
(1876, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:56:39', 'Zahra Maulida Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Dompet Berkah Yatim'),
(1877, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:56:40', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1878, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:56:52', 'Zahra Maulida Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun '),
(1879, 'Nurmala Sari ', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:57:05', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Nurmala Sari'),
(1880, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:57:08', 'Zahra Maulida Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Zahra Maulida'),
(1881, 'Siti Amaliah', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:57:15', 'Siti Amaliah Telah Login Halaman Facebook Depok'),
(1882, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:57:56', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1883, 'Riki', 'Facebook Depok', '180.252.80.236', '2022-06-03 10:57:59', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Donasi Peduli Yatim'),
(1884, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:58:57', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1885, 'Silvi Agnia ', 'Facebook Depok', '180.252.217.91', '2022-06-03 10:59:41', 'Silvi Agnia  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Infaq Yatim Piatu'),
(1886, 'Linda Indriyani ', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:01:04', 'Linda Indriyani  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Donasi Dompet Yatim'),
(1887, 'Okta Viane Berliana', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:01:36', 'Okta Viane Berliana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Okta Berliana'),
(1888, 'Linda Indriyani ', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:01:39', 'Linda Indriyani  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Donasi Dompet Yatim'),
(1889, 'Ezaalfajri', 'Facebook Depok', '180.252.80.236', '2022-06-03 11:02:52', 'Ezaalfajri Divisi Facebook Depok Telah Menginput income akun Zaeni Mucthar tanggal 03-06-2022'),
(1890, 'Okta Viane Berliana', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:03:01', 'Okta Viane Berliana Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Semangat Yatim'),
(1891, 'Yuni Sarah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:03:58', 'Yuni Sarah Telah Login Halaman Facebook Depok'),
(1892, 'Riki', 'Facebook Depok', '180.252.80.236', '2022-06-03 11:04:05', 'Riki Divisi Facebook Depok Telah Melaporkan harian akun dari Donasi Peduli Yatim'),
(1893, 'Okta Viane Berliana', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:04:06', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Okta berliana'),
(1894, 'Okta Viane Berliana', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:05:19', 'Okta Viane Berliana Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet semangat yatim'),
(1895, 'Yuni Sarah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:05:19', 'Yuni Sarah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Berkah Dompet Yatim'),
(1896, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:05:51', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1897, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:06:40', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim'),
(1898, 'Yuni Sarah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:06:52', 'Yuni Sarah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Yuni Sarah'),
(1899, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:07:03', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Melaporkan harian akun dari Zakia Nadila '),
(1900, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:07:36', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1901, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:08:22', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Yatim II'),
(1902, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:08:31', 'Zahra Maulida Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun '),
(1903, 'Silvi Agnia ', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:09:25', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Infaq yatim piatu'),
(1904, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:09:36', 'Zahra Maulida Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Dompet Berkah Yatim'),
(1905, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:09:50', 'Zahra Maulida Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Zahra Maulida'),
(1906, 'Yuni Sarah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:09:56', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Yuni Sarah'),
(1907, 'Nurmala Sari ', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:10:37', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Pahala Sedekah Yatim Piatu'),
(1908, 'Silvi Agnia ', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:11:14', 'Silvi Agnia  Divisi Facebook Depok Telah Melaporkan harian akun dari Silvi agnia'),
(1909, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:11:43', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Zahra Maulida'),
(1910, 'Silvi Agnia ', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:11:54', 'Silvi Agnia  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Silvi Agnia'),
(1911, 'Yuni Sarah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:12:19', 'Yuni Sarah Divisi Facebook Depok Telah Melaporkan harian akun dari Berkah Dompet Yatim'),
(1912, 'Nurmala Sari ', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:12:27', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Pahala Sedekah Yatim Piatu'),
(1913, 'Yuni Sarah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:12:40', 'Yuni Sarah Facebook Depok Telah Logout dari halamannya'),
(1914, 'Silvi Agnia ', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:13:04', 'Silvi Agnia  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Infaq Yatim Piatu'),
(1915, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:13:47', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Zahra Maulida'),
(1916, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:13:56', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Mengubah laporan harian akun dari Senyuman Yatim Piatu'),
(1917, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:14:59', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Mengubah laporan harian akun dari Alfiatul Khoyyiroh'),
(1918, 'Siti Amaliah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:15:13', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Siti Amaliah'),
(1919, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:15:37', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Mengubah laporan harian akun dari Alfiatul Khoyyiroh'),
(1920, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:16:07', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Mengubah laporan harian akun dari Alfiatul Khoyyiroh'),
(1921, 'Alfiatul Khoyyiroh', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:17:32', 'Alfiatul Khoyyiroh Divisi Facebook Depok Telah Melaporkan harian akun dari Senyuman Yatim Piatu'),
(1922, 'Siti Amaliah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:21:08', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet keberkahan yatim'),
(1923, 'Siti Amaliah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:22:06', 'Siti Amaliah Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet keberkahan yatim'),
(1924, 'Siti Amaliah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:23:45', 'Siti Amaliah Divisi Facebook Depok Telah Mengubah laporan harian akun dari Siti Amaliah'),
(1925, 'Siti Amaliah', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:24:09', 'Siti Amaliah Facebook Depok Telah Logout dari halamannya'),
(1926, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:26:48', 'Zahra Maulida Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zahra Maulida'),
(1927, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:27:23', 'Zahra Maulida Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zahra Maulida'),
(1928, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:30:03', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Berkah Yatim'),
(1929, 'Anita Sri Wulandari', 'Facebook Depok', '180.252.80.236', '2022-06-03 11:34:06', 'Anita Sri Wulandari Divisi Facebook Depok Telah Melaporkan harian akun dari Yatim piatu dompet amanah'),
(1930, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:42:15', 'Zahra Maulida Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Dompet Berkah Yatim'),
(1931, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:43:50', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Berkah Yatim'),
(1932, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:44:05', 'Zahra Maulida Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Zahra Maulida'),
(1933, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:44:19', 'Zahra Maulida Divisi Facebook Depok Telah Menghapus laporan harian media sosial dari akun Zahra Maulida'),
(1934, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:46:00', 'Zahra Maulida Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Berkah Yatim'),
(1935, 'Nurmala Sari ', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:49:42', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Nurmala Sari'),
(1936, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:49:56', 'Zahra Maulida Divisi Facebook Depok Telah Mengubah laporan harian akun dari Dompet Berkah Yatim'),
(1937, 'Zahra Maulida', 'Facebook Depok', '180.252.217.91', '2022-06-03 11:50:40', 'Zahra Maulida Divisi Facebook Depok Telah Melaporkan harian akun dari Dompet Berkah Yatim'),
(1938, 'Zakia Nadila Seftiani', 'Facebook Depok', '180.252.88.193', '2022-06-03 13:08:36', 'Zakia Nadila Seftiani Divisi Facebook Depok Telah Mengubah laporan harian akun dari Zakia Nadila '),
(1939, 'Meisya Anastasia', 'Facebook Depok', '110.136.83.136', '2022-06-03 13:18:17', 'Meisya Anastasia Divisi Facebook Depok Telah Menginput income akun Dompet Yatim Amanah tanggal 03-06-2022'),
(1940, 'MUHAMMAD NAZAR YANA', 'Facebook Depok', '180.252.88.193', '2022-06-03 13:20:34', 'MUHAMMAD NAZAR YANA Divisi Facebook Depok Telah Menginput income akun Dompet Yatim II tanggal 03-06-2022'),
(1941, 'Riki', 'Facebook Depok', '180.252.80.236', '2022-06-03 13:21:23', 'Riki Divisi Facebook Depok Telah Menginput income akun Zakat Yatim tanggal 03-06-2022'),
(1942, 'Mutmainah', 'Facebook Depok', '180.252.80.236', '2022-06-03 13:22:42', 'Mutmainah Divisi Facebook Depok Telah Menginput income akun Bersama yatim tanggal 03-06-2022'),
(1943, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 13:29:51', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Meylisa Dwi Anggraheni Puspitasari '),
(1944, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 13:30:12', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Yatim Amanah'),
(1945, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 13:31:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zaeni Mucthar'),
(1946, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 13:31:49', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Sedekah Yatim'),
(1947, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 13:32:11', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Gerbang Sedekah Yatim'),
(1948, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 13:32:25', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Dompet Yatim II'),
(1949, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 13:32:40', 'Fadhila Amelia Putri Divisi Kepala Income Telah Mengkonfirmasi Income Harian Media Sosial dengan nama akun Zakat Yatim'),
(1950, 'Fadhila Amelia Putri', 'Kepala Income', '180.252.80.236', '2022-06-03 13:34:34', 'Fadhila Amelia Putri Divisi Kepala Income Telah mengirimkan Income Harian Media Sosial tanggal '),
(1951, 'Nurmala Sari ', 'Facebook Depok', '110.136.83.136', '2022-06-03 13:44:30', 'Nurmala Sari  Divisi Facebook Depok Telah Mengubah laporan harian akun dari Nurmala Sari'),
(1952, 'Omiati', 'Leader Facebook', '127.0.0.1', '2022-06-03 14:43:15', 'Omiati Leader Facebook Telah Logout dari halamannya'),
(1953, 'Haidar Sultan', 'Leader Facebook', '127.0.0.1', '2022-06-03 14:43:21', 'Haidar Sultan Telah Login Halaman Leader Facebook'),
(1954, 'Haidar Sultan', 'Leader Facebook', '127.0.0.1', '2022-06-03 14:44:04', 'Haidar Sultan Leader Facebook Telah Logout dari halamannya'),
(1955, 'Omiati', 'Leader Facebook', '127.0.0.1', '2022-06-03 14:44:12', 'Omiati Telah Login Halaman Leader Facebook'),
(1956, 'Omiati', 'Leader Facebook', '127.0.0.1', '2022-06-03 16:08:56', 'Omiati Leader Facebook Telah Logout dari halamannya'),
(1957, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-06-03 16:09:00', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(1958, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-06-03 16:22:19', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(1959, 'Haidar Sultan', 'Leader Facebook', '127.0.0.1', '2022-06-03 16:22:53', 'Haidar Sultan Telah Login Halaman Leader Facebook'),
(1960, 'Haidar Sultan', 'Leader Facebook', '127.0.0.1', '2022-06-04 09:57:27', 'Haidar Sultan Telah Login Halaman Leader Facebook'),
(1961, 'Haidar Sultan', 'Leader Facebook', '127.0.0.1', '2022-06-04 11:13:30', 'Haidar Sultan Leader Facebook Telah Logout dari halamannya'),
(1962, 'Sodru ', 'Facebook Depok', '127.0.0.1', '2022-06-04 11:22:08', 'Sodru  Telah Login Halaman Facebook Depok'),
(1963, 'Sodru ', 'Facebook Depok', '127.0.0.1', '2022-06-04 11:25:02', 'Sodru  Facebook Depok Telah Logout dari halamannya'),
(1964, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-06-04 11:25:09', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(1965, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-06-04 11:25:51', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(1966, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-06-04 11:25:55', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(1967, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-06-04 11:26:13', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(1968, 'Riki Subagja', 'Ketua Yayasan', '127.0.0.1', '2022-06-04 11:26:17', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1969, 'Riki Subagja', 'Ketua Yayasan', '127.0.0.1', '2022-06-04 11:26:27', 'Riki Subagja Ketua Yayasan Telah Logout dari halamannya'),
(1970, 'Riki Subagja', 'Ketua Yayasan', '127.0.0.1', '2022-06-04 11:26:49', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1971, 'Riki Subagja', 'Ketua Yayasan', '127.0.0.1', '2022-06-04 11:27:57', 'Riki Subagja Ketua Yayasan Telah Logout dari halamannya'),
(1972, 'Haidar Sultan', 'Leader Facebook', '127.0.0.1', '2022-06-04 11:28:02', 'Haidar Sultan Telah Login Halaman Leader Facebook'),
(1973, 'Haidar Sultan', 'Leader Facebook', '127.0.0.1', '2022-06-04 11:28:11', 'Haidar Sultan Leader Facebook Telah Logout dari halamannya'),
(1974, 'Haidar Sultan', 'Leader Facebook', '127.0.0.1', '2022-06-04 11:28:29', 'Haidar Sultan Telah Login Halaman Leader Facebook'),
(1975, 'Haidar Sultan', 'Leader Facebook', '127.0.0.1', '2022-06-04 11:28:50', 'Haidar Sultan Leader Facebook Telah Logout dari halamannya'),
(1976, 'Sodru ', 'Facebook Depok', '127.0.0.1', '2022-06-04 11:28:53', 'Sodru  Telah Login Halaman Facebook Depok'),
(1977, 'Riki Subagja', 'Ketua Yayasan', '127.0.0.1', '2022-06-06 10:20:55', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1978, 'Riki Subagja', 'Ketua Yayasan', '127.0.0.1', '2022-06-06 10:21:08', 'Riki Subagja Ketua Yayasan Telah Logout dari halamannya'),
(1979, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-06-06 10:21:12', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(1980, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-06-06 10:21:26', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(1981, 'Sodru ', 'Facebook Depok', '127.0.0.1', '2022-06-06 10:21:37', 'Sodru  Telah Login Halaman Facebook Depok'),
(1982, 'Sodru ', 'Facebook Depok', '127.0.0.1', '2022-06-06 10:21:41', 'Sodru  Facebook Depok Telah Logout dari halamannya'),
(1983, 'M Rizky Amin', 'Admin Website', '127.0.0.1', '2022-06-14 11:13:38', 'M Rizky Amin Telah Login Halaman Admin Website'),
(1984, 'M Rizky Amin', 'Admin Website', '127.0.0.1', '2022-06-15 10:19:51', 'M Rizky Amin Telah Login Halaman Admin Website'),
(1985, 'Riki Subagja', 'Ketua Yayasan', '127.0.0.1', '2022-06-22 14:17:36', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(1986, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-02 11:03:19', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(1987, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 09:25:27', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(1988, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 10:55:20', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Program Pendidikan Yatim dengan perencanaan pendidikan belajar mengajar'),
(1989, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 10:57:38', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(1990, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 10:57:45', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(1991, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 10:58:37', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(1992, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-04 10:58:43', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(1993, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-04 10:58:57', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Program Pendidikan Yatim dengan perencanaan fjdaksfjkls'),
(1994, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-04 10:59:01', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(1995, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 10:59:06', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(1996, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 10:59:11', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Pendidikan Yatim dengan perencanaan pendidikan belajar mengajar'),
(1997, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 10:59:13', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Pendidikan Yatim dengan perencanaan fjdaksfjkls'),
(1998, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 10:59:45', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(1999, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 10:59:55', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2000, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 11:14:12', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Program Pendidikan Yatim '),
(2001, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 11:14:51', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2002, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-04 11:14:55', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(2003, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-04 11:15:21', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Program Pendidikan Yatim '),
(2004, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-04 11:15:25', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(2005, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 11:15:30', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(2006, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 13:32:13', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Pendidikan Yatim dengan deskripsi laporan belajr mengajar'),
(2007, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 13:32:34', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Pendidikan Yatim dengan deskripsi jfdsakfjdlks');
INSERT INTO `2022_log_aktivity` (`id`, `nama`, `posisi`, `ip`, `tanggal`, `aktivitas`) VALUES
(2008, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 13:42:35', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(2009, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 13:42:41', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2010, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 15:41:18', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Program Kesehatan Yatim dengan perencanaan kesehatan yatim'),
(2011, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 15:41:32', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Program Santunan Yatim dengan perencanaan santunan yatim'),
(2012, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 15:41:35', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2013, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 15:42:42', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(2014, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 15:42:50', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Santunan Yatim dengan perencanaan santunan yatim'),
(2015, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 15:42:52', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Kesehatan Yatim dengan perencanaan kesehatan yatim'),
(2016, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 15:43:18', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(2017, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 15:43:33', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2018, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 16:07:39', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Program Santunan Yatim '),
(2019, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 16:08:22', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Program Kesehatan Yatim '),
(2020, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 16:10:12', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2021, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 16:10:16', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(2022, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 16:10:20', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Santunan Yatim dengan deskripsi laporan santunan'),
(2023, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 16:10:22', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Kesehatan Yatim dengan deskripsi laporan kesehatan'),
(2024, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-04 16:10:24', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(2025, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-04 16:10:31', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2026, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 10:05:40', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2027, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 10:15:37', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2028, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 10:15:40', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(2029, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 10:17:57', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(2030, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 10:18:05', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2031, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:07:12', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2032, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:07:18', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(2033, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:20:57', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Program Pendidikan Yatim dengan perencanaan pengajuan pendidikan'),
(2034, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:21:15', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Program Kesehatan Yatim dengan perencanaan pengajuan kesehatan'),
(2035, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:21:31', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Program Santunan Yatim dengan perencanaan pengajuan santunan bulanan '),
(2036, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:21:41', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(2037, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:21:53', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2038, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:22:16', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Program Pendidikan Yatim dengan perencanaan pengajuan pendidikan '),
(2039, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:22:29', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Program Kesehatan Yatim dengan perencanaan pengajuan kesehatan'),
(2040, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:22:41', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Program Santunan Yatim dengan perencanaan pengajuan santunan bulanan'),
(2041, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:22:53', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2042, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:22:57', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(2043, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:23:02', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Kesehatan Yatim dengan perencanaan pengajuan kesehatan'),
(2044, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:23:04', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Pendidikan Yatim dengan perencanaan pengajuan pendidikan'),
(2045, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:23:05', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Santunan Yatim dengan perencanaan pengajuan santunan bulanan '),
(2046, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:23:07', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Pendidikan Yatim dengan perencanaan pengajuan pendidikan '),
(2047, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:23:08', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Kesehatan Yatim dengan perencanaan pengajuan kesehatan'),
(2048, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:23:09', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Program Santunan Yatim dengan perencanaan pengajuan santunan bulanan'),
(2049, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:23:12', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(2050, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:23:44', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(2051, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:24:06', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Program Kesehatan Yatim '),
(2052, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:24:31', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Program Pendidikan Yatim '),
(2053, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:25:01', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Program Santunan Yatim '),
(2054, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:25:04', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(2055, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:25:12', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2056, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:25:31', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Program Pendidikan Yatim '),
(2057, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:25:46', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Program Kesehatan Yatim '),
(2058, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:26:13', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Program Santunan Yatim '),
(2059, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:26:27', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2060, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:26:31', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(2061, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:26:36', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Kesehatan Yatim dengan deskripsi laporan program kesehatan'),
(2062, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:26:37', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Pendidikan Yatim dengan deskripsi laporan pendidikan'),
(2063, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:26:38', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Santunan Yatim dengan deskripsi laporan santunan bulanan '),
(2064, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:26:40', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Pendidikan Yatim dengan deskripsi laporan pendidikan '),
(2065, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:26:42', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Kesehatan Yatim dengan deskripsi laporan kesehatan'),
(2066, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:26:43', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Program Santunan Yatim dengan deskripsi laporan santunan '),
(2067, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:26:58', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(2068, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:27:02', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(2069, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 11:50:53', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(2070, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:50:58', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2071, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:51:05', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2072, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:51:08', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(2073, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 11:54:37', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(2074, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 11:54:42', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2075, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 13:29:34', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Logistik Gedung DYPA'),
(2076, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 13:29:50', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Logistik Gedung DYPA'),
(2077, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 13:30:31', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2078, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 13:30:37', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(2079, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 13:31:00', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Logistik Gedung DYPA'),
(2080, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 13:31:21', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Logistik Gedung DYPA'),
(2081, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 13:31:23', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(2082, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 13:31:28', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(2083, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 13:32:02', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan logistik konsumtif'),
(2084, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 13:32:04', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan logistik bogor'),
(2085, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 13:32:06', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan pengajuan logistik non konsumtif'),
(2086, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 13:32:07', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran  dengan perencanaan pengajuan logistik konsumtif'),
(2087, 'Vicky Abdul Rohman', 'Management Keuangan', '127.0.0.1', '2022-07-05 13:32:22', 'Vicky Abdul Rohman Management Keuangan Telah Logout dari halamannya'),
(2088, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 13:41:08', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(2089, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 13:41:21', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(2090, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 13:41:49', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nlaporan logistik non konsumtif'),
(2091, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 13:42:13', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nlaporan logistik konsumtif'),
(2092, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 13:42:18', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(2093, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 13:42:24', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2094, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 13:42:52', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nlaporan logistik konsumtif'),
(2095, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 13:43:12', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Logistik Gedung DYPA dengan pemakaian\r\nlaporan logistik bogor'),
(2096, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-05 13:43:19', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2097, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 13:43:27', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(2098, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 13:43:38', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi laporan logistik konsumtif'),
(2099, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 13:43:39', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi laporan logistik bogor'),
(2100, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 13:45:56', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi laporan logistik konsumtif'),
(2101, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 13:46:11', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi laporan logistik bogor'),
(2102, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 13:46:21', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi laporan logistik non konsumtif'),
(2103, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 13:48:55', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi laporan logistik non konsumtif'),
(2104, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 13:49:18', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi laporan logistik non konsumtif'),
(2105, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 13:49:29', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Logistik Gedung DYPA dengan deskripsi laporan logistik konsumtif'),
(2106, 'Titi Sugianti', 'Pengajuan RAB', '::1', '2022-07-05 13:55:31', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2107, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 14:24:07', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Aset Yayasan'),
(2108, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 14:24:23', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Aset Yayasan'),
(2109, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 14:24:37', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Uang Makan'),
(2110, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 14:24:49', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Gaji Karyawan'),
(2111, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 14:25:02', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Biaya Lainnya'),
(2112, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 14:25:17', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Maintenance'),
(2113, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 14:25:28', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Maintenance'),
(2114, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 14:25:45', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Operasional Yayasan'),
(2115, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-05 14:25:58', 'Fadhila Amelia Putri Divisi Kepala Income Telah Menginput Anggaran Operasional Yayasan'),
(2116, 'Titi Sugianti', 'Pengajuan RAB', '::1', '2022-07-05 14:53:25', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Aset Yayasan'),
(2117, 'Titi Sugianti', 'Pengajuan RAB', '::1', '2022-07-05 14:53:46', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Aset Yayasan'),
(2118, 'Titi Sugianti', 'Pengajuan RAB', '::1', '2022-07-05 14:56:44', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Uang Makan'),
(2119, 'Titi Sugianti', 'Pengajuan RAB', '::1', '2022-07-05 14:56:59', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Gaji Karyawan'),
(2120, 'Titi Sugianti', 'Pengajuan RAB', '::1', '2022-07-05 14:57:19', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Biaya Lainnya'),
(2121, 'Titi Sugianti', 'Pengajuan RAB', '::1', '2022-07-05 14:57:38', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Maintenance'),
(2122, 'Titi Sugianti', 'Pengajuan RAB', '::1', '2022-07-05 14:57:55', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Maintenance'),
(2123, 'Titi Sugianti', 'Pengajuan RAB', '::1', '2022-07-05 14:58:43', 'Titi Sugianti Divisi Pengajuan RAB Telah Menginput Anggaran Operasional Yayasan'),
(2124, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 15:09:25', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Aset Yayasan dengan perencanaan pengajuan pembelian laptop'),
(2125, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 15:09:26', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Aset Yayasan dengan perencanaan pembelian bahan beton'),
(2126, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 15:09:27', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Aset Yayasan dengan perencanaan pembelian bata'),
(2127, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 15:09:29', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Aset Yayasan dengan perencanaan pembelian hp'),
(2128, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 15:09:31', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran uang makan  dengan perencanaan uang makan '),
(2129, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 15:09:33', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran uang makan harian dengan perencanaan uang makan harian'),
(2130, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 15:21:48', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Gaji Karyawan dengan perencanaan gaji bogor'),
(2131, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-05 15:21:49', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Gaji Karyawan dengan perencanaan gaji bulanan'),
(2132, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-06 09:00:28', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2133, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 09:01:51', 'Vicky Abdul Rohman Telah Login Halaman Management Keuangan'),
(2134, 'Fadhila Amelia Putri', 'Kepala Income', '::1', '2022-07-06 09:02:06', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(2135, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 09:37:41', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Biaya Lainnya dengan perencanaan pembelian lainnya'),
(2136, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 09:37:42', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Biaya Lainnya dengan perencanaan pemblian lainnya'),
(2137, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 09:37:48', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Maintenance Aset dengan perencanaan perbaikan aset'),
(2138, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 09:37:49', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Maintenance Aset dengan perencanaan perbaikan aset'),
(2139, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 09:37:50', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Maintenance Gedung dengan perencanaan perbaikan gedung'),
(2140, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 09:37:51', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Maintenance Gedung dengan perencanaan perbaikan gedung'),
(2141, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 09:37:54', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Operasional Yayasan dengan perencanaan operasional bahan minyak'),
(2142, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 09:37:55', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Operasional Yayasan dengan perencanaan operasional '),
(2143, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 09:37:56', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Anggaran Operasional Yayasan dengan perencanaan operasional yayasan '),
(2144, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-06 09:42:14', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Aset Yayasan dengan pemakaian\r\nlaporan pembelian bata'),
(2145, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-06 09:42:44', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Aset Yayasan dengan pemakaian\r\nlaporan pembelian hp'),
(2146, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-06 09:43:05', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Uang Makan dengan pemakaian\r\nlaporan uang makan'),
(2147, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-06 09:46:08', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Gaji Karyawan dengan pemakaian\r\nlaporan gaji '),
(2148, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-06 09:46:32', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Biaya Lainnya dengan pemakaian\r\nlaporan pembelian lainnya'),
(2149, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-06 09:46:54', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Maintenance Aset dengan pemakaian\r\nlaporan perbaikan aset'),
(2150, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-06 09:47:18', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Maintenance Gedung dengan pemakaian\r\nlaporan perbaikan gedung'),
(2151, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-06 09:47:37', 'Titi Sugianti Divisi Pengajuan RAB Telah Membuat Laporan Operasional Yayasan dengan pemakaian\r\nlaporan operasional'),
(2152, 'Fadhila Amelia Putri', 'Kepala Income', '::1', '2022-07-06 09:49:34', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Aset Yayasan dengan pemakaian\r\nlapoan pembelian laptop'),
(2153, 'Fadhila Amelia Putri', 'Kepala Income', '::1', '2022-07-06 09:50:30', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Aset Yayasan dengan pemakaian\r\nlaporan pembelian bahan beton'),
(2154, 'Fadhila Amelia Putri', 'Kepala Income', '::1', '2022-07-06 09:55:05', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Uang Makan dengan pemakaian\r\nlaporan uang makan'),
(2155, 'Fadhila Amelia Putri', 'Kepala Income', '::1', '2022-07-06 09:55:26', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Gaji Karyawan dengan pemakaian\r\nlaporan gaji bulanan'),
(2156, 'Fadhila Amelia Putri', 'Kepala Income', '::1', '2022-07-06 10:02:51', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Biaya Lainnya dengan pemakaian\r\nlaporan pembelian lainnya'),
(2157, 'Fadhila Amelia Putri', 'Kepala Income', '::1', '2022-07-06 10:03:18', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Maintenance Aset dengan pemakaian\r\nlaporan perbaikan aset'),
(2158, 'Fadhila Amelia Putri', 'Kepala Income', '::1', '2022-07-06 10:03:39', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Maintenance Gedung dengan pemakaian\r\nlaporan perbaikan gedung'),
(2159, 'Fadhila Amelia Putri', 'Kepala Income', '::1', '2022-07-06 10:04:00', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Operasional Yayasan dengan pemakaian\r\nlaporan operasional'),
(2160, 'Fadhila Amelia Putri', 'Kepala Income', '::1', '2022-07-06 10:04:18', 'Fadhila Amelia Putri Divisi Kepala Income Telah Membuat Laporan Operasional Yayasan dengan pemakaian\r\nlaporan operasional'),
(2161, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 13:21:00', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi lapoan pembelian laptop'),
(2162, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 13:50:58', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi lapoan pembelian laptop'),
(2163, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 13:53:23', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi lapoan pembelian laptop'),
(2164, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 13:55:05', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi lapoan pembelian laptop'),
(2165, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 14:41:53', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi lapoan pembelian laptop'),
(2166, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 14:51:01', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi laporan pembelian bahan beton'),
(2167, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 14:51:23', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi laporan pembelian bata'),
(2168, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-06 14:51:39', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi laporan pembelian hp'),
(2169, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-07 09:19:23', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2170, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 11:51:30', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi lapoan pembelian laptop'),
(2171, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 11:53:02', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi laporan pembelian hp'),
(2172, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 11:55:33', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Aset Yayasan dengan deskripsi lapoan pembelian laptop'),
(2173, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 13:13:08', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Uang Makan dengan deskripsi laporan uang makan'),
(2174, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 13:14:50', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Uang Makan dengan deskripsi laporan uang makan'),
(2175, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 13:14:58', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Uang Makan dengan deskripsi laporan uang makan'),
(2176, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 14:09:45', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Gaji Karyawan dengan deskripsi laporan gaji '),
(2177, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 14:09:52', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Gaji Karyawan dengan deskripsi laporan gaji bulanan'),
(2178, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 14:16:40', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Biaya Lainnya dengan deskripsi laporan pembelian lainnya'),
(2179, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 14:16:48', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Biaya Lainnya dengan deskripsi laporan pembelian lainnya'),
(2180, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 14:41:07', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Maintenance Aset dengan deskripsi laporan perbaikan aset'),
(2181, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 14:43:17', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Maintenance Aset dengan deskripsi laporan perbaikan aset'),
(2182, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 14:43:29', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Maintenance Aset dengan deskripsi laporan perbaikan aset'),
(2183, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 14:43:44', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Maintenance Gedung dengan deskripsi laporan perbaikan gedung'),
(2184, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 14:43:57', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Maintenance Gedung dengan deskripsi laporan perbaikan gedung'),
(2185, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 15:38:13', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Operasional Yayasan dengan deskripsi laporan operasional'),
(2186, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 15:38:23', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Operasional Yayasan dengan deskripsi laporan operasional'),
(2187, 'Vicky Abdul Rohman', 'Management Keuangan', '::1', '2022-07-07 15:38:28', 'Vicky Abdul Rohman Divisi Management Keuangan Telah Mengkonfirmasi Laporan Operasional Yayasan dengan deskripsi laporan operasional'),
(2188, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-07 15:47:04', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2189, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-07 15:47:08', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2190, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-12 09:27:45', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2191, 'Riki Subagja', 'Ketua Yayasan', '127.0.0.1', '2022-07-12 09:27:48', 'Riki Subagja Telah Login Halaman Ketua Yayasan'),
(2192, 'Riki Subagja', 'Ketua Yayasan', '127.0.0.1', '2022-07-12 09:57:33', 'Riki Subagja Ketua Yayasan Telah Logout dari halamannya'),
(2193, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-12 09:57:37', 'Titi Sugianti Telah Login Halaman Pengajuan RAB'),
(2194, 'Titi Sugianti', 'Pengajuan RAB', '127.0.0.1', '2022-07-12 09:58:55', 'Titi Sugianti Pengajuan RAB Telah Logout dari halamannya'),
(2195, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-12 09:58:58', 'Fadhila Amelia Putri Telah Login Halaman Kepala Income'),
(2196, 'Fadhila Amelia Putri', 'Kepala Income', '127.0.0.1', '2022-07-12 10:02:40', 'Fadhila Amelia Putri Kepala Income Telah Logout dari halamannya'),
(2197, 'Riki Subagja', 'Ketua Yayasan', '127.0.0.1', '2022-07-12 10:02:42', 'Riki Subagja Telah Login Halaman Ketua Yayasan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_maintenance`
--

CREATE TABLE `2022_maintenance` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `cabang` varchar(200) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `deskripsi` text NOT NULL,
  `dana_anggaran` varchar(200) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `pemakaian` varchar(200) NOT NULL,
  `dana_terpakai` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `laporan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_maintenance`
--

INSERT INTO `2022_maintenance` (`id`, `id_pengurus`, `posisi`, `cabang`, `kategori`, `tgl_dibuat`, `deskripsi`, `dana_anggaran`, `tgl_laporan`, `pemakaian`, `dana_terpakai`, `status`, `laporan`) VALUES
(1, 'kepala_income', 'Kepala Income', 'Tajur', 'Maintenance Gedung', '2022-07-04', 'perbaikan gedung', '200000', '2022-07-06', 'laporan perbaikan gedung', '150000', 'OK', 'Terverifikasi'),
(2, 'kepala_income', 'Kepala Income', 'Tajur', 'Maintenance Aset', '2022-07-05', 'perbaikan aset', '300000', '2022-07-06', 'laporan perbaikan aset', '250000', 'OK', 'Terverifikasi'),
(3, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Maintenance Gedung', '2022-07-04', 'perbaikan gedung', '600000', '2022-07-06', 'laporan perbaikan gedung', '500000', 'OK', 'Terverifikasi'),
(4, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Maintenance Aset', '2022-07-05', 'perbaikan aset', '600000', '2022-07-06', 'laporan perbaikan aset', '500000', 'OK', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_operasional_yayasan`
--

CREATE TABLE `2022_operasional_yayasan` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `cabang` varchar(100) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `deskripsi` text NOT NULL,
  `dana_anggaran` varchar(250) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `pemakaian` text NOT NULL,
  `dana_terpakai` varchar(250) NOT NULL,
  `status` varchar(30) NOT NULL,
  `laporan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_operasional_yayasan`
--

INSERT INTO `2022_operasional_yayasan` (`id`, `id_pengurus`, `posisi`, `cabang`, `kategori`, `tgl_dibuat`, `deskripsi`, `dana_anggaran`, `tgl_laporan`, `pemakaian`, `dana_terpakai`, `status`, `laporan`) VALUES
(1, 'kepala_income', 'Kepala Income', 'Tajur', 'Operasional Yayasan', '2022-07-05', 'operasional bahan minyak', '60000', '2022-07-06', 'laporan operasional', '50000', 'OK', 'Terverifikasi'),
(2, 'kepala_income', 'Kepala Income', 'Tajur', 'Operasional Yayasan', '2022-07-05', 'operasional ', '50000', '2022-07-06', 'laporan operasional', '50000', 'OK', 'Terverifikasi'),
(3, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Operasional Yayasan', '2022-07-05', 'operasional yayasan ', '80000', '2022-07-06', 'laporan operasional', '50000', 'OK', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_program`
--

CREATE TABLE `2022_program` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `cabang` varchar(200) NOT NULL,
  `program` varchar(250) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `deskripsi` text NOT NULL,
  `dana_anggaran` varchar(200) NOT NULL,
  `tgl_pemakaian` date NOT NULL,
  `deskripsi_pemakaian` varchar(200) NOT NULL,
  `dana_terpakai` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `laporan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_program`
--

INSERT INTO `2022_program` (`id`, `id_pengurus`, `posisi`, `cabang`, `program`, `tgl_pengajuan`, `deskripsi`, `dana_anggaran`, `tgl_pemakaian`, `deskripsi_pemakaian`, `dana_terpakai`, `status`, `laporan`) VALUES
(1, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Pendidikan Yatim', '2022-05-11', 'Pendidikan Yatim', '3000000', '2022-05-28', 'Pendidikan yatim', '3000000', 'OK', 'Terverifikasi'),
(2, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Santunan Yatim', '2022-05-11', 'Santunan yatim', '9000000', '2022-05-28', 'Santuanan mingguan', '5400000', 'OK', 'Terverifikasi'),
(3, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Santunan Yatim', '2022-05-26', 'Santunan bulanan', '13268000', '2022-05-28', 'Santunan bulanan', '12615150', 'OK', 'Terverifikasi'),
(4, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Kesehatan Yatim', '2022-06-02', 'kesehatan yatim bogor', '600000', '2022-06-30', 'Kesehatan yatim bogor', '393000', 'OK', 'Terverifikasi'),
(5, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Santunan Yatim', '2022-06-02', 'santunan mingguan bogor dan tajur halang', '36400000', '2022-06-30', 'Santunan mingguan tajur halang dan bogor', '27600000', 'OK', 'Terverifikasi'),
(6, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Pendidikan Yatim', '2022-06-02', 'pendidikan yatim bogor dan tajur halang', '9100000', '2022-06-30', 'Pendidikan yatim tajur dan bogor', '9100000', 'OK', 'Terverifikasi'),
(7, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Santunan Yatim', '2022-06-30', 'Santunan bulanan Tajur halang', '3000000', '2022-06-30', 'Santunan bulanan tajur halang', '2800000', 'OK', 'Terverifikasi'),
(8, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Santunan Yatim', '2022-06-30', 'Santunan bulanan bogor', '8175000', '2022-06-30', 'Santunan bulanan bogor', '6235000', 'OK', 'Terverifikasi'),
(9, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Pendidikan Yatim', '2022-07-05', 'pengajuan pendidikan', '500000', '2022-07-05', 'laporan pendidikan', '450000', 'OK', 'Terverifikasi'),
(10, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Kesehatan Yatim', '2022-07-06', 'pengajuan kesehatan', '120000', '2022-07-05', 'laporan program kesehatan', '100000', 'OK', 'Terverifikasi'),
(11, 'kepala_income', 'Kepala Income', 'Tajur', 'Program Santunan Yatim', '2022-07-05', 'pengajuan santunan bulanan ', '6000000', '2022-07-05', 'laporan santunan bulanan ', '4500000', 'OK', 'Terverifikasi'),
(12, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Program Pendidikan Yatim', '2022-07-05', 'pengajuan pendidikan ', '6000000', '2022-07-05', 'laporan pendidikan ', '4500000', 'OK', 'Terverifikasi'),
(13, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Program Kesehatan Yatim', '2022-07-05', 'pengajuan kesehatan', '4000000', '2022-07-05', 'laporan kesehatan', '3500000', 'OK', 'Terverifikasi'),
(14, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Program Santunan Yatim', '2022-07-05', 'pengajuan santunan bulanan', '600000', '2022-07-05', 'laporan santunan ', '500000', 'OK', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2022_uang_makan`
--

CREATE TABLE `2022_uang_makan` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(200) NOT NULL,
  `posisi` varchar(200) NOT NULL,
  `cabang` varchar(200) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `deskripsi` text NOT NULL,
  `dana_anggaran` varchar(200) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `pemakaian` varchar(200) NOT NULL,
  `dana_terpakai` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `laporan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `2022_uang_makan`
--

INSERT INTO `2022_uang_makan` (`id`, `id_pengurus`, `posisi`, `cabang`, `kategori`, `tgl_dibuat`, `deskripsi`, `dana_anggaran`, `tgl_laporan`, `pemakaian`, `dana_terpakai`, `status`, `laporan`) VALUES
(1, 'kepala_income', 'Kepala Income', 'Depok', 'Uang Makan', '2022-05-11', 'Uang makan karyawan', '5100000', '2022-05-28', 'Uang makan karyawan', '3300000', 'OK', 'Terverifikasi'),
(2, 'kepala_income', 'Kepala Income', 'Tajur', 'Uang Makan', '2022-07-05', 'uang makan ', '150000', '2022-07-06', 'laporan uang makan', '100000', 'OK', 'Terverifikasi'),
(3, 'kepala_pengajuan', 'Pengajuan RAB', 'Bogor', 'Uang Makan', '2022-07-05', 'uang makan harian', '50000', '2022-07-06', 'laporan uang makan', '45000', 'OK', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun_pengurus`
--

CREATE TABLE `akun_pengurus` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `cabang` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `profil` varchar(200) NOT NULL,
  `posisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun_pengurus`
--

INSERT INTO `akun_pengurus` (`id`, `id_pengurus`, `nama`, `cabang`, `username`, `password`, `profil`, `posisi`) VALUES
(1, 'ketua_yayasan', 'Riki Subagja', 'Depok', 'riki1011', '$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW', 'profil.png', 'Ketua Yayasan'),
(2, 'management_keuangan', 'Vicky Abdul Rohman', 'Depok', 'management', '$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW', 'profil.png', 'Management Keuangan'),
(3, 'kepala_income', 'Fadhila Amelia Putri', 'Depok', 'income_media', '$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW', 'profil.png', 'Kepala Income'),
(4, 'manager_facebook', 'Haidar Sultan', 'Depok', 'leader_fb', '$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW', 'profil.png', 'Leader Facebook'),
(5, 'admin_web', 'M Rizky Amin', 'Depok', 'admin_web', '$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW', 'profil.png', 'Admin Website'),
(6, 'facebook_depok', 'MUHAMMAD NAZAR YANA', 'Depok', 'muhammadnazaryana', '$2y$10$FsTNS2TxJmMtaGrpYaaxEOoopE6DaQFCxmpNqEQ6dxLS2oUPB20VC', 'profil.png', 'Facebook Depok'),
(9, 'facebook_depok', 'Mutmainah', 'Depok', 'mutmainah', '$2y$10$61JPx/9SwzcTNll849Qaz.m4lGiWVGqx/TX30IayfazxrVOhB0qv.', 'profil.png', 'Facebook Depok'),
(10, 'facebook_depok', 'Sri Lestari', 'Depok', 'srilestariii', '$2y$10$UbG.XVveSuuHsfQ4rMyb8uzWzVtu9mp2YUpladI7HeI6xbEaEiK2a', 'profil.png', 'Facebook Depok'),
(11, 'facebook_depok', 'Lutfhi Aditya Rachman', 'Depok', 'lutfiart', '$2y$10$D6jmXKQlpP/YDYinr3muJeymCCGgQemKt0qWdTSfIoy1TaHgaNT7u', 'profil.png', 'Facebook Depok'),
(12, 'facebook_depok', 'Anita Sri Wulandari', 'Depok', 'anitawulan', '$2y$10$5H3Oh50vBfRvDrJwUJeln.wi.M6xs9zJ1VA.PZy9G5rsPSjw20sNG', 'profil.png', 'Facebook Depok'),
(15, 'facebook_depok', 'Riki', 'Depok', 'zakatyatim', '$2y$10$un3V2TGCHvwpVHM6Xf9dk.w4VtUQji26q5k4j5UFh3oalUd9LfUyi', 'profil.png', 'Facebook Depok'),
(17, 'facebook_depok', 'Dedi Makarim Manaf', 'Depok', 'manaf3', '$2y$10$K8hJnQuhOqrB9GmSxFb28.Gin7JcRQ5yVRG1e6lCiVKgV3RVI3Gc2', 'profil.png', 'Facebook Depok'),
(18, 'facebook_depok', 'Sodru ', 'Depok', 'sodru123', '$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW', 'profil.png', 'Facebook Depok'),
(19, 'facebook_depok', 'Resma Febiyanti', 'Depok', 'feby28', '$2y$10$h8r97Qw/Jxo.AVTHwYbD1ehFGp3dWP4QKN/kcqQ44dbBvaylntyhC', 'profil.png', 'Facebook Depok'),
(21, 'facebook_depok', 'Ezaalfajri', 'Depok', 'ezaalfajri', '$2y$10$b.LVE6jfSe.5u0VRseRx7.jKoNfhBmcLH1TifiLE37QvgtFTiW9Vq', 'profil.png', 'Facebook Depok'),
(22, 'facebook_depok', 'Sezha Octaviana', 'Depok', 'sezhaoctaviana', '$2y$10$vHUQ4hMzJ/qcKEn9Xe5c3uxxX0bi9IZMKRPWcLpo/x.MerBitayYK', 'profil.png', 'Facebook Depok'),
(24, 'facebook_depok', 'Haidar Sulthan', 'Depok', 'haidarsulthan', '$2y$10$QRVYZ2eGvSvDSAhLOylv0OtbxtlCmqpOII7Qi/P4H4BrGA1il2WlK', 'profil.png', 'Facebook Depok'),
(25, 'facebook_depok', 'Meisya Anastasia', 'Depok', 'meisyaanastasia', '$2y$10$SZlYbzDQEDJVneecDqQ9P.atuYXuqt1p92ycDCXmTax.YBqU5LQBC', 'profil.png', 'Facebook Depok'),
(26, 'facebook_depok', 'Omiati', 'Depok', 'facebook_dypa', '$2y$10$T2N31mFR4sGFW6Y1dbAg3.iN5scfO00wLXk.NxI28MXYw7llC6xjS', 'profil.png', 'Facebook Depok'),
(27, 'facebook_depok', 'Zakia Nadila Seftiani', 'Depok', 'nadilazakia', '$2y$10$e7iElDUuDqqGqGNqgWkUJ.v8JeBVSUKeY25fjBZXgvbCaTbX.z.RO', 'profil.png', 'Facebook Depok'),
(28, 'facebook_depok', 'Yuni Sarah', 'Depok', 'yunis', '$2y$10$h7HbZLsO80mR.8VFhlmDWe3P4gliR5rmgSlLqQCgPX1t5FdXuInDK', 'profil.png', 'Facebook Depok'),
(29, 'facebook_depok', 'Nurmala Sari ', 'Depok', 'nrmlsr_7', '$2y$10$pHTRtsmZZQKsFKxKC3XI5uVhe1eiXzuIcTTQOpklR0QWiISOZjLxy', 'profil.png', 'Facebook Depok'),
(30, 'facebook_depok', 'Alfiatul Khoyyiroh', 'Depok', 'alfi11', '$2y$10$.8f5nnFznDq2u7oGrZDpOOQpw3PfUjvOJQsTJvaq/BorgLJkHGwbe', 'profil.png', 'Facebook Depok'),
(31, 'facebook_depok', 'Linda Indriyani ', 'Depok', 'linda', '$2y$10$IqTn80H0k8Fa//Bwumgf1OiCCtUdQ8OEe7Cwcv2dD/txsjio8RIt.', 'profil.png', 'Facebook Depok'),
(32, 'facebook_depok', 'Siti Amaliah', 'Depok', 'amals', '$2y$10$3FETOms8c2zwSUOseCm/e.bn0DDL5p1fb5CDp7t2eii06escPtkWm', 'profil.png', 'Facebook Depok'),
(33, 'facebook_depok', 'Silvi Agnia ', 'Depok', 'silviagnia20', '$2y$10$5QrIotb4T/FdnRS/CHH4uuPGQ4ZuFXlojgPRzAaVb5v5sWoBwCVnO', 'profil.png', 'Facebook Depok'),
(34, 'facebook_depok', 'Zahra Maulida', 'Depok', 'zmaulida11', '$2y$10$qLgUsU91YAv1wqWF0Gnkv.g4sUcurTvk0V8po4uiYyt.TfJ.IOK0W', 'profil.png', 'Facebook Depok'),
(35, 'facebook_depok', 'Okta Viane Berliana', 'Depok', 'berliana123', '$2y$10$oIHsLXFBceATMU9VhXjBK.KnEb3snsIbcuJtZW2AdTzj.IbC0aGXa', 'profil.png', 'Facebook Depok'),
(36, 'manager_facebook', 'Omiati', 'Depok', 'leader_2', '$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW', 'profil.png', 'Leader Facebook'),
(37, 'kepala_pengajuan', 'Titi Sugianti', 'Bogor', 'pengajuan_bogor', '$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW', 'profil.png', 'Pengajuan RAB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_akun`
--

CREATE TABLE `data_akun` (
  `id` int(11) NOT NULL,
  `id_pengurus` text NOT NULL,
  `nomor_id` text NOT NULL,
  `pemegang` text NOT NULL,
  `nama_akun` text NOT NULL,
  `cabang` text NOT NULL,
  `posisi` text NOT NULL,
  `team` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_akun`
--

INSERT INTO `data_akun` (`id`, `id_pengurus`, `nomor_id`, `pemegang`, `nama_akun`, `cabang`, `posisi`, `team`) VALUES
(1, 'facebook_depok', '6', 'Muhammad Nazar Yana', 'Dompet Yatim', 'Depok', 'Facebook Depok', ''),
(2, 'facebook_depok', '6', 'Muhammad Nazar Yana', 'Dompet Yatim II', 'Depok', 'Facebook Depok', ''),
(3, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Facebook Depok', 'Facebook Tajur'),
(4, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Facebook Depok', 'Facebook Tajur'),
(5, 'facebook_depok', '9', 'Mutmainah', 'sedekah yatim i', 'Depok', 'Facebook Depok', 'Facebook Tajur'),
(6, 'facebook_depok', '22', 'Sezha Octaviana', 'Kholid Fatullah', 'Depok', 'Facebook Depok', ''),
(7, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Facebook Depok', ''),
(9, 'facebook_depok', '22', 'Sezha Octaviana', 'Keberkahan Yatim', 'Depok', 'Facebook Depok', ''),
(10, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'Facebook Depok', 'Facebook Tajur'),
(11, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'Facebook Depok', ''),
(12, 'facebook_depok', '14', 'Novit Riyadi', 'Anita Sri Wulandari', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(13, 'facebook_depok', '12', 'Anita Sri Wulandari', 'Jihan ramadhani', 'Depok', 'Facebook Depok', ''),
(15, 'facebook_depok', '18', 'Sodru ', 'Berbagi yatim', 'Depok', 'Facebook Depok', ''),
(16, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', 'Depok', 'Facebook Depok', ''),
(17, 'facebook_depok', '14', 'Novit Riyadi', 'Peduli bersama yatim', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(18, 'facebook_depok', '12', 'Anita Sri Wulandari', 'regi alfiyansyah', 'Depok', 'Facebook Depok', ''),
(19, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Facebook Depok', ''),
(20, 'facebook_depok', '15', 'Riki', 'Zakat Yatim', 'Depok', 'Facebook Depok', ''),
(21, 'facebook_depok', '20', 'Iman Nuriawan', 'Dompet yatim piatu', 'Depok', 'Facebook Depok', ''),
(22, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', 'Depok', 'Facebook Depok', ''),
(23, 'facebook_depok', '21', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', 'Depok', 'Facebook Depok', ''),
(24, 'facebook_depok', '15', 'Riki', 'Rezeki Yatim', 'Depok', 'Facebook Depok', ''),
(26, 'facebook_depok', '24', 'Haidar Sulthan', 'Muhammad Rizky Amin ', 'Depok', 'Facebook Depok', ''),
(27, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Facebook Depok', ''),
(28, 'facebook_depok', '18', 'Sodru ', 'Mari bantu Yatim ', 'Depok', 'Facebook Depok', ''),
(29, 'facebook_depok', '19', 'Resma Febiyanti', 'Fitri mulyani ', 'Depok', 'Facebook Depok', ''),
(33, 'facebook_depok', '24', 'Haidar Sulthan', 'Haidar Sultan', 'Depok', 'Facebook Depok', ''),
(36, 'facebook_depok', '26', 'Omiati', 'Dompet Infaq Yatim', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(37, 'facebook_depok', '26', 'Omiati', 'Dompet Peduli Yatim', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(39, 'facebook_depok', '25', 'Meisya Anastasia', 'Infaq Dompet Yatim', 'Depok', 'Facebook Depok', ''),
(40, 'facebook_depok', '25', 'Meisya Anastasia', 'Dompet Yatim Amanah', 'Depok', 'Facebook Depok', ''),
(42, 'facebook_depok', '27', 'Zakia Nadila Seftiani', 'Zakia Nadila ', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(43, 'facebook_depok', '29', 'Nurmala Sari ', 'Nurmala Sari', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(44, 'facebook_depok', '27', 'Zakia Nadila Seftiani', 'Kebahagiaan yatim', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(45, 'facebook_depok', '29', 'Nurmala Sari ', 'Pahala Sedekah Yatim Piatu', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(46, 'facebook_depok', '33', 'Silvi Agnia ', 'Silvi agnia', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(47, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Alfiatul Khoyyiroh', 'Depok', 'Facebook Depok', ''),
(48, 'facebook_depok', '32', 'Siti Amaliah', 'Siti Amaliah', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(49, 'facebook_depok', '33', 'Silvi Agnia ', 'Infaq yatim piatu', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(50, 'facebook_depok', '31', 'Linda Indriyani ', 'Linda Indriyani ', 'Depok', 'Facebook Depok', ''),
(51, 'facebook_depok', '34', 'Zahra Maulida', 'Zahra Maulida', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(52, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Senyuman Yatim Piatu', 'Depok', 'Facebook Depok', ''),
(53, 'facebook_depok', '28', 'Yuni Sarah', 'Yuni Sarah', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(54, 'facebook_depok', '31', 'Linda Indriyani ', 'Donasi Dompet Yatim', 'Depok', 'Facebook Depok', ''),
(55, 'facebook_depok', '34', 'Zahra Maulida', 'Dompet Berkah Yatim', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(56, 'facebook_depok', '28', 'Yuni Sarah', 'Berkah Dompet Yatim', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(57, 'facebook_depok', '32', 'Siti Amaliah', 'Dompet keberkahan yatim', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(58, 'facebook_depok', '35', 'Okta Viane Berliana', 'Okta berliana', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(59, 'facebook_depok', '35', 'Okta Viane Berliana', 'Dompet semangat yatim', 'Depok', 'Facebook Depok', 'Facebook Bogor'),
(60, 'facebook_depok', '21', 'Ezaalfajri', 'Zaeni Mucthar', 'Depok', 'Facebook Depok', ''),
(61, 'facebook_depok', '15', 'Riki', 'Donasi Peduli Yatim', 'Depok', 'Facebook Depok', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `income_media`
--

CREATE TABLE `income_media` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(100) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `pemegang` varchar(100) NOT NULL,
  `nama_akun` varchar(100) NOT NULL,
  `cabang` varchar(100) NOT NULL,
  `nama_donatur` varchar(100) NOT NULL,
  `tanggal_tf` date NOT NULL,
  `jam_tf` time NOT NULL,
  `bank` varchar(100) NOT NULL,
  `jumlah_tf` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `verif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `income_media`
--

INSERT INTO `income_media` (`id`, `id_pengurus`, `nomor_id`, `pemegang`, `nama_akun`, `cabang`, `nama_donatur`, `tanggal_tf`, `jam_tf`, `bank`, `jumlah_tf`, `status`, `verif`) VALUES
(1, 'facebook_depok', '6', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', 'Depok', 'Widiawati (Mawar Puteh)', '2022-05-15', '15:07:00', 'BNI', '200000', 'OK', 'Verif'),
(2, 'facebook_depok', '6', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', 'Depok', 'Bagus Danang Surya Putra', '2022-05-13', '17:23:00', 'BRI', '200000', 'OK', 'Verif'),
(3, 'facebook_depok', '9', 'Mutmainah', 'sedekah yatim i', 'Depok', 'Ruyhprojo', '2022-05-17', '18:18:00', 'BRI', '50000', 'OK', 'Verif'),
(5, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Sumi aza setia', '2022-05-02', '06:59:00', 'BNI', '200000', 'OK', 'Verif'),
(6, 'facebook_depok', '22', 'Sezha Octaviana', 'Kholid Fatullah', 'Depok', 'Noval Ramadina', '2022-05-13', '14:28:00', 'BNI', '200000', 'OK', 'Verif'),
(7, 'facebook_depok', '12', 'Anita Sri Wulandari', 'Jihan ramadhani', 'Depok', 'Vrmaan El Mubarak', '2022-05-17', '17:12:00', 'BRI', '50000', 'OK', 'Verif'),
(8, 'facebook_depok', '14', 'Novit Riyadi', 'Peduli bersama yatim', 'Depok', 'Puti andhini kusuma', '2022-05-15', '07:36:00', 'BRI', '300000', 'OK', 'Verif'),
(9, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Ros ariffin', '2022-05-17', '11:12:00', 'BNI', '1000060', 'OK', 'Verif'),
(10, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Ahlaam', '2022-05-15', '03:40:00', 'BNI', '100000', 'OK', 'Verif'),
(11, 'facebook_depok', '18', 'Sodru ', 'Berbagi yatim', 'Depok', 'Noer hasyanah', '2022-05-10', '10:49:00', 'BRI', '300000', 'OK', 'Verif'),
(12, 'facebook_depok', '24', 'Haidar Sulthan', 'Muhammad Rizky Amin ', 'Depok', 'Angela ', '2022-05-13', '23:37:00', 'BRI', '200000', 'OK', 'Verif'),
(13, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', 'Depok', 'Nur Ain Azza', '2022-05-17', '19:31:00', 'BNI', '400000', 'OK', 'Verif'),
(14, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Dipa Nefowira', '2022-05-04', '21:11:00', 'BRI', '200000', 'OK', 'Verif'),
(15, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Yuni Asmo', '2022-05-10', '10:39:00', 'BRI', '50000', 'OK', 'Verif'),
(16, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'July Chayang Bangat Pandy', '2022-05-11', '11:07:00', 'BNI', '150000', 'OK', 'Verif'),
(17, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Qasidah indah', '2022-05-13', '10:50:00', 'BRI', '100000', 'OK', 'Verif'),
(18, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Dian', '2022-05-13', '08:26:00', 'BRI', '10000', 'OK', 'Verif'),
(19, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Sitimaemunah', '2022-05-13', '15:25:00', 'BRI', '50000', 'OK', 'Verif'),
(20, 'facebook_depok', '18', 'Sodru ', 'Berbagi yatim', 'Depok', 'Afsarida Hasibuan', '2022-05-14', '10:03:00', 'BRI', '130293', 'OK', 'Verif'),
(21, 'facebook_depok', '18', 'Sodru ', 'Berbagi yatim', 'Depok', 'Jasmin Saketa', '2022-05-18', '05:54:00', 'BRI', '100000', 'OK', 'Verif'),
(22, 'facebook_depok', '9', 'Mutmainah', 'sedekah yatim i', 'Depok', 'Yati Maryati', '2022-05-09', '09:00:00', 'BNI', '104800', 'OK', 'Verif'),
(23, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Kokom Fadilah Kokom', '2022-05-09', '17:00:00', 'BRI', '200000', 'OK', 'Verif'),
(24, 'facebook_depok', '9', 'Mutmainah', 'sedekah yatim i', 'Depok', 'usiifw', '2022-05-12', '09:00:00', 'BNI', '200000', 'OK', 'Verif'),
(25, 'facebook_depok', '9', 'Mutmainah', 'sedekah yatim i', 'Depok', 'Dian Meidyanto', '2022-05-13', '09:00:00', 'BRI', '10000', 'OK', 'Verif'),
(26, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Imam Kurniadi', '2022-05-12', '08:00:00', 'BRI', '150000', 'OK', 'Verif'),
(27, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Mila Ahmad ', '2022-05-17', '09:00:00', 'BNI', '200000', 'OK', 'Verif'),
(28, 'facebook_depok', '9', 'Mutmainah', 'sedekah yatim i', 'Depok', 'Salmanaziat', '2022-05-14', '09:00:00', 'Kitabisa.com', '50000', 'OK', 'Verif'),
(29, 'facebook_depok', '22', 'Sezha Octaviana', 'Kholid Fatullah', 'Depok', 'Ferdy Fadillah', '2022-05-14', '10:28:00', 'BRI', '300000', 'OK', 'Verif'),
(30, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'Hashirama Senju', '2022-05-01', '09:00:00', 'BNI', '5000', 'OK', 'Verif'),
(31, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'Samto Pawiro Tamin', '2022-05-17', '00:00:00', 'BRI', '50000', 'OK', 'Verif'),
(32, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Sri Rezeki ', '2022-05-15', '01:00:00', 'BRI', '50000', 'OK', 'Verif'),
(33, 'facebook_depok', '15', 'Riki', 'Zakat Yatim', 'Depok', 'Zurtini Chadburn', '2022-05-10', '08:11:00', 'BNI', '1000000', 'OK', 'Verif'),
(34, 'facebook_depok', '15', 'Riki', 'Zakat Yatim', 'Depok', 'Shan Dayang', '2022-05-10', '08:15:00', 'BRI', '500000', 'OK', 'Verif'),
(35, 'facebook_depok', '15', 'Riki', 'Zakat Yatim', 'Depok', 'Sri Wah Yuni', '2022-05-15', '09:10:00', 'BNI', '100000', 'OK', 'Verif'),
(36, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Erna Rahayu', '2022-05-13', '13:02:00', 'BRI', '100000', 'OK', 'Verif'),
(37, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Miha Miha', '2022-05-10', '21:28:00', 'BRI', '1000000', 'OK', 'Verif'),
(38, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Riyanti Riyanti', '2022-05-11', '10:15:00', 'BNI', '651400', 'OK', 'Verif'),
(39, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Abu Jamal', '2022-05-11', '11:15:00', 'BNI', '100000', 'OK', 'Verif'),
(40, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Yanti', '2022-05-13', '13:13:00', 'BRI', '45000', 'OK', 'Verif'),
(41, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Soleha Lis', '2022-05-10', '06:46:00', 'BRI', '50000', 'OK', 'Verif'),
(42, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'Lutfir Rahman Taris', '2022-05-04', '15:23:00', 'BNI', '15000', 'OK', 'Verif'),
(43, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Yun Wulan wong\'Dukuh', '2022-05-18', '09:56:00', 'BRI', '300000', 'OK', 'Verif'),
(44, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Julian Khan', '2022-05-05', '14:35:00', 'BRI', '50000', 'OK', 'Verif'),
(45, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'maslina', '2022-05-06', '12:42:00', 'BRI', '300000', 'OK', 'Verif'),
(46, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Yanto', '2022-05-08', '10:34:00', 'BRI', '100000', 'OK', 'Verif'),
(47, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'aponk', '2022-05-10', '17:28:00', 'BRI', '100000', 'OK', 'Verif'),
(48, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'Mila Kiyoshi', '2022-05-11', '19:57:00', 'BRI', '601470', 'OK', 'Verif'),
(49, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'tomi supier', '2022-05-13', '08:25:00', 'BNI', '150000', 'OK', 'Verif'),
(50, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'aponk', '2022-05-13', '09:31:00', 'BRI', '100000', 'OK', 'Verif'),
(51, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'pudhin sstyle', '2022-05-17', '11:44:00', 'BRI', '100000', 'OK', 'Verif'),
(52, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'aponk', '2022-05-18', '12:27:00', 'BRI', '100000', 'OK', 'Verif'),
(53, 'facebook_depok', '12', 'Anita Sri Wulandari', 'Jihan ramadhani', 'Depok', 'Ali Murdani', '2022-05-11', '17:02:00', 'BNI', '100000', 'OK', 'Verif'),
(54, 'facebook_depok', '21', 'Ezaalfajri', 'Zaeni Mucthar', 'Depok', 'Agus Silaen', '2022-05-11', '16:45:00', 'BNI', '50000', 'OK', 'Verif'),
(55, 'facebook_depok', '21', 'Ezaalfajri', 'Zaeni Mucthar', 'Depok', 'Sairah sholehan', '2022-05-16', '18:50:00', 'BNI', '300000', 'OK', 'Verif'),
(56, 'facebook_depok', '21', 'Ezaalfajri', 'Zaeni Mucthar', 'Depok', 'Kurirah Koriyah Bunga', '2022-05-18', '14:00:00', 'BNI', '1000000', 'OK', 'Verif'),
(57, 'facebook_depok', '21', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', 'Depok', 'Mud Sunny', '2022-05-12', '13:57:00', 'BRI', '206186', 'OK', 'Verif'),
(58, 'facebook_depok', '24', 'Haidar Sulthan', 'Haidar Sultan', 'Depok', 'Az-za', '2022-05-13', '16:18:00', 'BRI', '48000', 'OK', 'Verif'),
(59, 'facebook_depok', '24', 'Haidar Sulthan', 'Haidar Sultan', 'Depok', 'Sunardi budianto', '2022-05-16', '01:21:00', 'Uang Cash', '200000', 'OK', 'Verif'),
(60, 'facebook_depok', '25', 'Meisya Anastasia', 'Dompet Sedekah Yatim', 'Depok', 'Widi Septian99', '2022-05-14', '18:08:00', 'BRI', '50000', 'OK', 'Verif'),
(61, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', 'Depok', 'Megat Syafril ahmad', '2022-05-18', '17:41:00', 'BRI', '301639', 'OK', 'Verif'),
(62, 'facebook_depok', '12', 'Anita Sri Wulandari', 'regi alfiyansyah', 'Depok', 'clinebot clin', '2022-05-18', '16:46:00', 'BRI', '50000', 'OK', 'Verif'),
(63, 'facebook_depok', '6', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', 'Depok', 'Nur Laelatul Fadilah', '2022-05-18', '20:57:00', 'BRI', '300000', 'OK', 'Verif'),
(64, 'facebook_depok', '22', 'Sezha Octaviana', 'Kholid Fatullah', 'Depok', 'Tehnani', '2022-05-19', '07:28:00', 'BRI', '200000', 'OK', 'Verif'),
(65, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'Ngai sem', '2022-05-18', '20:18:00', 'BRI', '250000', 'OK', 'Verif'),
(66, 'facebook_depok', '18', 'Sodru ', 'Mari bantu Yatim ', 'Depok', 'Sariatul Aminah Stockist Nasa', '2022-05-19', '07:05:00', 'BRI', '135000', 'OK', 'Verif'),
(68, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Amrozi Atis', '2022-05-19', '10:37:00', 'BNI', '300000', 'OK', 'Verif'),
(69, 'facebook_depok', '12', 'Anita Sri Wulandari', 'regi alfiyansyah', 'Depok', 'rusly erni', '2022-05-19', '10:40:00', 'BRI', '488000', 'OK', 'Verif'),
(70, 'facebook_depok', '18', 'Sodru ', 'Berbagi yatim', 'Depok', 'erni angraeni', '2022-05-19', '11:20:00', 'BNI', '100000', 'OK', 'Verif'),
(71, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Simas Simas', '2022-05-19', '16:06:00', 'BNI', '50000', 'OK', 'Verif'),
(72, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Totok Tri indarto', '2022-05-19', '19:35:00', 'BNI', '50000', 'OK', 'Verif'),
(73, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'cak thohirin', '2022-05-19', '18:51:00', 'BNI', '100000', 'OK', 'Verif'),
(74, 'facebook_depok', '22', 'Sezha Octaviana', 'Kholid Fatullah', 'Depok', 'Ananda Suji Rinjani', '2022-05-20', '05:50:00', 'BNI', '200000', 'OK', 'Verif'),
(75, 'facebook_depok', '15', 'Riki', 'Zakat Yatim', 'Depok', 'Mamae Ferry Ferry', '2022-05-20', '09:39:00', 'BNI', '500000', 'OK', 'Verif'),
(76, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'yufnita', '2022-05-20', '10:25:00', 'BRI', '250000', 'OK', 'Verif'),
(77, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Yuni wahyu', '2022-05-20', '10:57:00', 'BNI', '429500', 'OK', 'Verif'),
(78, 'facebook_depok', '21', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', 'Depok', 'Sitty Paridah', '2022-05-20', '10:34:00', 'BRI', '295800', 'OK', 'Verif'),
(79, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Nirmala Mardhiah kunti', '2022-05-20', '14:41:00', 'BRI', '100000', 'OK', 'Verif'),
(80, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Tri Haryanto', '2022-05-21', '06:40:00', 'BNI', '100000', 'OK', 'Verif'),
(81, 'facebook_depok', '18', 'Sodru ', 'Berbagi yatim', 'Depok', 'Siti Fatimah ', '2022-05-21', '09:54:00', 'BNI', '320512', 'OK', 'Verif'),
(82, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'sanita ita', '2022-05-21', '10:31:00', 'BRI', '500000', 'OK', 'Verif'),
(83, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'KsatriaAlfatih Kusdiyanto', '2022-05-21', '14:48:00', 'BNI', '50000', 'OK', 'Verif'),
(84, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Sanggreng Kelana', '2022-05-21', '14:55:00', 'BRI', '300000', 'OK', 'Verif'),
(85, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'Padli ampunx separu daha', '2022-05-21', '15:02:00', 'BRI', '100000', 'OK', 'Verif'),
(86, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Suparni S', '2022-05-22', '05:10:00', 'BRI', '150000', 'OK', 'Verif'),
(87, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Dena Heryana', '2022-05-23', '02:02:00', 'BRI', '300000', 'OK', 'Verif'),
(88, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Rini Astuti', '2022-05-22', '11:33:00', 'BNI', '200383', 'OK', 'Verif'),
(89, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Ali Akbar', '2022-05-22', '00:59:00', 'BRI', '100000', 'OK', 'Verif'),
(90, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Warisah Warisah', '2022-05-23', '08:13:00', 'BRI', '200000', 'OK', 'Verif'),
(91, 'facebook_depok', '18', 'Sodru ', 'Berbagi yatim', 'Depok', 'murjani mahendra', '2022-05-23', '09:28:00', 'BNI', '30000', 'OK', 'Verif'),
(92, 'facebook_depok', '21', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', 'Depok', 'Lim', '2022-05-23', '14:47:00', 'BNI', '100000', 'OK', 'Verif'),
(93, 'facebook_depok', '18', 'Sodru ', 'Berbagi yatim', 'Depok', 'Putrie kirana', '2022-05-23', '13:53:00', 'BNI', '200000', 'OK', 'Verif'),
(94, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Yuli Susilo Wati', '2022-05-23', '16:04:00', 'BRI', '100000', 'OK', 'Verif'),
(95, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'ade Ruhiyat', '2022-05-23', '11:50:00', 'BRI', '200000', 'OK', 'Verif'),
(96, 'facebook_depok', '21', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', 'Depok', 'Mas Brow', '2022-05-24', '09:02:00', 'BRI', '330000', 'OK', 'Verif'),
(97, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', 'Depok', 'Mansur Ibn kasir', '2022-05-24', '09:55:00', 'BNI', '50000', 'OK', 'Verif'),
(98, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Narti Gian', '2022-05-24', '09:03:00', 'BNI', '213000', 'OK', 'Verif'),
(99, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Snow Sifa', '2022-05-24', '13:46:00', 'BNI', '150000', 'OK', 'Verif'),
(100, 'facebook_depok', '24', 'Haidar Sulthan', 'Haidar Sultan', 'Depok', 'Ismayana dly', '2022-05-24', '12:30:00', 'BRI', '200000', 'OK', 'Verif'),
(101, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Ummah Ramadhani Dhani', '2022-05-24', '22:28:00', 'BNI', '333000', 'OK', 'Verif'),
(102, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'Agestan Arif', '2022-05-24', '17:24:00', 'BRI', '300000', 'OK', 'Verif'),
(103, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Rinah Rinah', '2022-05-25', '10:26:00', 'BNI', '186800', 'OK', 'Verif'),
(104, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Nda Indong', '2022-05-25', '10:55:00', 'BNI', '175000', 'OK', 'Verif'),
(105, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'aponk', '2022-05-24', '20:03:00', 'BRI', '100000', 'OK', 'Verif'),
(106, 'facebook_depok', '15', 'Riki', 'Zakat Yatim', 'Depok', 'Bunda Evhasri Handayant Nchee', '2022-05-25', '12:51:00', 'BRI', '150000', 'OK', 'Verif'),
(107, 'facebook_depok', '21', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', 'Depok', 'Hamba Allah ', '2022-05-25', '15:41:00', 'BNI', '50000', 'OK', 'Verif'),
(108, 'facebook_depok', '18', 'Sodru ', 'Mari bantu Yatim ', 'Depok', 'Dahriah', '2022-05-26', '06:12:00', 'BRI', '250000', 'OK', 'Verif'),
(109, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'susy ninit', '2022-05-26', '09:50:00', 'BNI', '500000', 'OK', 'Verif'),
(110, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Rendi Raharjo', '2022-05-26', '05:01:00', 'BNI', '100000', 'OK', 'Verif'),
(111, 'facebook_depok', '12', 'Anita Sri Wulandari', 'Jihan ramadhani', 'Depok', 'Doniyenn', '2022-05-26', '10:16:00', 'BRI', '25000', 'OK', 'Verif'),
(112, 'facebook_depok', '22', 'Sezha Octaviana', 'Keberkahan Yatim', 'Depok', 'Arindita Ardiana', '2022-05-25', '16:39:00', 'BRI', '100000', 'OK', 'Verif'),
(113, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'bunda harryst', '2022-05-26', '11:06:00', 'BRI', '300000', 'OK', 'Verif'),
(114, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'Aponk', '2022-05-26', '11:06:00', 'BRI', '100000', 'OK', 'Verif'),
(115, 'facebook_depok', '6', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', 'Depok', 'Marulloh ', '2022-05-26', '11:54:00', 'BRI', '50000', 'OK', 'Verif'),
(116, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Samy Bramantyo', '2022-05-26', '11:34:00', 'BRI', '300000', 'OK', 'Verif'),
(117, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Siti Sabina', '2022-05-26', '12:45:00', 'BNI', '200000', 'OK', 'Verif'),
(118, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Dwi Rahmawati ', '2022-05-26', '01:53:00', 'BRI', '200000', 'Dibatalkan', 'Pending'),
(119, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Agoes Amanda', '2022-05-26', '15:48:00', 'BRI', '50000', 'OK', 'Verif'),
(120, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'ali murtado', '2022-05-26', '14:55:00', 'BRI', '250000', 'OK', 'Verif'),
(121, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'hermi Yati', '2022-05-26', '16:35:00', 'BRI', '201744', 'OK', 'Verif'),
(122, 'facebook_depok', '24', 'Haidar Sulthan', 'Muhammad Rizky Amin ', 'Depok', 'Kings Salman ', '2022-05-26', '19:40:00', 'BRI', '50000', 'OK', 'Verif'),
(123, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Mbah Kramat', '2022-05-27', '07:50:00', 'BRI', '100000', 'OK', 'Verif'),
(124, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Hendry Irawan kusuma', '2022-05-27', '07:25:00', 'BNI', '100000', 'OK', 'Verif'),
(125, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Jimshoney Retnashop karangamon', '2022-05-27', '09:09:00', 'BRI', '50000', 'OK', 'Verif'),
(126, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Sugihbookstore', '2022-05-27', '06:18:00', 'BNI', '14000', 'OK', 'Verif'),
(127, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'rahmat gunawan', '2022-05-26', '14:02:00', 'BRI', '50000', 'OK', 'Verif'),
(128, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Suhar Ni', '2022-05-27', '06:33:00', 'BRI', '500000', 'OK', 'Verif'),
(129, 'facebook_depok', '22', 'Sezha Octaviana', 'Keberkahan Yatim', 'Depok', 'Sumaya Sumaya', '2022-05-26', '17:36:00', 'BNI', '100000', 'OK', 'Verif'),
(130, 'facebook_depok', '6', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', 'Depok', 'ASTUTIK / Zainuddin Embak', '2022-05-27', '09:34:00', 'BRI', '500000', 'OK', 'Verif'),
(131, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Saiful Saiful', '2022-05-27', '11:00:00', 'BNI', '50000', 'OK', 'Verif'),
(133, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'Maslina', '2022-05-27', '10:41:00', 'BRI', '300000', 'OK', 'Verif'),
(134, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', 'Depok', 'Adam malik', '2022-05-27', '18:50:00', 'BNI', '50000', 'OK', 'Verif'),
(135, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'Resta Naseem Putrikaabi', '2022-05-27', '18:18:00', 'BRI', '200000', 'OK', 'Verif'),
(136, 'facebook_depok', '24', 'Haidar Sulthan', 'Haidar Sultan', 'Depok', 'Jumar Tang', '2022-05-27', '12:08:00', 'BNI', '20000', 'OK', 'Verif'),
(137, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'suwarti paytren', '2022-05-27', '14:26:00', 'BRI', '200000', 'OK', 'Verif'),
(138, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Whan akhi', '2022-05-27', '16:06:00', 'Uang Cash', '300000', 'OK', 'Verif'),
(139, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Tasroni roni', '2022-05-27', '20:30:00', 'BNI', '50000', 'OK', 'Verif'),
(140, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'aponk', '2022-05-27', '20:00:00', 'BRI', '100000', 'OK', 'Verif'),
(141, 'facebook_depok', '21', 'Ezaalfajri', 'Zaeni Mucthar', 'Depok', 'Joko sarianto', '2022-05-27', '18:06:00', 'BRI', '100000', 'OK', 'Verif'),
(142, 'facebook_depok', '21', 'Ezaalfajri', 'Zaeni Mucthar', 'Depok', 'Wijaya Kusuma', '2022-05-27', '18:33:00', 'BRI', '100000', 'OK', 'Verif'),
(143, 'facebook_depok', '18', 'Sodru ', 'Berbagi yatim', 'Depok', 'Rusdi Dp', '2022-05-27', '13:23:00', 'BRI', '100000', 'OK', 'Verif'),
(144, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'hema yanti', '2022-05-28', '12:49:00', 'BRI', '50000', 'OK', 'Verif'),
(145, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', 'Depok', 'Ika meilanka', '2022-05-29', '09:53:00', 'BNI', '100000', 'OK', 'Verif'),
(146, 'facebook_depok', '6', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', 'Depok', 'Rustam Abudirham', '2022-05-28', '18:56:00', 'BRI', '100000', 'OK', 'Verif'),
(147, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'agus salim', '2022-05-28', '20:23:00', 'BRI', '100000', 'OK', 'Verif'),
(148, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'budi prajitno', '2022-05-27', '14:18:00', 'BRI', '100000', 'OK', 'Verif'),
(149, 'facebook_depok', '21', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', 'Depok', 'AsPandi Husin', '2022-05-28', '14:27:00', 'BRI', '332500', 'OK', 'Verif'),
(150, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Gigik Suprayogi', '2022-05-29', '13:59:00', 'BNI', '100000', 'OK', 'Verif'),
(151, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Berlian Hati', '2022-05-28', '14:53:00', 'BNI', '50000', 'OK', 'Verif'),
(152, 'facebook_depok', '19', 'Resma Febiyanti', 'Fitri mulyani ', 'Depok', 'Idrus Fitriyanto', '2022-05-30', '14:12:00', 'BNI', '100000', 'OK', 'Verif'),
(153, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Ahlaam', '2022-05-30', '14:22:00', 'BNI', '100000', 'OK', 'Verif'),
(154, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Sinta Menik Dra Estikowati', '2022-05-30', '16:31:00', 'BRI', '50000', 'OK', 'Verif'),
(156, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Gufron Nugraha Kandolo', '2022-05-31', '06:16:00', 'BRI', '50000', 'OK', 'Verif'),
(157, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Predaktor', '2022-05-30', '05:20:00', 'BRI', '200000', 'OK', 'Verif'),
(158, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'Bagues Kurniaone', '2022-05-31', '03:54:00', 'BRI', '200000', 'OK', 'Verif'),
(159, 'facebook_depok', '6', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', 'Depok', 'Lia Dewan', '2022-05-30', '19:54:00', 'BRI', '200000', 'OK', 'Verif'),
(160, 'facebook_depok', '12', 'Anita Sri Wulandari', 'regi alfiyansyah', 'Depok', 'bayu anggoro', '2022-05-30', '19:13:00', 'BRI', '200000', 'OK', 'Verif'),
(161, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'Dhe Dhe Ty', '2022-05-30', '18:06:00', 'BRI', '200000', 'OK', 'Verif'),
(162, 'facebook_depok', '9', 'Mutmainah', 'sedekah yatim i', 'Depok', 'Haji Sabran', '2022-05-31', '12:10:00', 'BRI', '100000', 'OK', 'Verif'),
(163, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Satiwen satiwen', '2022-05-31', '22:41:00', 'BNI', '50000', 'OK', 'Verif'),
(164, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Sugihbookstore', '2022-05-30', '10:00:00', 'BNI', '10000', 'OK', 'Verif'),
(165, 'facebook_depok', '26', 'Omiati', 'Dompet Peduli Yatim', 'Depok', 'Oswaldo Dipororanto', '2022-06-01', '10:03:00', 'BRI', '100000', 'OK', 'Verif'),
(166, 'facebook_depok', '18', 'Sodru ', 'Mari bantu Yatim ', 'Depok', 'Dewi wulan ', '2022-06-01', '09:05:00', 'Mandiri', '25000', 'OK', 'Verif'),
(167, 'facebook_depok', '21', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', 'Depok', 'Sofia sofi', '2022-06-01', '11:52:00', 'BRI', '100000', 'OK', 'Verif'),
(168, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'Asep firdaus', '2022-06-01', '15:34:00', 'BNI', '150000', 'OK', 'Verif'),
(169, 'facebook_depok', '15', 'Riki', 'Zakat Yatim', 'Depok', 'ignatius Pandu Setyawan.', '2022-06-01', '20:48:00', 'BNI', '20000', 'OK', 'Verif'),
(170, 'facebook_depok', '18', 'Sodru ', 'Mari bantu Yatim ', 'Depok', 'Annisa Tsalsabila Rahmah Ill ', '2022-06-02', '08:48:00', 'BNI', '500000', 'OK', 'Verif'),
(171, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Delfin', '2022-06-02', '11:50:00', 'BNI', '150000', 'OK', 'Verif'),
(172, 'facebook_depok', '11', 'Lutfhi Aditya Rachman', 'Infaq Yatim', 'Depok', 'Rinah rinah', '2022-06-02', '12:11:00', 'BNI', '200000', 'OK', 'Verif'),
(173, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Solichin Ichin', '2022-06-02', '14:10:00', 'BRI', '100000', 'OK', 'Verif'),
(174, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'pratama adifa', '2022-06-02', '15:42:00', 'BNI', '100000', 'OK', 'Verif'),
(175, 'facebook_depok', '18', 'Sodru ', 'Mari bantu Yatim ', 'Depok', 'Dahriah', '2022-06-03', '05:21:00', 'BRI', '400000', 'Dibatalkan', 'Pending'),
(176, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'Hashirama Senju', '2022-06-02', '14:28:00', 'BNI', '15000', 'OK', 'Verif'),
(177, 'facebook_depok', '10', 'Sri Lestari', 'Putri Rahmadhani', 'Depok', 'Dede Dhamnsykh Sukma Rahayu', '2022-06-03', '05:27:00', 'BNI', '50000', 'OK', 'Verif'),
(178, 'facebook_depok', '19', 'Resma Febiyanti', 'Yatim piatu amanah i', 'Depok', 'Dahriah', '2022-06-03', '05:19:00', 'BRI', '400000', 'OK', 'Verif'),
(179, 'facebook_depok', '12', 'Anita Sri Wulandari', 'regi alfiyansyah', 'Depok', 'Ru liyah', '2022-06-02', '16:07:00', 'BRI', '500000', 'OK', 'Verif'),
(180, 'facebook_depok', '9', 'Mutmainah', 'sedekah yatim i', 'Depok', 'jocho cyah\'Ashter', '2022-06-03', '09:54:00', 'BRI', '300000', 'OK', 'Verif'),
(181, 'facebook_depok', '30', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', 'Depok', 'Ratna wati', '2022-06-02', '16:07:00', 'BRI', '25000', 'OK', 'Verif'),
(182, 'facebook_depok', '17', 'Dedi Makarim Manaf', 'Sedekah Yatim', 'Depok', 'Joe', '2022-06-03', '10:24:00', 'BNI', '30000', 'OK', 'Verif'),
(183, 'facebook_depok', '10', 'Sri Lestari', 'Gerbang Sedekah Yatim', 'Depok', 'kang jajank  neverdiess ', '2022-06-03', '10:33:00', 'BRI', '20001', 'OK', 'Verif'),
(184, 'facebook_depok', '21', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', 'Depok', 'Soleh lB', '2022-06-03', '06:22:00', 'BRI', '100000', 'OK', 'Verif'),
(185, 'facebook_depok', '21', 'Ezaalfajri', 'Zaeni Mucthar', 'Depok', 'ferdi Anzas', '2022-06-03', '10:54:00', 'BNI', '200000', 'OK', 'Verif'),
(186, 'facebook_depok', '25', 'Meisya Anastasia', 'Dompet Yatim Amanah', 'Depok', 'Mawar/ Wartono', '2022-06-03', '07:53:00', 'BRI', '50000', 'OK', 'Verif'),
(187, 'facebook_depok', '6', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', 'Depok', 'Fitri Yani (Watiah)', '2022-06-03', '12:09:00', 'BRI', '200000', 'OK', 'Verif'),
(188, 'facebook_depok', '15', 'Riki', 'Zakat Yatim', 'Depok', 'Ignatius Pandu Setyawan', '2022-06-03', '12:33:00', 'BNI', '15000', 'OK', 'Verif'),
(189, 'facebook_depok', '9', 'Mutmainah', 'Bersama yatim', 'Depok', 'solehaamin', '2022-06-03', '19:53:00', 'BRI', '50000', 'Menunggu Verifikasi', 'Pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_media`
--

CREATE TABLE `laporan_media` (
  `id` int(11) NOT NULL,
  `id_pengurus` varchar(100) NOT NULL,
  `nomor_id` varchar(100) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `pemegang` varchar(100) NOT NULL,
  `nama_akun` varchar(100) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `jumlahTeman` varchar(100) NOT NULL,
  `jumlahAdd` varchar(100) NOT NULL,
  `temanBaru` varchar(100) NOT NULL,
  `hapusTeman` varchar(100) NOT NULL,
  `totalSerangan` varchar(100) NOT NULL,
  `donatur` varchar(100) NOT NULL,
  `respon` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `insya_allah` varchar(100) NOT NULL,
  `minta_norek` varchar(100) NOT NULL,
  `belumbisa_bantu` varchar(100) NOT NULL,
  `tidak_respon` varchar(100) NOT NULL,
  `total_income` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporan_media`
--

INSERT INTO `laporan_media` (`id`, `id_pengurus`, `nomor_id`, `posisi`, `pemegang`, `nama_akun`, `tgl_laporan`, `keterangan`, `jumlahTeman`, `jumlahAdd`, `temanBaru`, `hapusTeman`, `totalSerangan`, `donatur`, `respon`, `alamat`, `insya_allah`, `minta_norek`, `belumbisa_bantu`, `tidak_respon`, `total_income`) VALUES
(6, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-18', '', '648', '', '', '', '100', '0', '13', '2', '5', '0', '1', '79', '0'),
(7, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-10', '', '151', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(9, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Mari bantu Yatim ', '2022-05-18', '', '583', '', '', '', '232', '0', '23', '0', '5', '2', '0', '202', '0'),
(11, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-10', '', '150', '', '', '', '10', '0', '5', '0', '0', '0', '0', '5', '0'),
(19, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-10', '', '1099', '', '', '', '42', '2', '3', '0', '1', '0', '0', '38', '1500000'),
(22, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-11', 'Tambah Teman', '167', '0', '17', '', '8', '0', '4', '0', '0', '0', '0', '0', '0'),
(23, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-11', 'Tambah Teman', '1105', '0', '6', '', '52', '0', '3', '0', '4', '0', '0', '48', '0'),
(24, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-10', '', '2771', '', '', '', '150', '0', '4', '1', '2', '1', '2', '140', '0'),
(26, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-09', '', '3178', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(28, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-12', 'Tambah Teman', '176', '0', '9', '', '9', '0', '4', '0', '1', '0', '0', '4', '0'),
(29, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-09', '', '2011', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(30, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-13', 'Tambah Teman', '184', '0', '8', '', '8', '0', '4', '0', '1', '0', '0', '0', '0'),
(32, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-10', 'Tambah Teman', '3192', '0', '14', '', '0', '1', '0', '0', '0', '0', '0', '0', '1000000'),
(33, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-12', 'Tambah Teman', '1110', '0', '5', '', '55', '0', '2', '0', '1', '0', '0', '52', '0'),
(35, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-11', 'Tambah Teman', '3196', '0', '4', '', '111', '1', '11', '0', '5', '0', '0', '0', '100000'),
(36, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-13', 'Tambah Teman', '1119', '0', '9', '', '60', '0', '2', '0', '2', '0', '0', '56', '0'),
(37, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-09', '', '2113', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '104800'),
(38, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-14', 'Tambah Teman', '1119', '0', '0', '', '60', '0', '5', '0', '0', '0', '1', '54', '0'),
(39, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-15', 'Tambah Teman', '1119', '0', '0', '', '0', '1', '0', '0', '0', '0', '0', '0', '100000'),
(41, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-11', 'Tambah Teman', '2777', '0', '6', '', '120', '0', '4', '0', '3', '0', '0', '113', '0'),
(43, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-12', 'Tambah Teman', '2785', '0', '8', '', '100', '1', '6', '0', '3', '0', '0', '90', '150000'),
(44, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-11', 'Tambah Teman', '161', '0', '10', '', '10', '0', '4', '0', '0', '0', '0', '6', '0'),
(46, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-10', 'Tambah Teman', '2131', '0', '18', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(47, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-13', 'Tambah Teman', '2792', '0', '7', '', '130', '0', '7', '1', '3', '1', '0', '119', '0'),
(48, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-16', 'Tambah Teman', '1121', '0', '2', '', '60', '0', '6', '0', '0', '0', '0', '54', '0'),
(50, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-14', 'Tambah Teman', '2800', '0', '8', '', '122', '0', '5', '0', '3', '0', '2', '112', '0'),
(53, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-15', 'Tambah Teman', '0', '0', '-2800', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(55, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-12', 'Tambah Teman', '3196', '0', '0', '', '141', '0', '9', '1', '1', '0', '0', '131', '0'),
(57, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-17', 'Tambah Teman', '1121', '0', '0', '', '69', '0', '5', '0', '0', '0', '0', '64', '0'),
(58, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-11', 'Tambah Teman', '2147', '0', '16', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(60, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-14', 'Tambah Teman', '194', '0', '10', '', '10', '0', '6', '0', '0', '0', '1', '3', '0'),
(61, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-16', 'Tambah Teman', '2801', '0', '2801', '', '100', '0', '4', '0', '2', '0', '1', '93', '0'),
(62, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-18', 'Tambah Teman', '1121', '0', '0', '', '56', '0', '7', '0', '2', '0', '0', '46', '0'),
(63, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-13', 'Tambah Teman', '3198', '0', '2', '', '137', '1', '8', '0', '5', '0', '2', '122', '45000'),
(64, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-12', 'Tambah Teman', '170', '0', '9', '', '15', '0', '7', '1', '1', '0', '0', '8', '0'),
(65, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-10', '', '2008', '', '', '', '50', '1', '12', '0', '3', '0', '1', '33', '50000'),
(66, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-14', 'Tambah Teman', '3216', '0', '18', '', '81', '0', '9', '0', '2', '0', '0', '72', '0'),
(67, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-10', '', '282', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(68, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-17', 'Tambah Teman', '2803', '0', '2803', '', '123', '1', '5', '0', '3', '1', '2', '111', '200000'),
(69, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-11', 'Tambah Teman', '285', '0', '3', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(70, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-15', 'Hapus Teman', '174', '', '', '-20', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(71, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-18', 'Tambah Teman', '2805', '0', '2805', '', '137', '0', '6', '2', '3', '0', '2', '124', '0'),
(72, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-16', 'Tambah Teman', '3226', '0', '10', '', '120', '0', '8', '1', '1', '0', '3', '107', '0'),
(73, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-12', 'Tambah Teman', '2153', '0', '6', '', '0', '1', '0', '0', '0', '0', '0', '0', '200000'),
(74, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-13', 'Tambah Teman', '2156', '0', '3', '', '0', '1', '0', '0', '0', '0', '0', '0', '10000'),
(75, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-09', '', '568', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(76, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-14', 'Tambah Teman', '2166', '0', '10', '', '0', '1', '0', '0', '0', '0', '0', '0', '50000'),
(77, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-17', 'Tambah Teman', '3236', '0', '10', '', '109', '0', '8', '0', '2', '0', '0', '99', '0'),
(78, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-10', '', '82', '', '', '', '10', '0', '2', '0', '1', '0', '1', '6', '0'),
(79, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-15', 'Tambah Teman', '2166', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(80, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-18', 'Tambah Teman', '3236', '0', '0', '', '114', '1', '8', '0', '2', '0', '0', '104', '300000'),
(81, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-16', 'Tambah Teman', '2166', '0', '0', '', '53', '0', '16', '0', '6', '0', '1', '30', '0'),
(82, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-10', 'Tambah Teman', '568', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(83, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-17', 'Tambah Teman', '2166', '0', '0', '', '46', '1', '8', '0', '1', '0', '0', '36', '50000'),
(84, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-09', '', '433', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(85, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-16', 'Tambah Teman', '180', '0', '6', '', '6', '0', '4', '0', '0', '0', '0', '2', '0'),
(86, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-11', 'Tambah Teman', '575', '0', '7', '', '32', '1', '7', '0', '1', '0', '0', '23', '50000'),
(87, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-10', 'Tambah Teman', '454', '0', '21', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(88, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-11', 'Tambah Teman', '2012', '0', '4', '', '50', '1', '12', '0', '2', '2', '1', '32', '651400'),
(90, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-17', 'Tambah Teman', '186', '0', '6', '', '6', '0', '5', '0', '1', '0', '0', '0', '0'),
(91, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-13', 'Tambah Teman', '181', '0', '11', '', '30', '0', '6', '1', '2', '0', '0', '21', '0'),
(92, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-18', 'Tambah Teman', '2173', '0', '7', '', '50', '0', '13', '0', '0', '0', '0', '0', '0'),
(93, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-11', 'Tambah Teman', '456', '0', '2', '', '69', '0', '7', '0', '5', '0', '2', '55', '0'),
(94, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-12', 'Tambah Teman', '456', '0', '0', '', '50', '0', '6', '0', '3', '0', '0', '41', '0'),
(95, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-12', 'Tambah Teman', '588', '0', '13', '', '38', '0', '5', '0', '2', '0', '1', '30', '0'),
(96, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-12', 'Tambah Teman', '2017', '0', '5', '', '50', '0', '7', '0', '2', '0', '1', '40', '0'),
(97, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-11', 'Tambah Teman', '90', '0', '8', '', '10', '0', '3', '0', '2', '0', '0', '5', '0'),
(98, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-18', 'Tambah Teman', '204', '40', '18', '', '9', '0', '6', '0', '0', '0', '0', '3', '0'),
(99, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-10', 'Tambah Teman', '2013', '0', '2', '', '120', '1', '10', '0', '4', '0', '3', '0', '100000'),
(100, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-12', 'Tambah Teman', '95', '0', '5', '', '10', '0', '3', '0', '2', '1', '0', '4', '0'),
(101, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-13', 'Tambah Teman', '99', '0', '4', '', '10', '0', '3', '1', '0', '0', '2', '5', '0'),
(102, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-13', 'Tambah Teman', '608', '0', '20', '', '34', '0', '6', '0', '0', '0', '0', '28', '0'),
(103, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-13', 'Tambah Teman', '2021', '0', '4', '', '100', '1', '20', '0', '7', '0', '1', '71', '100000'),
(104, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-14', 'Tambah Teman', '190', '0', '9', '', '21', '0', '7', '0', '0', '0', '1', '13', '0'),
(105, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-01-14', 'Tambah Teman', '104', '0', '5', '', '10', '0', '4', '1', '2', '0', '1', '2', '0'),
(106, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-13', 'Tambah Teman', '467', '0', '11', '', '18', '0', '3', '2', '1', '0', '0', '12', '0'),
(107, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-01', '', '649', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '5000'),
(108, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-14', 'Tambah Teman', '485', '0', '18', '', '43', '0', '5', '0', '3', '0', '0', '35', '0'),
(109, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-14', 'Tambah Teman', '621', '0', '13', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(111, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-12', 'Tambah Teman', '298', '0', '13', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(112, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-15', 'Tambah Teman', '195', '0', '5', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(113, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-16', 'Tambah Teman', '506', '0', '21', '', '82', '0', '6', '0', '8', '0', '0', '68', '0'),
(114, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-13', 'Tambah Teman', '304', '0', '6', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(115, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-17', 'Tambah Teman', '529', '0', '23', '', '3', '0', '0', '0', '0', '0', '0', '0', '0'),
(116, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-14', 'Tambah Teman', '322', '0', '18', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(117, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-16', 'Tambah Teman', '213', '0', '18', '', '19', '0', '5', '0', '1', '0', '0', '13', '0'),
(118, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-14', 'Tambah Teman', '2029', '0', '8', '', '50', '0', '10', '0', '3', '0', '1', '36', '0'),
(119, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-09', 'Tambah Teman', '649', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(120, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-10', 'Tambah Teman', '670', '0', '21', '', '92', '0', '11', '0', '2', '1', '1', '76', '0'),
(121, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-14', 'Tambah Teman', '109', '0', '10', '', '10', '0', '2', '1', '1', '0', '1', '5', '0'),
(122, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-18', 'Tambah Teman', '536', '65', '7', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(123, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-15', 'Tambah Teman', '621', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(124, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-11', '', '666', '', '', '', '70', '1', '6', '0', '4', '0', '3', '56', '206186'),
(125, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-16', 'Tambah Teman', '113', '0', '4', '', '10', '0', '3', '0', '1', '1', '0', '0', '0'),
(126, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-11', 'Tambah Teman', '679', '0', '9', '', '103', '0', '23', '0', '3', '1', '1', '75', '0'),
(127, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-16', 'Tambah Teman', '2033', '0', '4', '', '50', '0', '8', '0', '2', '1', '1', '38', '0'),
(128, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-11', 'Tambah Teman', '1996', '0', '-17', '', '97', '1', '5', '0', '3', '0', '0', '89', '601740'),
(129, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-15', 'Tambah Teman', '109', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(130, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-17', 'Tambah Teman', '232', '0', '19', '', '24', '0', '8', '1', '0', '0', '1', '14', '0'),
(131, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-16', 'Tambah Teman', '622', '0', '1', '', '37', '1', '8', '0', '5', '0', '0', '23', '300000'),
(132, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-10', '', '0', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '300000'),
(133, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-17', 'Tambah Teman', '116', '0', '3', '', '10', '0', '1', '0', '1', '0', '0', '8', '0'),
(134, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-12', 'Tambah Teman', '668', '', '2', '', '26', '0', '4', '0', '1', '0', '0', '21', '0'),
(135, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-12', 'Tambah Teman', '690', '0', '11', '', '93', '0', '6', '0', '5', '1', '2', '79', '0'),
(136, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-18', 'Tambah Teman', '116', '0', '0', '', '10', '0', '3', '1', '2', '0', '0', '4', '0'),
(137, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-18', 'Tambah Teman', '252', '0', '20', '', '32', '0', '8', '0', '3', '0', '0', '21', '0'),
(138, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-17', 'Tambah Teman', '622', '0', '0', '', '41', '0', '8', '0', '5', '0', '0', '28', '0'),
(139, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-13', 'Tambah Teman', '696', '0', '6', '', '70', '0', '10', '0', '2', '0', '1', '57', '0'),
(140, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Haidar Sultan', '2022-05-10', '', '590', '', '', '', '50', '0', '11', '0', '0', '0', '0', '0', '0'),
(141, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-17', 'Tambah Teman', '2033', '0', '0', '', '50', '0', '6', '0', '2', '0', '1', '41', '0'),
(142, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-13', 'Tambah Teman', '678', '10', '10', '', '49', '0', '1', '0', '1', '0', '0', '47', '0'),
(143, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-12', 'Tambah Teman', '2005', '0', '9', '', '149', '0', '11', '0', '1', '0', '1', '136', '0'),
(144, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-14', 'Tambah Teman', '706', '0', '10', '', '73', '0', '9', '0', '4', '1', '1', '58', '0'),
(145, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Haidar Sultan', '2022-05-11', 'Tambah Teman', '602', '0', '12', '', '166', '0', '13', '0', '0', '0', '3', '149', '0'),
(146, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-18', 'Tambah Teman', '626', '0', '4', '', '36', '1', '7', '0', '2', '0', '0', '26', '1000000'),
(147, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-16', 'Tambah Teman', '706', '0', '0', '', '48', '0', '12', '0', '1', '0', '1', '34', '0'),
(148, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-18', 'Tambah Teman', '2033', '0', '0', '', '100', '0', '7', '0', '4', '2', '1', '86', '0'),
(149, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Haidar Sultan', '2022-05-12', 'Tambah Teman', '604', '0', '2', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(150, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-17', 'Tambah Teman', '706', '0', '0', '', '28', '1', '12', '0', '0', '0', '0', '15', '50000'),
(151, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Haidar Sultan', '2022-05-13', 'Hapus Teman', '604', '', '', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0'),
(152, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-13', 'Tambah Teman', '2013', '0', '8', '', '100', '2', '1', '0', '3', '0', '2', '93', '250000'),
(153, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-18', 'Tambah Teman', '723', '0', '17', '', '67', '0', '16', '0', '3', '0', '2', '46', '0'),
(154, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-10', '', '1110', '', '', '', '50', '0', '9', '0', '4', '0', '1', '36', '0'),
(155, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-14', 'Tambah Teman', '684', '0', '6', '', '61', '0', '8', '0', '16', '0', '0', '37', '0'),
(156, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-14', 'Tambah Teman', '2013', '0', '0', '', '100', '0', '8', '0', '3', '0', '3', '86', '0'),
(157, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-11', 'Tambah Teman', '1113', '0', '3', '', '50', '0', '9', '0', '2', '0', '1', '38', '0'),
(158, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-15', 'Tambah Teman', '689', '', '5', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(159, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-16', 'Tambah Teman', '1999', '0', '-14', '', '97', '0', '11', '0', '2', '0', '1', '82', '0'),
(160, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-12', 'Tambah Teman', '1120', '0', '7', '', '50', '0', '12', '0', '1', '0', '1', '36', '0'),
(161, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-16', 'Tambah Teman', '694', '0', '5', '', '10', '0', '6', '0', '2', '0', '1', '1', '0'),
(162, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-17', 'Tambah Teman', '1997', '0', '-2', '', '47', '1', '4', '0', '3', '0', '0', '40', '100000'),
(163, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-18', 'Tambah Teman', '2001', '0', '4', '', '122', '2', '9', '0', '5', '0', '0', '108', '350000'),
(164, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-09', '', '365', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(165, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-10', 'Tambah Teman', '389', '0', '24', '', '80', '0', '23', '0', '4', '0', '3', '0', '0'),
(166, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-11', 'Tambah Teman', '395', '0', '6', '', '77', '0', '12', '0', '2', '1', '1', '61', '0'),
(167, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-12', 'Tambah Teman', '403', '0', '8', '', '45', '0', '9', '0', '0', '0', '1', '35', '0'),
(168, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-13', 'Tambah Teman', '934', '0', '934', '', '100', '0', '12', '0', '1', '0', '1', '86', '0'),
(169, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-14', 'Tambah Teman', '938', '40', '4', '', '100', '1', '8', '0', '2', '0', '1', '90', '130293'),
(170, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-13', 'Tambah Teman', '410', '0', '7', '', '48', '0', '6', '0', '2', '0', '3', '37', '0'),
(171, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-15', 'Tambah Teman', '938', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(172, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-14', 'Tambah Teman', '417', '0', '7', '', '31', '0', '12', '0', '2', '1', '1', '31', '0'),
(173, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-16', 'Tambah Teman', '942', '50', '4', '', '100', '1', '10', '0', '1', '0', '0', '88', '0'),
(174, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-16', 'Tambah Teman', '427', '0', '10', '', '36', '0', '14', '0', '0', '0', '1', '21', '0'),
(175, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-17', 'Tambah Teman', '435', '0', '8', '', '20', '0', '4', '0', '1', '0', '0', '15', '0'),
(176, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-17', 'Tambah Teman', '946', '40', '4', '', '100', '0', '14', '0', '3', '0', '1', '82', '0'),
(177, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-18', 'Tambah Teman', '952', '40', '6', '', '100', '1', '10', '0', '4', '0', '0', '85', '100000'),
(178, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-18', 'Tambah Teman', '451', '0', '16', '', '35', '1', '4', '0', '1', '0', '0', '29', '50000'),
(179, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-10', '', '451', '', '', '', '10', '0', '6', '0', '2', '0', '0', '2', '0'),
(180, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-11', 'Tambah Teman', '458', '0', '7', '', '13', '0', '5', '0', '1', '0', '0', '7', '0'),
(181, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-12', 'Tambah Teman', '471', '0', '13', '', '26', '0', '12', '0', '5', '1', '0', '8', '0'),
(182, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-13', 'Tambah Teman', '475', '0', '4', '', '22', '0', '5', '0', '1', '0', '0', '16', '0'),
(183, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-17', 'Tambah Teman', '709', '0', '15', '', '20', '0', '10', '0', '7', '0', '0', '3', '0'),
(184, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Mari bantu Yatim ', '2022-05-19', 'Tambah Teman', '588', '50', '5', '', '64', '1', '7', '0', '3', '0', '0', '53', '135000'),
(185, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-18', 'Tambah Teman', '718', '0', '9', '', '19', '0', '4', '0', '0', '0', '0', '15', '0'),
(186, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-13', 'Tambah Teman', '1128', '0', '8', '', '100', '0', '20', '2', '9', '1', '0', '68', '0'),
(187, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-14', 'Tambah Teman', '1137', '0', '9', '', '50', '0', '7', '0', '4', '2', '1', '36', '0'),
(188, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-16', 'Tambah Teman', '1137', '0', '0', '', '50', '0', '8', '0', '5', '0', '1', '36', '0'),
(189, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-17', 'Tambah Teman', '1137', '0', '0', '', '50', '0', '8', '0', '4', '1', '1', '36', '0'),
(190, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-13', 'Tambah Teman', '658', '0', '10', '', '75', '1', '13', '0', '2', '0', '0', '59', '200000'),
(191, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-18', 'Tambah Teman', '1138', '0', '1', '', '50', '0', '10', '0', '4', '2', '0', '34', '0'),
(192, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-19', 'Tambah Teman', '1140', '107', '2', '', '50', '0', '15', '0', '3', '1', '1', '30', '0'),
(193, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-19', 'Tambah Teman', '2034', '51', '1', '', '50', '0', '10', '0', '5', '1', '1', '33', '0'),
(194, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-19', 'Tambah Teman', '257', '0', '5', '', '35', '0', '16', '0', '1', '0', '1', '18', '0'),
(195, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-19', 'Tambah Teman', '2003', '91', '2', '', '122', '1', '7', '0', '2', '0', '1', '112', '100000'),
(196, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-19', 'Tambah Teman', '956', '30', '4', '', '50', '1', '8', '0', '0', '0', '1', '40', '100000'),
(197, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-19', 'Tambah Teman', '545', '59', '9', '', '54', '0', '3', '0', '3', '1', '0', '47', '0'),
(198, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-19', 'Tambah Teman', '211', '30', '7', '', '10', '0', '5', '0', '1', '0', '1', '3', '0'),
(199, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-19', 'Tambah Teman', '3236', '0', '0', '', '103', '1', '14', '0', '1', '0', '0', '88', '300000'),
(200, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-19', 'Tambah Teman', '2176', '0', '3', '', '72', '0', '11', '0', '3', '0', '0', '58', '0'),
(201, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-19', 'Tambah Teman', '466', '118', '15', '', '10', '1', '1', '0', '1', '0', '1', '6', '488000'),
(203, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-19', 'Tambah Teman', '671', '100', '23', '', '92', '0', '12', '0', '1', '0', '0', '79', '0'),
(205, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-19', 'Tambah Teman', '728', '0', '5', '', '38', '0', '10', '0', '3', '0', '0', '26', '0'),
(206, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-09', '', '1377', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(207, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-10', 'Tambah Teman', '1386', '0', '9', '', '50', '0', '6', '0', '0', '1', '1', '42', '0'),
(208, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-11', 'Tambah Teman', '1398', '0', '12', '', '50', '0', '10', '0', '2', '0', '1', '37', '0'),
(209, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-19', 'Tambah Teman', '1125', '63', '4', '', '60', '0', '4', '1', '0', '0', '0', '55', '0'),
(210, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-12', 'Tambah Teman', '1406', '0', '8', '', '50', '0', '7', '0', '1', '0', '2', '40', '0'),
(211, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-13', 'Tambah Teman', '1412', '0', '6', '', '50', '1', '5', '0', '2', '0', '0', '42', '200000'),
(219, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-10', '', '60', '', '', '', '20', '0', '2', '0', '2', '0', '0', '16', '0'),
(220, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-11', 'Tambah Teman', '63', '0', '3', '', '20', '0', '4', '0', '3', '1', '0', '12', '0'),
(221, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-12', 'Tambah Teman', '80', '0', '17', '', '17', '0', '7', '0', '1', '0', '0', '9', '0'),
(222, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-13', 'Tambah Teman', '86', '0', '6', '', '15', '0', '10', '0', '1', '0', '0', '4', '0'),
(223, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-14', 'Tambah Teman', '108', '0', '22', '', '22', '0', '2', '1', '0', '0', '0', '19', '0'),
(224, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-15', 'Tambah Teman', '108', '0', '0', '', '22', '0', '3', '0', '1', '0', '18', '0', '0'),
(225, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-16', 'Tambah Teman', '118', '0', '10', '', '10', '0', '4', '0', '1', '0', '0', '5', '0'),
(226, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-17', 'Tambah Teman', '127', '0', '9', '', '9', '0', '5', '1', '2', '0', '0', '1', '0'),
(227, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-18', 'Tambah Teman', '133', '142', '6', '', '6', '0', '3', '0', '0', '0', '0', '3', '0'),
(228, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-19', 'Tambah Teman', '141', '81', '8', '', '8', '0', '5', '0', '0', '0', '0', '3', '0'),
(229, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-20', 'Tambah Teman', '2037', '93', '3', '', '50', '0', '10', '0', '4', '1', '1', '36', '0'),
(230, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-20', 'Tambah Teman', '1142', '102', '2', '', '50', '0', '12', '0', '4', '1', '2', '31', '0'),
(231, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-14', 'Tambah Teman', '480', '0', '5', '', '21', '0', '5', '0', '1', '0', '0', '15', '0'),
(235, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-15', 'Tambah Teman', '491', '0', '11', '', '5', '1', '2', '0', '0', '0', '0', '2', '300000'),
(236, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-16', 'Tambah Teman', '504', '0', '13', '', '12', '0', '4', '0', '1', '0', '0', '7', '0'),
(237, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-17', 'Tambah Teman', '521', '0', '17', '', '37', '0', '7', '1', '0', '0', '0', '29', '0'),
(238, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-18', 'Tambah Teman', '526', '0', '5', '', '52', '0', '10', '0', '0', '0', '0', '42', '0'),
(239, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-19', 'Tambah Teman', '531', '0', '5', '', '33', '0', '5', '0', '1', '0', '0', '27', '0'),
(242, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-15', '', '115', '', '', '', '1', '1', '0', '0', '0', '0', '0', '0', '200000'),
(243, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-16', 'Tambah Teman', '129', '14', '14', '', '2', '0', '1', '0', '0', '0', '1', '0', '0'),
(244, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-17', 'Tambah Teman', '143', '14', '14', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(245, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-18', 'Tambah Teman', '154', '11', '11', '', '34', '0', '12', '0', '3', '0', '1', '17', '0'),
(246, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-19', 'Tambah Teman', '165', '11', '11', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(247, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-20', 'Tambah Teman', '175', '10', '10', '', '9', '0', '3', '0', '4', '0', '0', '2', '0'),
(248, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-13', '', '90', '', '', '', '20', '1', '9', '0', '0', '0', '0', '10', '200000'),
(249, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-14', 'Tambah Teman', '104', '14', '14', '', '17', '0', '7', '1', '2', '0', '1', '6', '0'),
(250, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-15', 'Tambah Teman', '104', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(251, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-16', 'Tambah Teman', '127', '23', '23', '', '4', '0', '3', '0', '0', '0', '0', '0', '1'),
(252, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-17', 'Tambah Teman', '137', '10', '10', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(253, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-18', 'Tambah Teman', '141', '4', '4', '', '35', '1', '10', '0', '3', '0', '1', '20', '300000'),
(254, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-19', 'Tambah Teman', '154', '13', '13', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(255, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-20', 'Tambah Teman', '169', '15', '15', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(256, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-20', 'Tambah Teman', '551', '124', '6', '', '53', '0', '24', '0', '0', '0', '0', '29', '0'),
(257, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-20', 'Hapus Teman', '956', '', '', '0', '100', '0', '10', '1', '2', '0', '0', '87', '0'),
(258, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-20', 'Tambah Teman', '1131', '30', '6', '', '50', '1', '4', '0', '0', '0', '1', '45', '500000'),
(259, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-20', 'Tambah Teman', '217', '30', '6', '', '10', '0', '6', '0', '0', '0', '0', '4', '0'),
(260, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-20', 'Tambah Teman', '2008', '55', '5', '', '109', '0', '9', '0', '1', '0', '3', '94', '0'),
(261, 'facebook_depok', '23', 'Facebook Depok', 'Liana Amalia', 'Sedekah dompet yatim', '2022-05-17', '', '121', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(262, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-20', 'Tambah Teman', '732', '0', '4', '', '37', '1', '15', '0', '2', '0', '1', '18', '250000'),
(263, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-20', 'Tambah Teman', '3237', '0', '1', '', '108', '0', '9', '0', '1', '0', '0', '0', '0'),
(264, 'facebook_depok', '23', 'Facebook Depok', 'Liana Amalia', 'Sedekah dompet yatim', '2022-05-18', 'Tambah Teman', '133', '12', '12', '', '12', '0', '8', '1', '0', '0', '0', '3', '0'),
(265, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-20', 'Tambah Teman', '686', '150', '15', '', '63', '0', '10', '0', '1', '1', '0', '51', '0'),
(266, 'facebook_depok', '23', 'Facebook Depok', 'Liana Amalia', 'Sedekah dompet yatim', '2022-05-19', 'Tambah Teman', '145', '12', '12', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(267, 'facebook_depok', '23', 'Facebook Depok', 'Liana Amalia', 'Sedekah dompet yatim', '2022-05-20', 'Tambah Teman', '152', '7', '7', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(269, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Sedekah Yatim', '2022-05-14', 'Tambah Teman', '108', '108', '108', '', '3', '1', '0', '0', '0', '0', '0', '2', '50000'),
(270, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-19', 'Tambah Teman', '718', '0', '0', '', '33', '0', '2', '0', '1', '0', '1', '29', '0'),
(271, 'facebook_depok', '23', 'Facebook Depok', 'Liana Amalia', 'Dompet yatim piatu II', '2022-05-17', '', '98', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(272, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-18', '', '147', '', '', '', '35', '0', '14', '0', '0', '0', '0', '21', '0'),
(273, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-20', 'Tambah Teman', '502', '86', '36', '', '11', '0', '2', '0', '0', '0', '1', '8', '0'),
(274, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-20', 'Tambah Teman', '737', '0', '19', '', '29', '1', '2', '0', '0', '0', '1', '25', '295800'),
(276, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Riki Saputra', '2022-05-14', '', '60', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(277, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-19', 'Tambah Teman', '182', '35', '35', '', '20', '0', '7', '0', '0', '0', '0', '13', '0'),
(278, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-20', 'Tambah Teman', '190', '8', '8', '', '8', '0', '2', '0', '0', '0', '0', '0', '0'),
(279, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-20', 'Tambah Teman', '2182', '0', '6', '', '49', '0', '12', '0', '1', '0', '0', '35', '0'),
(280, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Sedekah Yatim', '2022-05-15', 'Tambah Teman', '108', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(281, 'facebook_depok', '23', 'Facebook Depok', 'Liana Amalia', 'Dompet yatim piatu II', '2022-05-20', 'Tambah Teman', '110', '12', '12', '', '12', '0', '4', '0', '0', '0', '0', '8', '0'),
(282, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Riki Saputra', '2022-05-15', 'Tambah Teman', '60', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(283, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Sedekah Yatim', '2022-05-16', 'Tambah Teman', '124', '16', '16', '', '8', '0', '3', '0', '0', '0', '0', '5', '0'),
(284, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-19', 'Tambah Teman', '632', '0', '6', '', '53', '0', '9', '0', '2', '0', '0', '42', '0'),
(285, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Mari bantu Yatim ', '2022-05-20', 'Tambah Teman', '588', '0', '0', '', '80', '0', '10', '0', '3', '2', '0', '66', '0'),
(286, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-09', '', '124', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(287, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-10', 'Tambah Teman', '124', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(288, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-11', 'Tambah Teman', '135', '0', '11', '', '36', '1', '7', '0', '2', '0', '0', '26', '100000'),
(289, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-12', 'Tambah Teman', '144', '0', '9', '', '34', '0', '7', '0', '1', '0', '0', '26', '0'),
(290, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-13', 'Tambah Teman', '154', '0', '10', '', '35', '0', '12', '0', '0', '0', '0', '23', '0'),
(291, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-14', 'Tambah Teman', '157', '0', '3', '', '12', '0', '5', '0', '1', '0', '0', '6', '0'),
(292, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-15', 'Tambah Teman', '157', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(293, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-16', 'Tambah Teman', '166', '0', '9', '', '9', '0', '3', '0', '1', '0', '0', '5', '0'),
(294, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-17', 'Tambah Teman', '172', '0', '6', '', '6', '1', '3', '0', '0', '0', '0', '2', '50000'),
(295, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-18', 'Tambah Teman', '183', '0', '11', '', '0', '0', '6', '0', '1', '0', '0', '4', '0'),
(296, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-19', 'Tambah Teman', '192', '0', '9', '', '9', '0', '4', '0', '1', '0', '0', '4', '0'),
(297, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-20', 'Tambah Teman', '206', '0', '14', '', '14', '0', '6', '0', '1', '0', '0', '7', '0'),
(298, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-20', 'Tambah Teman', '149', '44', '8', '', '32', '0', '13', '0', '1', '0', '2', '16', '0'),
(299, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Riki Saputra', '2022-05-16', 'Tambah Teman', '86', '26', '26', '', '9', '0', '2', '0', '0', '1', '0', '6', '0'),
(300, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Sedekah Yatim', '2022-05-17', 'Tambah Teman', '139', '15', '15', '', '3', '0', '0', '0', '0', '0', '0', '0', '0'),
(301, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Riki Saputra', '2022-05-17', 'Tambah Teman', '103', '', '17', '', '7', '0', '3', '0', '0', '0', '0', '4', '0'),
(302, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-20', 'Tambah Teman', '260', '0', '3', '', '47', '0', '24', '0', '1', '0', '1', '21', '0'),
(303, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-20', 'Tambah Teman', '536', '0', '5', '', '81', '0', '11', '0', '1', '1', '0', '67', '0'),
(304, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-15', 'Tambah Teman', '333', '0', '11', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(305, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-16', 'Tambah Teman', '337', '0', '4', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(306, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-18', 'Tambah Teman', '344', '0', '7', '', '0', '1', '0', '0', '0', '0', '0', '0', '301639'),
(307, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-17', 'Tambah Teman', '344', '0', '0', '', '0', '1', '0', '0', '0', '0', '0', '0', '400000'),
(308, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-19', 'Tambah Teman', '357', '0', '13', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(309, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-20', 'Tambah Teman', '363', '0', '6', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(310, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-19', 'Tambah Teman', '2807', '0', '2', '', '70', '0', '3', '0', '2', '0', '0', '65', '0'),
(311, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-20', 'Tambah Teman', '2813', '0', '4', '', '80', '2', '4', '0', '2', '0', '0', '72', '529500'),
(312, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-19', 'Tambah Teman', '120', '0', '4', '', '5', '0', '2', '0', '1', '0', '0', '0', '0'),
(313, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-20', 'Tambah Teman', '122', '0', '2', '', '5', '0', '2', '0', '1', '0', '2', '0', '0'),
(316, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-21', 'Tambah Teman', '962', '40', '6', '', '50', '1', '12', '1', '2', '0', '3', '31', '320512'),
(317, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-21', 'Hapus Teman', '217', '', '', '0', '10', '0', '4', '0', '1', '0', '0', '5', '0'),
(318, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-21', 'Tambah Teman', '2189', '0', '7', '', '116', '0', '20', '0', '5', '0', '0', '91', '0'),
(319, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-21', 'Tambah Teman', '737', '0', '5', '', '50', '2', '15', '0', '7', '0', '1', '25', '550000'),
(320, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-21', 'Tambah Teman', '268', '0', '8', '', '20', '0', '13', '1', '2', '0', '2', '2', '0'),
(321, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-22', 'Tambah Teman', '276', '0', '8', '', '5', '0', '5', '1', '1', '0', '0', '0', '0');
INSERT INTO `laporan_media` (`id`, `id_pengurus`, `nomor_id`, `posisi`, `pemegang`, `nama_akun`, `tgl_laporan`, `keterangan`, `jumlahTeman`, `jumlahAdd`, `temanBaru`, `hapusTeman`, `totalSerangan`, `donatur`, `respon`, `alamat`, `insya_allah`, `minta_norek`, `belumbisa_bantu`, `tidak_respon`, `total_income`) VALUES
(322, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-21', 'Tambah Teman', '216', '0', '10', '', '10', '0', '6', '0', '1', '0', '0', '3', '0'),
(323, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-21', 'Tambah Teman', '541', '0', '5', '', '62', '0', '7', '0', '1', '0', '0', '54', '0'),
(324, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-22', 'Tambah Teman', '546', '0', '5', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(325, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-20', 'Tambah Teman', '637', '0', '5', '', '55', '0', '9', '1', '2', '0', '0', '43', '0'),
(326, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-18', '', '146', '', '', '', '59', '0', '9', '0', '1', '0', '0', '49', '0'),
(327, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-19', 'Tambah Teman', '182', '36', '36', '', '23', '0', '2', '0', '0', '0', '0', '21', '0'),
(328, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-20', 'Tambah Teman', '211', '29', '29', '', '20', '0', '9', '0', '1', '0', '0', '10', '0'),
(331, 'facebook_depok', '7', 'Facebook Depok', 'Izzy Azkia Hafidz ', 'Izzy Azkia Hafidz', '2022-05-18', '', '132', '', '', '', '34', '0', '7', '0', '1', '0', '0', '26', '0'),
(332, 'facebook_depok', '7', 'Facebook Depok', 'Izzy Azkia Hafidz ', 'Izzy Azkia Hafidz', '2022-05-19', 'Tambah Teman', '145', '13', '13', '', '13', '0', '4', '0', '0', '0', '0', '9', '0'),
(333, 'facebook_depok', '7', 'Facebook Depok', 'Izzy Azkia Hafidz ', 'Izzy Azkia Hafidz', '2022-05-20', 'Tambah Teman', '146', '1', '1', '', '12', '0', '5', '0', '0', '0', '0', '7', '0'),
(334, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-21', 'Tambah Teman', '642', '0', '5', '', '54', '0', '10', '1', '3', '1', '0', '39', '0'),
(337, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-10', '', '3395', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(338, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-16', 'Tambah Teman', '3397', '0', '2', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(343, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-17', 'Tambah Teman', '3397', '0', '0', '', '0', '1', '0', '0', '0', '0', '0', '0', '1000000'),
(344, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-18', 'Tambah Teman', '3404', '0', '7', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(345, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-19', 'Tambah Teman', '3407', '0', '3', '', '0', '2', '0', '0', '0', '0', '0', '0', '100000'),
(346, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-20', 'Tambah Teman', '3414', '0', '7', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(347, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-21', 'Tambah Teman', '3422', '0', '8', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(348, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-05-21', 'Tambah Teman', '372', '0', '9', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(349, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-09', '', '549', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(350, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-10', 'Tambah Teman', '553', '0', '4', '', '50', '0', '2', '0', '2', '0', '1', '45', '0'),
(351, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-11', 'Tambah Teman', '558', '0', '5', '', '50', '0', '2', '0', '1', '0', '2', '45', '0'),
(352, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-12', 'Tambah Teman', '564', '0', '6', '', '50', '0', '4', '0', '2', '0', '2', '42', '0'),
(353, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-13', 'Tambah Teman', '566', '0', '2', '', '50', '0', '9', '0', '0', '0', '1', '40', '0'),
(354, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-14', 'Tambah Teman', '567', '0', '1', '', '50', '0', '2', '0', '2', '0', '1', '45', '0'),
(355, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-16', 'Tambah Teman', '570', '100', '3', '', '50', '0', '5', '0', '2', '0', '0', '43', '0'),
(356, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-17', 'Tambah Teman', '573', '100', '3', '', '50', '0', '3', '0', '2', '0', '0', '45', '0'),
(357, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-18', 'Tambah Teman', '577', '110', '4', '', '50', '0', '4', '0', '1', '0', '0', '45', '0'),
(358, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-20', 'Tambah Teman', '580', '100', '3', '', '50', '0', '4', '0', '1', '0', '2', '43', '0'),
(359, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-21', 'Tambah Teman', '582', '100', '2', '', '40', '0', '4', '0', '0', '0', '1', '35', '0'),
(360, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-21', 'Tambah Teman', '1149', '164', '7', '', '100', '0', '17', '2', '6', '2', '1', '72', '0'),
(361, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-22', 'Hapus Teman', '262', '', '', '-700', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(362, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-21', 'Tambah Teman', '2041', '120', '4', '', '100', '0', '20', '4', '4', '2', '2', '67', '0'),
(363, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-21', 'Tambah Teman', '0', '0', '-2813', '', '20', '0', '1', '0', '0', '0', '0', '19', '0'),
(364, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-21', 'Tambah Teman', '0', '0', '-122', '', '10', '0', '2', '0', '0', '0', '0', '8', '0'),
(365, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-22', 'Hapus Teman', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(366, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-22', 'Hapus Teman', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(367, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-21', 'Tambah Teman', '3244', '144', '7', '', '54', '0', '3', '0', '1', '0', '0', '50', '0'),
(368, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-22', 'Hapus Teman', '217', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(369, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-21', 'Tambah Teman', '556', '89', '5', '', '15', '1', '1', '0', '3', '0', '0', '10', '300000'),
(370, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-14', 'Tambah Teman', '1420', '0', '8', '', '50', '1', '5', '0', '0', '0', '0', '45', '300000'),
(371, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-22', 'Tambah Teman', '216', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(372, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-22', 'Tambah Teman', '642', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(373, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-16', 'Tambah Teman', '1432', '0', '12', '', '60', '0', '7', '0', '1', '0', '1', '51', '0'),
(374, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-17', 'Tambah Teman', '1438', '0', '6', '', '60', '0', '4', '0', '1', '1', '2', '52', '0'),
(375, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-18', 'Tambah Teman', '1443', '0', '5', '', '50', '0', '3', '0', '1', '0', '0', '46', '0'),
(376, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-21', 'Tambah Teman', '189', '14', '14', '', '15', '0', '7', '0', '2', '0', '0', '6', '0'),
(377, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-22', 'Tambah Teman', '189', '0', '0', '', '2', '0', '2', '0', '0', '0', '0', '0', '0'),
(378, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-21', 'Tambah Teman', '180', '11', '11', '', '13', '0', '5', '0', '4', '0', '0', '4', '0'),
(379, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-22', 'Tambah Teman', '180', '0', '0', '', '3', '0', '2', '0', '1', '0', '0', '0', '0'),
(380, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-19', 'Tambah Teman', '1443', '0', '0', '', '0', '1', '0', '0', '0', '0', '0', '0', '200000'),
(381, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-20', 'Tambah Teman', '1455', '140', '12', '', '100', '1', '5', '0', '0', '0', '0', '94', '200000'),
(382, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-21', 'Tambah Teman', '1467', '160', '12', '', '105', '0', '2', '0', '4', '1', '0', '98', '0'),
(383, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-21', 'Tambah Teman', '2015', '22', '7', '', '151', '1', '7', '0', '3', '1', '1', '139', '100000'),
(384, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Sedekah Yatim', '2022-05-18', 'Tambah Teman', '146', '7', '7', '', '10', '0', '2', '0', '0', '0', '0', '8', '0'),
(385, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Riki Saputra', '2022-05-18', 'Tambah Teman', '109', '6', '6', '', '6', '0', '4', '0', '0', '0', '0', '2', '0'),
(386, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-21', 'Tambah Teman', '518', '46', '16', '', '10', '0', '1', '0', '0', '0', '0', '9', '0'),
(387, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Mari bantu Yatim ', '2022-05-16', 'Tambah Teman', '588', '0', '0', '', '119', '0', '18', '0', '4', '1', '0', '96', '0'),
(388, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Mari bantu Yatim ', '2022-05-17', 'Tambah Teman', '588', '0', '0', '', '146', '0', '15', '0', '2', '0', '2', '127', '0'),
(389, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Mari bantu Yatim ', '2022-05-21', 'Hapus Teman', '586', '', '', '-2', '48', '0', '9', '0', '1', '0', '0', '39', '0'),
(390, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-16', 'Tambah Teman', '688', '0', '2', '', '75', '0', '11', '1', '3', '1', '0', '59', '0'),
(391, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-17', 'Tambah Teman', '688', '200', '2', '', '68', '0', '12', '0', '1', '0', '0', '55', '0'),
(392, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Anita Sri Wulandari', '2022-05-23', 'Tambah Teman', '279', '0', '3', '', '17', '0', '11', '0', '1', '0', '0', '5', '0'),
(393, 'facebook_depok', '14', 'Facebook Depok', 'Novit Riyadi', 'Peduli bersama yatim', '2022-05-23', 'Tambah Teman', '548', '0', '2', '', '37', '0', '5', '0', '1', '0', '0', '31', '0'),
(394, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-23', 'Hapus Teman', '957', '', '', '695', '80', '2', '8', '0', '0', '0', '2', '68', '230000'),
(395, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-23', 'Tambah Teman', '223', '0', '6', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(396, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-24', 'Tambah Teman', '3422', '0', '0', '', '0', '2', '0', '0', '0', '0', '0', '0', '363000'),
(397, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-23', 'Hapus Teman', '2015', '', '', '-26', '50', '0', '6', '1', '1', '1', '3', '38', '0'),
(398, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-23', 'Hapus Teman', '1142', '', '', '-7', '50', '0', '9', '1', '4', '0', '0', '15', '0'),
(399, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-24', 'Hapus Teman', '2011', '', '', '-4', '50', '1', '10', '0', '2', '1', '0', '36', '335500'),
(400, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-24', 'Tambah Teman', '964', '30', '7', '', '80', '0', '9', '0', '0', '0', '0', '71', '0'),
(401, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-24', 'Tambah Teman', '226', '30', '3', '', '10', '0', '4', '0', '0', '0', '0', '6', '0'),
(402, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-23', 'Tambah Teman', '642', '0', '0', '', '50', '0', '7', '0', '1', '0', '0', '42', '0'),
(403, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-24', 'Hapus Teman', '1142', '', '', '0', '50', '1', '10', '0', '4', '1', '0', '34', '50000'),
(404, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-21', 'Tambah Teman', '700', '200', '14', '', '97', '0', '22', '0', '3', '0', '0', '72', '0'),
(405, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-23', 'Tambah Teman', '700', '150', '0', '', '58', '0', '18', '0', '3', '0', '1', '36', '0'),
(406, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-21', 'Tambah Teman', '1138', '59', '7', '', '62', '0', '5', '0', '0', '1', '0', '56', '0'),
(407, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-23', 'Tambah Teman', '1138', '0', '0', '', '41', '0', '3', '0', '0', '0', '0', '0', '0'),
(408, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-24', 'Tambah Teman', '1149', '47', '11', '', '42', '0', '5', '0', '0', '0', '0', '37', '7'),
(409, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-22', 'Tambah Teman', '1138', '0', '-11', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(410, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-21', 'Tambah Teman', '159', '68', '10', '', '10', '0', '2', '0', '0', '0', '0', '8', '0'),
(411, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-22', 'Tambah Teman', '159', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(412, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-23', 'Tambah Teman', '159', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(413, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-24', 'Tambah Teman', '173', '85', '14', '', '8', '0', '0', '0', '0', '0', '0', '0', '0'),
(414, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-21', 'Tambah Teman', '797', '0', '60', '', '27', '0', '3', '0', '0', '0', '0', '24', '0'),
(415, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-25', 'Hapus Teman', '1986', '', '', '-29', '138', '2', '16', '0', '28', '0', '11', '93', '400000'),
(416, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-25', 'Tambah Teman', '3422', '20', '0', '', '100', '2', '9', '0', '1', '0', '1', '88', '316800'),
(417, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-05-25', 'Tambah Teman', '567', '0', '11', '', '35', '0', '3', '0', '0', '0', '0', '32', '0'),
(418, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-25', 'Tambah Teman', '970', '40', '6', '', '40', '0', '12', '0', '2', '0', '0', '26', '0'),
(419, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-25', 'Tambah Teman', '239', '40', '13', '', '20', '0', '9', '0', '1', '0', '1', '9', '0'),
(420, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-22', 'Tambah Teman', '798', '0', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(421, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-24', 'Tambah Teman', '642', '0', '0', '', '50', '0', '10', '0', '2', '0', '0', '38', '0'),
(423, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-05-25', 'Tambah Teman', '3229', '0', '-15', '', '118', '0', '3', '0', '0', '0', '1', '114', '0'),
(424, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-25', 'Tambah Teman', '643', '0', '1', '', '50', '0', '7', '1', '1', '0', '0', '41', '0'),
(425, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-23', 'Tambah Teman', '801', '0', '3', '', '27', '1', '3', '0', '0', '0', '0', '23', '100000'),
(426, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-23', 'Tambah Teman', '216', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(427, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-24', 'Tambah Teman', '221', '0', '5', '', '9', '0', '4', '0', '1', '0', '0', '4', '0'),
(428, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-25', 'Tambah Teman', '224', '0', '3', '', '25', '0', '8', '0', '1', '1', '0', '15', '0'),
(429, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-25', 'Tambah Teman', '2017', '159', '6', '', '10', '0', '13', '0', '4', '1', '1', '86', '0'),
(430, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-25', 'Tambah Teman', '1160', '73', '11', '', '109', '1', '14', '0', '0', '0', '3', '92', '150000'),
(431, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-24', 'Tambah Teman', '803', '0', '2', '', '25', '1', '10', '0', '0', '0', '0', '14', '330000'),
(432, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-25', 'Tambah Teman', '805', '0', '2', '', '202', '0', '10', '0', '2', '1', '0', '189', '0'),
(433, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-25', 'Tambah Teman', '2200', '0', '11', '', '99', '0', '28', '0', '5', '0', '0', '66', '0'),
(434, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-25', 'Tambah Teman', '545', '43', '27', '', '115', '0', '13', '0', '8', '0', '4', '91', '0'),
(435, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-25', 'Tambah Teman', '596', '100', '14', '', '14', '1', '3', '0', '0', '0', '0', '10', '100000'),
(436, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-25', 'Tambah Teman', '1152', '159', '10', '', '100', '0', '11', '0', '6', '1', '1', '81', '0'),
(437, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-25', 'Hapus Teman', '1441', '', '', '-26', '105', '0', '4', '0', '1', '0', '1', '99', '0'),
(438, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-24', 'Tambah Teman', '703', '150', '3', '', '41', '0', '8', '1', '5', '0', '0', '34', '0'),
(439, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-25', 'Tambah Teman', '705', '100', '2', '', '42', '0', '10', '0', '3', '0', '0', '28', '0'),
(440, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Mari bantu Yatim ', '2022-05-25', 'Tambah Teman', '601', '150', '15', '', '47', '0', '9', '0', '5', '1', '0', '32', '0'),
(441, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Mari bantu Yatim ', '2022-05-26', 'Tambah Teman', '608', '100', '7', '', '48', '1', '15', '0', '8', '0', '0', '24', '250000'),
(442, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-26', 'Tambah Teman', '227', '0', '3', '', '50', '1', '9', '0', '3', '0', '0', '37', '25000'),
(443, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-26', 'Tambah Teman', '3422', '0', '0', '', '100', '1', '8', '0', '0', '0', '0', '92', '100000'),
(444, 'facebook_depok', '24', 'Facebook Depok', 'Haidar Sulthan', 'Muhammad Rizky Amin ', '2022-05-26', 'Tambah Teman', '709', '150', '4', '', '42', '1', '6', '0', '4', '0', '0', '30', '50000'),
(445, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-26', 'Tambah Teman', '643', '0', '0', '', '25', '0', '8', '0', '2', '0', '0', '25', '0'),
(446, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-26', 'Tambah Teman', '976', '40', '6', '', '40', '0', '12', '0', '2', '1', '0', '25', '0'),
(449, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-26', 'Tambah Teman', '2024', '0', '7', '', '60', '1', '10', '0', '2', '1', '2', '44', '200000'),
(450, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-23', 'Tambah Teman', '206', '17', '17', '', '5', '0', '4', '0', '0', '0', '0', '1', '0'),
(451, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-24', 'Tambah Teman', '222', '16', '16', '', '10', '0', '6', '0', '0', '0', '0', '4', '0'),
(452, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-25', 'Tambah Teman', '242', '20', '20', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(453, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-26', 'Tambah Teman', '265', '23', '23', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(454, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-23', 'Tambah Teman', '200', '20', '20', '', '9', '0', '3', '0', '3', '0', '0', '3', '0'),
(455, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-24', 'Tambah Teman', '207', '7', '7', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(456, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-25', 'Tambah Teman', '222', '15', '15', '', '8', '0', '6', '0', '2', '0', '0', '0', '0'),
(457, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-26', 'Tambah Teman', '250', '28', '28', '', '1', '1', '0', '0', '0', '0', '0', '0', '50000'),
(458, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-21', 'Tambah Teman', '198', '8', '8', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(459, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Linda Indriyani ', '2022-05-25', '', '79', '', '', '', '39', '0', '7', '0', '0', '0', '0', '0', '0'),
(460, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-21', 'Tambah Teman', '226', '15', '15', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(461, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-26', 'Hapus Teman', '1151', '', '', '-1', '50', '0', '10', '0', '2', '0', '2', '36', '0'),
(462, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-22', 'Tambah Teman', '198', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(463, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-22', 'Tambah Teman', '226', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(464, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Berkah Dompet Yatim', '2022-05-26', '', '49', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(465, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-23', 'Tambah Teman', '204', '6', '6', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(466, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Yuni Sarah', '2022-05-25', '', '48', '', '', '', '4', '0', '3', '0', '0', '0', '0', '1', '0'),
(467, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Linda Indriyani ', '2022-05-26', 'Tambah Teman', '111', '32', '32', '', '24', '0', '7', '0', '2', '0', '0', '15', '0'),
(468, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Yuni Sarah', '2022-05-26', 'Tambah Teman', '64', '16', '16', '', '5', '0', '2', '0', '0', '0', '0', '3', '0'),
(469, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Zahra Maulida', '2022-05-25', '', '83', '', '', '', '27', '0', '16', '0', '0', '0', '0', '11', '0'),
(470, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-23', 'Tambah Teman', '245', '19', '19', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(471, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-26', 'Tambah Teman', '553', '15', '8', '', '31', '0', '7', '0', '3', '0', '3', '18', '0'),
(472, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Nurmala Sari', '2022-05-25', '', '65', '', '', '', '13', '0', '4', '0', '3', '0', '0', '6', '0'),
(473, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Donasi Dompet Yatim', '2022-05-26', '', '48', '', '', '', '1', '0', '0', '0', '0', '0', '0', '1', '0'),
(474, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Zahra Maulida', '2022-05-26', 'Tambah Teman', '115', '32', '32', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(475, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Dompet Berkah Yatim', '2022-05-26', '', '50', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(476, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Zakia Nadila ', '2022-05-25', 'Tambah Teman', '68', '68', '68', '', '27', '0', '17', '0', '2', '0', '0', '10', '0'),
(477, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Dompet keberkahan yatim', '2022-05-26', '', '48', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(478, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Nurmala Sari', '2022-05-26', 'Tambah Teman', '87', '22', '22', '', '11', '0', '2', '0', '0', '0', '0', '9', '0'),
(479, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Pahala Sedekah Yatim Piatu', '2022-05-26', '', '49', '', '', '', '2', '0', '1', '0', '0', '0', '0', '0', '0'),
(480, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Silvi agnia', '2022-05-25', '', '59', '', '', '', '4', '0', '1', '0', '1', '0', '0', '2', '0'),
(481, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Alfiatul Khoyyiroh', '2022-05-25', '', '59', '', '', '', '6', '0', '4', '0', '0', '0', '0', '2', '0'),
(482, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Okta berliana', '2022-05-25', '', '54', '', '', '', '4', '0', '4', '0', '0', '0', '0', '0', '0'),
(483, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Silvi agnia', '2022-05-26', 'Tambah Teman', '82', '23', '23', '', '14', '0', '5', '0', '0', '0', '0', '9', '0'),
(484, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Okta berliana', '2022-05-26', 'Tambah Teman', '78', '24', '24', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(485, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Infaq yatim piatu', '2022-05-26', '', '52', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(486, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-26', 'Tambah Teman', '1991', '31', '5', '', '152', '4', '7', '0', '0', '0', '2', '140', '1150000'),
(487, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Zakia Nadila ', '2022-05-26', '', '79', '', '', '', '3', '0', '1', '0', '0', '0', '0', '2', '0'),
(488, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Dompet semangat yatim', '2022-05-26', '', '9', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(489, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Kebahagiaan yatim', '2022-05-26', '', '45', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(490, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Siti Amaliah', '2022-05-25', '', '52', '', '', '', '12', '0', '0', '0', '1', '0', '0', '0', '0'),
(491, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Alfiatul Khoyyiroh', '2022-05-26', 'Tambah Teman', '83', '24', '24', '', '21', '0', '7', '0', '0', '0', '0', '14', '0'),
(492, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Siti Amaliah', '2022-05-26', 'Tambah Teman', '75', '23', '23', '', '6', '0', '0', '0', '0', '0', '0', '6', '0'),
(493, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Senyuman Yatim Piatu', '2022-05-26', '', '54', '', '', '', '2', '0', '1', '0', '0', '0', '0', '1', '0'),
(494, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-24', 'Tambah Teman', '204', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(495, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-24', 'Tambah Teman', '245', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(496, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Siti Amaliah', '2022-05-27', 'Tambah Teman', '91', '16', '16', '', '11', '0', '2', '0', '1', '0', '0', '8', '0'),
(497, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Dompet keberkahan yatim', '2022-05-27', 'Tambah Teman', '49', '1', '1', '', '2', '0', '1', '0', '0', '0', '0', '1', '0'),
(498, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-25', 'Tambah Teman', '220', '16', '16', '', '5', '0', '0', '0', '1', '0', '1', '3', '0'),
(499, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-25', 'Tambah Teman', '265', '20', '20', '', '9', '0', '2', '0', '1', '0', '0', '6', '0'),
(500, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Zaeni Mucthar', '2022-05-27', 'Tambah Teman', '643', '0', '0', '', '80', '2', '14', '0', '2', '0', '2', '60', '200000'),
(501, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Linda Indriyani ', '2022-05-27', 'Tambah Teman', '123', '12', '12', '', '12', '0', '3', '0', '0', '0', '0', '9', '0'),
(502, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-27', 'Hapus Teman', '2023', '', '', '-1', '50', '2', '7', '0', '1', '1', '1', '38', '200000'),
(503, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Donasi Dompet Yatim', '2022-05-27', 'Tambah Teman', '53', '5', '5', '', '2', '0', '0', '0', '0', '0', '0', '5', '0'),
(504, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-26', 'Tambah Teman', '233', '13', '13', '', '6', '0', '2', '0', '0', '0', '0', '4', '0'),
(505, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'Jihan ramadhani', '2022-05-27', 'Tambah Teman', '229', '0', '2', '', '25', '0', '8', '0', '0', '0', '0', '17', '0'),
(506, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Nurmala Sari', '2022-05-27', 'Tambah Teman', '97', '10', '10', '', '7', '0', '3', '0', '0', '0', '0', '4', '0'),
(507, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-26', 'Tambah Teman', '1166', '33', '6', '', '98', '0', '6', '0', '4', '0', '0', '88', '0'),
(508, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Pahala Sedekah Yatim Piatu', '2022-05-27', 'Tambah Teman', '51', '2', '2', '', '2', '0', '1', '0', '0', '0', '0', '1', '0'),
(509, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Alfiatul Khoyyiroh', '2022-05-27', 'Tambah Teman', '92', '9', '9', '', '9', '0', '3', '0', '0', '0', '0', '6', '0'),
(510, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Silvi agnia', '2022-05-27', 'Tambah Teman', '88', '6', '6', '', '14', '0', '7', '0', '1', '0', '0', '6', '0'),
(511, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-27', 'Hapus Teman', '1150', '', '', '-1', '50', '1', '8', '1', '3', '0', '1', '35', '50000'),
(512, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Infaq yatim piatu', '2022-05-27', 'Tambah Teman', '54', '2', '2', '', '6', '0', '3', '0', '0', '0', '0', '3', '0'),
(513, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Senyuman Yatim Piatu', '2022-05-27', 'Tambah Teman', '56', '2', '2', '', '5', '0', '1', '0', '0', '0', '0', '4', '0'),
(514, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-26', 'Tambah Teman', '758', '0', '21', '', '13', '1', '12', '1', '4', '0', '3', '0', '50000'),
(515, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-27', 'Hapus Teman', '1165', '', '', '-1', '56', '0', '4', '0', '0', '1', '0', '51', '0'),
(516, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-25', 'Tambah Teman', '188', '95', '15', '', '6', '0', '4', '0', '0', '0', '0', '2', '0'),
(517, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-26', 'Tambah Teman', '191', '58', '3', '', '3', '0', '2', '0', '0', '0', '0', '1', '0'),
(518, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-27', 'Tambah Teman', '194', '22', '3', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(519, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-26', 'Tambah Teman', '819', '0', '14', '', '113', '0', '11', '0', '5', '2', '2', '93', '0'),
(520, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-05-27', 'Tambah Teman', '821', '0', '2', '', '24', '0', '5', '0', '3', '0', '1', '15', '0'),
(522, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-27', 'Hapus Teman', '1977', '', '', '-14', '50', '3', '0', '0', '0', '0', '0', '47', '600000'),
(523, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-27', 'Hapus Teman', '552', '', '', '-1', '18', '0', '4', '0', '1', '0', '0', '13', '0'),
(524, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Zakia Nadila ', '2022-05-27', 'Tambah Teman', '81', '2', '2', '', '2', '0', '0', '0', '0', '0', '0', '0', '0'),
(525, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Kebahagiaan yatim', '2022-05-27', 'Tambah Teman', '47', '2', '2', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(526, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Dompet Berkah Yatim', '2022-05-27', 'Tambah Teman', '52', '2', '2', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(527, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Zahra Maulida', '2022-05-27', 'Tambah Teman', '121', '5', '6', '', '11', '0', '2', '0', '0', '0', '0', '9', '0'),
(528, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Yuni Sarah', '2022-05-27', 'Tambah Teman', '83', '19', '19', '', '3', '0', '0', '1', '0', '0', '0', '3', '0'),
(529, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-27', 'Tambah Teman', '251', '1', '1', '', '3', '1', '1', '0', '0', '0', '0', '1', '500000'),
(530, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Berkah Dompet Yatim', '2022-05-27', 'Tambah Teman', '53', '4', '4', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(531, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Zahra Maulida', '2022-05-28', 'Tambah Teman', '143', '22', '22', '', '10', '0', '9', '0', '0', '0', '0', '1', '0'),
(532, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-28', 'Tambah Teman', '2203', '0', '3', '', '68', '0', '21', '0', '1', '0', '0', '46', '0'),
(533, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-27', 'Tambah Teman', '267', '2', '2', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(534, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-27', 'Tambah Teman', '3422', '0', '0', '', '84', '2', '19', '0', '3', '0', '0', '62', '64000'),
(535, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-05-28', 'Tambah Teman', '3422', '0', '0', '', '50', '0', '14', '0', '3', '0', '0', '33', '0'),
(536, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-28', 'Hapus Teman', '1971', '', '', '-6', '100', '2', '7', '0', '3', '0', '1', '89', '150000'),
(537, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-28', 'Tambah Teman', '553', '51', '1', '', '18', '0', '2', '0', '0', '0', '0', '16', '0'),
(538, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-05-26', 'Tambah Teman', '602', '100', '6', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(539, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-26', 'Tambah Teman', '1457', '150', '16', '', '110', '0', '0', '1', '3', '0', '0', '106', '0'),
(540, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-27', 'Tambah Teman', '1457', '0', '0', '', '100', '0', '4', '1', '0', '0', '0', '95', '0'),
(541, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-28', 'Tambah Teman', '1477', '145', '20', '', '120', '0', '8', '0', '4', '0', '0', '108', '0'),
(542, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Zakia Nadila ', '2022-05-28', 'Tambah Teman', '81', '1', '81', '', '1', '0', '1', '0', '0', '0', '0', '0', '0'),
(543, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Kebahagiaan yatim', '2022-05-28', 'Tambah Teman', '53', '6', '6', '', '5', '0', '0', '0', '0', '0', '0', '5', '0'),
(546, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-27', 'Hapus Teman', '976', '', '', '0', '50', '1', '5', '0', '2', '0', '1', '41', '100000'),
(547, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-28', 'Hapus Teman', '976', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(548, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-05-29', 'Hapus Teman', '976', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(549, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-27', 'Tambah Teman', '248', '40', '9', '', '15', '0', '3', '0', '1', '0', '0', '0', '0'),
(550, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-28', 'Hapus Teman', '248', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(551, 'facebook_depok', '20', 'Facebook Depok', 'Iman Nuriawan', 'Dompet yatim piatu', '2022-05-29', 'Hapus Teman', '248', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(552, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Nurmala Sari', '2022-05-28', 'Tambah Teman', '110', '13', '13', '', '13', '0', '5', '0', '1', '0', '0', '7', '0'),
(553, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Linda Indriyani ', '2022-05-28', 'Tambah Teman', '148', '', '25', '', '24', '0', '9', '0', '0', '0', '0', '15', '0'),
(554, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Alfiatul Khoyyiroh', '2022-05-28', 'Tambah Teman', '109', '17', '17', '', '17', '0', '5', '0', '0', '0', '0', '12', '0'),
(555, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Siti Amaliah', '2022-05-28', 'Tambah Teman', '116', '25', '25', '', '26', '0', '8', '1', '0', '0', '0', '17', '0'),
(556, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Dompet keberkahan yatim', '2022-05-28', 'Tambah Teman', '56', '7', '7', '', '3', '0', '1', '0', '0', '0', '0', '2', '0'),
(557, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-28', 'Hapus Teman', '757', '', '', '-1', '19', '0', '8', '0', '6', '0', '0', '5', '0'),
(558, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-28', 'Tambah Teman', '283', '16', '16', '', '1', '0', '1', '0', '0', '0', '0', '0', '0'),
(559, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-29', 'Tambah Teman', '283', '0', '0', '', '1', '0', '0', '0', '1', '0', '0', '0', '0'),
(560, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-28', 'Hapus Teman', '1148', '', '', '-2', '100', '1', '13', '1', '6', '1', '2', '76', '100000'),
(561, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Yuni Sarah', '2022-05-28', 'Tambah Teman', '107', '24', '24', '', '26', '0', '8', '0', '1', '0', '0', '17', '0'),
(562, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-28', 'Tambah Teman', '265', '14', '14', '', '2', '1', '1', '0', '0', '0', '0', '0', '100000'),
(563, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-29', 'Tambah Teman', '265', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(564, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-28', 'Tambah Teman', '2024', '71', '1', '', '100', '0', '13', '0', '3', '2', '1', '82', '0'),
(565, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Berkah Dompet Yatim', '2022-05-28', 'Tambah Teman', '59', '6', '6', '', '6', '0', '0', '0', '0', '0', '0', '6', '0'),
(566, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-26', 'Tambah Teman', '274', '9', '9', '', '13', '0', '2', '0', '1', '0', '0', '10', '0'),
(567, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-27', 'Tambah Teman', '276', '2', '2', '', '16', '0', '4', '0', '3', '0', '1', '8', '0'),
(568, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-27', 'Tambah Teman', '236', '3', '3', '', '13', '0', '1', '0', '2', '0', '0', '10', '0'),
(569, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Silvi agnia', '2022-05-28', 'Tambah Teman', '109', '21', '21', '', '9', '0', '4', '0', '0', '0', '0', '5', '0'),
(570, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-28', 'Tambah Teman', '285', '9', '9', '', '12', '0', '3', '0', '1', '0', '0', '8', '0'),
(571, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-28', 'Tambah Teman', '239', '3', '3', '', '10', '0', '3', '0', '1', '0', '0', '6', '0'),
(572, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-28', 'Tambah Teman', '1170', '62', '5', '', '58', '0', '3', '0', '0', '0', '1', '54', '0'),
(573, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Okta berliana', '2022-05-27', 'Tambah Teman', '82', '4', '4', '', '16', '0', '2', '0', '0', '0', '0', '14', '0'),
(574, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-28', 'Tambah Teman', '210', '73', '16', '', '7', '0', '2', '0', '0', '0', '0', '5', '0'),
(575, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Dompet semangat yatim', '2022-05-27', 'Tambah Teman', '9', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(576, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Okta berliana', '2022-05-28', 'Tambah Teman', '93', '11', '11', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(577, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Dompet semangat yatim', '2022-05-28', 'Tambah Teman', '40', '29', '31', '', '2', '0', '0', '0', '0', '0', '0', '0', '0'),
(578, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-23', 'Tambah Teman', '2813', '0', '2813', '', '120', '5', '6', '1', '4', '1', '2', '107', '500000'),
(579, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-23', 'Tambah Teman', '122', '0', '122', '', '100', '0', '3', '0', '1', '0', '0', '96', '0'),
(580, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Pahala Sedekah Yatim Piatu', '2022-05-28', 'Tambah Teman', '53', '2', '2', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(581, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Dompet Berkah Yatim', '2022-05-28', 'Tambah Teman', '59', '7', '7', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(582, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Linda Indriyani ', '2022-05-30', 'Tambah Teman', '183', '35', '35', '', '35', '0', '14', '0', '0', '0', '0', '21', '0'),
(583, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Zahra Maulida', '2022-05-30', 'Tambah Teman', '151', '8', '8', '', '45', '0', '18', '0', '0', '0', '1', '26', '0'),
(584, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Dompet Berkah Yatim', '2022-05-30', 'Tambah Teman', '71', '12', '12', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(585, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-29', 'Tambah Teman', '286', '0', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(587, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Infaq yatim piatu', '2022-05-28', 'Tambah Teman', '69', '15', '15', '', '6', '0', '3', '0', '0', '0', '0', '3', '0'),
(588, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Infaq yatim piatu', '2022-05-30', 'Tambah Teman', '75', '6', '6', '', '8', '0', '5', '0', '0', '0', '0', '3', '0'),
(589, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-30', 'Tambah Teman', '2025', '94', '1', '', '100', '2', '15', '1', '4', '0', '1', '77', '300000'),
(590, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Silvi agnia', '2022-05-30', 'Tambah Teman', '121', '12', '12', '', '15', '0', '4', '0', '0', '0', '0', '11', '0'),
(591, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-29', 'Tambah Teman', '1170', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(592, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-30', 'Hapus Teman', '1966', '', '', '-5', '147', '1', '12', '0', '6', '0', '0', '128', '200000'),
(593, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Alfiatul Khoyyiroh', '2022-05-30', 'Tambah Teman', '128', '19', '19', '', '1', '0', '0', '0', '0', '0', '0', '1', '0'),
(594, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-30', 'Tambah Teman', '1150', '78', '2', '', '50', '0', '10', '1', '3', '0', '2', '34', '0'),
(595, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Zakia Nadila ', '2022-05-30', 'Tambah Teman', '95', '15', '14', '', '15', '0', '8', '0', '0', '0', '0', '7', '0'),
(596, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-30', 'Tambah Teman', '2207', '0', '4', '', '87', '0', '10', '0', '2', '2', '0', '73', '0'),
(597, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Siti Amaliah', '2022-05-30', 'Tambah Teman', '136', '20', '20', '', '21', '0', '8', '0', '0', '0', '0', '13', '0'),
(598, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Dompet keberkahan yatim', '2022-05-30', 'Tambah Teman', '60', '4', '4', '', '3', '0', '1', '0', '0', '0', '0', '2', '0'),
(599, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Nurmala Sari', '2022-05-30', 'Tambah Teman', '124', '14', '14', '', '13', '0', '6', '0', '1', '0', '0', '6', '0'),
(600, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Pahala Sedekah Yatim Piatu', '2022-05-30', 'Tambah Teman', '54', '1', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(601, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-30', 'Tambah Teman', '270', '5', '5', '', '22', '1', '5', '0', '0', '0', '1', '15', '200000'),
(602, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-30', 'Tambah Teman', '295', '12', '12', '', '20', '0', '4', '0', '0', '0', '0', '16', '0'),
(603, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Yuni Sarah', '2022-05-30', 'Tambah Teman', '122', '15', '15', '', '17', '0', '9', '0', '0', '0', '0', '8', '0'),
(604, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Berkah Dompet Yatim', '2022-05-30', 'Tambah Teman', '62', '3', '3', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(605, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-24', 'Tambah Teman', '2819', '0', '6', '', '120', '0', '6', '0', '3', '0', '0', '111', '0'),
(606, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-24', 'Tambah Teman', '124', '0', '2', '', '10', '0', '3', '0', '2', '1', '1', '3', '0'),
(607, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-25', 'Tambah Teman', '2824', '0', '5', '', '100', '0', '2', '0', '2', '0', '0', '96', '0');
INSERT INTO `laporan_media` (`id`, `id_pengurus`, `nomor_id`, `posisi`, `pemegang`, `nama_akun`, `tgl_laporan`, `keterangan`, `jumlahTeman`, `jumlahAdd`, `temanBaru`, `hapusTeman`, `totalSerangan`, `donatur`, `respon`, `alamat`, `insya_allah`, `minta_norek`, `belumbisa_bantu`, `tidak_respon`, `total_income`) VALUES
(608, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-25', 'Tambah Teman', '127', '0', '3', '', '5', '0', '3', '0', '1', '0', '0', '1', '0'),
(609, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-30', 'Tambah Teman', '573', '62', '20', '', '16', '1', '12', '0', '0', '0', '0', '4', '200000'),
(610, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Kebahagiaan yatim', '2022-05-30', 'Tambah Teman', '57', '4', '4', '', '3', '0', '1', '0', '1', '0', '0', '2', '0'),
(611, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-05-31', 'Tambah Teman', '2029', '166', '4', '', '50', '0', '10', '0', '3', '1', '1', '35', '0'),
(612, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Nurmala Sari', '2022-05-31', 'Tambah Teman', '139', '15', '15', '', '11', '0', '3', '0', '1', '0', '0', '7', '0'),
(613, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Pahala Sedekah Yatim Piatu', '2022-05-31', 'Tambah Teman', '55', '1', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(614, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-05-31', 'Tambah Teman', '1151', '72', '1', '', '24', '0', '5', '1', '1', '0', '0', '17', '0'),
(615, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-30', 'Tambah Teman', '298', '12', '12', '', '8', '0', '1', '0', '0', '0', '0', '7', '0'),
(616, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-29', 'Tambah Teman', '239', '', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(617, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Zahra Maulida', '2022-05-31', 'Tambah Teman', '178', '27', '27', '', '19', '0', '9', '0', '0', '0', '0', '10', '0'),
(618, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-30', 'Tambah Teman', '252', '13', '13', '', '6', '0', '3', '0', '0', '0', '0', '3', '0'),
(619, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Dompet Berkah Yatim', '2022-05-31', 'Tambah Teman', '87', '16', '16', '', '19', '0', '4', '0', '0', '0', '0', '15', '0'),
(620, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Yuni Sarah', '2022-05-31', 'Tambah Teman', '139', '17', '17', '', '13', '0', '3', '0', '1', '0', '1', '8', '0'),
(621, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Berkah Dompet Yatim', '2022-05-31', 'Tambah Teman', '66', '4', '4', '', '9', '0', '2', '0', '0', '0', '0', '7', '0'),
(622, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-05-31', 'Tambah Teman', '2210', '0', '3', '', '0', '1', '0', '0', '0', '0', '0', '0', '100000'),
(623, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-05-31', 'Tambah Teman', '760', '0', '3', '', '0', '1', '0', '0', '0', '0', '0', '0', '200000'),
(625, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Silvi agnia', '2022-05-31', 'Tambah Teman', '139', '18', '18', '', '12', '0', '5', '0', '1', '0', '0', '7', '0'),
(626, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Linda Indriyani ', '2022-05-31', 'Tambah Teman', '204', '21', '21', '', '18', '0', '6', '0', '0', '0', '0', '12', '0'),
(627, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Donasi Dompet Yatim', '2022-05-31', 'Tambah Teman', '62', '2', '9', '', '2', '0', '2', '0', '0', '0', '0', '0', '0'),
(628, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Infaq yatim piatu', '2022-05-31', 'Tambah Teman', '93', '18', '18', '', '3', '0', '1', '0', '0', '0', '0', '2', '0'),
(629, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Alfiatul Khoyyiroh', '2022-05-31', 'Tambah Teman', '139', '11', '11', '', '21', '0', '8', '0', '0', '0', '0', '13', '0'),
(630, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-05-31', 'Tambah Teman', '284', '14', '14', '', '18', '0', '4', '0', '0', '0', '0', '14', '0'),
(631, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-05-31', 'Tambah Teman', '307', '8', '12', '', '17', '0', '7', '0', '0', '0', '0', '0', '0'),
(633, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Zakia Nadila ', '2022-05-31', 'Tambah Teman', '111', '16', '16', '', '16', '0', '11', '0', '0', '0', '1', '6', '0'),
(634, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-05-31', 'Tambah Teman', '1970', '153', '4', '', '150', '0', '13', '0', '1', '0', '0', '136', '0'),
(635, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-05-31', 'Tambah Teman', '581', '75', '8', '', '16', '0', '8', '0', '0', '0', '0', '8', '0'),
(636, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Siti Amaliah', '2022-05-31', 'Tambah Teman', '152', '16', '16', '', '21', '0', '6', '1', '0', '0', '0', '14', '0'),
(637, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Dompet keberkahan yatim', '2022-05-31', 'Tambah Teman', '63', '3', '3', '', '5', '0', '3', '0', '0', '0', '0', '2', '0'),
(638, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Kebahagiaan yatim', '2022-05-31', 'Tambah Teman', '70', '13', '13', '', '13', '0', '8', '0', '1', '0', '1', '5', '0'),
(639, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-30', 'Tambah Teman', '1175', '33', '0', '', '5', '0', '0', '0', '0', '0', '0', '5', '0'),
(640, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-29', 'Tambah Teman', '210', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(641, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-30', 'Tambah Teman', '221', '35', '11', '', '19', '0', '9', '0', '0', '0', '1', '9', '0'),
(642, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-05-31', 'Tambah Teman', '1175', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(643, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Rezeki Yatim', '2022-05-31', 'Tambah Teman', '226', '35', '5', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(644, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Mari bantu Yatim ', '2022-06-01', 'Tambah Teman', '615', '200', '7', '', '61', '1', '5', '0', '2', '0', '0', '53', '25000'),
(645, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-06-01', 'Hapus Teman', '3362', '', '', '-60', '200', '0', '20', '0', '5', '0', '2', '177', '0'),
(646, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Sedekah Yatim', '2022-06-01', 'Tambah Teman', '2040', '236', '11', '', '150', '0', '17', '1', '2', '2', '2', '126', '0'),
(647, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-06-01', 'Tambah Teman', '400', '50', '28', '', '25', '0', '3', '0', '2', '0', '0', '20', '0'),
(648, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Okta berliana', '2022-05-30', 'Tambah Teman', '110', '17', '17', '', '7', '0', '5', '0', '0', '0', '0', '0', '0'),
(649, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Dompet semangat yatim', '2022-05-30', 'Tambah Teman', '60', '20', '20', '', '20', '0', '7', '1', '0', '0', '0', '0', '0'),
(650, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Okta berliana', '2022-05-31', 'Tambah Teman', '118', '8', '8', '', '3', '0', '3', '0', '0', '0', '0', '0', '0'),
(651, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-06-01', 'Tambah Teman', '298', '312', '14', '', '21', '0', '6', '0', '0', '0', '0', '15', '0'),
(652, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Dompet semangat yatim', '2022-05-31', 'Tambah Teman', '62', '2', '2', '', '2', '0', '2', '0', '0', '0', '0', '0', '0'),
(653, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-06-01', 'Tambah Teman', '326', '157', '19', '', '19', '0', '6', '0', '0', '0', '0', '13', '0'),
(654, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Senyuman Yatim Piatu', '2022-05-28', 'Tambah Teman', '57', '1', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(655, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-06-01', 'Hapus Teman', '975', '', '', '-1', '115', '0', '11', '0', '1', '0', '1', '102', '0'),
(656, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Senyuman Yatim Piatu', '2022-05-30', 'Tambah Teman', '62', '5', '5', '', '5', '0', '0', '0', '0', '0', '0', '0', '0'),
(657, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-06-01', 'Tambah Teman', '1162', '114', '11', '', '100', '0', '11', '0', '2', '1', '1', '0', '85'),
(658, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-06-01', 'Tambah Teman', '180', '113', '-995', '', '69', '1', '6', '0', '1', '0', '0', '62', '20000'),
(659, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Senyuman Yatim Piatu', '2022-05-31', 'Tambah Teman', '70', '8', '8', '', '7', '0', '3', '0', '0', '0', '0', '4', '0'),
(660, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Linda Indriyani ', '2022-06-01', 'Tambah Teman', '232', '28', '28', '', '34', '0', '11', '0', '0', '0', '0', '23', '0'),
(661, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Donasi Dompet Yatim', '2022-06-01', 'Tambah Teman', '69', '117', '7', '', '4', '0', '1', '0', '0', '0', '0', '3', '0'),
(662, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-06-01', 'Tambah Teman', '1979', '77', '9', '', '142', '0', '7', '0', '2', '0', '0', '133', '0'),
(663, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-06-01', 'Tambah Teman', '2214', '0', '4', '', '106', '0', '26', '0', '1', '1', '1', '77', '0'),
(664, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-06-01', 'Tambah Teman', '', '82', '0', '', '188', '0', '7', '0', '2', '0', '0', '179', '0'),
(667, 'facebook_depok', '12', 'Facebook Depok', 'Anita Sri Wulandari', 'regi alfiyansyah', '2022-06-01', 'Tambah Teman', '596', '50', '15', '', '100', '0', '9', '1', '9', '0', '3', '81', '0'),
(670, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-05-31', 'Tambah Teman', '309', '12', '11', '', '29', '0', '3', '1', '1', '0', '0', '24', '0'),
(671, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-05-31', 'Tambah Teman', '261', '9', '9', '', '21', '0', '2', '1', '1', '0', '0', '17', '0'),
(672, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-06-01', 'Tambah Teman', '762', '0', '2', '', '91', '1', '25', '0', '1', '2', '1', '61', '150000'),
(673, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-26', 'Hapus Teman', '2812', '', '', '-12', '50', '0', '6', '0', '2', '1', '0', '41', '0'),
(674, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-26', 'Tambah Teman', '129', '0', '2', '', '5', '0', '2', '0', '0', '0', '0', '3', '0'),
(675, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-06-01', 'Tambah Teman', '583', '60', '16', '', '79', '0', '6', '0', '3', '0', '1', '69', '0'),
(676, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-27', 'Tambah Teman', '131', '0', '2', '', '5', '0', '1', '0', '0', '0', '0', '4', '0'),
(678, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-27', 'Hapus Teman', '2800', '', '', '-12', '45', '0', '1', '1', '0', '0', '0', '43', '0'),
(679, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Nurmala Sari', '2022-06-01', 'Tambah Teman', '159', '147', '20', '', '23', '0', '8', '0', '3', '0', '0', '12', '0'),
(681, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Pahala Sedekah Yatim Piatu', '2022-06-01', 'Tambah Teman', '58', '68', '3', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(682, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-28', 'Tambah Teman', '2805', '0', '5', '', '23', '3', '4', '0', '1', '0', '0', '15', '850000'),
(683, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-28', 'Tambah Teman', '137', '0', '6', '', '5', '0', '2', '0', '1', '0', '0', '2', '0'),
(684, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-30', 'Hapus Teman', '1457', '', '', '-20', '130', '0', '4', '0', '1', '0', '0', '95', '0'),
(685, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-29', 'Tambah Teman', '2806', '0', '1', '', '5', '0', '2', '0', '0', '0', '0', '3', '0'),
(686, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-29', 'Tambah Teman', '139', '0', '2', '', '15', '0', '1', '0', '0', '0', '0', '14', '0'),
(687, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-05-31', 'Tambah Teman', '1491', '120', '34', '', '100', '0', '1', '0', '0', '0', '1', '98', '0'),
(688, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-05-30', 'Tambah Teman', '2810', '0', '4', '', '10', '1', '2', '0', '0', '0', '0', '0', '100000'),
(689, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-06-01', 'Hapus Teman', '1471', '', '', '-20', '100', '0', '1', '0', '4', '0', '0', '95', '0'),
(690, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-05-30', 'Tambah Teman', '140', '0', '1', '', '10', '0', '1', '0', '0', '0', '1', '9', '0'),
(691, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Zakia Nadila ', '2022-06-01', 'Tambah Teman', '129', '18', '18', '', '17', '0', '10', '4', '4', '0', '0', '7', '0'),
(692, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Yuni Sarah', '2022-06-01', 'Tambah Teman', '162', '92', '23', '', '17', '0', '5', '0', '0', '0', '0', '12', '0'),
(693, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Berkah Dompet Yatim', '2022-06-01', 'Tambah Teman', '70', '55', '4', '', '3', '0', '1', '0', '0', '0', '0', '2', '0'),
(694, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Siti Amaliah', '2022-06-01', 'Tambah Teman', '181', '184', '29', '', '21', '0', '9', '0', '0', '0', '0', '12', '0'),
(695, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-06-01', 'Hapus Teman', '2770', '', '', '-40', '181', '0', '5', '0', '1', '1', '1', '172', '0'),
(696, 'facebook_depok', '21', 'Facebook Depok', 'Ezaalfajri', 'Meylisa Dwi Anggraheni Puspitasari ', '2022-06-28', 'Tambah Teman', '826', '0', '5', '', '21', '1', '10', '0', '1', '0', '0', '0', '332500'),
(697, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Kebahagiaan yatim', '2022-06-01', 'Tambah Teman', '77', '7', '7', '', '7', '0', '2', '0', '0', '0', '0', '5', '0'),
(698, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Dompet Yatim Amanah', '2022-06-01', 'Tambah Teman', '318', '9', '9', '', '21', '0', '3', '0', '0', '0', '0', '18', '0'),
(699, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Okta berliana', '2022-06-01', 'Tambah Teman', '123', '92', '5', '', '5', '0', '3', '0', '0', '0', '0', '0', '0'),
(700, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Dompet semangat yatim', '2022-06-01', 'Tambah Teman', '62', '90', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(701, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Alfiatul Khoyyiroh', '2022-06-01', 'Tambah Teman', '158', '97', '19', '', '12', '0', '4', '0', '0', '0', '0', '8', '0'),
(702, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Senyuman Yatim Piatu', '2022-06-01', 'Tambah Teman', '78', '73', '8', '', '5', '0', '2', '0', '0', '0', '0', '3', '0'),
(703, 'facebook_depok', '17', 'Facebook Depok', 'Dedi Makarim Manaf', 'Farhan Fikri Fadillah', '2022-06-02', 'Hapus Teman', '1159', '', '', '-3', '100', '0', '15', '1', '2', '0', '0', '82', '0'),
(704, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Mari bantu Yatim ', '2022-06-02', 'Tambah Teman', '620', '200', '5', '', '82', '1', '4', '0', '2', '0', '0', '75', '500000'),
(705, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Kholid Fatullah', '2022-06-02', 'Tambah Teman', '1509', '150', '38', '', '100', '0', '8', '0', '1', '0', '1', '90', '0'),
(706, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-06-01', 'Tambah Teman', '603', '120', '1', '', '50', '0', '2', '0', '1', '0', '0', '47', '0'),
(707, 'facebook_depok', '22', 'Facebook Depok', 'Sezha Octaviana', 'Keberkahan Yatim', '2022-06-02', 'Tambah Teman', '607', '135', '4', '', '50', '0', '5', '0', '1', '0', '1', '43', '0'),
(708, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Infaq Yatim', '2022-06-02', 'Tambah Teman', '3365', '25', '3', '', '154', '1', '14', '0', '1', '0', '0', '128', '200000'),
(709, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-06-01', 'Tambah Teman', '145', '0', '5', '', '23', '0', '2', '0', '0', '0', '0', '21', '0'),
(710, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Fitri mulyani ', '2022-06-02', 'Tambah Teman', '150', '0', '5', '', '23', '0', '3', '1', '0', '0', '0', '20', '0'),
(711, 'facebook_depok', '11', 'Facebook Depok', 'Lutfhi Aditya Rachman', 'Cahaya Abelia', '2022-06-02', 'Hapus Teman', '398', '', '', '-2', '25', '0', '6', '0', '2', '0', '0', '17', '0'),
(712, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Putri Rahmadhani', '2022-06-02', 'Tambah Teman', '593', '119', '10', '', '61', '2', '3', '0', '6', '0', '0', '52', '250000'),
(713, 'facebook_depok', '18', 'Facebook Depok', 'Sodru ', 'Berbagi yatim', '2022-06-02', 'Hapus Teman', '975', '', '', '0', '85', '0', '6', '0', '1', '0', '0', '78', '0'),
(714, 'facebook_depok', '19', 'Facebook Depok', 'Resma Febiyanti', 'Yatim piatu amanah i', '2022-06-02', 'Tambah Teman', '2771', '0', '1', '', '125', '0', '2', '1', '2', '1', '1', '116', '0'),
(717, 'facebook_depok', '31', 'Facebook Depok', 'Linda Indriyani ', 'Donasi Dompet Yatim', '2022-06-02', 'Tambah Teman', '75', '114', '6', '', '3', '0', '0', '0', '2', '0', '0', '0', '0'),
(718, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim II', '2022-06-02', 'Tambah Teman', '319', '361', '21', '', '22', '0', '5', '0', '3', '0', '1', '13', '0'),
(719, 'facebook_depok', '6', 'Facebook Depok', 'MUHAMMAD NAZAR YANA', 'Dompet Yatim', '2022-06-02', 'Tambah Teman', '341', '287', '15', '', '23', '0', '4', '0', '2', '0', '0', '17', '0'),
(720, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'sedekah yatim i', '2022-06-02', 'Tambah Teman', '2221', '0', '7', '', '105', '0', '24', '0', '3', '0', '1', '77', '0'),
(721, 'facebook_depok', '10', 'Facebook Depok', 'Sri Lestari', 'Gerbang Sedekah Yatim', '2022-06-02', '', '3247', '', '', '', '203', '0', '13', '1', '2', '0', '4', '183', '0'),
(722, 'facebook_depok', '9', 'Facebook Depok', 'Mutmainah', 'Bersama yatim', '2022-06-02', 'Tambah Teman', '767', '0', '5', '', '104', '1', '18', '0', '5', '2', '3', '75', '15000'),
(723, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Nurmala Sari', '2022-06-02', 'Tambah Teman', '179', '119', '20', '', '15', '0', '5', '1', '0', '0', '0', '9', '0'),
(724, 'facebook_depok', '29', 'Facebook Depok', 'Nurmala Sari ', 'Pahala Sedekah Yatim Piatu', '2022-06-02', 'Tambah Teman', '63', '51', '5', '', '3', '0', '2', '0', '0', '0', '0', '1', '0'),
(725, 'facebook_depok', '25', 'Facebook Depok', 'Meisya Anastasia', 'Infaq Dompet Yatim', '2022-06-01', 'Tambah Teman', '271', '10', '10', '', '17', '0', '3', '0', '0', '0', '0', '14', '0'),
(726, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Alfiatul Khoyyiroh', '2022-06-02', 'Tambah Teman', '170', '156', '12', '', '17', '0', '2', '0', '0', '0', '0', '15', '0'),
(727, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Infaq yatim piatu', '2022-06-01', 'Tambah Teman', '103', '114', '10', '', '14', '0', '4', '0', '0', '0', '1', '9', '0'),
(729, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Zakat Yatim', '2022-06-02', 'Tambah Teman', '186', '45', '6', '', '84', '0', '6', '0', '0', '0', '1', '77', '0'),
(730, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Silvi agnia', '2022-06-01', 'Tambah Teman', '155', '212', '16', '', '18', '0', '8', '0', '2', '0', '0', '8', '0'),
(731, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Donasi Peduli Yatim', '2022-06-01', '', '586', '', '', '', '41', '0', '5', '0', '1', '0', '1', '38', '0'),
(732, 'facebook_depok', '15', 'Facebook Depok', 'Riki', 'Donasi Peduli Yatim', '2022-06-02', 'Tambah Teman', '592', '37', '6', '', '45', '0', '10', '0', '0', '0', '0', '35', '0'),
(733, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Okta berliana', '2022-06-02', 'Tambah Teman', '139', '102', '16', '', '14', '0', '3', '0', '0', '0', '0', '0', '0'),
(734, 'facebook_depok', '35', 'Facebook Depok', 'Okta Viane Berliana', 'Dompet semangat yatim', '2022-06-02', 'Tambah Teman', '52', '', '-10', '', '10', '0', '3', '0', '0', '0', '0', '0', '0'),
(735, 'facebook_depok', '27', 'Facebook Depok', 'Zakia Nadila Seftiani', 'Zakia Nadila ', '2022-06-02', 'Tambah Teman', '152', '119', '23', '', '24', '0', '12', '1', '4', '0', '0', '12', '0'),
(736, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Infaq yatim piatu', '2022-06-02', 'Tambah Teman', '107', '86', '4', '', '9', '0', '2', '0', '0', '0', '0', '7', '0'),
(737, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Yuni Sarah', '2022-06-02', 'Tambah Teman', '174', '84', '12', '', '20', '0', '9', '0', '0', '0', '0', '11', '0'),
(738, 'facebook_depok', '33', 'Facebook Depok', 'Silvi Agnia ', 'Silvi agnia', '2022-06-02', 'Tambah Teman', '174', '137', '19', '', '16', '0', '4', '0', '0', '0', '1', '11', '0'),
(740, 'facebook_depok', '28', 'Facebook Depok', 'Yuni Sarah', 'Berkah Dompet Yatim', '2022-06-02', 'Tambah Teman', '75', '48', '5', '', '5', '0', '3', '0', '0', '0', '0', '2', '0'),
(742, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Siti Amaliah', '2022-06-02', 'Tambah Teman', '202', '225', '21', '', '31', '0', '11', '0', '0', '0', '1', '20', '0'),
(743, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Senyuman Yatim Piatu', '2022-06-02', 'Tambah Teman', '85', '64', '7', '', '6', '0', '2', '0', '0', '0', '0', '4', '0'),
(744, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Dompet keberkahan yatim', '2022-06-01', 'Tambah Teman', '80', '17', '17', '', '2', '0', '1', '0', '1', '0', '0', '0', '0'),
(745, 'facebook_depok', '32', 'Facebook Depok', 'Siti Amaliah', 'Dompet keberkahan yatim', '2022-06-02', 'Tambah Teman', '84', '61', '4', '', '18', '0', '6', '0', '2', '0', '0', '10', '0'),
(747, 'facebook_depok', '30', 'Facebook Depok', 'Alfiatul Khoyyiroh', 'Yatim piatu dompet amanah', '2022-06-02', 'Tambah Teman', '1980', '50', '1', '', '98', '2', '7', '0', '1', '0', '0', '89', '125000'),
(748, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Dompet Berkah Yatim', '2022-06-01', 'Tambah Teman', '104', '168', '17', '', '20', '0', '6', '0', '1', '0', '0', '13', '0'),
(749, 'facebook_depok', '34', 'Facebook Depok', 'Zahra Maulida', 'Dompet Berkah Yatim', '2022-06-02', 'Tambah Teman', '104', '29', '0', '', '8', '0', '2', '0', '0', '0', '0', '6', '0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `2022_anggaran_lain`
--
ALTER TABLE `2022_anggaran_lain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_aset_yayasan`
--
ALTER TABLE `2022_aset_yayasan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_data_anggaran_lain`
--
ALTER TABLE `2022_data_anggaran_lain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_data_aset_yayasan`
--
ALTER TABLE `2022_data_aset_yayasan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_data_gaji_karyawan`
--
ALTER TABLE `2022_data_gaji_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_data_income`
--
ALTER TABLE `2022_data_income`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_data_logistik`
--
ALTER TABLE `2022_data_logistik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_data_maintenance`
--
ALTER TABLE `2022_data_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_data_operasional_yayasan`
--
ALTER TABLE `2022_data_operasional_yayasan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_data_program`
--
ALTER TABLE `2022_data_program`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_data_uang_makan`
--
ALTER TABLE `2022_data_uang_makan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_gaji_karyawan`
--
ALTER TABLE `2022_gaji_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_galeri_anggaran_lain`
--
ALTER TABLE `2022_galeri_anggaran_lain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_galeri_aset_yayasan`
--
ALTER TABLE `2022_galeri_aset_yayasan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_galeri_gaji_karyawan`
--
ALTER TABLE `2022_galeri_gaji_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_galeri_logistik`
--
ALTER TABLE `2022_galeri_logistik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_galeri_maintenance`
--
ALTER TABLE `2022_galeri_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_galeri_operasional_yayasan`
--
ALTER TABLE `2022_galeri_operasional_yayasan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_galeri_pemasukan`
--
ALTER TABLE `2022_galeri_pemasukan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_galeri_program`
--
ALTER TABLE `2022_galeri_program`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_galeri_uang_makan`
--
ALTER TABLE `2022_galeri_uang_makan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_income`
--
ALTER TABLE `2022_income`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_incometanparesi`
--
ALTER TABLE `2022_incometanparesi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_logistik`
--
ALTER TABLE `2022_logistik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_log_aktivity`
--
ALTER TABLE `2022_log_aktivity`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_maintenance`
--
ALTER TABLE `2022_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_operasional_yayasan`
--
ALTER TABLE `2022_operasional_yayasan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_program`
--
ALTER TABLE `2022_program`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2022_uang_makan`
--
ALTER TABLE `2022_uang_makan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `akun_pengurus`
--
ALTER TABLE `akun_pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_akun`
--
ALTER TABLE `data_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `income_media`
--
ALTER TABLE `income_media`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan_media`
--
ALTER TABLE `laporan_media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `2022_anggaran_lain`
--
ALTER TABLE `2022_anggaran_lain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `2022_aset_yayasan`
--
ALTER TABLE `2022_aset_yayasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `2022_data_anggaran_lain`
--
ALTER TABLE `2022_data_anggaran_lain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `2022_data_aset_yayasan`
--
ALTER TABLE `2022_data_aset_yayasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `2022_data_gaji_karyawan`
--
ALTER TABLE `2022_data_gaji_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `2022_data_income`
--
ALTER TABLE `2022_data_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `2022_data_logistik`
--
ALTER TABLE `2022_data_logistik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `2022_data_maintenance`
--
ALTER TABLE `2022_data_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `2022_data_operasional_yayasan`
--
ALTER TABLE `2022_data_operasional_yayasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `2022_data_program`
--
ALTER TABLE `2022_data_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `2022_data_uang_makan`
--
ALTER TABLE `2022_data_uang_makan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `2022_gaji_karyawan`
--
ALTER TABLE `2022_gaji_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `2022_galeri_anggaran_lain`
--
ALTER TABLE `2022_galeri_anggaran_lain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `2022_galeri_aset_yayasan`
--
ALTER TABLE `2022_galeri_aset_yayasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `2022_galeri_gaji_karyawan`
--
ALTER TABLE `2022_galeri_gaji_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `2022_galeri_logistik`
--
ALTER TABLE `2022_galeri_logistik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `2022_galeri_maintenance`
--
ALTER TABLE `2022_galeri_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `2022_galeri_operasional_yayasan`
--
ALTER TABLE `2022_galeri_operasional_yayasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `2022_galeri_pemasukan`
--
ALTER TABLE `2022_galeri_pemasukan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `2022_galeri_program`
--
ALTER TABLE `2022_galeri_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `2022_galeri_uang_makan`
--
ALTER TABLE `2022_galeri_uang_makan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `2022_income`
--
ALTER TABLE `2022_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `2022_incometanparesi`
--
ALTER TABLE `2022_incometanparesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `2022_logistik`
--
ALTER TABLE `2022_logistik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `2022_log_aktivity`
--
ALTER TABLE `2022_log_aktivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2198;

--
-- AUTO_INCREMENT untuk tabel `2022_maintenance`
--
ALTER TABLE `2022_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `2022_operasional_yayasan`
--
ALTER TABLE `2022_operasional_yayasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `2022_program`
--
ALTER TABLE `2022_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `2022_uang_makan`
--
ALTER TABLE `2022_uang_makan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `akun_pengurus`
--
ALTER TABLE `akun_pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `data_akun`
--
ALTER TABLE `data_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `income_media`
--
ALTER TABLE `income_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT untuk tabel `laporan_media`
--
ALTER TABLE `laporan_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
