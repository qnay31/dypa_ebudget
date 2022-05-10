-- phpMyAdmin SQL Dump

-- version 5.0.3

-- https://www.phpmyadmin.net/

--

-- Host: 127.0.0.1

-- Waktu pembuatan: 02 Feb 2022 pada 05.13

-- Versi server: 10.4.14-MariaDB

-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------

--

-- Struktur dari tabel `2022_data_anggaran_lain`

--

CREATE TABLE `2022_data_anggaran_lain` (
	`id` int(11) NOT NULL,
	`bulan` varchar(100) NOT NULL,
	`tahun` varchar(100) NOT NULL,
	`anggaran_global` varchar(100) NOT NULL,
	`terpakai_global` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `2022_data_anggaran_lain`

--

INSERT INTO
	`2022_data_anggaran_lain` (
		`id`,
		`bulan`,
		`tahun`,
		`anggaran_global`,
		`terpakai_global`
	)
VALUES
	(1, 'Januari', '2022', '', ''),
	(2, 'Februari', '2022', '', ''),
	(3, 'Maret', '2022', '', ''),
	(4, 'April', '2022', '', ''),
	(5, 'Mei', '2022', '', ''),
	(6, 'Juni', '2022', '', ''),
	(7, 'Juli', '2022', '', ''),
	(8, 'Agustus', '2022', '', ''),
	(9, 'September', '2022', '', ''),
	(10, 'Oktober', '2022', '', ''),
	(11, 'November', '2022', '', ''),
	(12, 'Desember', '2022', '', '');

-- --------------------------------------------------------

--

-- Struktur dari tabel `2022_data_aset_yayasan`

--

CREATE TABLE `2022_data_aset_yayasan` (
	`id` int(11) NOT NULL,
	`bulan` varchar(100) NOT NULL,
	`tahun` varchar(100) NOT NULL,
	`anggaran_pembangunan` varchar(100) NOT NULL,
	`terpakai_pembangunan` varchar(100) NOT NULL,
	`anggaran_pembelian` varchar(100) NOT NULL,
	`terpakai_pembelian` varchar(100) NOT NULL,
	`anggaran_global` varchar(100) NOT NULL,
	`terpakai_global` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `2022_data_aset_yayasan`

--

INSERT INTO
	`2022_data_aset_yayasan` (
		`id`,
		`bulan`,
		`tahun`,
		`anggaran_pembangunan`,
		`terpakai_pembangunan`,
		`anggaran_pembelian`,
		`terpakai_pembelian`,
		`anggaran_global`,
		`terpakai_global`
	)
VALUES
	(1, 'Januari', '2022', '', '', '', '', '', ''),
	(2, 'Februari', '2022', '', '', '', '', '', ''),
	(3, 'Maret', '2022', '', '', '', '', '', ''),
	(4, 'April', '2022', '', '', '', '', '', ''),
	(5, 'Mei', '2022', '', '', '', '', '', ''),
	(6, 'Juni', '2022', '', '', '', '', '', ''),
	(7, 'Juli', '2022', '', '', '', '', '', ''),
	(8, 'Agustus', '2022', '', '', '', '', '', ''),
	(9, 'September', '2022', '', '', '', '', '', ''),
	(10, 'Oktober', '2022', '', '', '', '', '', ''),
	(11, 'November', '2022', '', '', '', '', '', ''),
	(12, 'Desember', '2022', '', '', '', '', '', '');

-- --------------------------------------------------------

--

-- Struktur dari tabel `2022_data_gaji_karyawan`

--

CREATE TABLE `2022_data_gaji_karyawan` (
	`id` int(11) NOT NULL,
	`bulan` varchar(100) NOT NULL,
	`tahun` varchar(100) NOT NULL,
	`anggaran_global` varchar(100) NOT NULL,
	`terpakai_global` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `2022_data_gaji_karyawan`

--

INSERT INTO
	`2022_data_gaji_karyawan` (
		`id`,
		`bulan`,
		`tahun`,
		`anggaran_global`,
		`terpakai_global`
	)
VALUES
	(1, 'Januari', '2022', '', ''),
	(2, 'Februari', '2022', '', ''),
	(3, 'Maret', '2022', '', ''),
	(4, 'April', '2022', '', ''),
	(5, 'Mei', '2022', '', ''),
	(6, 'Juni', '2022', '', ''),
	(7, 'Juli', '2022', '', ''),
	(8, 'Agustus', '2022', '', ''),
	(9, 'September', '2022', '', ''),
	(10, 'Oktober', '2022', '', ''),
	(11, 'November', '2022', '', ''),
	(12, 'Desember', '2022', '', '');

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `2022_data_income`

--

INSERT INTO
	`2022_data_income` (
		`id`,
		`bulan`,
		`tahun`,
		`income_tanpaResi`,
		`income_global`
	)
VALUES
	(1, 'Januari', '2022', '', ''),
	(2, 'Februari', '2022', '', ''),
	(3, 'Maret', '2022', '', ''),
	(4, 'April', '2022', '', ''),
	(5, 'Mei', '2022', '', ''),
	(6, 'Juni', '2022', '', ''),
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
	`anggaran_global` varchar(100) NOT NULL,
	`terpakai_global` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `2022_data_logistik`

--

INSERT INTO
	`2022_data_logistik` (
		`id`,
		`bulan`,
		`tahun`,
		`anggaran_global`,
		`terpakai_global`
	)
VALUES
	(1, 'Januari', '2022', '', ''),
	(2, 'Februari', '2022', '', ''),
	(3, 'Maret', '2022', '', ''),
	(4, 'April', '2022', '', ''),
	(5, 'Mei', '2022', '', ''),
	(6, 'Juni', '2022', '', ''),
	(7, 'Juli', '2022', '', ''),
	(8, 'Agustus', '2022', '', ''),
	(9, 'September', '2022', '', ''),
	(10, 'Oktober', '2022', '', ''),
	(11, 'November', '2022', '', ''),
	(12, 'Desember', '2022', '', '');

-- --------------------------------------------------------

--

-- Struktur dari tabel `2022_data_maintenance`

--

CREATE TABLE `2022_data_maintenance` (
	`id` int(11) NOT NULL,
	`bulan` varchar(100) NOT NULL,
	`tahun` varchar(100) NOT NULL,
	`anggaran_global` varchar(100) NOT NULL,
	`terpakai_global` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `2022_data_maintenance`

--

INSERT INTO
	`2022_data_maintenance` (
		`id`,
		`bulan`,
		`tahun`,
		`anggaran_global`,
		`terpakai_global`
	)
VALUES
	(1, 'Januari', '2022', '', ''),
	(2, 'Februari', '2022', '', ''),
	(3, 'Maret', '2022', '', ''),
	(4, 'April', '2022', '', ''),
	(5, 'Mei', '2022', '', ''),
	(6, 'Juni', '2022', '', ''),
	(7, 'Juli', '2022', '', ''),
	(8, 'Agustus', '2022', '', ''),
	(9, 'September', '2022', '', ''),
	(10, 'Oktober', '2022', '', ''),
	(11, 'November', '2022', '', ''),
	(12, 'Desember', '2022', '', '');

-- --------------------------------------------------------

--

-- Struktur dari tabel `2022_data_operasional_yayasan`

--

CREATE TABLE `2022_data_operasional_yayasan` (
	`id` int(11) NOT NULL,
	`bulan` varchar(100) NOT NULL,
	`tahun` varchar(100) NOT NULL,
	`anggaran_global` varchar(100) NOT NULL,
	`terpakai_global` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `2022_data_operasional_yayasan`

--

INSERT INTO
	`2022_data_operasional_yayasan` (
		`id`,
		`bulan`,
		`tahun`,
		`anggaran_global`,
		`terpakai_global`
	)
VALUES
	(1, 'Januari', '2022', '', ''),
	(2, 'Februari', '2022', '', ''),
	(3, 'Maret', '2022', '', ''),
	(4, 'April', '2022', '', ''),
	(5, 'Mei', '2022', '', ''),
	(6, 'Juni', '2022', '', ''),
	(7, 'Juli', '2022', '', ''),
	(8, 'Agustus', '2022', '', ''),
	(9, 'September', '2022', '', ''),
	(10, 'Oktober', '2022', '', ''),
	(11, 'November', '2022', '', ''),
	(12, 'Desember', '2022', '', '');

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
	`anggaran_global` varchar(100) NOT NULL,
	`terpakai_global` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `2022_data_program`

--

INSERT INTO
	`2022_data_program` (
		`id`,
		`bulan`,
		`tahun`,
		`anggaran_pendidikan`,
		`terpakai_pendidikan`,
		`anggaran_kesehatan`,
		`terpakai_kesehatan`,
		`anggaran_global`,
		`terpakai_global`
	)
VALUES
	(1, 'Januari', '2022', '', '', '', '', '', ''),
	(2, 'Februari', '2022', '', '', '', '', '', ''),
	(3, 'Maret', '2022', '', '', '', '', '', ''),
	(4, 'April', '2022', '', '', '', '', '', ''),
	(5, 'Mei', '2022', '', '', '', '', '', ''),
	(6, 'Juni', '2022', '', '', '', '', '', ''),
	(7, 'Juli', '2022', '', '', '', '', '', ''),
	(8, 'Agustus', '2022', '', '', '', '', '', ''),
	(9, 'September', '2022', '', '', '', '', '', ''),
	(10, 'Oktober', '2022', '', '', '', '', '', ''),
	(11, 'November', '2022', '', '', '', '', '', ''),
	(12, 'Desember', '2022', '', '', '', '', '', '');

-- --------------------------------------------------------

--

-- Struktur dari tabel `2022_data_uang_makan`

--

CREATE TABLE `2022_data_uang_makan` (
	`id` int(11) NOT NULL,
	`bulan` varchar(100) NOT NULL,
	`tahun` varchar(100) NOT NULL,
	`anggaran_global` varchar(100) NOT NULL,
	`terpakai_global` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `2022_data_uang_makan`

--

INSERT INTO
	`2022_data_uang_makan` (
		`id`,
		`bulan`,
		`tahun`,
		`anggaran_global`,
		`terpakai_global`
	)
VALUES
	(1, 'Januari', '2022', '', ''),
	(2, 'Februari', '2022', '', ''),
	(3, 'Maret', '2022', '', ''),
	(4, 'April', '2022', '', ''),
	(5, 'Mei', '2022', '', ''),
	(6, 'Juni', '2022', '', ''),
	(7, 'Juli', '2022', '', ''),
	(8, 'Agustus', '2022', '', ''),
	(9, 'September', '2022', '', ''),
	(10, 'Oktober', '2022', '', ''),
	(11, 'November', '2022', '', ''),
	(12, 'Desember', '2022', '', '');

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `akun_pengurus`

--

INSERT INTO
	`akun_pengurus` (
		`id`,
		`id_pengurus`,
		`nama`,
		`cabang`,
		`username`,
		`password`,
		`profil`,
		`posisi`
	)
VALUES
	(
		1,
		'ketua_yayasan',
		'Riki Subagja',
		'Depok',
		'riki1011',
		'$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW',
		'profil.png',
		'Ketua Yayasan'
	),
	(
		2,
		'management_keuangan',
		'Vicky Abdul Rohman',
		'Depok',
		'management',
		'$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW',
		'profil.png',
		'Management Keuangan'
	),
	(
		3,
		'kepala_income',
		'Fadhila Amelia Putri',
		'Depok',
		'income_media',
		'$2y$10$1Xsqtyw79xIEqPvy2jHjg.2F3QPVWP1Ppbp/M.U6ZMrd6hizAXChW',
		'profil.png',
		'Kepala Income'
	);

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
	`posisi` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Indexes for dumped tables

--

--

-- Indeks untuk tabel `2022_anggaran_lain`

--

ALTER TABLE `2022_anggaran_lain` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_aset_yayasan`

--

ALTER TABLE `2022_aset_yayasan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_data_anggaran_lain`

--

ALTER TABLE `2022_data_anggaran_lain` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_data_aset_yayasan`

--

ALTER TABLE `2022_data_aset_yayasan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_data_gaji_karyawan`

--

ALTER TABLE `2022_data_gaji_karyawan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_data_income`

--

ALTER TABLE `2022_data_income` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_data_logistik`

--

ALTER TABLE `2022_data_logistik` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_data_maintenance`

--

ALTER TABLE `2022_data_maintenance` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_data_operasional_yayasan`

--

ALTER TABLE `2022_data_operasional_yayasan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_data_program`

--

ALTER TABLE `2022_data_program` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_data_uang_makan`

--

ALTER TABLE `2022_data_uang_makan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_gaji_karyawan`

--

ALTER TABLE `2022_gaji_karyawan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_galeri_anggaran_lain`

--

ALTER TABLE `2022_galeri_anggaran_lain` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_galeri_aset_yayasan`

--

ALTER TABLE `2022_galeri_aset_yayasan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_galeri_gaji_karyawan`

--

ALTER TABLE `2022_galeri_gaji_karyawan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_galeri_logistik`

--

ALTER TABLE `2022_galeri_logistik` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_galeri_maintenance`

--

ALTER TABLE `2022_galeri_maintenance` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_galeri_operasional_yayasan`

--

ALTER TABLE
	`2022_galeri_operasional_yayasan`
ADD
	PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_galeri_pemasukan`

--

ALTER TABLE `2022_galeri_pemasukan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_galeri_program`

--

ALTER TABLE `2022_galeri_program` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_galeri_uang_makan`

--

ALTER TABLE `2022_galeri_uang_makan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_income`

--

ALTER TABLE `2022_income` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_incometanparesi`

--

ALTER TABLE `2022_incometanparesi` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_logistik`

--

ALTER TABLE `2022_logistik` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_log_aktivity`

--

ALTER TABLE `2022_log_aktivity` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_maintenance`

--

ALTER TABLE `2022_maintenance` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_operasional_yayasan`

--

ALTER TABLE `2022_operasional_yayasan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_program`

--

ALTER TABLE `2022_program` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `2022_uang_makan`

--

ALTER TABLE `2022_uang_makan` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `akun_pengurus`

--

ALTER TABLE `akun_pengurus` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `data_akun`

--

ALTER TABLE `data_akun` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `income_media`

--

ALTER TABLE `income_media` ADD PRIMARY KEY (`id`);

--

-- Indeks untuk tabel `laporan_media`

--

ALTER TABLE `laporan_media` ADD PRIMARY KEY (`id`);

--

-- AUTO_INCREMENT untuk tabel yang dibuang

--

--

-- AUTO_INCREMENT untuk tabel `2022_anggaran_lain`

--

ALTER TABLE
	`2022_anggaran_lain`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_aset_yayasan`

--

ALTER TABLE
	`2022_aset_yayasan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_data_anggaran_lain`

--

ALTER TABLE
	`2022_data_anggaran_lain`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 13;

--

-- AUTO_INCREMENT untuk tabel `2022_data_aset_yayasan`

--

ALTER TABLE
	`2022_data_aset_yayasan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 13;

--

-- AUTO_INCREMENT untuk tabel `2022_data_gaji_karyawan`

--

ALTER TABLE
	`2022_data_gaji_karyawan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 13;

--

-- AUTO_INCREMENT untuk tabel `2022_data_income`

--

ALTER TABLE
	`2022_data_income`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 13;

--

-- AUTO_INCREMENT untuk tabel `2022_data_logistik`

--

ALTER TABLE
	`2022_data_logistik`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 13;

--

-- AUTO_INCREMENT untuk tabel `2022_data_maintenance`

--

ALTER TABLE
	`2022_data_maintenance`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 13;

--

-- AUTO_INCREMENT untuk tabel `2022_data_operasional_yayasan`

--

ALTER TABLE
	`2022_data_operasional_yayasan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 13;

--

-- AUTO_INCREMENT untuk tabel `2022_data_program`

--

ALTER TABLE
	`2022_data_program`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 13;

--

-- AUTO_INCREMENT untuk tabel `2022_data_uang_makan`

--

ALTER TABLE
	`2022_data_uang_makan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 13;

--

-- AUTO_INCREMENT untuk tabel `2022_gaji_karyawan`

--

ALTER TABLE
	`2022_gaji_karyawan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_galeri_anggaran_lain`

--

ALTER TABLE
	`2022_galeri_anggaran_lain`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_galeri_aset_yayasan`

--

ALTER TABLE
	`2022_galeri_aset_yayasan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_galeri_gaji_karyawan`

--

ALTER TABLE
	`2022_galeri_gaji_karyawan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_galeri_logistik`

--

ALTER TABLE
	`2022_galeri_logistik`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_galeri_maintenance`

--

ALTER TABLE
	`2022_galeri_maintenance`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_galeri_operasional_yayasan`

--

ALTER TABLE
	`2022_galeri_operasional_yayasan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_galeri_pemasukan`

--

ALTER TABLE
	`2022_galeri_pemasukan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_galeri_program`

--

ALTER TABLE
	`2022_galeri_program`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_galeri_uang_makan`

--

ALTER TABLE
	`2022_galeri_uang_makan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_income`

--

ALTER TABLE
	`2022_income`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_incometanparesi`

--

ALTER TABLE
	`2022_incometanparesi`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_logistik`

--

ALTER TABLE
	`2022_logistik`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_log_aktivity`

--

ALTER TABLE
	`2022_log_aktivity`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_maintenance`

--

ALTER TABLE
	`2022_maintenance`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_operasional_yayasan`

--

ALTER TABLE
	`2022_operasional_yayasan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_program`

--

ALTER TABLE
	`2022_program`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `2022_uang_makan`

--

ALTER TABLE
	`2022_uang_makan`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `akun_pengurus`

--

ALTER TABLE
	`akun_pengurus`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 6;

--

-- AUTO_INCREMENT untuk tabel `data_akun`

--

ALTER TABLE
	`data_akun`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `income_media`

--

ALTER TABLE
	`income_media`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT untuk tabel `laporan_media`

--

ALTER TABLE
	`laporan_media`
MODIFY
	`id` int(11) NOT NULL AUTO_INCREMENT,
	AUTO_INCREMENT = 2;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;