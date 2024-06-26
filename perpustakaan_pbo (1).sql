-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Bulan Mei 2024 pada 05.51
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan pbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `ID_ANGGOTA` char(10) NOT NULL,
  `NAMA_ANGGOTA` varchar(50) DEFAULT NULL,
  `NPM` varchar(50) DEFAULT NULL,
  `ALAMAT_ANGGOTA` varchar(50) DEFAULT NULL,
  `NO_TELEPON` varchar(50) DEFAULT NULL,
  `ID_JURUSAN` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`ID_ANGGOTA`, `NAMA_ANGGOTA`, `NPM`, `ALAMAT_ANGGOTA`, `NO_TELEPON`, `ID_JURUSAN`) VALUES
('A1', 'Andi', '1234567890', 'Jl. Merdeka No. 123', '081234567890', 'JUR1'),
('A10', 'Joko', '0123456789', 'Jl. S. Parman No. 23', '090123456789', 'JUR10'),
('A11', 'Kartika', '1234509876', 'Jl. Diponegoro No. 76', '091234509876', 'JUR11'),
('A12', 'Lina', '2345098765', 'Jl. Ir. Soekarno No. 54', '092345098765', 'JUR12'),
('A13', 'Mira', '3450987654', 'Jl. Tanjung Duren No. 32', '093450987654', 'JUR13'),
('A14', 'Nina', '4560987653', 'Jl. Surya Kencana No. 21', '094560987653', 'JUR14'),
('A15', 'Oscar', '5670987652', 'Jl. Kedungwuni No. 43', '095670987652', 'JUR15'),
('A16', 'Pandu', '6780987651', 'Jl. Jatisari No. 65', '096780987651', 'JUR16'),
('A17', 'Qonita', '7890987650', 'Jl. Kalisari No. 76', '097890987650', 'JUR17'),
('A18', 'Rama', '8909876540', 'Jl. Pangrango No. 87', '098098765401', 'JUR18'),
('A19', 'Santi', '9098765401', 'Jl. Siliwangi No. 98', '099098765402', 'JUR19'),
('A2', 'Budi', '2009304', 'Jl. Jendral Sudirman No. 45', '082345678901', 'JUR2'),
('A20', 'Taufik', '0987654012', 'Jl. Juanda No. 32', '100987654013', 'JUR20'),
('A21', 'ayu', '7929372735', 'Jl. Ikip Sari No.12', '089273516383', 'JUR2'),
('A22', 'anton', '4858264737', 'Jl. Ikip Makmur No.14', '083725474826', 'JUR5'),
('A23', 'cuyi', '93892384974', 'JL. KALIMANTAN', '082348328922', 'JUR2'),
('A3', 'Citra', '3456789012', 'Jl. A. Yani No. 67', '083456789012', 'JUR3'),
('A4', 'Dewi', '4567890123', 'Jl. Ahmad Dahlan No. 89', '084567890123', 'JUR4'),
('A5', 'Eka', '5678901234', 'Jl. Gajah Mada No. 12', '085678901234', 'JUR5'),
('A6', 'Fahri', '6789012345', 'Jl. Panglima Sudirman No. 34', '086789012345', 'JUR6'),
('A7', 'Gita', '7890123456', 'Jl. Pahlawan No. 56', '087890123456', 'JUR7'),
('A8', 'Hadi', '8901234567', 'Jl. Slamet Riyadi No. 78', '088901234567', 'JUR8'),
('A9', 'Indra', '9012345678', 'Jl. Gatot Subroto No. 90', '089012345678', 'JUR9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `ID_BUKU` char(10) NOT NULL,
  `JUDUL_BUKU` varchar(50) DEFAULT NULL,
  `tahun_terbit` varchar(50) DEFAULT NULL,
  `jumlah_buku_tersedia` int(11) DEFAULT NULL,
  `ID_PENERBIT` char(10) DEFAULT NULL,
  `ID_KATEGORI` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`ID_BUKU`, `JUDUL_BUKU`, `tahun_terbit`, `jumlah_buku_tersedia`, `ID_PENERBIT`, `ID_KATEGORI`) VALUES
('1', 'Naruto Shippuden', '2008', 50, '10UJ', '10MA'),
('10', 'Sports Illustrated', '2019', 2, '19NJ', '19O'),
('11', 'Children\'s Stories', '2010', 13, '1DP', '1AA'),
('12', 'Maps of the World', '2021', 30, '20BH', '20P'),
('13', 'Romantic Novels', '2008', 40, '2MP', '2R'),
('14', 'Thriller in the Dark', '2014', 25, '3GA', '3T'),
('15', 'Comic Relief', '2017', 35, '4SJ', '4K'),
('16', 'Horror Tales', '2013', 30, '5TP', '5H'),
('17', 'Tere Liye\'s Novels', '2005', 20, '6TL', '6N'),
('18', 'Monthly Magazines', '2019', 50, '7GA', '7M'),
('19', 'English Dictionary', '2011', 40, '9UY', '8KA'),
('2', 'Ensiklopedia Dunia', '2010', 30, '11UR', '11E'),
('20', 'Comic Adventures', '2022', 25, '10UJ', '9KO'),
('21', 'Manusia Pintar', '2023', 23, '21ER', '6N'),
('22', 'basis data', '2023', 67, '16KJ', '17P'),
('3', 'Manuscript Secrets', '1995', 20, '12KK', '12NA'),
('4', 'Albert Einstein', '2015', 15, '13UD', '13B'),
('5', 'History of Rome', '2005', 40, '14SM', '14S'),
('6', 'Poetry Anthology', '2018', 25, '15GM', '15SA'),
('7', 'The Holy Bible', '2000', 60, '16KJ', '16AG'),
('8', 'Educational Methods', '2012', 35, '17JP', '17P'),
('9', 'Health and Fitness', '2007', 5, '18SJ', '18K');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `ID_JURUSAN` char(10) NOT NULL,
  `nama_jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`ID_JURUSAN`, `nama_jurusan`) VALUES
('JUR1', 'Jurusan Informatika'),
('JUR10', 'Jurusan Seni Rupa'),
('JUR11', 'Jurusan Arsitektur'),
('JUR12', 'Jurusan Biologi'),
('JUR13', 'Jurusan Kimia'),
('JUR14', 'Jurusan Fisika'),
('JUR15', 'Jurusan Matematika'),
('JUR16', 'Jurusan Ilmu Kompute'),
('JUR17', 'Jurusan Pendidikan G'),
('JUR18', 'Jurusan Teknik Kimia'),
('JUR19', 'Jurusan Teknik Indus'),
('JUR2', 'Jurusan Teknik Elektro'),
('JUR20', 'Jurusan Teknik Lingk'),
('JUR3', 'Jurusan Teknik Mesin'),
('JUR4', 'Jurusan Teknik Sipil'),
('JUR5', 'Jurusan Hukum'),
('JUR6', 'Jurusan Ekonomi'),
('JUR7', 'Jurusan Psikologi'),
('JUR8', 'Jurusan Bahasa dan S'),
('JUR9', 'Jurusan Bahasa dan S');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `ID_KATEGORI` char(10) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`ID_KATEGORI`, `kategori`) VALUES
('10MA', 'MANGA'),
('11E', 'ENSIKLOPEDIA'),
('12NA', 'NASKAH'),
('13B', 'BIOGRAFI'),
('14S', 'SEJARAH'),
('15SA', 'SASTRA'),
('16AG', 'AGAMA'),
('17P', 'PENDIDIKAN'),
('18K', 'KESEHATAN'),
('19O', 'OLAHRAGA'),
('1AA', 'ANAK ANAK'),
('20P', 'PETA'),
('2R', 'ROMANTIS'),
('3T', 'THRILLER'),
('4K', 'KOMEDI'),
('5H', 'HORROR'),
('6N', 'NOVEL'),
('7M', 'MAJALAH'),
('8KA', 'KAMUS'),
('9KO', 'KOMIK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjam`
--

CREATE TABLE `peminjam` (
  `ID_PEMINJAM` char(10) NOT NULL,
  `TANGGAL_PEMINJAM` date DEFAULT NULL,
  `TANGGAL_KEMBALI` date DEFAULT NULL,
  `DENDA` float DEFAULT NULL,
  `ID_BUKU` char(10) DEFAULT NULL,
  `JUMLAH_PINJAM` int(50) DEFAULT NULL,
  `ID_ANGGOTA` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjam`
--

INSERT INTO `peminjam` (`ID_PEMINJAM`, `TANGGAL_PEMINJAM`, `TANGGAL_KEMBALI`, `DENDA`, `ID_BUKU`, `JUMLAH_PINJAM`, `ID_ANGGOTA`) VALUES
('P1', '2023-09-01', '2023-09-06', 0, '1', 2, 'A1'),
('P10', '2023-09-10', '2023-09-13', 0, '10', 1, 'A10'),
('P11', '2023-09-11', '2023-09-20', 4000, '11', 3, 'A11'),
('P12', '2023-09-12', '2023-09-15', 0, '12', 1, 'A12'),
('P13', '2023-09-13', '2023-09-16', 0, '13', 2, 'A13'),
('P14', '2023-09-14', '2023-09-17', 0, '14', 3, 'A14'),
('P15', '2023-09-15', '2023-09-29', 14000, '15', 1, 'A15'),
('P16', '2023-09-16', '2023-09-19', 0, '16', 2, 'A16'),
('P17', '2023-09-17', '2023-09-20', 0, '17', 3, 'A17'),
('P18', '2023-09-18', '2023-09-27', 4000, '18', 1, 'A18'),
('P19', '2023-09-19', '2023-09-27', 2000, '19', 2, 'A19'),
('P2', '2023-09-02', '2023-09-07', 0, '2', 1, 'A2'),
('P20', '2023-09-20', '2023-09-23', 0, '20', 3, 'A20'),
('P21', '2023-09-10', '2023-09-13', 0, '3', 4, 'A21'),
('P22', '2023-09-07', '2023-09-10', 0, '5', 2, 'A22'),
('P23', '2023-09-08', '2023-09-12', 0, '5', 2, 'A6'),
('P24', '2023-09-06', '2023-09-08', 0, '22', 2, 'A6'),
('P25', '2023-12-14', '0000-00-00', 0, '1', 2, 'A11'),
('P26', '2023-12-17', '2023-12-19', 0, '1', 5, 'A12'),
('P3', '2023-09-03', '2023-09-06', 0, '3', 3, 'A3'),
('P4', '2023-09-04', '2023-09-07', 0, '4', 2, 'A4'),
('P5', '2023-09-05', '2023-09-08', 0, '5', 1, 'A5'),
('P6', '2023-09-06', '2023-09-09', 0, '6', 3, 'A6'),
('P7', '2023-09-07', '2023-09-10', 0, '7', 1, 'A7'),
('P8', '2023-09-08', '2023-09-11', 0, '8', 2, 'A8'),
('P9', '2023-09-09', '2023-09-12', 0, '9', 2, 'A9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `ID_PENERBIT` char(10) NOT NULL,
  `NAMA_PENERBIT` varchar(50) DEFAULT NULL,
  `lokasi_penerbit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`ID_PENERBIT`, `NAMA_PENERBIT`, `lokasi_penerbit`) VALUES
('10UJ', 'UPN JAKARTA', 'JAKARTA'),
('11UR', 'UNAIR', 'SURABAYA'),
('12KK', 'KERETA KUDA', 'SOLO'),
('13UD', 'UNIVERSITAS DIPONEGORO', 'SEMARANG'),
('14SM', 'SINAR MAS', 'MADIUN'),
('15GM', 'GADJAH MADA', 'PURWOKERTO'),
('16KJ', 'KRISNA JAYA', 'BALI'),
('17JP', 'JATIM PERPUS', 'MALANG'),
('18SJ', 'SURABAYA JAYA', 'SURABAYA'),
('19NJ', 'NTT JAYA', 'MANGARAI'),
('1DP', 'DIANE PERPUS', 'SURABAYA'),
('20BH', 'BIRU HIJAU', 'MOJOKERTO'),
('21ER', 'erlangga', 'BALI'),
('2MP', 'MILEN PERPUS', 'SIDOARJO'),
('3GA', 'GARUDA', 'GRESIK'),
('4SJ', 'SINAR JAYA', 'LAMONGAN'),
('5TP', 'TASYA PERPUS', 'JOMBANG'),
('6TL', 'TERE LIYE PERPUS', 'JAKARTA'),
('7GA', 'GRAMEDIA', 'YOGYAKARTA'),
('9UY', 'UPN YOGYAKARTA', 'YOGYAKARTA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplaibuku`
--

CREATE TABLE `suplaibuku` (
  `ID_SUPLAI` char(10) NOT NULL,
  `ID_BUKU` char(10) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `suplaibuku`
--

INSERT INTO `suplaibuku` (`ID_SUPLAI`, `ID_BUKU`, `TANGGAL`, `jumlah`) VALUES
('SUP1', '1', '2023-09-01', 100),
('SUP10', '10', '2023-09-10', 85),
('SUP11', '11', '2023-09-11', 25),
('SUP12', '12', '2023-09-12', 30),
('SUP13', '13', '2023-09-13', 40),
('SUP14', '14', '2023-09-14', 55),
('SUP15', '15', '2023-09-15', 65),
('SUP16', '16', '2023-09-16', 20),
('SUP17', '17', '2023-09-17', 35),
('SUP18', '18', '2023-09-18', 45),
('SUP19', '19', '2023-09-19', 75),
('SUP2', '2', '2023-09-02', 75),
('SUP20', '20', '2023-09-20', 50),
('SUP21', '1', '2023-12-14', 8),
('SUP3', '3', '2023-09-03', 50),
('SUP4', '4', '2023-09-04', 30),
('SUP5', '5', '2023-09-05', 45),
('SUP6', '6', '2023-09-06', 60),
('SUP7', '7', '2023-09-07', 55),
('SUP8', '8', '2023-09-08', 40),
('SUP9', '9', '2023-09-09', 70);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_ANGGOTA`),
  ADD KEY `ID_JURUSAN` (`ID_JURUSAN`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_BUKU`),
  ADD KEY `ID_PENERBIT` (`ID_PENERBIT`),
  ADD KEY `ID_KATEGORI` (`ID_KATEGORI`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`ID_JURUSAN`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID_KATEGORI`);

--
-- Indeks untuk tabel `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`ID_PEMINJAM`),
  ADD KEY `ID_BUKU` (`ID_BUKU`),
  ADD KEY `ID_ANGGOTA` (`ID_ANGGOTA`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`ID_PENERBIT`);

--
-- Indeks untuk tabel `suplaibuku`
--
ALTER TABLE `suplaibuku`
  ADD PRIMARY KEY (`ID_SUPLAI`),
  ADD KEY `ID_BUKU` (`ID_BUKU`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`ID_JURUSAN`) REFERENCES `jurusan` (`ID_JURUSAN`);

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`ID_PENERBIT`) REFERENCES `penerbit` (`ID_PENERBIT`),
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`ID_KATEGORI`) REFERENCES `kategori` (`ID_KATEGORI`);

--
-- Ketidakleluasaan untuk tabel `peminjam`
--
ALTER TABLE `peminjam`
  ADD CONSTRAINT `peminjam_ibfk_1` FOREIGN KEY (`ID_BUKU`) REFERENCES `buku` (`ID_BUKU`),
  ADD CONSTRAINT `peminjam_ibfk_2` FOREIGN KEY (`ID_ANGGOTA`) REFERENCES `anggota` (`ID_ANGGOTA`);

--
-- Ketidakleluasaan untuk tabel `suplaibuku`
--
ALTER TABLE `suplaibuku`
  ADD CONSTRAINT `suplaibuku_ibfk_1` FOREIGN KEY (`ID_BUKU`) REFERENCES `buku` (`ID_BUKU`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
