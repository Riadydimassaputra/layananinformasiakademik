-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Agu 2023 pada 15.34
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `layanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int(12) NOT NULL,
  `NIS` varchar(50) NOT NULL,
  `tahun_lulus` varchar(50) NOT NULL,
  `status` enum('Mahasiswa','Bekerja','Tidak Keduanya') DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `NIS`, `tahun_lulus`, `status`, `keterangan`) VALUES
(79, 'Afifah Giana', '5', NULL, NULL),
(80, 'Afna Rohitna', '5', NULL, NULL),
(81, 'Aisya Rahma', '5', NULL, NULL),
(82, 'Anggi Herawati', '5', NULL, NULL),
(83, 'Chandra Nur Hanifan', '5', NULL, NULL),
(84, 'Della Rakhmawati', '5', NULL, NULL),
(85, 'Diana Mutiara Putri', '5', NULL, NULL),
(86, 'Dicky Setiawan', '5', NULL, NULL),
(87, 'Erik Kusherawarsih', '5', NULL, NULL),
(88, 'Esti Urbaningrum', '5', NULL, NULL),
(89, 'Febiana Zahra Ananta', '5', NULL, NULL),
(90, 'Hani Karmila', '5', NULL, NULL),
(91, 'Hanifah', '5', NULL, NULL),
(92, 'Hendrawan Martin', '5', NULL, NULL),
(93, 'Holly Vidhama Ratu', '5', NULL, NULL),
(94, 'Ica Cahyani', '5', NULL, NULL),
(95, 'Jahra', '5', NULL, NULL),
(96, 'Latifah Audina', '5', NULL, NULL),
(97, 'Lita Lestari', '5', NULL, NULL),
(98, 'Meliatun Annisa', '5', NULL, NULL),
(99, 'Miftahul Jannah', '5', NULL, NULL),
(100, 'Muh. Amin Fadli', '5', NULL, NULL),
(101, 'Muhammad Iqbal Prakosa', '5', NULL, NULL),
(102, 'Murniati', '5', NULL, NULL),
(103, 'Nadjwa Salsabila', '5', NULL, NULL),
(104, 'Nur Ayu Lestari', '5', NULL, NULL),
(105, 'Puji Siwi Lestari', '5', NULL, NULL),
(106, 'Putri Aliya Hasan', '5', NULL, NULL),
(107, 'Putri Wulandari', '5', NULL, NULL),
(108, 'Rendy Setiawan', '5', NULL, NULL),
(109, 'Saifullah', '5', NULL, NULL),
(110, 'Silvia Mutiara BR Manullang', '5', NULL, NULL),
(111, 'Sulaiman Hud Assalami', '5', NULL, NULL),
(112, 'Sultan Zainurrahman AR', '5', NULL, NULL),
(113, 'Syeilla Deswita Aulia Syarif', '5', NULL, NULL),
(114, 'Vanya Nurlatifah Frayitno', '5', NULL, NULL),
(115, 'Vinata Yulia Bekti', '5', NULL, NULL),
(116, 'Dwi kartikasari', '5', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bayar`
--

CREATE TABLE `bayar` (
  `id_bayar` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  `NIS` varchar(255) NOT NULL,
  `nm_siswa` varchar(255) NOT NULL,
  `kelas` varchar(11) NOT NULL,
  `jurusan` varchar(225) NOT NULL,
  `jenispem` varchar(50) NOT NULL,
  `kategoripem` varchar(50) NOT NULL,
  `nominal` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `bayar` varchar(50) NOT NULL,
  `sisa_bayar` varchar(50) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `b_terakhir` varchar(50) NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bayar`
--

INSERT INTO `bayar` (`id_bayar`, `id_tag`, `NIS`, `nm_siswa`, `kelas`, `jurusan`, `jenispem`, `kategoripem`, `nominal`, `semester`, `bayar`, `sisa_bayar`, `bulan`, `tahun`, `status`, `b_terakhir`, `admin`) VALUES
(193, 6192, '22010001', 'Aditya Pratama', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Juli', '2023', 'LUNAS', '250000', 'petugas loket'),
(194, 6330, '22020003', 'ALYA PUTRI ANZANI', 'X', 'OTKP', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Juli', '2023', 'LUNAS', '250000', 'petugas loket'),
(195, 6331, '22020003', 'ALYA PUTRI ANZANI', 'X', 'OTKP', '2023/2024 GANJIL', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Juli', '2023', 'LUNAS', '100000', 'petugas loket'),
(196, 6332, '22020003', 'ALYA PUTRI ANZANI', 'X', 'OTKP', '2023/2024 GANJIL', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '200000', '50000', 'Juli', '2023', 'Cicilan', '100000', 'petugas loket'),
(197, 6193, '22010001', 'Aditya Pratama', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Juli', '2023', 'LUNAS', '250000', 'petugas loket'),
(198, 6198, '22010002', 'Afandi', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Agustus', '2023', 'LUNAS', '250000', 'petugas loket'),
(199, 6204, '22010003', 'Auliya Putri Ramadhani', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Agustus', '2023', 'LUNAS', '250000', 'petugas loket'),
(200, 6205, '22010003', 'Auliya Putri Ramadhani', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Agustus', '2023', 'LUNAS', '250000', 'petugas loket'),
(201, 6210, '22010004', 'Bakti Ahmad Satyawiguna', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Agustus', '2023', 'LUNAS', '250000', 'petugas loket'),
(202, 6211, '22010004', 'Bakti Ahmad Satyawiguna', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Agustus', '2023', 'LUNAS', '250000', 'petugas loket'),
(203, 6216, '22010005', 'Christian Yabes Roring', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Agustus', '2023', 'LUNAS', '250000', 'petugas loket'),
(204, 6217, '22010005', 'Christian Yabes Roring', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Agustus', '2023', 'LUNAS', '250000', 'petugas loket'),
(205, 6222, '22010006', 'Falha Najib', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '150000', '100000', 'Agustus', '2023', 'Cicilan', '150000', 'petugas loket'),
(206, 6228, '22010007', 'Hazel Ariqah Shabrina', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Agustus', '2023', 'Cicilan', '100000', 'petugas loket'),
(207, 6240, '22010009', 'M. Amril', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Agustus', '2023', 'Cicilan', '100000', 'petugas loket'),
(208, 6246, '22010010', 'Mohamad Irvan Fitriansah', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Agustus', '2023', 'Cicilan', '100000', 'petugas loket'),
(209, 6252, '22010011', 'Muhammad Luckiyana Mawadda', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '50000', '200000', 'Agustus', '2023', 'Cicilan', '50000', 'petugas loket'),
(210, 6258, '22010012', 'Muhammad Nor Fazri', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Agustus', '2023', 'Cicilan', '100000', 'petugas loket'),
(211, 6264, '22010013', 'Muhammad Raihan', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Agustus', '2023', 'Cicilan', '100000', 'petugas loket'),
(212, 6265, '22010013', 'Muhammad Raihan', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Agustus', '2023', 'Cicilan', '100000', 'petugas loket'),
(213, 6270, '22010014', 'Muhammad Rizky Hermawan', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Agustus', '2023', 'Cicilan', '100000', 'petugas loket'),
(214, 6271, '22010014', 'Muhammad Rizky Hermawan', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '150000', '100000', 'Agustus', '2023', 'Cicilan', '150000', 'petugas loket'),
(215, 6276, '22010015', 'Nabella Devana Alysia', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '150000', '100000', 'Agustus', '2023', 'Cicilan', '150000', 'petugas loket'),
(216, 6282, '22010016', 'Nanda Eko Prasetyo', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Agustus', '2023', 'Cicilan', '100000', 'petugas loket'),
(217, 6283, '22010016', 'Nanda Eko Prasetyo', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '150000', '100000', 'Agustus', '2023', 'Cicilan', '150000', 'petugas loket'),
(218, 6197, '22010001', 'Aditya Pratama', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Agustus', '2023', 'LUNAS', '250000', 'petugas loket'),
(219, 6203, '22010002', 'Afandi', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '150000', '100000', 'Agustus', '2023', 'Cicilan', '150000', 'petugas loket'),
(220, 8000, '22010001', 'Aditya Pratama', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '400000', '500000', 'Agustus', '2023', 'Cicilan', '400000', 'petugas loket'),
(221, 8001, '22010002', 'Afandi', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '350000', '550000', 'Agustus', '2023', 'Cicilan', '350000', 'petugas loket'),
(222, 8002, '22010003', 'Auliya Putri Ramadhani', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '250000', '650000', 'Agustus', '2023', 'Cicilan', '250000', 'petugas loket'),
(223, 8003, '22010004', 'Bakti Ahmad Satyawiguna', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '250000', '650000', 'Agustus', '2023', 'Cicilan', '250000', 'petugas loket'),
(224, 8004, '22010005', 'Christian Yabes Roring', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '500000', '400000', 'Agustus', '2023', 'Cicilan', '500000', 'petugas loket'),
(225, 8005, '22010006', 'Falha Najib', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '125000', '775000', 'Agustus', '2023', 'Cicilan', '125000', 'petugas loket'),
(226, 8006, '22010007', 'Hazel Ariqah Shabrina', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '150000', '750000', 'Agustus', '2023', 'Cicilan', '150000', 'petugas loket'),
(227, 8007, '22010008', 'Jonathan Oktafriyanto', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '150000', '750000', 'Agustus', '2023', 'Cicilan', '150000', 'petugas loket'),
(228, 8008, '22010009', 'M. Amril', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '150000', '750000', 'Agustus', '2023', 'Cicilan', '150000', 'petugas loket'),
(229, 8009, '22010010', 'Mohamad Irvan Fitriansah', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '300000', '600000', 'Agustus', '2023', 'Cicilan', '300000', 'petugas loket'),
(230, 8010, '22010011', 'Muhammad Luckiyana Mawadda', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '300000', '600000', 'Agustus', '2023', 'Cicilan', '300000', 'petugas loket'),
(231, 8011, '22010012', 'Muhammad Nor Fazri', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '250000', '650000', 'Agustus', '2023', 'Cicilan', '250000', 'petugas loket'),
(232, 8012, '22010013', 'Muhammad Raihan', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '600000', '300000', 'Agustus', '2023', 'Cicilan', '600000', 'petugas loket'),
(233, 8013, '22010014', 'Muhammad Rizky Hermawan', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '400000', '500000', 'Agustus', '2023', 'Cicilan', '400000', 'petugas loket'),
(234, 8014, '22010015', 'Nabella Devana Alysia', 'X', 'TKJ', '2023/2024 GANJIL', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '150000', '750000', 'Agustus', '2023', 'Cicilan', '150000', 'petugas loket'),
(235, 6194, '22010001', 'Aditya Pratama', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Agustus', '2023', 'Cicilan', '100000', 'petugas loket'),
(236, 6196, '22010001', 'Aditya Pratama', 'X', 'TKJ', '2023/2024 GANJIL', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'Agustus', '2023', 'LUNAS', '250000', 'petugas loket');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa`
--

CREATE TABLE `beasiswa` (
  `id_beasiswa` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beasiswa`
--

INSERT INTO `beasiswa` (`id_beasiswa`, `foto`) VALUES
(1, 'Untitled.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `databeasiswa`
--

CREATE TABLE `databeasiswa` (
  `id_databeasiswa` int(11) NOT NULL,
  `id_lobeasiswa` int(11) NOT NULL,
  `nama_beasiswa` varchar(50) NOT NULL,
  `NIS` varchar(50) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `status_beasiswa` enum('Aktif','Dicabut') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `databeasiswa`
--

INSERT INTO `databeasiswa` (`id_databeasiswa`, `id_lobeasiswa`, `nama_beasiswa`, `NIS`, `nama_siswa`, `kelas`, `tanggal`, `status_beasiswa`) VALUES
(1, 1, 'KIP', '22010001', 'Aditya Pratama', 'X TKJ', '2023/2024 GANJIL', 'Aktif'),
(2, 1, 'KIP', '22020004', 'ANA ANGGRAINI', 'X OTKP', '2023/2024 GANJIL', 'Aktif'),
(3, 1, 'KIP', '22010002', 'Afandi', 'X TKJ', '2023/2024 GANJIL', 'Aktif'),
(4, 1, 'KIP', '22010004', 'Bakti Ahmad Satyawiguna', 'X TKJ', '2023/2024 GANJIL', 'Aktif'),
(5, 2, 'RANKING 1-5', '22010005', 'Christian Yabes Roring', 'X TKJ', '2023/2024 GANJIL', 'Aktif'),
(6, 2, 'RANKING 1-5', '22010006', 'Falha Najib', 'X TKJ', '2023/2024 GANJIL', 'Aktif'),
(7, 2, 'RANKING 1-5', '22010007', 'Hazel Ariqah Shabrina', 'X TKJ', '2023/2024 GANJIL', 'Aktif'),
(8, 2, 'RANKING 1-5', '22010008', 'Jonathan Oktafriyanto', 'X TKJ', '2023/2024 GANJIL', 'Aktif'),
(9, 2, 'RANKING 1-5', '22010001', 'Aditya Pratama', 'X TKJ', '2023/2024 GANJIL', 'Aktif'),
(10, 2, 'RANKING 1-5', '22010007', 'Hazel Ariqah Shabrina', 'X TKJ', '2023/2024 GANJIL', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekskul`
--

CREATE TABLE `ekskul` (
  `id_ekskul` int(11) NOT NULL,
  `nama_ekskul` varchar(50) NOT NULL,
  `nama_pembina` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ekskul`
--

INSERT INTO `ekskul` (`id_ekskul`, `nama_ekskul`, `nama_pembina`) VALUES
(1, 'PASKIBRAKA', 'Darto'),
(3, 'Seni Tari', 'Rosita'),
(4, 'Seni Lukis', 'Lia Larasmita'),
(5, 'Futsal Pria', 'Dimas'),
(6, 'Futsal Wanita', 'Dimas'),
(7, 'Habsy', 'Adys'),
(8, 'Esports', 'Aditya Rahman'),
(9, 'Silat', 'Indra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `NIP` varchar(50) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `TTL` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `nohp` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `NIP`, `nama_guru`, `TTL`, `jabatan`, `nohp`, `email`, `foto`) VALUES
(67, '112233', 'MAIMUNAH,S.Pd.I', 'Sei Tabuk, 1991-01-14', 'Wakil Kepala Bidang Kurikulum', '82350715771', 'maimunah@smkgama.sch.id', 'nofoto.png'),
(68, '11223344', 'BUDI SUSANTO, SH', 'Solo, 1963-05-15', 'Guru PKN', '', '', 'nofoto.png'),
(69, '1122334455', 'IKRIMA SHALEHA, S.Pd', 'Jambu Burung, 1993-09-19', 'Guru Bahasa Indonesia', '', '', 'nofoto.png'),
(70, '123456', 'ULYA ALFIYANI, S.Pd', 'Pingaran, 1991-04-26', 'Bendahara', '85219945037', 'ulyau84@gmail.com', 'nofoto.png'),
(71, '11', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'Banjarbaru, 1991-09-23', 'Guru Bahasa Inggris', '', '', 'nofoto.png'),
(72, '0980', 'KHAIRUNESYA,S.Pd', 'Landasan Ulin, 1992-01-23', 'Wakil Kepala Bidang Kesiswaan', '81345952115', 'khairunesya@gmail.com', 'nofoto.png'),
(73, '89321', 'HERLINDA YUNITA, S.Pd', '', 'Guru Penjas', '', '', 'nofoto.png'),
(74, '9782193', 'RIRI FIRMANSYAH, ST ', 'Danau Salak, 1985-01-25', 'Guru Sistem Komputer', '', '', 'nofoto.png'),
(75, '1273', 'YUSDA HELMANI,S.KOM', '', 'Guru Pemrograman Dasar', '', '', 'nofoto.png'),
(76, '8930', 'M. NOOR ADITYA RAHMAN,S.KOM', 'Banjarbaru, 1991-10-06', 'Kepala Prodi TKJ', '81351763536', 'aditya@smkgama.sch.id', 'nofoto.png'),
(77, '14958416', 'M. RIALDI PRATAMA, S.SOS.I', 'Banjarmasin, 1993-08-29', 'Kepala Prodi MM', '81251528665', 'aldypratama1993.ap@gmail.com', 'nofoto.png'),
(78, '84561651', 'AHMAD SANTOSO, ST', 'Danau Salak, 1985-07-12', 'Kepala Prodi TBSM', '', '', 'nofoto.png'),
(79, '498456', 'AHMAD BURHANUDDIN,S.Pd', '', 'Guru Agama', '', '', 'nofoto.png'),
(80, '58549815', 'RABIATUL ADAWIYAH, S.Pd', '', 'Guru Matematika', '', '', 'nofoto.png'),
(81, '515489', 'LIA LARASMITA, S.Pd', '', 'Guru Seni Budaya', '', '', '890.jpg'),
(82, '2211', 'Riady Dimas Saputra', 'Landasan Ulin, 2001-07-15', 'Guru Simkomdig', '81934588566', 'riadydimas07@gmail.com', 'nofoto.png'),
(83, '8465', 'Abdul rahman', 'Banjarmasin, 1989-11-14', 'Kepala Sekolah ', '6285355891588', 'amanrahman253@gmail.com', 'nofoto.png'),
(84, '0890', 'AHMAD', '09/07/1995', 'Guru Agama', '08234567876', 'ahmad@gmail.com', 'Pasphoto.jpg'),
(85, '', 'Annisa', 'Jawa, 18-08-1993', 'Kaprodi OTKP', '09029102', 'annisa@smkgama.sch.id', '890.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalekskul`
--

CREATE TABLE `jadwalekskul` (
  `id_jadwalekskul` int(11) NOT NULL,
  `hari` varchar(25) NOT NULL,
  `nama_ekskul` varchar(50) NOT NULL,
  `waktu` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwalekskul`
--

INSERT INTO `jadwalekskul` (`id_jadwalekskul`, `hari`, `nama_ekskul`, `waktu`) VALUES
(4, 'Selasa', 'Futsal Pria', '15:00 Wita'),
(5, 'Senin', 'Seni Tari', '15:00 Wita'),
(6, 'Rabu', 'Seni Lukis', '15:00 Wita'),
(7, 'Selasa', 'Silat', '15:30 Wita'),
(8, 'Jumat', 'Habsy', '14:00 Wita'),
(9, 'Sabtu', 'Esports', '15:00 Wita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalmapel`
--

CREATE TABLE `jadwalmapel` (
  `id_jadwalmapel` int(11) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `kd_mapel` varchar(50) DEFAULT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwalmapel`
--

INSERT INTO `jadwalmapel` (`id_jadwalmapel`, `hari`, `waktu`, `kd_mapel`, `kelas`) VALUES
(72126, 'Senin', '08:00 sd 08:35', 'PABPISXTKJ', 'XTKJ'),
(72127, 'Senin', '08:35 sd 09:10', 'PABPISXTKJ', 'XTKJ'),
(72128, 'Senin', '09:10 sd 09:45', 'PABPISXTKJ', 'XTKJ'),
(72129, 'Senin', '09:45 sd 10:20', 'BTAISXTKJ', 'XTKJ'),
(72130, 'Senin', '10:55 sd 11:30', 'BTAISXTKJ', 'XTKJ'),
(72131, 'Senin', '11:30 sd 12:05', 'PKNXTKJ', 'XTKJ'),
(72132, 'Senin', '12:05 sd 12:40', 'PKNXTKJ', 'XTKJ'),
(72133, 'Senin', '13:25 sd 14:00', 'PKNXTKJ', 'XTKJ'),
(72134, 'Senin', '14:00 sd 14:35', 'PKNXTKJ', 'XTKJ'),
(72135, 'Selasa', '08:00 sd 08:35', 'MTKXTKJ', 'XTKJ'),
(72136, 'Selasa', '08:35 sd 09:10', 'MTKXTKJ', 'XTKJ'),
(72137, 'Selasa', '09:10 sd 09:45', 'MTKXTKJ', 'XTKJ'),
(72138, 'Selasa', '09:45 sd 10:20', 'BINDOXTKJ', 'XTKJ'),
(72139, 'Selasa', '10:55 sd 11:30', 'BINDOXTKJ', 'XTKJ'),
(72140, 'Selasa', '11:30 sd 12:05', 'BINDOXTKJ', 'XTKJ'),
(72141, 'Selasa', '12:05 sd 12:40', 'BINGXTKJ', 'XTKJ'),
(72142, 'Selasa', '13:25 sd 14:00', 'BINGXTKJ', 'XTKJ'),
(72143, 'Selasa', '14:00 sd 14:35', 'BINGXTKJ', 'XTKJ'),
(72144, 'Rabu', '08:00 sd 08:35', 'BASGXTKJ', 'XTKJ'),
(72145, 'Rabu', '08:35 sd 09:10', 'BASGXTKJ', 'XTKJ'),
(72146, 'Rabu', '09:10 sd 09:45', 'KIMIAXTKJ', 'XTKJ'),
(72147, 'Rabu', '09:45 sd 10:20', 'KIMIAXTKJ', 'XTKJ'),
(72148, 'Rabu', '10:55 sd 11:30', 'SISKOMXTKJ', 'XTKJ'),
(72149, 'Rabu', '11:30 sd 12:05', 'SISKOMXTKJ', 'XTKJ'),
(72150, 'Rabu', '12:05 sd 12:40', 'SISKOMXTKJ', 'XTKJ'),
(72151, 'Rabu', '13:25 sd 14:00', 'FISIKAXTKJ', 'XTKJ'),
(72152, 'Rabu', '14:00 sd 14:35', 'FISIKAXTKJ', 'XTKJ'),
(72153, 'Kamis', '08:00 sd 08:35', 'PENJASXTKJ', 'XTKJ'),
(72154, 'Kamis', '08:35 sd 09:10', 'PENJASXTKJ', 'XTKJ'),
(72155, 'Kamis', '09:10 sd 09:45', 'PENJASXTKJ', 'XTKJ'),
(72156, 'Kamis', '09:45 sd 10:20', 'SEJARAHXTKJ', 'XTKJ'),
(72157, 'Kamis', '10:55 sd 11:30', 'SEJARAHXTKJ', 'XTKJ'),
(72158, 'Kamis', '11:30 sd 12:05', 'SBUDAYAXTKJ', 'XTKJ'),
(72159, 'Kamis', '12:05 sd 12:40', 'SBUDAYAXTKJ', 'XTKJ'),
(72160, 'Kamis', '13:25 sd 14:00', 'DDGXTKJ', 'XTKJ'),
(72161, 'Kamis', '14:00 sd 14:35', 'DDGXTKJ', 'XTKJ'),
(72162, 'Jumat', '07:45 sd 08:20', 'KOMJARDASXTKJ', 'XTKJ'),
(72163, 'Jumat', '08:20 sd 08:55', 'KOMJARDASXTKJ', 'XTKJ'),
(72164, 'Jumat', '08:55 sd 09:30', 'KOMJARDASXTKJ', 'XTKJ'),
(72165, 'Jumat', '09:30 sd 10:05', 'PEMDASXTKJ', 'XTKJ'),
(72166, 'Jumat', '10:20 sd 10:55', 'PEMDASXTKJ', 'XTKJ'),
(72167, 'Jumat', '10:55 sd 11:30', 'PEMDASXTKJ', 'XTKJ'),
(72168, 'Sabtu', '08:00 sd 08:35', 'SIMKOMDIGXTKJ', 'XTKJ'),
(72169, 'Sabtu', '08:35 sd 09:10', 'SIMKOMDIGXTKJ', 'XTKJ'),
(72170, 'Sabtu', '09:10 sd 09:45', 'SIMKOMDIGXTKJ', 'XTKJ'),
(72171, 'Sabtu', '09:45 sd 10:20', 'MTKXTKJ', 'XTKJ'),
(72172, 'Sabtu', '10:55 sd 11:30', 'MTKXTKJ', 'XTKJ'),
(72173, 'Sabtu', '11:30 sd 12:05', 'MTKXTKJ', 'XTKJ'),
(72174, 'Sabtu', '12:05 sd 12:40', 'MTKXTKJ', 'XTKJ'),
(72175, 'Sabtu', '13:15 sd 13:50', 'FISIKAXTKJ', 'XTKJ'),
(72176, 'Sabtu', '13:50 sd 14:25', 'FISIKAXTKJ', 'XTKJ'),
(72177, 'Senin', '08:00 sd 08:35', 'PABPISXOTKP', 'XOTKP'),
(72178, 'Senin', '08:35 sd 09:10', 'PABPISXOTKP', 'XOTKP'),
(72179, 'Senin', '09:10 sd 09:45', 'PABPISXOTKP', 'XOTKP'),
(72180, 'Senin', '09:45 sd 10:20', 'BTAISXOTKP', 'XOTKP'),
(72181, 'Senin', '10:55 sd 11:30', 'BTAISXOTKP', 'XOTKP'),
(72182, 'Senin', '11:30 sd 12:05', 'PKNXOTKP', 'XOTKP'),
(72183, 'Senin', '12:05 sd 12:40', 'PKNXOTKP', 'XOTKP'),
(72184, 'Senin', '13:25 sd 14:00', 'BINDOXOTKP', 'XOTKP'),
(72185, 'Senin', '14:00 sd 14:35', 'BINDOXOTKP', 'XOTKP'),
(72186, 'Selasa', '08:00 sd 08:35', 'MTKXOTKP', 'XOTKP'),
(72187, 'Selasa', '08:35 sd 09:10', 'MTKXOTKP', 'XOTKP'),
(72188, 'Selasa', '09:10 sd 09:45', 'MTKXOTKP', 'XOTKP'),
(72189, 'Selasa', '09:45 sd 10:20', 'BINGXOTKP', 'XOTKP'),
(72190, 'Selasa', '10:55 sd 11:30', 'BINGXOTKP', 'XOTKP'),
(72191, 'Selasa', '11:30 sd 12:05', 'BINGXOTKP', 'XOTKP'),
(72192, 'Selasa', '12:05 sd 12:40', 'BASGXOTKP', 'XOTKP'),
(72193, 'Selasa', '13:25 sd 14:00', 'BASGXOTKP', 'XOTKP'),
(72194, 'Selasa', '14:00 sd 14:35', 'BASGXOTKP', 'XOTKP'),
(72195, 'Rabu', '08:00 sd 08:35', 'IPAXOTKP', 'XOTKP'),
(72196, 'Rabu', '08:35 sd 09:10', 'IPAXOTKP', 'XOTKP'),
(72197, 'Rabu', '09:10 sd 09:45', 'ADMUMXOTKP', 'XOTKP'),
(72198, 'Rabu', '09:45 sd 10:20', 'ADMUMXOTKP', 'XOTKP'),
(72199, 'Rabu', '10:55 sd 11:30', 'ADMUMXOTKP', 'XOTKP'),
(72200, 'Rabu', '11:30 sd 12:05', 'SEJARAHXOTKP', 'XOTKP'),
(72201, 'Rabu', '12:05 sd 12:40', 'SEJARAHXOTKP', 'XOTKP'),
(72202, 'Rabu', '13:25 sd 14:00', 'SBUDAYAXOTKP', 'XOTKP'),
(72203, 'Rabu', '14:00 sd 14:35', 'SBUDAYAXOTKP', 'XOTKP'),
(72204, 'Kamis', '08:00 sd 08:35', 'PENJASXOTKP', 'XOTKP'),
(72205, 'Kamis', '08:35 sd 09:10', 'PENJASXOTKP', 'XOTKP'),
(72206, 'Kamis', '09:10 sd 09:45', 'TEKPERXOTKP', 'XOTKP'),
(72207, 'Kamis', '09:45 sd 10:20', 'TEKPERXOTKP', 'XOTKP'),
(72208, 'Kamis', '10:55 sd 11:30', 'TEKPERXOTKP', 'XOTKP'),
(72209, 'Kamis', '11:30 sd 12:05', 'SIMKOMDIGXOTKP', 'XOTKP'),
(72210, 'Kamis', '12:05 sd 12:40', 'SIMKOMDIGXOTKP', 'XOTKP'),
(72211, 'Kamis', '13:25 sd 14:00', 'SIMKOMDIGXOTKP', 'XOTKP'),
(72212, 'Kamis', '14:00 sd 14:35', 'SIMKOMDIGXOTKP', 'XOTKP'),
(72213, 'Jumat', '07:45 sd 08:20', 'TEKPERXOTKP', 'XOTKP'),
(72214, 'Jumat', '08:20 sd 08:55', 'TEKPERXOTKP', 'XOTKP'),
(72215, 'Jumat', '08:55 sd 09:30', 'TEKPERXOTKP', 'XOTKP'),
(72216, 'Jumat', '09:30 sd 10:05', 'ADMUMXOTKP', 'XOTKP'),
(72217, 'Jumat', '10:20 sd 10:55', 'ADMUMXOTKP', 'XOTKP'),
(72218, 'Jumat', '10:55 sd 11:30', 'ADMUMXOTKP', 'XOTKP'),
(72219, 'Sabtu', '08:00 sd 08:35', 'MTKXOTKP', 'XOTKP'),
(72220, 'Sabtu', '08:35 sd 09:10', 'MTKXOTKP', 'XOTKP'),
(72221, 'Sabtu', '09:10 sd 09:45', 'MTKXOTKP', 'XOTKP'),
(72222, 'Sabtu', '09:45 sd 10:20', 'TEKPERXOTKP', 'XOTKP'),
(72223, 'Sabtu', '10:55 sd 11:30', 'TEKPERXOTKP', 'XOTKP'),
(72224, 'Sabtu', '11:30 sd 12:05', 'MTKXOTKP', 'XOTKP'),
(72225, 'Sabtu', '12:05 sd 12:40', 'MTKXOTKP', 'XOTKP'),
(72226, 'Sabtu', '13:15 sd 13:50', 'BINGXOTKP', 'XOTKP'),
(72227, 'Sabtu', '13:50 sd 14:25', 'BINDOXOTKP', 'XOTKP'),
(72228, 'Senin', '08:00 sd 08:35', 'PABPISXMM\r\n', 'XMM'),
(72229, 'Senin', '08:35 sd 09:10', 'PABPISXMM', 'XMM'),
(72230, 'Senin', '09:10 sd 09:45', 'PABPISXMM', 'XMM'),
(72231, 'Senin', '09:45 sd 10:20', 'BTAISXMM', 'XMM'),
(72232, 'Senin', '10:55 sd 11:30', 'BTAISXMM', 'XMM'),
(72233, 'Senin', '11:30 sd 12:05', 'PKNXMM', 'XMM'),
(72234, 'Senin', '12:05 sd 12:40', 'PKNXMM', 'XMM'),
(72235, 'Senin', '13:25 sd 14:00', 'PKNXMM', 'XMM'),
(72236, 'Senin', '14:00 sd 14:35', 'PKNXMM', 'XMM'),
(72237, 'Selasa', '08:00 sd 08:35', 'MTKXMM', 'XMM'),
(72238, 'Selasa', '08:35 sd 09:10', 'MTKXMM', 'XMM'),
(72239, 'Selasa', '09:10 sd 09:45', 'MTKXMM', 'XMM'),
(72240, 'Selasa', '09:45 sd 10:20', 'BINDOXMM', 'XMM'),
(72241, 'Selasa', '10:55 sd 11:30', 'BINDOXMM', 'XMM'),
(72242, 'Selasa', '11:30 sd 12:05', 'BINDOXMM', 'XMM'),
(72243, 'Selasa', '12:05 sd 12:40', 'BINGXMM', 'XMM'),
(72244, 'Selasa', '13:25 sd 14:00', 'BINGXMM', 'XMM'),
(72245, 'Selasa', '14:00 sd 14:35', 'BINGXMM', 'XMM'),
(72246, 'Rabu', '08:00 sd 08:35', 'BASGXMM', 'XMM'),
(72247, 'Rabu', '08:35 sd 09:10', 'BASGXMM', 'XMM'),
(72248, 'Rabu', '09:10 sd 09:45', 'KIMIAXMM', 'XMM'),
(72249, 'Rabu', '09:45 sd 10:20', 'KIMIAXMM', 'XMM'),
(72250, 'Rabu', '10:55 sd 11:30', 'SISKOMXMM', 'XMM'),
(72251, 'Rabu', '11:30 sd 12:05', 'SISKOMXMM', 'XMM'),
(72252, 'Rabu', '12:05 sd 12:40', 'SISKOMXMM', 'XMM'),
(72253, 'Rabu', '13:25 sd 14:00', 'FISIKAXMM', 'XMM'),
(72254, 'Rabu', '14:00 sd 14:35', 'FISIKAXMM', 'XMM'),
(72255, 'Kamis', '08:00 sd 08:35', 'PENJASXMM', 'XMM'),
(72256, 'Kamis', '08:35 sd 09:10', 'PENJASXMM', 'XMM'),
(72257, 'Kamis', '09:10 sd 09:45', 'PENJASXMM', 'XMM'),
(72258, 'Kamis', '09:45 sd 10:20', 'SEJARAHXMM', 'XMM'),
(72259, 'Kamis', '10:55 sd 11:30', 'SEJARAHXMM', 'XMM'),
(72260, 'Kamis', '11:30 sd 12:05', 'SBUDAYAXMM', 'XMM'),
(72261, 'Kamis', '12:05 sd 12:40', 'SBUDAYAXMM', 'XMM'),
(72262, 'Kamis', '13:25 sd 14:00', 'BASGXMM', 'XMM'),
(72263, 'Kamis', '14:00 sd 14:35', 'BASGXMM', 'XMM'),
(72264, 'Jumat', '07:45 sd 08:20', 'KOMJARDASXMM', 'XMM'),
(72265, 'Jumat', '08:20 sd 08:55', 'KOMJARDASXMM', 'XMM'),
(72266, 'Jumat', '08:55 sd 09:30', 'KOMJARDASXMM', 'XMM'),
(72267, 'Jumat', '09:30 sd 10:05', 'PEMDASXMM', 'XMM'),
(72268, 'Jumat', '10:20 sd 10:55', 'PEMDASXMM', 'XMM'),
(72269, 'Jumat', '10:55 sd 11:30', 'PEMDASXMM', 'XMM'),
(72270, 'Sabtu', '08:00 sd 08:35', 'SIMKOMDIGXMM', 'XMM'),
(72271, 'Sabtu', '08:35 sd 09:10', 'SIMKOMDIGXMM', 'XMM'),
(72272, 'Sabtu', '09:10 sd 09:45', 'SIMKOMDIGXMM', 'XMM'),
(72273, 'Sabtu', '09:45 sd 10:20', 'MTKXMM', 'XMM'),
(72274, 'Sabtu', '10:55 sd 11:30', 'MTKXMM', 'XMM'),
(72275, 'Sabtu', '11:30 sd 12:05', 'MTKXMM', 'XMM'),
(72276, 'Sabtu', '12:05 sd 12:40', 'MTKXMM', 'XMM'),
(72277, 'Sabtu', '13:15 sd 13:50', 'FISIKAXMM', 'XMM'),
(72278, 'Sabtu', '13:50 sd 14:25', 'DDGXMM', 'XMM'),
(72279, 'Senin', '08:00 sd 08:35', 'PABPISXTBSM', 'XTBSM'),
(72280, 'Senin', '08:35 sd 09:10', 'PABPISXTBSM', 'XTBSM'),
(72281, 'Senin', '09:10 sd 09:45', 'PABPISXTBSM', 'XTBSM'),
(72282, 'Senin', '09:45 sd 10:20', 'BTAISXTBSM', 'XTBSM'),
(72283, 'Senin', '10:55 sd 11:30', 'BTAISXTBSM', 'XTBSM'),
(72284, 'Senin', '11:30 sd 12:05', 'PKNXTBSM', 'XTBSM'),
(72285, 'Senin', '12:05 sd 12:40', 'PKNXTBSM', 'XTBSM'),
(72286, 'Senin', '13:25 sd 14:00', 'PKNXTBSM', 'XTBSM'),
(72287, 'Senin', '14:00 sd 14:35', 'PKNXTBSM', 'XTBSM'),
(72288, 'Selasa', '08:00 sd 08:35', 'MTKXTBSM', 'XTBSM'),
(72289, 'Selasa', '08:35 sd 09:10', 'MTKXTBSM', 'XTBSM'),
(72290, 'Selasa', '09:10 sd 09:45', 'MTKXTBSM', 'XTBSM'),
(72291, 'Selasa', '09:45 sd 10:20', 'BINDOXTBSM', 'XTBSM'),
(72292, 'Selasa', '10:55 sd 11:30', 'BINDOXTBSM', 'XTBSM'),
(72293, 'Selasa', '11:30 sd 12:05', 'BINDOXTBSM', 'XTBSM'),
(72294, 'Selasa', '12:05 sd 12:40', 'BINGXTBSM', 'XTBSM'),
(72295, 'Selasa', '13:25 sd 14:00', 'BINGXTBSM', 'XTBSM'),
(72296, 'Selasa', '14:00 sd 14:35', 'BINGXTBSM', 'XTBSM'),
(72297, 'Rabu', '08:00 sd 08:35', 'BASGXTBSM', 'XTBSM'),
(72298, 'Rabu', '08:35 sd 09:10', 'BASGXTBSM', 'XTBSM'),
(72299, 'Rabu', '09:10 sd 09:45', 'KIMIAXTBSM', 'XTBSM'),
(72300, 'Rabu', '09:45 sd 10:20', 'KIMIAXTBSM', 'XTBSM'),
(72301, 'Rabu', '10:55 sd 11:30', 'KIMIAXTBSM', 'XTBSM'),
(72302, 'Rabu', '11:30 sd 12:05', 'KIMIAXTBSM', 'XTBSM'),
(72303, 'Rabu', '12:05 sd 12:40', 'KIMIAXTBSM', 'XTBSM'),
(72304, 'Rabu', '13:25 sd 14:00', 'FISIKAXTBSM', 'XTBSM'),
(72305, 'Rabu', '14:00 sd 14:35', 'FISIKAXTBSM', 'XTBSM'),
(72306, 'Kamis', '08:00 sd 08:35', 'PENJASXTBSM', 'XTBSM'),
(72307, 'Kamis', '08:35 sd 09:10', 'PENJASXTBSM', 'XTBSM'),
(72308, 'Kamis', '09:10 sd 09:45', 'PENJASXTBSM', 'XTBSM'),
(72309, 'Kamis', '09:45 sd 10:20', 'SEJARAHXTBSM', 'XTBSM'),
(72310, 'Kamis', '10:55 sd 11:30', 'SEJARAHXTBSM', 'XTBSM'),
(72311, 'Kamis', '11:30 sd 12:05', 'SBUDAYAXTBSM', 'XTBSM'),
(72312, 'Kamis', '12:05 sd 12:40', 'SBUDAYAXTBSM', 'XTBSM'),
(72313, 'Kamis', '13:25 sd 14:00', 'BASGXTBSM', 'XTBSM'),
(72314, 'Kamis', '14:00 sd 14:35', 'BASGXTBSM', 'XTBSM'),
(72315, 'Jumat', '07:45 sd 08:20', 'BASGXTBSM', 'XTBSM'),
(72316, 'Jumat', '08:20 sd 08:55', 'BASGXTBSM', 'XTBSM'),
(72317, 'Jumat', '08:55 sd 09:30', 'BASGXTBSM', 'XTBSM'),
(72318, 'Jumat', '09:30 sd 10:05', 'SIMKOMDIGXTBSM', 'XTBSM'),
(72319, 'Jumat', '10:20 sd 10:55', 'SIMKOMDIGXTBSM', 'XTBSM'),
(72320, 'Jumat', '10:55 sd 11:30', 'SIMKOMDIGXTBSM', 'XTBSM'),
(72321, 'Sabtu', '08:00 sd 08:35', 'SIMKOMDIGXTBSM', 'XTBSM'),
(72322, 'Sabtu', '08:35 sd 09:10', 'SIMKOMDIGXTBSM', 'XTBSM'),
(72323, 'Sabtu', '09:10 sd 09:45', 'SIMKOMDIGXTBSM', 'XTBSM'),
(72324, 'Sabtu', '09:45 sd 10:20', 'MTKXTBSM', 'XTBSM'),
(72325, 'Sabtu', '10:55 sd 11:30', 'MTKXTBSM', 'XTBSM'),
(72326, 'Sabtu', '11:30 sd 12:05', 'MTKXTBSM', 'XTBSM'),
(72327, 'Sabtu', '12:05 sd 12:40', 'MTKXTBSM', 'XTBSM'),
(72328, 'Sabtu', '13:15 sd 13:50', 'FISIKAXTBSM', 'XTBSM'),
(72329, 'Sabtu', '13:50 sd 14:25', 'SIMKOMDIGXTBSM', 'XTBSM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE `jam` (
  `id_jam` int(11) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `waktu_mulai` varchar(50) NOT NULL,
  `waktu_akhir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`id_jam`, `hari`, `waktu_mulai`, `waktu_akhir`) VALUES
(1, 'Senin', '08:00', '08:35'),
(2, 'Senin', '08:35', '09:10'),
(3, 'Senin', '09:10', '09:45'),
(4, 'Senin', '09:45', '10:20'),
(5, 'Senin', '10:55', '11:30'),
(6, 'Senin', '11:30', '12:05'),
(7, 'Senin', '12:05', '12:40'),
(8, 'Senin', '13:25', '14:00'),
(9, 'Senin', '14:00', '14:35'),
(10, 'Selasa', '08:00', '08:35'),
(11, 'Selasa', '08:35', '09:10'),
(12, 'Selasa', '09:10', '09:45'),
(13, 'Selasa', '09:45', '10:20'),
(14, 'Selasa', '10:55', '11:30'),
(15, 'Selasa', '11:30', '12:05'),
(16, 'Selasa', '12:05', '12:40'),
(17, 'Selasa', '13:25', '14:00'),
(18, 'Selasa', '14:00', '14:35'),
(19, 'Rabu', '08:00', '08:35'),
(20, 'Rabu', '08:35', '09:10'),
(21, 'Rabu', '09:10', '09:45'),
(22, 'Rabu', '09:45', '10:20'),
(23, 'Rabu', '10:55', '11:30'),
(24, 'Rabu', '11:30', '12:05'),
(25, 'Rabu', '12:05', '12:40'),
(26, 'Rabu', '13:25', '14:00'),
(27, 'Rabu', '14:00', '14:35'),
(28, 'Kamis', '08:00', '08:35'),
(29, 'Kamis', '08:35', '09:10'),
(30, 'Kamis', '09:10', '09:45'),
(31, 'Kamis', '09:45', '10:20'),
(32, 'Kamis', '10:55', '11:30'),
(33, 'Kamis', '11:30', '12:05'),
(34, 'Kamis', '12:05', '12:40'),
(35, 'Kamis', '13:25', '14:00'),
(36, 'Kamis', '14:00', '14:35'),
(37, 'Jumat', '07:45', '08:20'),
(38, 'Jumat', '08:20', '08:55'),
(39, 'Jumat', '08:55', '09:30'),
(40, 'Jumat', '09:30', '10:05'),
(41, 'Jumat', '10:20', '10:55'),
(42, 'Jumat', '10:55', '11:30'),
(43, 'Sabtu', '08:00', '08:35'),
(44, 'Sabtu', '08:35', '09:10'),
(45, 'Sabtu', '09:10', '09:45'),
(46, 'Sabtu', '09:45', '10:20'),
(47, 'Sabtu', '10:55', '11:30'),
(48, 'Sabtu', '11:30', '12:05'),
(49, 'Sabtu', '12:05', '12:40'),
(50, 'Sabtu', '13:15', '13:50'),
(51, 'Sabtu', '13:50', '14:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal`
--

CREATE TABLE `jurnal` (
  `id_jurnal` int(11) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `hari` varchar(25) NOT NULL,
  `waktu_jurnal` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `nama_materi` varchar(50) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `user_upload` int(11) NOT NULL,
  `point` varchar(20) NOT NULL,
  `tahunajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurnal`
--

INSERT INTO `jurnal` (`id_jurnal`, `kelas`, `hari`, `waktu_jurnal`, `semester`, `nama_materi`, `nama_guru`, `mapel`, `user_upload`, `point`, `tahunajaran`) VALUES
(6, 'XTKJ', 'Selasa', '5 sd 7', 'Ganjil', 'Kelas Maya', 'Riady Dimas Saputra', 'SIMKOMDIG', 292, '5', 'S2022/2023'),
(7, 'XOTKP', 'Kamis', '1 sd 3', 'Ganjil', 'Presentasi Video', 'Riady Dimas Saputra', 'SIMKOMDIG', 292, '5', 'S2022/2023'),
(8, 'XTKJ', 'Jumat', '1 sd 3', 'Ganjil', 'Yesus', 'Suwati', 'KRISTEN', 283, '5', 'S2022/2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `point` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `nama_kegiatan`, `point`) VALUES
(1, 'Seminar', '25'),
(2, 'RAPAT DINAS', '30'),
(3, 'Laporan Jurnal Mengajar', '50'),
(4, 'Laporan SPPD', '35'),
(5, 'RAPAT EVALUASI', '40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'X'),
(2, 'XI'),
(3, 'XII'),
(5, 'Lulusan S2022/2023'),
(6, 'Lulusan S2023/2024'),
(8, 'Lulusan S2024/2025');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kritik`
--

CREATE TABLE `kritik` (
  `id_kritik` int(11) NOT NULL,
  `kritik` text NOT NULL,
  `tahun` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kritik`
--

INSERT INTO `kritik` (`id_kritik`, `kritik`, `tahun`) VALUES
(4, 'wdqe2qeqweqeqewqw', '2023'),
(6, 'saya punya form textarea, input data ke database berhasil, cuma pas dipanggil lagi ke view, misal pas input di form bikin 3 paragraf (pakai enter), eh pas ditampilin jadi satu baris.<br />\r\ngimana caranya ya supaya si user bisa input lebih dari satu paragraf?<br />\r\n<br />\r\nterima kasih', '2023'),
(7, 'testestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestestes', '2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_lap` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `hari` varchar(25) NOT NULL,
  `jam` varchar(25) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `kehadiran` varchar(255) NOT NULL,
  `alasan` text DEFAULT NULL,
  `point` varchar(30) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `user_upload` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_lap`, `nama_user`, `tahun`, `bulan`, `hari`, `jam`, `nama_kegiatan`, `kehadiran`, `alasan`, `point`, `foto`, `user_upload`) VALUES
(144, 'Riady Dimas Saputra', '2023/2024 GANJIL', 'Juli', 'Selasa', '22:47:49 pm', 'Apel', 'Hadir', '-', '5', '64bfeeab4df92.jpg', '976'),
(145, 'MAIMUNAH,S.Pd.I', '2023/2024 GANJIL', 'Agustus', 'Sabtu', '19:10:02 pm', 'Apel', 'Hadir', '-', '5', '64ce3c24e57ec.jpg', '964'),
(146, 'KHAIRUNESYA,S.Pd', '2023/2024 GANJIL', 'Agustus', 'Sabtu', '19:10:52 pm', 'UPACARA SUMPAH PEMUDA', 'Hadir', '-', '5', '64ce3c561b72c.jpg', '960'),
(147, 'KHAIRUNESYA,S.Pd', '2023/2024 GANJIL', 'Agustus', 'Sabtu', '19:11:06 pm', 'Apel', 'Hadir', '-', '5', '64ce3c6188ca7.jpg', '960'),
(148, 'ULYA ALFIYANI, S.Pd', '2023/2024 GANJIL', 'Agustus', 'Sabtu', '19:12:04 pm', 'UPACARA SUMPAH PEMUDA', 'Hadir', '-', '5', '64ce3c9b739df.jpg', '968'),
(149, 'IKRIMA SHALEHA, S.Pd', '2023/2024 GANJIL', 'Agustus', 'Sabtu', '19:12:48 pm', 'Tidak Ada Kegiatan', 'Tidak Hadir', 'Sakit', '0', '--.jpg', '957'),
(150, 'M. RIALDI PRATAMA, S.SOS.I', '2023/2024 GANJIL', 'Agustus', 'Sabtu', '19:13:24 pm', 'SEMINAR ', 'Hadir', '-', '5', '64ce3cedf2b11.jpg', '963'),
(151, 'MUHAMMAD IRHAM HABIBIE, S.Pd', '2023/2024 GANJIL', 'Agustus', 'Sabtu', '19:14:01 pm', 'UPACARA SUMPAH PEMUDA', 'Hadir', '-', '5', '64ce3d0fa98e6.jpg', '959'),
(152, 'RIRI FIRMANSYAH, ST ', '2023/2024 GANJIL', 'Agustus', 'Sabtu', '19:14:30 pm', 'Tidak Ada Kegiatan', 'Tidak Hadir', 'Dinas', '0', '--.jpg', '966'),
(153, 'HERLINDA YUNITA, S.Pd', '2023/2024 GANJIL', 'Agustus', 'Sabtu', '19:15:26 pm', 'Tidak Ada Kegiatan', 'Tidak Hadir', 'Jaga anak', '0', '--.jpg', '969'),
(154, 'Abdul rahman', '2023/2024 GANJIL', 'Agustus', 'Sabtu', '14:15:59 pm', 'UPACARA SUMPAH PEMUDA', 'Hadir', '-', '5', '64ce3d86317f7.jpg', '952');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporanguru`
--

CREATE TABLE `laporanguru` (
  `id_laporanguru` int(11) NOT NULL,
  `id_veriflapguru` int(11) NOT NULL,
  `kategori_kegiatan` varchar(50) NOT NULL,
  `tahunajaran` varchar(50) NOT NULL,
  `nama_pengajar` varchar(60) NOT NULL,
  `file_lap` varchar(255) NOT NULL,
  `point_lap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporanguru`
--

INSERT INTO `laporanguru` (`id_laporanguru`, `id_veriflapguru`, `kategori_kegiatan`, `tahunajaran`, `nama_pengajar`, `file_lap`, `point_lap`) VALUES
(22, 23, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'Riady Dimas Saputra', 'Sertifikat terbaru.pdf', '50'),
(23, 24, 'RAPAT DINAS', '2023/2024 GANJIL', 'MAIMUNAH,S.Pd.I', 'Print.pdf', '30'),
(24, 25, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'KHAIRUNESYA,S.Pd', 'Print.pdf', '50'),
(25, 26, 'Seminar', '2023/2024 GANJIL', 'ULYA ALFIYANI, S.Pd', 'Print.pdf', '25'),
(26, 27, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'ULYA ALFIYANI, S.Pd', 'UAS BJB NONREG GENAP 20222023.pdf', '50'),
(27, 28, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'IKRIMA SHALEHA, S.Pd', 'BJM-REG-GENAP-20222023.pdf', '50'),
(28, 29, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'M. RIALDI PRATAMA, S.SOS.I', 'UAS BJB NONREG GENAP 20222023.pdf', '50'),
(29, 30, 'Laporan SPPD', '2023/2024 GANJIL', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'UAS BJB NONREG GENAP 20222023.pdf', '35'),
(30, 31, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'RIRI FIRMANSYAH, ST ', 'BJM-REG-GENAP-20222023.pdf', '50'),
(31, 32, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'HERLINDA YUNITA, S.Pd', 'UAS BJB NONREG GENAP 20222023.pdf', '50'),
(32, 33, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'Abdul rahman', 'Print.pdf', '50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lobeasiswa`
--

CREATE TABLE `lobeasiswa` (
  `id_lobeasiswa` int(11) NOT NULL,
  `nama_beasiswa` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `syarat` text NOT NULL,
  `status_beasiswa` enum('Dibuka','Ditutup') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lobeasiswa`
--

INSERT INTO `lobeasiswa` (`id_lobeasiswa`, `nama_beasiswa`, `tanggal`, `syarat`, `status_beasiswa`) VALUES
(1, 'KIP', '11-07-2023', '1. fotocopy slip gaji orang tua/wali\r\n2. fotocopy raport/ijasah SMP\r\n3. fotocopy KTP orang tua/wali\r\n4. foto rumah tampak depan, dan belakang\r\n', 'Ditutup'),
(2, 'RANKING 1-5', '20-07-2023', 'lampirkan raport dari kelas 7 sampai 9 dengan peringkat 1 - 5\r\nlampirkan ijazah SMP\r\nSurat Pernyataan tidak menerima beasiswa *Silakan ambil suratnya di Loket Pelayanan\r\n', 'Dibuka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `loker`
--

CREATE TABLE `loker` (
  `id_loker` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `loker`
--

INSERT INTO `loker` (`id_loker`, `foto`) VALUES
(1, 'Untitled.jpg'),
(2, 's.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(150) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `kelas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `kode_mapel`, `nama_mapel`, `kelas`) VALUES
(94, 'PABPISXOTKP', 'PENDIDIKAN AGAMA DAN BUDI PEKERTI ISLAM', 'XOTKP'),
(95, 'BTAISXOTKP', 'MULOK ISLAM', 'XOTKP'),
(96, 'PKNXOTKP', 'PENDIDIKAN KEWARGANEGARAAN', 'XOTKP'),
(97, 'BINDOXOTKP', 'BAHASA INDONESIA', 'XOTKP'),
(98, 'MTKXOTKP', 'MATEMATIKA', 'XOTKP'),
(99, 'BINGXOTKP', 'BAHASA INGGRIS', 'XOTKP'),
(100, 'BASGXOTKP', 'BAHASA ASING', 'XOTKP'),
(102, 'IPAXOTKP', 'IPA', 'XOTKP'),
(103, 'EKONOMIBISXOTKP', 'EKONOMI BISNIS', 'XOTKP'),
(104, 'PENJASXOTKP', 'PENDIDIKAN JASMANI DAN ROHANI', 'XOTKP'),
(105, 'SEJARAHXOTKP', 'SEJARAH INDONESIA', 'XOTKP'),
(106, 'SBUDAYAXOTKP', 'SENI BUDAYA', 'XOTKP'),
(107, 'KORESXOTKP', 'KORES', 'XOTKP'),
(108, 'KEARSIPXOTKP', 'KEARSIPAN', 'XOTKP'),
(109, 'ADMUMXOTKP', 'ADMINISTRASI UMUM', 'XOTKP'),
(110, 'TEKPERXOTKP', 'TEKNOLOGI PERKANTORAN', 'XOTKP'),
(111, 'SIMKOMDIGXOTKP', 'SIMULASI KOMUNIKASI DIGITAL', 'XOTKP'),
(112, 'PABPISXTBSM', 'PENDIDIKAN AGAMA DAN BUDI PEKERTI ISLAM', 'XTBSM'),
(113, 'BTAISXTBSM', 'MULOK ISLAM', 'XTBSM'),
(114, 'PKNXTBSM', 'PENDIDIKAN KEWARGANEGARAAN', 'XTBSM'),
(115, 'BINDOXTBSM', 'BAHASA INDONESIA', 'XTBSM'),
(116, 'MTKXTBSM', 'MATEMATIKA', 'XTBSM'),
(117, 'BINGXTBSM', 'BAHASA INGGRIS', 'XTBSM'),
(118, 'BASGXTBSM', 'BAHASA ASING', 'XTBSM'),
(119, 'KIMIAXTBSM', 'KIMIA', 'XTBSM'),
(120, 'FISIKAXTBSM', 'FISIKA', 'XTBSM'),
(121, 'GTOXTBSM', 'GAMBAR TEKNIK OTOMOTIF', 'XTBSM'),
(122, 'PENJASXTBSM', 'PENDIDIKAN JASMANI DAN ROHANI', 'XTBSM'),
(123, 'SEJARAHXTBSM', 'SEJARAH INDONESIA', 'XTBSM'),
(124, 'SBUDAYAXTBSM', 'SENI BUDAYA', 'XTBSM'),
(125, 'TDOXTBSM', 'TEKNIK DRAFT OTOMOTIF', 'XTBSM'),
(126, 'PDTOXTBSM', 'PENGENALAN DASAR TEKNIK OTOMOTIF', 'XTBSM'),
(127, 'SIMKOMDIGXTBSM', 'SIMULASI KOMUNIKASI DIGITAL', 'XTBSM'),
(128, 'PABPISXMM', 'PENDIDIKAN AGAMA DAN BUDI PEKERTI ISLAM', 'XMM'),
(129, 'BTAISXMM', 'MULOK ISLAM', 'XMM'),
(130, 'PKNXMM', 'PENDIDIKAN KEWARGANEGARAAN', 'XMM'),
(131, 'BINDOXMM', 'BAHASA INDONESIA', 'XMM'),
(132, 'MTKXMM', 'MATEMATIKA', 'XMM'),
(133, 'BINGXMM', 'BAHASA INGGRIS', 'XMM'),
(134, 'BASGXMM', 'BAHASA ASING', 'XMM'),
(135, 'KIMIAXMM', 'KIMIA', 'XMM'),
(136, 'FISIKAXMM', 'FISIKA', 'XMM'),
(137, 'DDGXMM', 'DASAR DESAIN GRAFIS', 'XMM'),
(138, 'PENJASXMM', 'PENDIDIKAN JASMANI DAN ROHANI', 'XMM'),
(139, 'SEJARAHXMM', 'SEJARAH INDONESIA', 'XMM'),
(140, 'SBUDAYAXMM', 'SENI BUDAYA', 'XMM'),
(141, 'KOMJARDASXMM', 'KOMPUTER DAN JARINGAN DASAR', 'XMM'),
(142, 'SISKOMXMM', 'SISTEM KOMPUTER', 'XMM'),
(143, 'PEMDASXMM', 'PEMROGRAMAN DASAR', 'XMM'),
(144, 'SIMKOMDIGXMM', 'SIMULASI KOMUNIKASI DIGITAL', 'XMM'),
(145, 'PABPISXTKJ', 'PENDIDIKAN AGAMA DAN BUDI PEKERTI ISLAM', 'XTKJ'),
(146, 'BTAISXTKJ', 'MULOK ISLAM', 'XTKJ'),
(147, 'PKNXTKJ', 'PENDIDIKAN KEWARGANEGARAAN', 'XTKJ'),
(148, 'BINDOXTKJ', 'BAHASA INDONESIA', 'XTKJ'),
(149, 'MTKXTKJ', 'MATEMATIKA', 'XTKJ'),
(150, 'BINGXTKJ', 'BAHASA INGGRIS', 'XTKJ'),
(151, 'BASGXTKJ', 'BAHASA ASING', 'XTKJ'),
(152, 'KIMIAXTKJ', 'KIMIA', 'XTKJ'),
(153, 'FISIKAXTKJ', 'FISIKA', 'XTKJ'),
(154, 'SISKOMXTKJ', 'SISTEM KOMPUTER', 'XTKJ'),
(155, 'PENJASXTKJ', 'PENDIDIKAN JASMANI DAN ROHANI', 'XTKJ'),
(156, 'SEJARAHXTKJ', 'SEJARAH INDONESIA', 'XTKJ'),
(157, 'SBUDAYAXTKJ', 'SENI BUDAYA', 'XTKJ'),
(158, 'KOMJARDASXTKJ', 'KOMPUTER DAN JARINGAN DASAR', 'XTKJ'),
(159, 'PEMDASXTKJ', 'PEMROGRAMAN DASAR', 'XTKJ'),
(160, 'DDGXTKJ', 'DASAR DESAIN GRAFIS', 'XTKJ'),
(161, 'SIMKOMDIGXTKJ', 'SIMULASI KOMUNIKASI DIGITAL', 'XTKJ'),
(162, 'kode_mapel', 'nama_mapel', 'kelas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orangtua`
--

CREATE TABLE `orangtua` (
  `id_ortu` int(11) NOT NULL,
  `nama_ortu` varchar(50) NOT NULL,
  `NIS` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orangtua`
--

INSERT INTO `orangtua` (`id_ortu`, `nama_ortu`, `NIS`, `no_telp`, `pekerjaan`) VALUES
(1, 'Muhammad karyono', '22010001', '081255555252', 'PEKERJA SWASTA'),
(2, 'Suparmi', '22010002', '085751868248', 'PEKERJA SWASTA'),
(3, 'Bapak Saryoto', '22010003', '085246647907', 'PEKERJA SWASTA'),
(4, 'Goodwill Zubir, Drs. H.', '22010004', '083101798012', 'PEKERJA SWASTA'),
(5, 'Zuraidah', '22010005', '081351189288', 'PEKERJA SWASTA'),
(6, 'Suparti', '22010006', '082154401907', 'IRT'),
(7, 'Barkah Abdul Jalil, MA, Dr. Hj.', '22010007', '086544798012', 'PEKERJA SWASTA'),
(8, 'Lukas', '22010008', '081253481985', 'PEKERJA SWASTA'),
(9, 'Bobby Herwibowo.,Lc., H', '22010009', '088281698012', 'PEKERJA SWASTA'),
(10, 'Sunarti', '22010010', '081348372010', 'PEKERJA SWASTA'),
(11, 'Renny anita sari', '22010011', '08115004999', 'PEKERJA SWASTA'),
(12, 'Bakhari Sail At Tahiri, KH, Lc.MA', '22010012', '087299798012', 'PEKERJA SWASTA'),
(13, 'Bambang Irawan, DR. MA', '22010013', '087482698012', 'PEKERJA SWASTA'),
(14, 'M Zaini Usman', '22010014', '083893822126', 'PEKERJA SWASTA'),
(15, 'Habib Ahmad Al Kaff, Dr.', '22010015', '087731498012', 'PEKERJA SWASTA'),
(16, 'Suryaningsih', '22010016', '082148134030', 'PEKERJA SWASTA'),
(17, 'Rika Ratmawaty', '22010017', '087842849418', 'PEKERJA SWASTA'),
(18, 'Bahrian', '22010018', '082155188441', 'PEKERJA SWASTA'),
(19, 'Habib Ahmad bin Novel bin Jindan', '22010019', '085425598012', 'PEKERJA SWASTA'),
(20, 'Habib Alwi bin Yahya', '22010020', '082344798012', 'PEKERJA SWASTA'),
(21, 'Habib Hasan bin Ja\'far As Segaf', '22010021', '087540598012', 'PNS'),
(22, 'Habib Jindan bin Novel bin Salim', '22020001', '088347898012', 'PNS'),
(23, 'Habib Lutfi bin Yahya, KH', '22020002', '084775898012', 'PNS'),
(24, 'Habib Nabil Al Musawa', '22020003', '087723898012', 'PNS'),
(25, 'ainun', '22020004', '087800563791', 'PEKERJA SWASTA'),
(26, 'Fathurrahman Djamil, Prof.Dr.H. MA.', '22020005', '082132798012', 'PEKERJA SWASTA'),
(27, 'Fikri Haikal Zainuddin, KH', '22020006', '085192798012', 'PEKERJA SWASTA'),
(28, 'Muhammad Riyadi', '22020007', '082353060959', 'PEKERJA SWASTA'),
(29, 'IIN INTARSIH', '22020008', '082281675256', 'PEKERJA SWASTA'),
(30, 'Darwis Hude, MA., Prof. Dr. H.', '22020009', '087957598012', 'PEKERJA SWASTA'),
(31, 'Dedeh Rosidah, Hj.', '22020011', '087242698012', 'PEKERJA SWASTA'),
(32, 'Ernawati', '22020012', '082254589990', 'PEKERJA SWASTA'),
(33, 'Siti mariam', '22020013', '082154920806', 'PEKERJA SWASTA'),
(34, 'Didin Hafidhuddin, Prof.Dr.KH, MSc.', '22020014', '086445798012', 'PEKERJA SWASTA'),
(35, 'mashadi', '22020016', '087817147108', 'PEKERJA SWASTA'),
(36, 'Didin Hafidhuddin, Prof.Dr.KH, MSc.', '22020017', '084656298012', 'PEKERJA SWASTA'),
(37, 'Emha Ainun Najib, KH', '22020018', '084227898012', 'PEKERJA SWASTA'),
(38, 'Engkos Kosasih, MA, Dr.', '22020019', '086757298012', 'PEKERJA SWASTA'),
(39, 'Fahmi Salim, MA., H', '22020020', '083836498012', 'PEKERJA SWASTA'),
(40, 'Faizah Ali Sibromalisi, Dr. Hj', '22020021', '084527598012', 'PEKERJA SWASTA'),
(41, 'Faris Khoirul Anam, LC, Mhi', '22020022', '089399098012', 'PEKERJA SWASTA'),
(42, 'Fathurin Zen, Dr.H. M. Si.', '22020023', '088375298012', 'PEKERJA SWASTA'),
(43, 'Muhammad Ali', '22020024', '08152131115', 'PEKERJA SWASTA'),
(44, 'Dwi', '22020025', '086366798012', 'PEKERJA SWASTA'),
(45, 'Muhammad', '22020026', '086602498012', 'PEKERJA SWASTA'),
(46, 'Nur', '22020027', '082329398012', 'PEKERJA SWASTA'),
(47, 'Dewi', '22020028', '087383598012', 'PEKERJA SWASTA'),
(48, 'Tri', '22020029', '083416398012', 'PEKERJA SWASTA'),
(49, 'Dian', '22020030', '082257998012', 'PEKERJA SWASTA'),
(50, 'Sri', '22040001', '083633298012', 'PEKERJA SWASTA'),
(51, 'Putri', '22040002', '088396998012', 'PEKERJA SWASTA'),
(52, 'Eka', '22040003', '087294898012', 'PEKERJA SWASTA'),
(53, ' Sari', '22040004', '088831198012', 'PEKERJA SWASTA'),
(54, ' Ayu', '22040005', '089476698012', 'PEKERJA SWASTA'),
(55, ' Wahyu', '22040006', '088000498012', 'PEKERJA SWASTA'),
(56, ' Indah', '22040007', '082326798012', 'PEKERJA SWASTA'),
(57, ' Siti', '22040008', '083124298012', 'PEKERJA SWASTA'),
(58, ' Ika', '22040009', '085228698012', 'PEKERJA SWASTA'),
(59, ' Agus', '22040010', '081640198012', 'PEKERJA SWASTA'),
(60, ' Fitri', '22040012', '084532398012', 'PEKERJA SWASTA'),
(61, ' Ratna', '22040013', '081733598012', 'PEKERJA SWASTA'),
(62, ' Andi', '22040014', '086401398012', 'PEKERJA SWASTA'),
(63, ' Agung', '22040015', '088830898012', 'PEKERJA SWASTA'),
(64, ' Ahmad', '22040016', '084645898012', 'PEKERJA SWASTA'),
(65, ' Kurniawan', '22050001', '084449298012', 'PEKERJA SWASTA'),
(66, ' Ilham', '22050004', '087122998012', 'PEKERJA SWASTA'),
(67, ' Budi', '22050005', '089675598012', 'PEKERJA SWASTA'),
(68, ' Adi', '22050006', '087975398012', 'PEKERJA SWASTA'),
(69, ' Eko', '22050007', '086432298012', 'PEKERJA SWASTA'),
(70, ' Nurul', '22050008', '083054298012', 'PEKERJA SWASTA'),
(71, ' Putra', '21010001', '084015898012', 'PEKERJA SWASTA'),
(72, ' Ni', '21010002', '081179998012', 'PEKERJA SWASTA'),
(73, ' Arif', '21010003', '085804898012', 'PEKERJA SWASTA'),
(74, ' Puspita', '21010004', '088135798012', 'PEKERJA SWASTA'),
(75, ' Ari', '21010005', '082100898012', 'PEKERJA SWASTA'),
(76, ' Indra', '21010006', '085081398012', 'PEKERJA SWASTA'),
(77, ' Dyah', '21010007', '088231998012', 'PEKERJA SWASTA'),
(78, ' Rizki', '21010008', '082976398012', 'PEKERJA SWASTA'),
(79, ' Maria', '21010009', '082547798012', 'PEKERJA SWASTA'),
(80, ' Ratih', '21010010', '084125698012', 'PEKERJA SWASTA'),
(81, ' Pratiwi', '21010011', '087329998012', 'PEKERJA SWASTA'),
(82, ' Kartika', '21010012', '088863298012', 'PEKERJA SWASTA'),
(83, ' Wulandari', '21010013', '086836898012', 'PEKERJA SWASTA'),
(84, ' Fajar', '21010014', '085137698012', 'PEKERJA SWASTA'),
(85, ' Bayu', '21010015', '082669398012', 'PEKERJA SWASTA'),
(86, ' Lestari', '21010016', '088573798012', 'PEKERJA SWASTA'),
(87, ' Anita', '21010017', '084125398012', 'PEKERJA SWASTA'),
(88, ' Muhamad', '21010018', '081870198012', 'PEKERJA SWASTA'),
(89, ' Kusuma', '21010019', '086669498012', 'PEKERJA SWASTA'),
(90, ' Rahmawati', '21010020', '081199398012', 'PEKERJA SWASTA'),
(91, ' Fitria', '21010021', '082199298012', 'PEKERJA SWASTA'),
(92, ' Retno', '21010022', '087319098012', 'PEKERJA SWASTA'),
(93, ' Kurnia', '21010023', '083159598012', 'PEKERJA SWASTA'),
(94, ' Novita', '21010025', '085763698012', 'PEKERJA SWASTA'),
(95, ' Aditya', '21010026', '084767698012', 'PEKERJA SWASTA'),
(96, ' Ria', '21010027', '085037498012', 'PEKERJA SWASTA'),
(97, ' Nugroho', '21010028', '088324198012', 'PEKERJA SWASTA'),
(98, ' Putu', '21010029', '087798698012', 'PEKERJA SWASTA'),
(99, ' Handayani', '21010030', '089894198012', 'PEKERJA SWASTA'),
(100, ' Rahayu', '21010032', '081749698012', 'PEKERJA SWASTA'),
(101, ' Yunita', '21020002', '088096998012', 'PEKERJA SWASTA'),
(102, ' Rina', '21020003', '088153898012', 'PEKERJA SWASTA'),
(103, ' Widya', '21020004', '089028598012', 'PEKERJA SWASTA'),
(104, ' Intan', '21020005', '087491898012', 'PEKERJA SWASTA'),
(105, ' Diah', '21020006', '082458598012', 'PEKERJA SWASTA'),
(106, ' Agustina', '21020007', '088317798012', 'PEKERJA SWASTA'),
(107, ' Made', '21020008', '085106198012', 'PEKERJA SWASTA'),
(108, ' Abdul', '21020009', '081485898012', 'PEKERJA SWASTA'),
(109, ' Setiawan', '21020010', '081907998012', 'PEKERJA SWASTA'),
(110, ' Rizky', '21020011', '085655098012', 'PEKERJA SWASTA'),
(111, ' Rini', '21020012', '086701898012', 'PEKERJA SWASTA'),
(112, ' Wahyuni', '21020013', '087255498012', 'PEKERJA SWASTA'),
(113, ' Yulia', '21020014', '083457998012', 'PEKERJA SWASTA'),
(114, ' Puji', '21020015', '088533098012', 'PEKERJA SWASTA'),
(115, ' Utami', '21020016', '081349398012', 'PEKERJA SWASTA'),
(116, ' Amalia', '21020018', '089576398012', 'PEKERJA SWASTA'),
(117, ' Dina', '21020019', '081389898012', 'PEKERJA SWASTA'),
(118, ' Devi', '21020020', '087948098012', 'PEKERJA SWASTA'),
(119, ' Citra', '21020021', '087012898012', 'PEKERJA SWASTA'),
(120, ' Arief', '21020022', '082476998012', 'PEKERJA SWASTA'),
(121, ' Munaroh', '21020023', '085953998012', 'PEKERJA SWASTA'),
(122, ' Bagus', '21020024', '086761998012', 'PEKERJA SWASTA'),
(123, ' Hidayat', '21020025', '087774098012', 'PEKERJA SWASTA'),
(124, ' Hendra', '21020026', '083797698012', 'PEKERJA SWASTA'),
(125, ' Eva', '21020027', '084692998012', 'PEKERJA SWASTA'),
(126, ' Endah', '21020028', '085668598012', 'PEKERJA SWASTA'),
(127, ' Raden', '21020029', '086988398012', 'PEKERJA SWASTA'),
(128, ' Novi', '21040001', '084408598012', 'PEKERJA SWASTA'),
(129, ' Irma', '21040002', '081391898012', 'PEKERJA SWASTA'),
(130, ' Astuti', '21040003', '083787198012', 'PEKERJA SWASTA'),
(131, ' Aulia', '21040004', '081653598012', 'PEKERJA SWASTA'),
(132, ' Surya', '21040005', '089216398012', 'PEKERJA SWASTA'),
(133, ' Amelia', '21040006', '086636798012', 'PEKERJA SWASTA'),
(134, ' Prima', '21040007', '084658898012', 'PEKERJA SWASTA'),
(135, ' Angga', '21040008', '085105098012', 'PEKERJA SWASTA'),
(136, ' Hadi', '21040009', '082154398012', 'PEKERJA SWASTA'),
(137, ' Diana', '21050001', '089211098012', 'PEKERJA SWASTA'),
(138, ' Anggraini', '21050002', '085720998012', 'PEKERJA SWASTA'),
(139, ' Wulan', '21050003', '089652498012', 'PEKERJA SWASTA'),
(140, ' Saputra', '21050004', '083223098012', 'PEKERJA SWASTA'),
(141, ' Yuni', '21050005', '083076298012', 'PEKERJA SWASTA'),
(142, ' Agung', '21050006', '087790998012', 'PEKERJA SWASTA'),
(143, 'Dinda', '21050007', '081263898012', 'PEKERJA SWASTA'),
(144, 'Amel', '21050008', '086871098012', 'PEKERJA SWASTA'),
(145, 'Putra', '20010001', '083924598012', 'PEKERJA SWASTA'),
(146, 'Muhammad', '20010002', '083317798012', 'PEKERJA SWASTA'),
(147, 'Wahyu', '20010003', '089779798012', 'PEKERJA SWASTA'),
(148, 'Agus', '20010004', '087119298012', 'PEKERJA SWASTA'),
(149, 'Agung', '20010005', '089464498012', 'PEKERJA SWASTA'),
(150, 'Ahmad', '20010006', '081600398012', 'PEKERJA SWASTA'),
(151, 'Kurniawan', '20010007', '088347198012', 'PEKERJA SWASTA'),
(152, 'Budi', '20010008', '088268298012', 'PEKERJA SWASTA'),
(153, 'Adi', '20010009', '082666798012', 'PEKERJA SWASTA'),
(154, ' Eko', '20010010', '089937798012', 'PEKERJA SWASTA'),
(155, ' Arief', '20010011', '083293298012', 'PEKERJA SWASTA'),
(156, ' Ari', '20010012', '085538098012', 'PEKERJA SWASTA'),
(157, ' Indra', '20010013', '087291798012', 'PEKERJA SWASTA'),
(158, ' Rizki', '20010014', '088552998012', 'PEKERJA SWASTA'),
(159, ' Yusuf', '20010015', '085332698012', 'PEKERJA SWASTA'),
(160, ' Fajar', '20010017', '089537198012', 'PEKERJA SWASTA'),
(161, ' Bayu', '20010018', '089570598012', 'PEKERJA SWASTA'),
(162, ' Aditya', '20010020', '087401998012', 'PEKERJA SWASTA'),
(163, ' Nugroho', '20010021', '082980498012', 'PEKERJA SWASTA'),
(164, ' Abdul', '20010022', '081342198012', 'PEKERJA SWASTA'),
(165, ' Setiawan', '20010023', '088101298012', 'PEKERJA SWASTA'),
(166, ' Riski', '20010024', '085239498012', 'PEKERJA SWASTA'),
(167, ' Puji', '20010025', '088550598012', 'PEKERJA SWASTA'),
(168, ' Bagus', '20010026', '083673998012', 'PEKERJA SWASTA'),
(169, ' Hidayat', '20010027', '083137698012', 'PEKERJA SWASTA'),
(170, ' Jimmy', '20010029', '089794498012', 'PEKERJA SWASTA'),
(171, ' Rian', '20010030', '082898098012', 'PEKERJA SWASTA'),
(172, ' Hendra', '20010031', '089344998012', 'PEKERJA SWASTA'),
(173, ' Raden', '20010032', '084150698012', 'PEKERJA SWASTA'),
(174, ' Surya', '20010033', '087449598012', 'PEKERJA SWASTA'),
(175, ' Angga', '20010034', '082622398012', 'PEKERJA SWASTA'),
(176, ' Hadi', '20010035', '085582498012', 'PEKERJA SWASTA'),
(177, ' Michael', '20010036', '085676098012', 'PEKERJA SWASTA'),
(178, ' Thomas', '20020001', '085851298012', 'PEKERJA SWASTA'),
(179, ' Charles', '20020002', '084000298012', 'PEKERJA SWASTA'),
(180, ' Kevin', '20020003', '086659998012', 'PEKERJA SWASTA'),
(181, ' Brian', '20020004', '086091198012', 'PEKERJA SWASTA'),
(182, ' Samuel', '20020005', '089187498012', 'PEKERJA SWASTA'),
(183, ' Billy', '20020006', '083010698012', 'PEKERJA SWASTA'),
(184, ' Hari', '20020007', '088850998012', 'PEKERJA SWASTA'),
(185, ' Adam', '20020008', '082359098012', 'PEKERJA SWASTA'),
(186, ' Gabriel', '20020009', '083200198012', 'PEKERJA SWASTA'),
(187, ' Erik', '20020010', '081600298012', 'PEKERJA SWASTA'),
(188, ' Andre', '20020011', '081989998012', 'PEKERJA SWASTA'),
(189, ' Aris', '20020013', '083079198012', 'PEKERJA SWASTA'),
(190, ' Daniel', '20020014', '087000698012', 'PEKERJA SWASTA'),
(191, ' Rudi', '20020015', '085718498012', 'PEKERJA SWASTA'),
(192, ' Andri', '20020016', '088781598012', 'PEKERJA SWASTA'),
(193, ' Taufik', '20020017', '086160598012', 'PEKERJA SWASTA'),
(194, ' Hanif', '20020018', '081159598012', 'PEKERJA SWASTA'),
(195, 'Rumadi, DR', '20020020', '089860498012', 'PEKERJA SWASTA'),
(196, 'Abas Mansur Tamam, Dr.', '20020021', '086760098012', 'PEKERJA SWASTA'),
(197, 'Abdul Ghafar Rozin, MA, KH', '20020022', '086206298012', 'PEKERJA SWASTA'),
(198, 'Abdul Ghofur Maimun, Dr', '20020023', '087535998012', 'PEKERJA SWASTA'),
(199, 'Abdul Mannan, MA', '20020024', '086534198012', 'PEKERJA SWASTA'),
(200, 'Abdul Moqsith Ghozali, DR', '20020025', '085387898012', 'PEKERJA SWASTA'),
(201, 'Abdul Mukti, Dr. H. M.Ed', '20020026', '082138598012', 'PEKERJA SWASTA'),
(202, 'Abdul Muta\'alli, Dr. H, MA, M. IP', '20020027', '084016198012', 'PEKERJA SWASTA'),
(203, 'Abdullah Gymnastiar, KH', '20020028', '086692698012', 'PEKERJA SWASTA'),
(204, 'Abdullah Jaidi, KH', '20020030', '086547598012', 'PEKERJA SWASTA'),
(205, 'Abdurrahim Yapono, Dr,H, MA, MSc.', '20020031', '088865498012', 'PEKERJA SWASTA'),
(206, 'Abdurrahman Dahlan, Dr,KH.', '20020032', '085149898012', 'PEKERJA SWASTA'),
(207, 'Abdurrahman Madina, KH', '20020033', '082720298012', 'PEKERJA SWASTA'),
(208, 'Abdurrasyid Abdullah Syafi\'ie, KH.', '20020034', '085507498012', 'PEKERJA SWASTA'),
(209, 'Abudinata, Prof.Dr.H. MA.', '20020035', '085464898012', 'PEKERJA SWASTA'),
(210, 'Aceng Rahmat, M.Pd., Prof. Dr. H.', '20020037', '084034198012', 'PEKERJA SWASTA'),
(211, 'Adian Husaini, Dr. H. MA', '20020038', '087610698012', 'PEKERJA SWASTA'),
(212, 'Adnan Harahap, Drs. KH.', '20020040', '085692398012', 'PEKERJA SWASTA'),
(213, 'Ahmad Ali MD, KH, MA.', '20020041', '087619598012', 'PEKERJA SWASTA'),
(214, 'Ahmad Azaim Ibraihimy, KH', '20020042', '086574698012', 'PEKERJA SWASTA'),
(215, 'Ahmad Husnul Hakim IMZI, DR, MA', '20020043', '082015498012', 'PEKERJA SWASTA'),
(216, 'Ahmad Murodi, MA, KH', '20040001', '082536898012', 'PEKERJA SWASTA'),
(217, 'Ahmad Musthofa Bisri, KH', '20040002', '085955398012', 'PEKERJA SWASTA'),
(218, 'Ahmad Sarwat, MA', '20040003', '082811298012', 'PEKERJA SWASTA'),
(219, 'Ahmad Satori Ismail, Prof. Dr. H. MA', '20040005', '089611498012', 'PEKERJA SWASTA'),
(220, 'Ahmad Shodiq, KH', '20040006', '089594098012', 'PEKERJA SWASTA'),
(221, 'Ahmad Shunhaji,Dr., M.Pdi', '20040007', '086707598012', 'PEKERJA SWASTA'),
(222, 'Ahmad Syafii Mufid, Dr', '20040009', '089478298012', 'PEKERJA SWASTA'),
(223, 'Ahmad Thib Raya, MA., Prof. Dr. H.', '20040010', '086826398012', 'PEKERJA SWASTA'),
(224, 'Ahmad Yani, Drs. H', '20040011', '085534298012', 'PEKERJA SWASTA'),
(225, 'Ahsin Sakho DR. KH', '20040012', '085884198012', 'PEKERJA SWASTA'),
(226, 'Ajad Sudrajad, LC, MA', '20040013', '084164898012', 'PEKERJA SWASTA'),
(227, 'Alai Najib, Dra.', '20040014', '083976098012', 'PEKERJA SWASTA'),
(228, 'Ali Hasan Bahar, H. Lc, MA.', '20040015', '085261298012', 'PEKERJA SWASTA'),
(229, 'Ali Masyhuri, KH', '20040017', '083510698012', 'PEKERJA SWASTA'),
(230, 'Ali Mustofa', '20040018', '085831498012', 'PEKERJA SWASTA'),
(231, 'Ali Nurdin, DR. KH. MA', '20040019', '088240698012', 'PEKERJA SWASTA'),
(232, 'Alwi Shihab, Dr. MA', '20040020', '089137298012', 'PEKERJA SWASTA'),
(233, 'Amani Lubis, Prof. Dr. Hj', '20040021', '084560098012', 'PEKERJA SWASTA'),
(234, 'Amin Summa, Prof.Dr. H.SH, MA.', '20040022', '086256998012', 'PEKERJA SWASTA'),
(235, 'Amir Faishal Fath, MA, Dr.', '20040023', '082421898012', 'PEKERJA SWASTA'),
(236, 'Anwar Abbas, Dr,H,MM,M.Ag.', '20040024', '083430498012', 'PEKERJA SWASTA'),
(237, 'Anwar Sanusi, KH.', '20040025', '089030398012', 'PEKERJA SWASTA'),
(238, 'Anwar Zahid, KH', '20040026', '085883998012', 'PEKERJA SWASTA'),
(239, 'Arja Imroni, Dr.', '20040027', '088947198012', 'PEKERJA SWASTA'),
(240, 'Asrorun Ni\'am, Dr. KH. MA', '20040029', '084881398012', 'PEKERJA SWASTA'),
(241, 'Atabik Luthfie, Dr, MA', '20040030', '086951598012', 'PEKERJA SWASTA'),
(242, 'Atiqah Noer Ali', '20040031', '087186898012', 'PEKERJA SWASTA'),
(243, 'Aziz Fakhrurrozi, Prof.Dr.H. MA.', '20050002', '087223298012', 'PEKERJA SWASTA'),
(244, 'Badriyah Fayumi, Dra,Hj, MA', '20050003', '086769298012', 'PEKERJA SWASTA'),
(245, 'Hamdan Rasyid, Dr.H. MA.', '20050004', '088561398012', 'PEKERJA SWASTA'),
(246, 'Hamdani Anwar, Prof. Dr. H. M.A', '20050005', '085763498012', 'PEKERJA SWASTA'),
(247, 'Haris Shodaqoh, KH', '20050008', '085195598012', 'PEKERJA SWASTA'),
(248, 'Hasanuddin Sinaga, Al Hafizh, Drs. H. MA', '20050009', '083287798012', 'PEKERJA SWASTA'),
(249, 'Hasnah Almunawwar, Dra., Hj', '20050010', '081677698012', 'PEKERJA SWASTA'),
(250, 'Helmi Hidayat, MA', '20050011', '087525698012', 'PEKERJA SWASTA'),
(251, 'Hidayat Nur Wahid, DR. H. MA', '20050012', '085105498012', 'PEKERJA SWASTA'),
(252, 'Husein Muhammad, KH', '20050013', '081545598012', 'PEKERJA SWASTA'),
(253, 'Husen Hamid Al Athas, Lc, MA.', '20050014', '089593798012', 'PEKERJA SWASTA'),
(254, 'Huzaimah T Yanggo, Prof. Dr. Hj', '20050015', '084976798012', 'PEKERJA SWASTA'),
(255, 'Idris Jamal', '20050016', '088648398012', 'PEKERJA SWASTA'),
(256, 'nama_ortu', 'NIS', 'no_telp', 'pekerjaan'),
(257, 'Hidayat Nur Wahid, DR. H. MA', '20050012', '085105498012', 'PEKERJA SWASTA'),
(258, 'Husein Muhammad, KH', '20050013', '081545598012', 'PEKERJA SWASTA'),
(259, 'Husen Hamid Al Athas, Lc, MA.', '20050014', '089593798012', 'PEKERJA SWASTA'),
(260, 'Huzaimah T Yanggo, Prof. Dr. Hj', '20050015', '084976798012', 'PEKERJA SWASTA'),
(261, 'Idris Jamal', '20050016', '088648398012', 'PEKERJA SWASTA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `nama_pengumuman` varchar(50) NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `nama_pengumuman`, `tanggal`, `keterangan`, `foto`) VALUES
(3, 'Cuti Bersama dan PAS AKHIR SEMESTER ', '12-07-2023', 'asslmualykum besok Kamis, 1 juni s/d sabtu, 3 juni 2023, Libur, 1 juni libur hari lahir pancasila, jumat, cuti bersama, sabtu, libur prsiapan PAS Genap 2023, dan kmbli hadir kesekolah senin dan selasa , 5 dan 6  Juni 2023 utk mlaksanakan simulasi,  diharapkan seluruh siswa/i brhadir, krna akan dbgikn krtu peserta PAS Genap...', 'tes.png'),
(4, 'Liburan akhir Semester', '26-06-2023', 'hari ini diadakan liburan ', '32.png'),
(5, 'Mulai Tahun ajaran Baru', '20-07-2023', 'Kita akan memulai tahun ajaran baru pada hari senin tanggal 17 Juli 2023', 'nilai.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(11) NOT NULL,
  `NIS` varchar(50) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `tahunajaran` varchar(25) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `nama_prestasi` varchar(150) NOT NULL,
  `keterangan` varchar(190) NOT NULL,
  `point` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `NIS`, `nama_siswa`, `tahunajaran`, `kategori`, `nama_prestasi`, `keterangan`, `point`) VALUES
(5, '22020001', 'ABDUL HALIM', 'S2022/2023', 'Akademik', 'Karya Tulis Ilmiah', 'Ikut Partisipasi', '15'),
(7, '22010002', 'Afandi', '2023/2024 GANJIL', 'Akademik', 'SILAT', 'Peringkat 3', '20'),
(8, '22010002', 'Afandi', '2023/2024 GANJIL', 'Akademik', 'Baca Puisi', 'Ikut Partisipasi', '15'),
(9, '22010002', 'Afandi', '2023/2024 GANJIL', 'Non Akademik', 'Mobile Legend', 'Ikut Partisipasi', '15'),
(10, '22010003', 'Auliya Putri Ramadhani', '2023/2024 GANJIL', 'Non Akademik', 'PASKIBRAKA', 'Peringkat 2', '25'),
(11, '22020008', 'BUNAYA ARIFTIA FAUZIAH', '2023/2024 GANJIL', 'Non Akademik', 'PUISI', 'Peringkat 1', '30'),
(12, '22010001', 'Aditya Pratama', '2023/2024 GANJIL', 'Non Akademik', 'PASKIBRAKA', 'Ikut Partisipasi', '15'),
(13, '22010001', 'Aditya Pratama', '2023/2024 GANJIL', 'Non Akademik', 'FUTSAL CUP SUDIRMAN', 'Ikut Partisipasi', '15'),
(14, '22010004', 'Bakti Ahmad Satyawiguna', '2023/2024 GANJIL', 'Non Akademik', 'Esport Competition', 'Ikut Partisipasi', '15'),
(15, '22010007', 'Hazel Ariqah Shabrina', '2023/2024 GANJIL', 'Non Akademik', 'SILAT', 'Peringkat 3', '20'),
(16, '22020004', 'ANA ANGGRAINI', '2023/2024 GANJIL', 'Non Akademik', 'PASKIBRAKA', 'Ikut Partisipasi', '15'),
(17, '22020012', 'INNEZ JULIA NATASYA', '2023/2024 GANJIL', 'Non Akademik', 'Murtaqil', 'Peringkat 1', '30'),
(18, '22020027', 'RENISA QATRUNNADA ALFAZERY', '2023/2024 GANJIL', 'Non Akademik', 'HABSY', 'Ikut Partisipasi', '15'),
(19, '22040006', 'Muhammad Dewa Rizky', '2023/2024 GANJIL', 'Non Akademik', 'DESAIN GRAFIS', 'Ikut Partisipasi', '15'),
(20, '22040005', 'Mohammad Farrell Oktavian', '2023/2024 GANJIL', 'Akademik', 'CERDAS CERMAT', 'Ikut Partisipasi', '15'),
(21, '22020012', 'INNEZ JULIA NATASYA', '2023/2024 GANJIL', 'Akademik', 'RANKING 1', 'Peringkat 1', '30'),
(22, '22020012', 'INNEZ JULIA NATASYA', '2023/2024 GANJIL', 'Akademik', 'SISWA TERATTITUDE', 'Peringkat 1', '30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasiguru`
--

CREATE TABLE `prestasiguru` (
  `id_prestasiguru` int(11) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `tahunajaran` varchar(50) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `prestasiguru`
--

INSERT INTO `prestasiguru` (`id_prestasiguru`, `nama_guru`, `tahunajaran`, `total`) VALUES
(1, 'Riady Dimas Saputra', '2023/2024 GANJIL', '50'),
(2, 'Riady Dimas Saputra', '2023/2024 GANJIL', '5'),
(3, 'MAIMUNAH,S.Pd.I', '2023/2024 GANJIL', '5'),
(4, 'KHAIRUNESYA,S.Pd', '2023/2024 GANJIL', '5'),
(5, 'KHAIRUNESYA,S.Pd', '2023/2024 GANJIL', '5'),
(6, 'ULYA ALFIYANI, S.Pd', '2023/2024 GANJIL', '5'),
(7, 'M. RIALDI PRATAMA, S.SOS.I', '2023/2024 GANJIL', '5'),
(8, 'MUHAMMAD IRHAM HABIBIE, S.Pd', '2023/2024 GANJIL', '5'),
(9, 'Abdul rahman', '2023/2024 GANJIL', '5'),
(10, 'MAIMUNAH,S.Pd.I', '2023/2024 GANJIL', '30'),
(11, 'KHAIRUNESYA,S.Pd', '2023/2024 GANJIL', '50'),
(12, 'ULYA ALFIYANI, S.Pd', '2023/2024 GANJIL', '25'),
(13, 'ULYA ALFIYANI, S.Pd', '2023/2024 GANJIL', '50'),
(14, 'IKRIMA SHALEHA, S.Pd', '2023/2024 GANJIL', '50'),
(15, 'M. RIALDI PRATAMA, S.SOS.I', '2023/2024 GANJIL', '50'),
(16, 'MUHAMMAD IRHAM HABIBIE, S.Pd', '2023/2024 GANJIL', '35'),
(17, 'RIRI FIRMANSYAH, ST ', '2023/2024 GANJIL', '50'),
(18, 'HERLINDA YUNITA, S.Pd', '2023/2024 GANJIL', '50'),
(19, 'Abdul rahman', '2023/2024 GANJIL', '50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `regisekskul`
--

CREATE TABLE `regisekskul` (
  `id_regisekskul` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nama_ekskul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `regisekskul`
--

INSERT INTO `regisekskul` (`id_regisekskul`, `nama_siswa`, `nama_ekskul`) VALUES
(2, 'Aditya Pratama', 'PASKIBRAKA'),
(3, 'ANNISA NURALIFIA HAK', 'Seni Tari'),
(4, 'ANNISA NURALIFIA HAK', 'Habsy'),
(5, 'ANA ANGGRAINI', 'Seni Tari'),
(6, 'ALYA PUTRI ANZANI', 'PASKIBRAKA'),
(7, 'Auliya Putri Ramadhani', 'PASKIBRAKA'),
(8, 'Aditya Pratama', 'Futsal Pria'),
(9, 'Aditya Pratama', 'Esports'),
(10, 'Afandi', 'Esports'),
(11, 'Bakti Ahmad Satyawiguna', 'Esports'),
(12, 'Christian Yabes Roring', 'Esports'),
(13, 'Falha Najib', 'Futsal Pria'),
(14, 'Falha Najib', 'Esports'),
(15, 'Hazel Ariqah Shabrina', 'Silat'),
(16, 'Jonathan Oktafriyanto', 'Futsal Pria'),
(17, 'Mohamad Irvan Fitriansah', 'Esports'),
(18, 'Muhammad Luckiyana Mawadda', 'Esports'),
(19, 'Jonathan Oktafriyanto', 'Esports'),
(20, 'M. Amril', 'Esports');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `NIS` varchar(25) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `id_kls` int(11) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `tahunajaran` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat_siswa` varchar(50) NOT NULL,
  `notelp_siswa` varchar(50) NOT NULL,
  `pasfoto` varchar(50) NOT NULL,
  `status_siswa` enum('Aktif','Alumni','DO') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `NIS`, `nama_siswa`, `id_kls`, `jurusan`, `tahunajaran`, `email`, `alamat_siswa`, `notelp_siswa`, `pasfoto`, `status_siswa`) VALUES
(808, '22010001', 'Aditya Pratama', 1, 'TKJ', '2022/2023 GANJIL', 'ditz3657@gmail.com', 'Banjarbaru', '83131125582', '_MG_52s74.jpg', 'Aktif'),
(809, '22010002', 'Afandi', 1, 'TKJ', '2022/2023 GANJIL', 'afandi2456@gmail.com', 'Ponpes Misbahul Munir', '81549332752', 'nofoto.png', 'Aktif'),
(810, '22010003', 'Auliya Putri Ramadhani', 1, 'TKJ', '2022/2023 GANJIL', 'auliaputriramadhani34@gmail.com', 'Landasan ulin', '83153336769', 'nofoto.png', 'Aktif'),
(811, '22010004', 'Bakti Ahmad Satyawiguna', 1, 'TKJ', '2022/2023 GANJIL', 'VDgjWqfpjUapaWY@gmail.com', 'Landasan ulin', '1,4219E+11', 'nofoto.png', 'Aktif'),
(812, '22010005', 'Christian Yabes Roring', 1, 'TKJ', '2022/2023 GANJIL', 'christianyabesroring@gmail.com', 'Banjarbaru', '85705648297', 'nofoto.png', 'Aktif'),
(813, '22010006', 'Falha Najib', 1, 'TKJ', '2022/2023 GANJIL', 'ryukoomisaki@gmail.com', 'Pondok pisang', '81528247633', 'nofoto.png', 'Aktif'),
(814, '22010007', 'Hazel Ariqah Shabrina', 1, 'TKJ', '2022/2023 GANJIL', 'hazel@gmail.com', 'Pondok pisang', '89024567898', 'nofoto.png', 'Aktif'),
(815, '22010008', 'Jonathan Oktafriyanto', 1, 'TKJ', '2022/2023 GANJIL', 'jonathanoktafriyanto@gmail.com', 'Kom. Wengga trikora', '82250425475', 'nofoto.png', 'Aktif'),
(816, '22010009', 'M. Amril', 1, 'TKJ', '2022/2023 GANJIL', 'amril@gmail.com', 'Landasan ulin', '85350565514', 'nofoto.png', 'Aktif'),
(817, '22010010', 'Mohamad Irvan Fitriansah', 1, 'TKJ', '2022/2023 GANJIL', 'sajanarti16@gmail.com', 'Landasan ulin', '85654405147', 'nofoto.png', 'Aktif'),
(818, '22010011', 'Muhammad Luckiyana Mawadda', 1, 'TKJ', '2022/2023 GANJIL', 'artaarya47@gmail.com', 'Banjarbaru', '85934725838', 'nofoto.png', 'Aktif'),
(819, '22010012', 'Muhammad Nor Fazri', 1, 'TKJ', '2022/2023 GANJIL', 'fazri@gmail.com', 'Banjarbaru', '85614456546', 'nofoto.png', 'Aktif'),
(820, '22010013', 'Muhammad Raihan', 1, 'TKJ', '2022/2023 GANJIL', 'MuhammadRaihan@gmail.com', 'Banjarbaru', '89560185630', 'nofoto.png', 'Aktif'),
(821, '22010014', 'Muhammad Rizky Hermawan', 1, 'TKJ', '2022/2023 GANJIL', 'mrizkyhermawan96@gmail.com', 'banjarbaru', '83150052092', 'nofoto.png', 'Aktif'),
(822, '22010015', 'Nabella Devana Alysia', 1, 'TKJ', '2022/2023 GANJIL', 'NabellaDevanaAlysia@gmail.com', 'banjarbaru', '82354551465', 'nofoto.png', 'Aktif'),
(823, '22010016', 'Nanda Eko Prasetyo', 1, 'TKJ', '2022/2023 GANJIL', 'prasetyoekonanda04@gmail.com', 'Banjarbaru', '85607522544', 'nofoto.png', 'Aktif'),
(824, '22010017', 'Nur Arianty Nabella', 1, 'TKJ', '2022/2023 GANJIL', 'nurariantynabella@gmail.com', 'komplek Mekatani, jalan karet rt 27/ rw 04 , kelur', '81930494735', 'nofoto.png', 'Aktif'),
(825, '22010018', 'Rianaldi Mustafa', 1, 'TKJ', '2022/2023 GANJIL', 'aldim1343@gmail.com', 'Kampung warga tunggal Guntung paikat Banjarbaru', '82155188442', 'nofoto.png', 'Aktif'),
(826, '22010019', 'Swandharu Suensa', 1, 'TKJ', '2022/2023 GANJIL', 'SwandharuSuensa@gmail.com', 'Banjarbaru', '83565456525', 'nofoto.png', 'Aktif'),
(827, '22010020', 'Tasya', 1, 'TKJ', '2022/2023 GANJIL', 'Tasya@gmail.com', 'Banjarbaru', '87589884756', 'nofoto.png', 'Aktif'),
(828, '22010021', 'Ati', 1, 'TKJ', '2022/2023 GANJIL', 'Ati@gmail.com', 'Banjarbaru', '82356545598', 'nofoto.png', 'Aktif'),
(829, '22020001', 'ABDUL HALIM', 1, 'OTKP', '2022/2023 GANJIL', 'ABDULHALIM@gmail.com', 'Banjarbaru', '84021213232', 'nofoto.png', 'Aktif'),
(830, '22020002', 'ALYA AMANDA', 1, 'OTKP', '2022/2023 GANJIL', 'ALYAAMANDA@gmail.com', 'Banjarbaru', '85151514748', 'nofoto.png', 'Aktif'),
(831, '22020003', 'ALYA PUTRI ANZANI', 1, 'OTKP', '2022/2023 GANJIL', 'ALYAPUTRIANZANI@gmail.com', 'Banjarbaru', '85696963635', 'nofoto.png', 'Aktif'),
(832, '22020004', 'ANA ANGGRAINI', 1, 'OTKP', '2022/2023 GANJIL', 'anggrainiana21@gmail.com', 'jln.bromo', '85932997249', 'nofoto.png', 'Aktif'),
(833, '22020005', 'ANNISA NURALIFIA HAK', 1, 'OTKP', '2022/2023 GANJIL', 'ANNISANURALIFIAHAK@gmail.com', 'Banjarbaru', '87465693235', 'nofoto.png', 'Aktif'),
(834, '22020006', 'AZKIYAH FITRI RAMADHANI', 1, 'OTKP', '2022/2023 GANJIL', 'AZKIYAHFITRIRAMADHANI@gmail.com', 'Banjarbaru', '81236364595', 'nofoto.png', 'Aktif'),
(835, '22020007', 'BAHRAN MADZI', 1, 'OTKP', '2022/2023 GANJIL', 'madzidi03@gmail.com', 'batung cindai alus', '82358504558', 'nofoto.png', 'Aktif'),
(836, '22020008', 'BUNAYA ARIFTIA FAUZIAH', 1, 'OTKP', '2022/2023 GANJIL', 'ariftiabunaya@gmail.con', 'Jl. A Yani km 32, Gg. Garuda No.19, Loktabat Utara', '82159941083', 'nofoto.png', 'Aktif'),
(837, '22020009', 'CHELSI PRATIWI', 1, 'OTKP', '2022/2023 GANJIL', 'CHELSIPRATIWI@gmail.com', 'Banjarbaru', '23656458532', 'nofoto.png', 'Aktif'),
(838, '22020011', 'HALIZA AZRA NAILAH', 1, 'OTKP', '2022/2023 GANJIL', 'HALIZAAZRANAILAH@gmail.com', 'Banjarbaru', '89865654565', 'nofoto.png', 'Aktif'),
(839, '22020012', 'INNEZ JULIA NATASYA', 1, 'OTKP', '2022/2023 GANJIL', 'natasyaajulia01@gmail.com', 'Landasan Ulin', '81255950300', 'nofoto.png', 'Aktif'),
(840, '22020013', 'INTAN AMELIA', 1, 'OTKP', '2022/2023 GANJIL', 'intanamelia190506@gmail.com', 'Guntung manggis', '81340750932', 'nofoto.png', 'Aktif'),
(841, '22020014', 'KHADIJAH FITRIANI', 1, 'OTKP', '2022/2023 GANJIL', 'KHADIJAHFITRIANI@gmail.com', 'Banjarbaru', '84565969678', 'nofoto.png', 'Aktif'),
(842, '22020016', 'MARCHA KENA SYAHRANI', 1, 'OTKP', '2022/2023 GANJIL', 'marchakeyna@gmail.com', 'komplek taman bunga lestari', '85849362624', 'nofoto.png', 'Aktif'),
(843, '22020017', 'MARSHA PUTRIANA RIHWAN', 1, 'OTKP', '2022/2023 GANJIL', 'MARSHAPUTRIANARIHWAN@gmail.com', 'Banjarbaru', '85641208356', 'nofoto.png', 'Aktif'),
(844, '22020018', 'MUHAMMAD FAQIH IHSAN', 1, 'OTKP', '2022/2023 GANJIL', 'MUHAMMADFAQIHIHSAN@gmail.com', 'Banjarbaru', '84568756592', 'nofoto.png', 'Aktif'),
(845, '22020019', 'MUHAMMAD NOVAL SAPUTRA', 1, 'OTKP', '2022/2023 GANJIL', 'MUHAMMADNOVALSAPUTRA@gmail.com', 'Banjarbaru', '24838797532', 'nofoto.png', 'Aktif'),
(846, '22020020', 'NABILA BAITPOVA SANDARA', 1, 'OTKP', '2022/2023 GANJIL', 'NABILABAITPOVASANDARA@gmail.com', 'Banjarbaru', '89875486135', 'nofoto.png', 'Aktif'),
(847, '22020021', 'NOVI FAHRIA ULFA', 1, 'OTKP', '2022/2023 GANJIL', 'NOVIFAHRIAULFA@gmail.com', 'Banjarbaru', '85698161356', 'nofoto.png', 'Aktif'),
(848, '22020022', 'NUR AULIA', 1, 'OTKP', '2022/2023 GANJIL', 'NURAULIA@gmail.com', 'Banjarbaru', '89787132158', 'nofoto.png', 'Aktif'),
(849, '22020023', 'NURKHOLISA', 1, 'OTKP', '2022/2023 GANJIL', 'NURKHOLISA@gmail.com', 'Banjarbaru', '87984151032', 'nofoto.png', 'Aktif'),
(850, '22020024', 'OKTAVIA RAMADANI', 1, 'OTKP', '2022/2023 GANJIL', '2nd.oktavia@gmail.com', 'Wengga Trikorra Raya,Thp 1,Blok A,No 20,Rt 42,Rw 0', '81520425918', 'nofoto.png', 'Aktif'),
(851, '22020025', 'PERKASA RAHMAD DANI', 1, 'OTKP', '2022/2023 GANJIL', 'PERKASARAHMADDANI@gmail.com', 'Banjarbaru', '8,87809E+12', 'nofoto.png', 'Aktif'),
(852, '22020026', 'PUTRI MARIZKA SALSABILA', 1, 'OTKP', '2022/2023 GANJIL', 'PUTRIMARIZKASALSABILA@gmail.com', 'Banjarbaru', '8,9494E+11', 'nofoto.png', 'Aktif'),
(853, '22020027', 'RENISA QATRUNNADA ALFAZERY', 1, 'OTKP', '2022/2023 GANJIL', 'RENISAQATRUNNADAALFAZERY@gmail.com', 'Banjarbaru', '89186165806', 'nofoto.png', 'Aktif'),
(854, '22020028', 'SHELMIAYANTI', 1, 'OTKP', '2022/2023 GANJIL', 'SHELMIAYANTI@gmail.com', 'Banjarbaru', '8,11239E+11', 'nofoto.png', 'Aktif'),
(855, '22020029', 'SITI FEBRI MAYA SARY', 1, 'OTKP', '2022/2023 GANJIL', 'SITIFEBRIMAYASARY@gmail.com', 'Banjarbaru', '8,47927E+11', 'nofoto.png', 'Aktif'),
(856, '22020030', 'VIA ERIKA PUTRI', 1, 'OTKP', '2022/2023 GANJIL', 'VIAERIKAPUTRI@gmail.com', 'Banjarbaru', '8,51946E+11', 'nofoto.png', 'Aktif'),
(857, '22040001', 'Ahmad Khaliqi', 1, 'MM', '2022/2023 GANJIL', 'AhmadKhaliqi@gmail.com', 'Banjarbaru', '8,68951E+11', 'nofoto.png', 'Aktif'),
(858, '22040002', 'Fitria Wulandari', 1, 'MM', '2022/2023 GANJIL', 'FitriaWulandari@gmail.com', 'Banjarbaru', '8,89143E+11', 'nofoto.png', 'Aktif'),
(859, '22040003', 'Maulida Nur Rahmah', 1, 'MM', '2022/2023 GANJIL', 'MaulidaNurRahmah@gmail.com', 'Banjarbaru', '8,99828E+11', 'nofoto.png', 'Aktif'),
(860, '22040004', 'Mawaddah', 1, 'MM', '2022/2023 GANJIL', 'Mawaddah@gmail.com', 'Banjarbaru', '8,56835E+11', 'nofoto.png', 'Aktif'),
(861, '22040005', 'Mohammad Farrell Oktavian', 1, 'MM', '2022/2023 GANJIL', 'MohammadFarrellOktavian@gmail.com', 'Banjarbaru', '8,78442E+11', 'nofoto.png', 'Aktif'),
(862, '22040006', 'Muhammad Dewa Rizky', 1, 'MM', '2022/2023 GANJIL', 'MuhammadDewaRizky@gmail.com', 'Banjarbaru', '8,73703E+11', 'nofoto.png', 'Aktif'),
(863, '22040007', 'Muhammad Ikhsan', 1, 'MM', '2022/2023 GANJIL', 'MuhammadIkhsan@gmail.com', 'Banjarbaru', '8,1414E+11', 'nofoto.png', 'Aktif'),
(864, '22040008', 'Nabila Huwaida', 1, 'MM', '2022/2023 GANJIL', 'NabilaHuwaida@gmail.com', 'Banjarbaru', '8,35709E+11', 'nofoto.png', 'Aktif'),
(865, '22040009', 'Raffie Aditya Putra', 1, 'MM', '2022/2023 GANJIL', 'RaffieAdityaPutra@gmail.com', 'Banjarbaru', '8,72321E+11', 'nofoto.png', 'Aktif'),
(866, '22040010', 'Rafi Rauf', 1, 'MM', '2022/2023 GANJIL', 'RafiRauf@gmail.com', 'Banjarbaru', '8,22653E+11', 'nofoto.png', 'Aktif'),
(867, '22040012', 'Rifqah Jannati Aulia', 1, 'MM', '2022/2023 GANJIL', 'RifqahJannatiAulia@gmail.com', 'Banjarbaru', '8,4603E+11', 'nofoto.png', 'Aktif'),
(868, '22040013', 'Siti Maimunah', 1, 'MM', '2022/2023 GANJIL', 'SitiMaimunah@gmail.com', 'Banjarbaru', '8,73642E+11', 'nofoto.png', 'Aktif'),
(869, '22040014', 'Siti Munawarah', 1, 'MM', '2022/2023 GANJIL', 'SitiMunawarah@gmail.com', 'Banjarbaru', '8,90962E+11', 'nofoto.png', 'Aktif'),
(870, '22040015', 'Fernando Egnacio Herman Wiyono', 1, 'MM', '2022/2023 GANJIL', 'FernandoEgnacioHermanWiyono@gmail.com', 'Banjarbaru', '8,10523E+11', 'nofoto.png', 'Aktif'),
(871, '22040016', 'Akhmad Ferdy Erlangga', 1, 'MM', '2022/2023 GANJIL', 'AkhmadFerdyErlangga@gmail.com', 'Banjarbaru', '8,86212E+11', 'nofoto.png', 'Aktif'),
(872, '22050001', 'Abdul Latief', 1, 'TBSM', '2022/2023 GANJIL', 'AbdulLatief@gmail.com', 'Banjarbaru', '8,32615E+11', 'nofoto.png', 'Aktif'),
(873, '22050004', 'Kausar Arum Jagad M.P', 1, 'TBSM', '2022/2023 GANJIL', 'KausarArumJagadM.P@gmail.com', 'Banjarbaru', '8,94909E+11', 'nofoto.png', 'Aktif'),
(874, '22050005', 'Madan', 1, 'TBSM', '2022/2023 GANJIL', 'Madan@gmail.com', 'Banjarbaru', '8,68115E+11', 'nofoto.png', 'Aktif'),
(875, '22050006', 'Muhammad Rizqi Ramadhani', 1, 'TBSM', '2022/2023 GANJIL', 'MuhammadRizqiRamadhani@gmail.com', 'Banjarbaru', '8,2912E+11', 'nofoto.png', 'Aktif'),
(876, '22050007', 'Muhammad Zaini', 1, 'TBSM', '2022/2023 GANJIL', 'MuhammadZaini@gmail.com', 'Banjarbaru', '89582768806', 'nofoto.png', 'Aktif'),
(877, '22050008', 'Yusuf Rhasya Eka Saputra', 1, 'TBSM', '2022/2023 GANJIL', 'YusufRhasyaEkaSaputra@gmail.com', 'Banjarbaru', '86358891806', 'nofoto.png', 'Aktif'),
(878, '21010001', 'Ade Marcella', 2, 'TKJ', '2021/2022 GANJIL', 'AdeMarcella@gmail.com', 'Banjarbaru', '8,40294E+11', 'nofoto.png', 'Aktif'),
(879, '21010002', 'Aditya Bagus Sadewa', 2, 'TKJ', '2021/2022 GANJIL', 'AdityaBagusSadewa@gmail.com', 'Banjarbaru', '8,79278E+11', 'nofoto.png', 'Aktif'),
(880, '21010003', 'Ahmad Fauzi Fathurrahman', 2, 'TKJ', '2021/2022 GANJIL', 'AhmadFauziFathurrahman@gmail.com', 'Banjarbaru', '8,34005E+11', 'nofoto.png', 'Aktif'),
(881, '21010004', 'Ahmad Husein', 2, 'TKJ', '2021/2022 GANJIL', 'AhmadHusein@gmail.com', 'Banjarbaru', '8,59048E+11', 'nofoto.png', 'Aktif'),
(882, '21010005', 'Bagas Maulana Prasetyo', 2, 'TKJ', '2021/2022 GANJIL', 'BagasMaulanaPrasetyo@gmail.com', 'Banjarbaru', '8,95634E+11', 'nofoto.png', 'Aktif'),
(883, '21010006', 'Bobi Sulistyo', 2, 'TKJ', '2021/2022 GANJIL', 'BobiSulistyo@gmail.com', 'Banjarbaru', '8,16887E+11', 'nofoto.png', 'Aktif'),
(884, '21010007', 'Idwan Riyadi', 2, 'TKJ', '2021/2022 GANJIL', 'IdwanRiyadi@gmail.com', 'Banjarbaru', '8,39392E+11', 'nofoto.png', 'Aktif'),
(885, '21010008', 'Kenya Annisa Pratiwi', 2, 'TKJ', '2021/2022 GANJIL', 'KenyaAnnisaPratiwi@gmail.com', 'Banjarbaru', '8,8264E+11', 'nofoto.png', 'Aktif'),
(886, '21010009', 'Krisna Wellson Priambodo', 2, 'TKJ', '2021/2022 GANJIL', 'KrisnaWellsonPriambodo@gmail.com', 'Banjarbaru', '8,80399E+11', 'nofoto.png', 'Aktif'),
(887, '21010010', 'Maya Warsita', 2, 'TKJ', '2021/2022 GANJIL', 'MayaWarsita@gmail.com', 'Banjarbaru', '8,14948E+11', 'nofoto.png', 'Aktif'),
(888, '21010011', 'Meydina Zahra Supar', 2, 'TKJ', '2021/2022 GANJIL', 'MeydinaZahraSupar@gmail.com', 'Banjarbaru', '8,6552E+11', 'nofoto.png', 'Aktif'),
(889, '21010012', 'Moch. Aryo Sastra Prawira', 2, 'TKJ', '2021/2022 GANJIL', 'Moch.AryoSastraPrawira@gmail.com', 'Banjarbaru', '8,42525E+11', 'nofoto.png', 'Aktif'),
(890, '21010013', 'Muhammad Arya', 2, 'TKJ', '2021/2022 GANJIL', 'MuhammadArya@gmail.com', 'Banjarbaru', '81877769806', 'nofoto.png', 'Aktif'),
(891, '21010014', 'Muhammad Ferdi Maulana Hidayat', 2, 'TKJ', '2021/2022 GANJIL', 'MuhammadFerdiMaulanaHidayat@gmail.com', 'Banjarbaru', '8,32325E+11', 'nofoto.png', 'Aktif'),
(892, '21010015', 'Muhammad Harianto', 2, 'TKJ', '2021/2022 GANJIL', 'MuhammadHarianto@gmail.com', 'Banjarbaru', '8,84586E+11', 'nofoto.png', 'Aktif'),
(893, '21010016', 'Muhammad Junaidi Pratama', 2, 'TKJ', '2021/2022 GANJIL', 'MuhammadJunaidiPratama@gmail.com', 'Banjarbaru', '8,52387E+11', 'nofoto.png', 'Aktif'),
(894, '21010017', 'Muhammad Lintar Zulkausar', 2, 'TKJ', '2021/2022 GANJIL', 'MuhammadLintarZulkausar@gmail.com', 'Banjarbaru', '81918944806', 'nofoto.png', 'Aktif'),
(895, '21010018', 'Ni Komang Widiatmika', 2, 'TKJ', '2021/2022 GANJIL', 'NiKomangWidiatmika@gmail.com', 'Banjarbaru', '8,36351E+11', 'nofoto.png', 'Aktif'),
(896, '21010019', 'Nova Elisa', 2, 'TKJ', '2021/2022 GANJIL', 'NovaElisa@gmail.com', 'Banjarbaru', '8,12415E+11', 'nofoto.png', 'Aktif'),
(897, '21010020', 'Pandji Suryo', 2, 'TKJ', '2021/2022 GANJIL', 'PandjiSuryo@gmail.com', 'Banjarbaru', '8,21616E+11', 'nofoto.png', 'Aktif'),
(898, '21010021', 'Pandu Eka Neswandana', 2, 'TKJ', '2021/2022 GANJIL', 'PanduEkaNeswandana@gmail.com', 'Banjarbaru', '81331537806', 'nofoto.png', 'Aktif'),
(899, '21010022', 'Radza Aqmal Maulana Fikrie', 2, 'TKJ', '2021/2022 GANJIL', 'RadzaAqmalMaulanaFikrie@gmail.com', 'Banjarbaru', '8,26432E+11', 'nofoto.png', 'Aktif'),
(900, '21010023', 'Rahmad Hatta Rajasa', 2, 'TKJ', '2021/2022 GANJIL', 'RahmadHattaRajasa@gmail.com', 'Banjarbaru', '8,83105E+11', 'nofoto.png', 'Aktif'),
(901, '21010025', 'Reno Putra Hidayatullah', 2, 'TKJ', '2021/2022 GANJIL', 'RenoPutraHidayatullah@gmail.com', 'Banjarbaru', '8,364E+11', 'nofoto.png', 'Aktif'),
(902, '21010026', 'Rifky Raju Priyantama', 2, 'TKJ', '2021/2022 GANJIL', 'RifkyRajuPriyantama@gmail.com', 'Banjarbaru', '8,81328E+11', 'nofoto.png', 'Aktif'),
(903, '21010027', 'Rio Darma Kusuma', 2, 'TKJ', '2021/2022 GANJIL', 'RioDarmaKusuma@gmail.com', 'Banjarbaru', '8,98629E+11', 'nofoto.png', 'Aktif'),
(904, '21010028', 'Risma Indah Laulia', 2, 'TKJ', '2021/2022 GANJIL', 'RismaIndahLaulia@gmail.com', 'Banjarbaru', '8,8966E+11', 'nofoto.png', 'Aktif'),
(905, '21010029', 'Ryan Ananta', 2, 'TKJ', '2021/2022 GANJIL', 'RyanAnanta@gmail.com', 'Banjarbaru', '8,83324E+11', 'nofoto.png', 'Aktif'),
(906, '21010030', 'Shindy Danella', 2, 'TKJ', '2021/2022 GANJIL', 'ShindyDanella@gmail.com', 'Banjarbaru', '8,46167E+11', 'nofoto.png', 'Aktif'),
(907, '21010032', 'Kausar Sapujagad M.P', 2, 'TKJ', '2021/2022 GANJIL', 'KausarSapujagadM.P@gmail.com', 'Banjarbaru', '8,26853E+11', 'nofoto.png', 'Aktif'),
(908, '21020002', 'ALYA', 2, 'OTKP', '2021/2022 GANJIL', 'ALYA@gmail.com', 'Banjarbaru', '8,94661E+11', 'nofoto.png', 'Aktif'),
(909, '21020003', 'ANISA ARIYANTI', 2, 'OTKP', '2021/2022 GANJIL', 'ANISAARIYANTI@gmail.com', 'Banjarbaru', '8,3238E+11', 'nofoto.png', 'Aktif'),
(910, '21020004', 'ANNI NIKENSARI', 2, 'OTKP', '2021/2022 GANJIL', 'ANNINIKENSARI@gmail.com', 'Banjarbaru', '8,29424E+11', 'nofoto.png', 'Aktif'),
(911, '21020005', 'ANNISA GALIH RISTAMI', 2, 'OTKP', '2021/2022 GANJIL', 'ANNISAGALIHRISTAMI@gmail.com', 'Banjarbaru', '8,95596E+11', 'nofoto.png', 'Aktif'),
(912, '21020006', 'DEBBY VENEZIA NURYANTO', 2, 'OTKP', '2021/2022 GANJIL', 'DEBBYVENEZIANURYANTO@gmail.com', 'Banjarbaru', '82045315806', 'nofoto.png', 'Aktif'),
(913, '21020007', 'DESSY ADELLIA MAHARANI', 2, 'OTKP', '2021/2022 GANJIL', 'DESSYADELLIAMAHARANI@gmail.com', 'Banjarbaru', '8,95896E+11', 'nofoto.png', 'Aktif'),
(914, '21020008', 'DEVI HARYANTI', 2, 'OTKP', '2021/2022 GANJIL', 'DEVIHARYANTI@gmail.com', 'Banjarbaru', '8,67292E+11', 'nofoto.png', 'Aktif'),
(915, '21020009', 'DINDA LESTARI', 2, 'OTKP', '2021/2022 GANJIL', 'DINDALESTARI@gmail.com', 'Banjarbaru', '8,25776E+11', 'nofoto.png', 'Aktif'),
(916, '21020010', 'DWI ANJANI KHOIRUNNISA', 2, 'OTKP', '2021/2022 GANJIL', 'DWIANJANIKHOIRUNNISA@gmail.com', 'Banjarbaru', '8,62476E+11', 'nofoto.png', 'Aktif'),
(917, '21020011', 'EKA SUSI AULIA SABRINA', 2, 'OTKP', '2021/2022 GANJIL', 'EKASUSIAULIASABRINA@gmail.com', 'Banjarbaru', '8,73283E+11', 'nofoto.png', 'Aktif'),
(918, '21020012', 'EVI YOGIANTARI', 2, 'OTKP', '2021/2022 GANJIL', 'EVIYOGIANTARI@gmail.com', 'Banjarbaru', '89313935806', 'nofoto.png', 'Aktif'),
(919, '21020013', 'FIKA YUNIAR', 2, 'OTKP', '2021/2022 GANJIL', 'FIKAYUNIAR@gmail.com', 'Banjarbaru', '8,31888E+11', 'nofoto.png', 'Aktif'),
(920, '21020014', 'HALIZA', 2, 'OTKP', '2021/2022 GANJIL', 'HALIZA@gmail.com', 'Banjarbaru', '8,92793E+11', 'nofoto.png', 'Aktif'),
(921, '21020015', 'INDIRA JULIANA SINTA', 2, 'OTKP', '2021/2022 GANJIL', 'INDIRAJULIANASINTA@gmail.com', 'Banjarbaru', '8,83738E+11', 'nofoto.png', 'Aktif'),
(922, '21020016', 'JESSICA NAOMI ADRIANA', 2, 'OTKP', '2021/2022 GANJIL', 'JESSICANAOMIADRIANA@gmail.com', 'Banjarbaru', '8,89717E+11', 'nofoto.png', 'Aktif'),
(923, '21020018', 'NAZWA SALSABILA', 2, 'OTKP', '2021/2022 GANJIL', 'NAZWASALSABILA@gmail.com', 'Banjarbaru', '8,70527E+11', 'nofoto.png', 'Aktif'),
(924, '21020019', 'NUR AFNAN', 2, 'OTKP', '2021/2022 GANJIL', 'NURAFNAN@gmail.com', 'Banjarbaru', '8,36183E+11', 'nofoto.png', 'Aktif'),
(925, '21020020', 'NURUL WASHILAH', 2, 'OTKP', '2021/2022 GANJIL', 'NURULWASHILAH@gmail.com', 'Banjarbaru', '8,7566E+11', 'nofoto.png', 'Aktif'),
(926, '21020021', 'PUTRI NUR AMELIA', 2, 'OTKP', '2021/2022 GANJIL', 'PUTRINURAMELIA@gmail.com', 'Banjarbaru', '8,77461E+11', 'nofoto.png', 'Aktif'),
(927, '21020022', 'QATRUNNADA NISRINA', 2, 'OTKP', '2021/2022 GANJIL', 'QATRUNNADANISRINA@gmail.com', 'Banjarbaru', '8,76417E+11', 'nofoto.png', 'Aktif'),
(928, '21020023', 'RACHEL REGIA LISTY', 2, 'OTKP', '2021/2022 GANJIL', 'RACHELREGIALISTY@gmail.com', 'Banjarbaru', '8,12918E+11', 'nofoto.png', 'Aktif'),
(929, '21020024', 'SEFTIYANI SITUMORANG', 2, 'OTKP', '2021/2022 GANJIL', 'SEFTIYANISITUMORANG@gmail.com', 'Banjarbaru', '8,84483E+11', 'nofoto.png', 'Aktif'),
(930, '21020025', 'SINTA DWI WULANDARI', 2, 'OTKP', '2021/2022 GANJIL', 'SINTADWIWULANDARI@gmail.com', 'Banjarbaru', '8,59123E+11', 'nofoto.png', 'Aktif'),
(931, '21020026', 'SITI AMELIA RAHMAH', 2, 'OTKP', '2021/2022 GANJIL', 'SITIAMELIARAHMAH@gmail.com', 'Banjarbaru', '8,11446E+11', 'nofoto.png', 'Aktif'),
(932, '21020027', 'SRI ANDINI', 2, 'OTKP', '2021/2022 GANJIL', 'SRIANDINI@gmail.com', 'Banjarbaru', '85002420806', 'nofoto.png', 'Aktif'),
(933, '21020028', 'TIRTANINGRUM LEVI AYU MAHARANI', 2, 'OTKP', '2021/2022 GANJIL', 'TIRTANINGRUMLEVIAYUMAHARANI@gmail.com', 'Banjarbaru', '8,90881E+11', 'nofoto.png', 'Aktif'),
(934, '21020029', 'MOHAMMAD RAHMANDANI ILHAM', 2, 'OTKP', '2021/2022 GANJIL', 'MOHAMMADRAHMANDANIILHAM@gmail.com', 'Banjarbaru', '8,74893E+11', 'nofoto.png', 'Aktif'),
(935, '21040001', 'AGUS SHOLIKIN', 2, 'MM', '2021/2022 GANJIL', 'AGUSSHOLIKIN@gmail.com', 'Banjarbaru', '8,36753E+11', 'nofoto.png', 'Aktif'),
(936, '21040002', 'FEBRIAN RAHMAT FIRDAUS', 2, 'MM', '2021/2022 GANJIL', 'FEBRIANRAHMATFIRDAUS@gmail.com', 'Banjarbaru', '8,35234E+11', 'nofoto.png', 'Aktif'),
(937, '21040003', 'MUAMMAR BILLAH', 2, 'MM', '2021/2022 GANJIL', 'MUAMMARBILLAH@gmail.com', 'Banjarbaru', '8,87575E+11', 'nofoto.png', 'Aktif'),
(938, '21040004', 'MUHAMMAD ATHA AL-GHIFARI', 2, 'MM', '2021/2022 GANJIL', 'MUHAMMADATHAAL-GHIFARI@gmail.com', 'Banjarbaru', '8,56223E+11', 'nofoto.png', 'Aktif'),
(939, '21040005', 'MUHAMMAD NUR RAMADHAN', 2, 'MM', '2021/2022 GANJIL', 'MUHAMMADNURRAMADHAN@gmail.com', 'Banjarbaru', '8,15954E+11', 'nofoto.png', 'Aktif'),
(940, '21040006', 'MUHAMMAD SYAHRUL AS SHIDIQI', 2, 'MM', '2021/2022 GANJIL', 'MUHAMMADSYAHRULASSHIDIQI@gmail.com', 'Banjarbaru', '8,28703E+11', 'nofoto.png', 'Aktif'),
(941, '21040007', 'MUHAMMAD WASKIM', 2, 'MM', '2021/2022 GANJIL', 'MUHAMMADWASKIM@gmail.com', 'Banjarbaru', '8,78298E+11', 'nofoto.png', 'Aktif'),
(942, '21040008', 'RIZKY AL AMIN', 2, 'MM', '2021/2022 GANJIL', 'RIZKYALAMIN@gmail.com', 'Banjarbaru', '8,25893E+11', 'nofoto.png', 'Aktif'),
(943, '21040009', 'VICKY TAN HANDAYONO', 2, 'MM', '2021/2022 GANJIL', 'VICKYTANHANDAYONO@gmail.com', 'Banjarbaru', '8,82881E+11', 'nofoto.png', 'Aktif'),
(944, '21050001', 'BAGUS MAULANA PRASETYO', 2, 'TBSM', '2021/2022 GANJIL', 'BAGUSMAULANAPRASETYO@gmail.com', 'Banjarbaru', '8,529E+11', 'nofoto.png', 'Aktif'),
(945, '21050002', 'DIAZ ANGGA PRASETYA', 2, 'TBSM', '2021/2022 GANJIL', 'DIAZANGGAPRASETYA@gmail.com', 'Banjarbaru', '8,38073E+11', 'nofoto.png', 'Aktif'),
(946, '21050003', 'M. ILHAM RESNAWAN', 2, 'TBSM', '2021/2022 GANJIL', 'M.ILHAMRESNAWAN@gmail.com', 'Banjarbaru', '8,24397E+11', 'nofoto.png', 'Aktif'),
(947, '21050004', 'MOHAMMAD ZAINI PRATAMA', 2, 'TBSM', '2021/2022 GANJIL', 'MOHAMMADZAINIPRATAMA@gmail.com', 'Banjarbaru', '8,71618E+11', 'nofoto.png', 'Aktif'),
(948, '21050005', 'MUHAMMAD RIFKIE AZKIA', 2, 'TBSM', '2021/2022 GANJIL', 'MUHAMMADRIFKIEAZKIA@gmail.com', 'Banjarbaru', '8,4477E+11', 'nofoto.png', 'Aktif'),
(949, '21050006', 'NASROLLAH', 2, 'TBSM', '2021/2022 GANJIL', 'NASROLLAH@gmail.com', 'Banjarbaru', '8,93333E+11', 'nofoto.png', 'Aktif'),
(950, '21050007', 'NOVRIAL RAMADHAN', 2, 'TBSM', '2021/2022 GANJIL', 'NOVRIALRAMADHAN@gmail.com', 'Banjarbaru', '8,54272E+11', 'nofoto.png', 'Aktif'),
(951, '21050008', 'RIDHO ALFIAN', 2, 'TBSM', '2021/2022 GANJIL', 'RIDHOALFIAN@gmail.com', 'Banjarbaru', '8,27211E+11', 'nofoto.png', 'Aktif'),
(952, '20010001', 'Abdul Majid', 5, 'TKJ', '2020/2021 GANJIL', 'AbdulMajid@gmail.com', 'Banjarbaru', '8,53036E+11', 'nofoto.png', 'Alumni'),
(953, '20010002', 'Abiyu Yasar Sidik', 5, 'TKJ', '2020/2021 GANJIL', 'AbiyuYasarSidik@gmail.com', 'Banjarbaru', '89611380806', 'nofoto.png', 'Alumni'),
(954, '20010003', 'Ahmad Hafiz', 5, 'TKJ', '2020/2021 GANJIL', 'AhmadHafiz@gmail.com', 'Banjarbaru', '8,86009E+11', 'nofoto.png', 'Alumni'),
(955, '20010004', 'Ahmad Jamhari', 5, 'TKJ', '2020/2021 GANJIL', 'AhmadJamhari@gmail.com', 'Banjarbaru', '8,11189E+11', 'nofoto.png', 'Alumni'),
(956, '20010005', 'Ahmad Mujahidi', 5, 'TKJ', '2020/2021 GANJIL', 'AhmadMujahidi@gmail.com', 'Banjarbaru', '87815751806', 'nofoto.png', 'Alumni'),
(957, '20010006', 'Ahmad Zaidan Basri', 5, 'TKJ', '2020/2021 GANJIL', 'AhmadZaidanBasri@gmail.com', 'Banjarbaru', '85605394806', 'nofoto.png', 'Alumni'),
(958, '20010007', 'Akhmad Maulana', 5, 'TKJ', '2020/2021 GANJIL', 'AkhmadMaulana@gmail.com', 'Banjarbaru', '8,79615E+11', 'nofoto.png', 'Alumni'),
(959, '20010008', 'Amelia Putri', 5, 'TKJ', '2020/2021 GANJIL', 'AmeliaPutri@gmail.com', 'Banjarbaru', '8,94146E+11', 'nofoto.png', 'Alumni'),
(960, '20010009', 'Andhika Fayadh Lesmana', 5, 'TKJ', '2020/2021 GANJIL', 'AndhikaFayadhLesmana@gmail.com', 'Banjarbaru', '8,35514E+11', 'nofoto.png', 'Alumni'),
(961, '20010010', 'Anggi Pranata', 5, 'TKJ', '2020/2021 GANJIL', 'AnggiPranata@gmail.com', 'Banjarbaru', '8,43353E+11', 'nofoto.png', 'Alumni'),
(962, '20010011', 'Biba Ade Anggara', 5, 'TKJ', '2020/2021 GANJIL', 'BibaAdeAnggara@gmail.com', 'Banjarbaru', '8,42165E+11', 'nofoto.png', 'Alumni'),
(963, '20010012', 'Dicky Saputra', 5, 'TKJ', '2020/2021 GANJIL', 'DickySaputra@gmail.com', 'Banjarbaru', '8,33992E+11', 'nofoto.png', 'Alumni'),
(964, '20010013', 'Dimas Anggarisa', 5, 'TKJ', '2020/2021 GANJIL', 'DimasAnggarisa@gmail.com', 'Banjarbaru', '8,95514E+11', 'nofoto.png', 'Alumni'),
(965, '20010014', 'Gilang Radit Tia', 5, 'TKJ', '2020/2021 GANJIL', 'GilangRaditTia@gmail.com', 'Banjarbaru', '8,70879E+11', 'nofoto.png', 'Alumni'),
(966, '20010015', 'Harni', 5, 'TKJ', '2020/2021 GANJIL', 'Harni@gmail.com', 'Banjarbaru', '89926081806', 'nofoto.png', 'Alumni'),
(967, '20010017', 'Ikhwan Taufik', 5, 'TKJ', '2020/2021 GANJIL', 'IkhwanTaufik@gmail.com', 'Banjarbaru', '8,56416E+11', 'nofoto.png', 'Alumni'),
(968, '20010018', 'Kevin Xavierz Attaillah', 5, 'TKJ', '2020/2021 GANJIL', 'KevinXavierzAttaillah@gmail.com', 'Banjarbaru', '8,44665E+11', 'nofoto.png', 'Alumni'),
(969, '20010020', 'M Maulana Al Farizi', 5, 'TKJ', '2020/2021 GANJIL', 'MMaulanaAlFarizi@gmail.com', 'Banjarbaru', '8,82952E+11', 'nofoto.png', 'Alumni'),
(970, '20010021', 'M Taufik Ridhoni', 5, 'TKJ', '2020/2021 GANJIL', 'MTaufikRidhoni@gmail.com', 'Banjarbaru', '8,63084E+11', 'nofoto.png', 'Alumni'),
(971, '20010022', 'M. Deffry Arfandi', 5, 'TKJ', '2020/2021 GANJIL', 'M.DeffryArfandi@gmail.com', 'Banjarbaru', '8,3231E+11', 'nofoto.png', 'Alumni'),
(972, '20010023', 'Muarif Fadillah', 5, 'TKJ', '2020/2021 GANJIL', 'MuarifFadillah@gmail.com', 'Banjarbaru', '8,90405E+11', 'nofoto.png', 'Alumni'),
(973, '20010024', 'Muhamad Ihsan Aldiyanur', 5, 'TKJ', '2020/2021 GANJIL', 'MuhamadIhsanAldiyanur@gmail.com', 'Banjarbaru', '8,49508E+11', 'nofoto.png', 'Alumni'),
(974, '20010025', 'Muhammad Arifin Nur', 5, 'TKJ', '2020/2021 GANJIL', 'MuhammadArifinNur@gmail.com', 'Banjarbaru', '8,90797E+11', 'nofoto.png', 'Alumni'),
(975, '20010026', 'Muhammad Ichsan', 5, 'TKJ', '2020/2021 GANJIL', 'MuhammadIchsan@gmail.com', 'Banjarbaru', '8,5039E+11', 'nofoto.png', 'Alumni'),
(976, '20010027', 'Muhammad Muhdiani', 5, 'TKJ', '2020/2021 GANJIL', 'MuhammadMuhdiani@gmail.com', 'Banjarbaru', '8,47148E+11', 'nofoto.png', 'Alumni'),
(977, '20010029', 'Muhammad Rizky', 5, 'TKJ', '2020/2021 GANJIL', 'MuhammadRizky@gmail.com', 'Banjarbaru', '8,12405E+11', 'nofoto.png', 'Alumni'),
(978, '20010030', 'Muhammad Rizky Saputra', 5, 'TKJ', '2020/2021 GANJIL', 'MuhammadRizkySaputra@gmail.com', 'Banjarbaru', '8,10698E+11', 'nofoto.png', 'Alumni'),
(979, '20010031', 'Muhammad Saputra', 5, 'TKJ', '2020/2021 GANJIL', 'MuhammadSaputra@gmail.com', 'Banjarbaru', '8,74294E+11', 'nofoto.png', 'Alumni'),
(980, '20010032', 'Robin Utomo Herdyanto', 5, 'TKJ', '2020/2021 GANJIL', 'RobinUtomoHerdyanto@gmail.com', 'Banjarbaru', '8,77049E+11', 'nofoto.png', 'Alumni'),
(981, '20010033', 'Sannanta', 5, 'TKJ', '2020/2021 GANJIL', 'Sannanta@gmail.com', 'Banjarbaru', '8,45449E+11', 'nofoto.png', 'Alumni'),
(982, '20010034', 'Wanda Nurariyani Tamami', 5, 'TKJ', '2020/2021 GANJIL', 'WandaNurariyaniTamami@gmail.com', 'Banjarbaru', '8,78721E+11', 'nofoto.png', 'Alumni'),
(983, '20010035', 'Wina Miliyana', 5, 'TKJ', '2020/2021 GANJIL', 'WinaMiliyana@gmail.com', 'Banjarbaru', '81748771806', 'nofoto.png', 'Alumni'),
(984, '20010036', 'Yogi Cahyadi', 5, 'TKJ', '2020/2021 GANJIL', 'YogiCahyadi@gmail.com', 'Banjarbaru', '8,72486E+11', 'nofoto.png', 'Alumni'),
(985, '20020001', 'Afifah Giana', 5, 'OTKP', '2020/2021 GANJIL', 'AfifahGiana@gmail.com', 'Banjarbaru', '8,48203E+11', 'nofoto.png', 'Alumni'),
(986, '20020002', 'Afna Rohitna', 5, 'OTKP', '2020/2021 GANJIL', 'AfnaRohitna@gmail.com', 'Banjarbaru', '8,65241E+11', 'nofoto.png', 'Alumni'),
(987, '20020003', 'Aisya Rahma', 5, 'OTKP', '2020/2021 GANJIL', 'AisyaRahma@gmail.com', 'Banjarbaru', '8,30336E+11', 'nofoto.png', 'Alumni'),
(988, '20020004', 'Anggi Herawati', 5, 'OTKP', '2020/2021 GANJIL', 'AnggiHerawati@gmail.com', 'Banjarbaru', '87574809806', 'nofoto.png', 'Alumni'),
(989, '20020005', 'Chandra Nur Hanifan', 5, 'OTKP', '2020/2021 GANJIL', 'ChandraNurHanifan@gmail.com', 'Banjarbaru', '86625188806', 'nofoto.png', 'Alumni'),
(990, '20020006', 'Della Rakhmawati', 5, 'OTKP', '2020/2021 GANJIL', 'DellaRakhmawati@gmail.com', 'Banjarbaru', '8,23928E+11', 'nofoto.png', 'Alumni'),
(991, '20020007', 'Diana Mutiara Putri', 5, 'OTKP', '2020/2021 GANJIL', 'DianaMutiaraPutri@gmail.com', 'Banjarbaru', '8,56496E+11', 'nofoto.png', 'Alumni'),
(992, '20020008', 'Dicky Setiawan', 5, 'OTKP', '2020/2021 GANJIL', 'DickySetiawan@gmail.com', 'Banjarbaru', '8,63751E+11', 'nofoto.png', 'Alumni'),
(993, '20020009', 'Erik Kusherawarsih', 5, 'OTKP', '2020/2021 GANJIL', 'ErikKusherawarsih@gmail.com', 'Banjarbaru', '8,97173E+11', 'nofoto.png', 'Alumni'),
(994, '20020010', 'Esti Urbaningrum', 5, 'OTKP', '2020/2021 GANJIL', 'EstiUrbaningrum@gmail.com', 'Banjarbaru', '8,21348E+11', 'nofoto.png', 'Alumni'),
(995, '20020011', 'Febiana Zahra Ananta', 5, 'OTKP', '2020/2021 GANJIL', 'FebianaZahraAnanta@gmail.com', 'Banjarbaru', '8,4433E+11', 'nofoto.png', 'Alumni'),
(996, '20020013', 'Hani Karmila', 5, 'OTKP', '2020/2021 GANJIL', 'HaniKarmila@gmail.com', 'Banjarbaru', '8,26424E+11', 'nofoto.png', 'Alumni'),
(997, '20020014', 'Hanifah', 5, 'OTKP', '2020/2021 GANJIL', 'Hanifah@gmail.com', 'Banjarbaru', '8,31292E+11', 'nofoto.png', 'Alumni'),
(998, '20020015', 'Hendrawan Martin', 5, 'OTKP', '2020/2021 GANJIL', 'HendrawanMartin@gmail.com', 'Banjarbaru', '8,18181E+11', 'nofoto.png', 'Alumni'),
(999, '20020016', 'Holly Vidhama Ratu', 5, 'OTKP', '2020/2021 GANJIL', 'HollyVidhamaRatu@gmail.com', 'Banjarbaru', '8,78071E+11', 'nofoto.png', 'Alumni'),
(1000, '20020017', 'Ica Cahyani', 5, 'OTKP', '2020/2021 GANJIL', 'IcaCahyani@gmail.com', 'Banjarbaru', '8,42813E+11', 'nofoto.png', 'Alumni'),
(1001, '20020018', 'Jahra', 5, 'OTKP', '2020/2021 GANJIL', 'Jahra@gmail.com', 'Banjarbaru', '8,85386E+11', 'nofoto.png', 'Alumni'),
(1002, '20020020', 'Latifah Audina', 5, 'OTKP', '2020/2021 GANJIL', 'LatifahAudina@gmail.com', 'Banjarbaru', '8,96708E+11', 'nofoto.png', 'Alumni'),
(1003, '20020021', 'Lita Lestari', 5, 'OTKP', '2020/2021 GANJIL', 'LitaLestari@gmail.com', 'Banjarbaru', '87422538806', 'nofoto.png', 'Alumni'),
(1004, '20020022', 'Meliatun Annisa', 5, 'OTKP', '2020/2021 GANJIL', 'MeliatunAnnisa@gmail.com', 'Banjarbaru', '8,94778E+11', 'nofoto.png', 'Alumni'),
(1005, '20020023', 'Miftahul Jannah', 5, 'OTKP', '2020/2021 GANJIL', 'MiftahulJannah@gmail.com', 'Banjarbaru', '8,66193E+11', 'nofoto.png', 'Alumni'),
(1006, '20020024', 'Muh. Amin Fadli', 5, 'OTKP', '2020/2021 GANJIL', 'Muh.AminFadli@gmail.com', 'Banjarbaru', '8,93635E+11', 'nofoto.png', 'Alumni'),
(1007, '20020025', 'Muhammad Iqbal Prakosa', 5, 'OTKP', '2020/2021 GANJIL', 'MuhammadIqbalPrakosa@gmail.com', 'Banjarbaru', '8,79494E+11', 'nofoto.png', 'Alumni'),
(1008, '20020026', 'Murniati', 5, 'OTKP', '2020/2021 GANJIL', 'Murniati@gmail.com', 'Banjarbaru', '8,23963E+11', 'nofoto.png', 'Alumni'),
(1009, '20020027', 'Nadjwa Salsabila', 5, 'OTKP', '2020/2021 GANJIL', 'NadjwaSalsabila@gmail.com', 'Banjarbaru', '8,68025E+11', 'nofoto.png', 'Alumni'),
(1010, '20020028', 'Nur Ayu Lestari', 5, 'OTKP', '2020/2021 GANJIL', 'NurAyuLestari@gmail.com', 'Banjarbaru', '8,63305E+11', 'nofoto.png', 'Alumni'),
(1011, '20020030', 'Puji Siwi Lestari', 5, 'OTKP', '2020/2021 GANJIL', 'PujiSiwiLestari@gmail.com', 'Banjarbaru', '8,49871E+11', 'nofoto.png', 'Alumni'),
(1012, '20020031', 'Putri Aliya Hasan', 5, 'OTKP', '2020/2021 GANJIL', 'PutriAliyaHasan@gmail.com', 'Banjarbaru', '8,1957E+11', 'nofoto.png', 'Alumni'),
(1013, '20020032', 'Putri Wulandari', 5, 'OTKP', '2020/2021 GANJIL', 'PutriWulandari@gmail.com', 'Banjarbaru', '8,7562E+11', 'nofoto.png', 'Alumni'),
(1014, '20020033', 'Rendy Setiawan', 5, 'OTKP', '2020/2021 GANJIL', 'RendySetiawan@gmail.com', 'Banjarbaru', '8,26328E+11', 'nofoto.png', 'Alumni'),
(1015, '20020034', 'Saifullah', 5, 'OTKP', '2020/2021 GANJIL', 'Saifullah@gmail.com', 'Banjarbaru', '8,99798E+11', 'nofoto.png', 'Alumni'),
(1016, '20020035', 'Silvia Mutiara BR Manullang', 5, 'OTKP', '2020/2021 GANJIL', 'SilviaMutiaraBRManullang@gmail.com', 'Banjarbaru', '8,94736E+11', 'nofoto.png', 'Alumni'),
(1017, '20020037', 'Sulaiman Hud Assalami', 5, 'OTKP', '2020/2021 GANJIL', 'SulaimanHudAssalami@gmail.com', 'Banjarbaru', '8,10842E+11', 'nofoto.png', 'Alumni'),
(1018, '20020038', 'Sultan Zainurrahman AR', 5, 'OTKP', '2020/2021 GANJIL', 'SultanZainurrahmanAR@gmail.com', 'Banjarbaru', '86937464806', 'nofoto.png', 'Alumni'),
(1019, '20020040', 'Syeilla Deswita Aulia Syarif', 5, 'OTKP', '2020/2021 GANJIL', 'SyeillaDeswitaAuliaSyarif@gmail.com', 'Banjarbaru', '8,58882E+11', 'nofoto.png', 'Alumni'),
(1020, '20020041', 'Vanya Nurlatifah Frayitno', 5, 'OTKP', '2020/2021 GANJIL', 'VanyaNurlatifahFrayitno@gmail.com', 'Banjarbaru', '8,84798E+11', 'nofoto.png', 'Alumni'),
(1021, '20020042', 'Vinata Yulia Bekti', 5, 'OTKP', '2020/2021 GANJIL', 'VinataYuliaBekti@gmail.com', 'Banjarbaru', '8,75499E+11', 'nofoto.png', 'Alumni'),
(1022, '20020043', 'Dwi kartikasari', 5, 'OTKP', '2020/2021 GANJIL', 'Dwikartikasari@gmail.com', 'Banjarbaru', '8,69415E+11', 'nofoto.png', 'Alumni'),
(1023, '20040001', 'Agiska Pebianti', 5, 'MM', '2020/2021 GANJIL', 'AgiskaPebianti@gmail.com', 'Banjarbaru', '8,25464E+11', 'nofoto.png', 'Alumni'),
(1024, '20040002', 'Arlina Adha', 5, 'MM', '2020/2021 GANJIL', 'ArlinaAdha@gmail.com', 'Banjarbaru', '8,61182E+11', 'nofoto.png', 'Alumni'),
(1025, '20040003', 'Bagas Abdurrafi Jauhari', 5, 'MM', '2020/2021 GANJIL', 'BagasAbdurrafiJauhari@gmail.com', 'Banjarbaru', '8,85311E+11', 'nofoto.png', 'Alumni'),
(1026, '20040005', 'Cheysia Feythi Niklas', 5, 'MM', '2020/2021 GANJIL', 'CheysiaFeythiNiklas@gmail.com', 'Banjarbaru', '8,1193E+11', 'nofoto.png', 'Alumni'),
(1027, '20040006', 'Gigih Dwi Permana', 5, 'MM', '2020/2021 GANJIL', 'GigihDwiPermana@gmail.com', 'Banjarbaru', '8,14352E+11', 'nofoto.png', 'Alumni'),
(1028, '20040007', 'Hizkia Eugenio Charles', 5, 'MM', '2020/2021 GANJIL', 'HizkiaEugenioCharles@gmail.com', 'Banjarbaru', '8,92893E+11', 'nofoto.png', 'Alumni'),
(1029, '20040009', 'Julita Parera', 5, 'MM', '2020/2021 GANJIL', 'JulitaParera@gmail.com', 'Banjarbaru', '8,27697E+11', 'nofoto.png', 'Alumni'),
(1030, '20040010', 'M. Diva Primada Putra', 5, 'MM', '2020/2021 GANJIL', 'M.DivaPrimadaPutra@gmail.com', 'Banjarbaru', '8,60623E+11', 'nofoto.png', 'Alumni'),
(1031, '20040011', 'Mahrida', 5, 'MM', '2020/2021 GANJIL', 'Mahrida@gmail.com', 'Banjarbaru', '84383489806', 'nofoto.png', 'Alumni'),
(1032, '20040012', 'Masrio Joko Putro', 5, 'MM', '2020/2021 GANJIL', 'MasrioJokoPutro@gmail.com', 'Banjarbaru', '8,39299E+11', 'nofoto.png', 'Alumni'),
(1033, '20040013', 'Maulita Milah', 5, 'MM', '2020/2021 GANJIL', 'MaulitaMilah@gmail.com', 'Banjarbaru', '8,16147E+11', 'nofoto.png', 'Alumni'),
(1034, '20040014', 'Mufidah Aulia Zaliyanti', 5, 'MM', '2020/2021 GANJIL', 'MufidahAuliaZaliyanti@gmail.com', 'Banjarbaru', '8,59738E+11', 'nofoto.png', 'Alumni'),
(1035, '20040015', 'Muhamad July Wira Yuda', 5, 'MM', '2020/2021 GANJIL', 'MuhamadJulyWiraYuda@gmail.com', 'Banjarbaru', '8,87069E+11', 'nofoto.png', 'Alumni'),
(1036, '20040017', 'Muhammad Aliffatul Amrian', 5, 'MM', '2020/2021 GANJIL', 'MuhammadAliffatulAmrian@gmail.com', 'Banjarbaru', '8,77242E+11', 'nofoto.png', 'Alumni'),
(1037, '20040018', 'Muhammad Bahaq Rosanjaya', 5, 'MM', '2020/2021 GANJIL', 'MuhammadBahaqRosanjaya@gmail.com', 'Banjarbaru', '8,80775E+11', 'nofoto.png', 'Alumni'),
(1038, '20040019', 'Muhammad Fauzan Al Azhari', 5, 'MM', '2020/2021 GANJIL', 'MuhammadFauzanAlAzhari@gmail.com', 'Banjarbaru', '8,77609E+11', 'nofoto.png', 'Alumni'),
(1039, '20040020', 'Muhammad Gafuri Rahman', 5, 'MM', '2020/2021 GANJIL', 'MuhammadGafuriRahman@gmail.com', 'Banjarbaru', '8,68586E+11', 'nofoto.png', 'Alumni'),
(1040, '20040021', 'Muhammad Haeksal', 5, 'MM', '2020/2021 GANJIL', 'MuhammadHaeksal@gmail.com', 'Banjarbaru', '8,74914E+11', 'nofoto.png', 'Alumni'),
(1041, '20040022', 'Muhammad Imam Nawawi Sapoetra', 5, 'MM', '2020/2021 GANJIL', 'MuhammadImamNawawiSapoetra@gmail.com', 'Banjarbaru', '8,41228E+11', 'nofoto.png', 'Alumni'),
(1042, '20040023', 'Muhammad Riefly Rizqalmughni', 5, 'MM', '2020/2021 GANJIL', 'MuhammadRieflyRizqalmughni@gmail.com', 'Banjarbaru', '8,99543E+11', 'nofoto.png', 'Alumni'),
(1043, '20040024', 'Muhammad Salim', 5, 'MM', '2020/2021 GANJIL', 'MuhammadSalim@gmail.com', 'Banjarbaru', '8,23059E+11', 'nofoto.png', 'Alumni'),
(1044, '20040025', 'Mustika Murni', 5, 'MM', '2020/2021 GANJIL', 'MustikaMurni@gmail.com', 'Banjarbaru', '8,95609E+11', 'nofoto.png', 'Alumni'),
(1045, '20040026', 'Nayla Maharani', 5, 'MM', '2020/2021 GANJIL', 'NaylaMaharani@gmail.com', 'Banjarbaru', '8,45228E+11', 'nofoto.png', 'Alumni'),
(1046, '20040027', 'Putri Nornajati', 5, 'MM', '2020/2021 GANJIL', 'PutriNornajati@gmail.com', 'Banjarbaru', '82202925806', 'nofoto.png', 'Alumni'),
(1047, '20040029', 'Tria Agustina W', 5, 'MM', '2020/2021 GANJIL', 'TriaAgustinaW@gmail.com', 'Banjarbaru', '8,60898E+11', 'nofoto.png', 'Alumni'),
(1048, '20040030', 'Sofian', 5, 'MM', '2020/2021 GANJIL', 'Sofian@gmail.com', 'Banjarbaru', '8,51651E+11', 'nofoto.png', 'Alumni'),
(1049, '20040031', 'Cherly Anatasya Putri', 5, 'MM', '2020/2021 GANJIL', 'CherlyAnatasyaPutri@gmail.com', 'Banjarbaru', '8,15538E+11', 'nofoto.png', 'Alumni'),
(1050, '20050002', 'Ahmad Karim', 5, 'TBSM', '2020/2021 GANJIL', 'AhmadKarim@gmail.com', 'Banjarbaru', '8,49773E+11', 'nofoto.png', 'Aktif'),
(1051, '20050003', 'Andrian Suprianto', 5, 'TBSM', '2020/2021 GANJIL', 'AndrianSuprianto@gmail.com', 'Banjarbaru', '8,18073E+11', 'nofoto.png', 'Aktif'),
(1052, '20050004', 'Ari Prasetiawan', 5, 'TBSM', '2020/2021 GANJIL', 'AriPrasetiawan@gmail.com', 'Banjarbaru', '8,16006E+11', 'nofoto.png', 'Aktif'),
(1053, '20050005', 'Badaruddin', 5, 'TBSM', '2020/2021 GANJIL', 'Badaruddin@gmail.com', 'Banjarbaru', '8,48896E+11', 'nofoto.png', 'Aktif'),
(1054, '20050008', 'M. Nur Yasin', 5, 'TBSM', '2020/2021 GANJIL', 'M.NurYasin@gmail.com', 'Banjarbaru', '8,498E+11', 'nofoto.png', 'Aktif'),
(1055, '20050009', 'M. Rizki', 5, 'TBSM', '2020/2021 GANJIL', 'M.Rizki@gmail.com', 'Banjarbaru', '8,86407E+11', 'nofoto.png', 'Aktif'),
(1056, '20050010', 'Muhammad Jalalludin Ibrahim', 5, 'TBSM', '2020/2021 GANJIL', 'MuhammadJalalludinIbrahim@gmail.com', 'Banjarbaru', '8,56805E+11', 'nofoto.png', 'Aktif'),
(1057, '20050011', 'Rifki Fadillah', 5, 'TBSM', '2020/2021 GANJIL', 'RifkiFadillah@gmail.com', 'Banjarbaru', '83685759806', 'nofoto.png', 'Aktif'),
(1058, '20050012', 'Tomi Maulana', 5, 'TBSM', '2020/2021 GANJIL', 'TomiMaulana@gmail.com', 'Banjarbaru', '8,18949E+11', 'nofoto.png', 'Alumni'),
(1059, '20050013', 'Wahid Khoirul Hanafi', 5, 'TBSM', '2020/2021 GANJIL', 'WahidKhoirulHanafi@gmail.com', 'Banjarbaru', '8,74695E+11', 'nofoto.png', 'Alumni'),
(1060, '20050014', 'Widiyanto', 5, 'TBSM', '2020/2021 GANJIL', 'Widiyanto@gmail.com', 'Banjarbaru', '8,37453E+11', 'nofoto.png', 'Alumni'),
(1061, '20050015', 'Muhammad Rohul Anam', 5, 'TBSM', '2020/2021 GANJIL', 'MuhammadRohulAnam@gmail.com', 'Banjarbaru', '8,95799E+11', 'nofoto.png', 'Alumni'),
(1062, '20050016', 'Ahmad Yosep', 5, 'TBSM', '2020/2021 GANJIL', 'AhmadYosep@gmail.com', 'Banjarbaru', '8,80864E+11', 'nofoto.png', 'Alumni'),
(1065, 'NIS', 'nama_siswa', 0, 'jurusan', 'tahunajaran', 'email', 'alamat_siswa', 'notelp_siswa', 'pasfoto', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk`
--

CREATE TABLE `sk` (
  `id_skguru` int(11) NOT NULL,
  `nosk` varchar(50) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `NIP` varchar(50) NOT NULL,
  `nama_guru` varchar(75) NOT NULL,
  `status_guru` enum('Tetap','Honor') NOT NULL,
  `tahunajaran` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `mapel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sk`
--

INSERT INTO `sk` (`id_skguru`, `nosk`, `id_guru`, `NIP`, `nama_guru`, `status_guru`, `tahunajaran`, `tanggal`, `mapel`) VALUES
(67, '421.2/67/SK-GAMA/SMK/2023', 67, '112233', 'MAIMUNAH,S.Pd.I', 'Tetap', '2023/2024 GANJIL', '16-07-2023', 'PABPISXTBSM'),
(68, '421.2/67/SK-GAMA/SMK/2023', 67, '112233', 'MAIMUNAH,S.Pd.I', 'Tetap', '2023/2024 GANJIL', '16-07-2023', 'BTAISXTBSM'),
(69, '421.2/67/SK-GAMA/SMK/2023', 67, '112233', 'MAIMUNAH,S.Pd.I', 'Tetap', '2023/2024 GANJIL', '16-07-2023', 'PABPISXMM'),
(70, '421.2/67/SK-GAMA/SMK/2023', 67, '112233', 'MAIMUNAH,S.Pd.I', 'Tetap', '2023/2024 GANJIL', '16-07-2023', 'BTAISXMM'),
(71, '421.2/67/SK-GAMA/SMK/2023', 67, '112233', 'MAIMUNAH,S.Pd.I', 'Tetap', '2023/2024 GENAP', '16-07-2023', 'PABPISXMM'),
(72, '421.2/67/SK-GAMA/SMK/2023', 67, '112233', 'MAIMUNAH,S.Pd.I', 'Tetap', '2023/2024 GENAP', '16-07-2023', 'BTAISXMM'),
(86, '421.2/69/SK-GAMA/SMK/2023', 69, '1122334455', 'IKRIMA SHALEHA, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BINDOXOTKP'),
(87, '421.2/69/SK-GAMA/SMK/2023', 69, '1122334455', 'IKRIMA SHALEHA, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'SEJARAHXOTKP'),
(88, '421.2/69/SK-GAMA/SMK/2023', 69, '1122334455', 'IKRIMA SHALEHA, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BINDOXTBSM'),
(89, '421.2/69/SK-GAMA/SMK/2023', 69, '1122334455', 'IKRIMA SHALEHA, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'SEJARAHXTBSM'),
(90, '421.2/69/SK-GAMA/SMK/2023', 69, '1122334455', 'IKRIMA SHALEHA, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BINDOXMM'),
(91, '421.2/69/SK-GAMA/SMK/2023', 69, '1122334455', 'IKRIMA SHALEHA, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'SEJARAHXMM'),
(92, '421.2/69/SK-GAMA/SMK/2023', 69, '1122334455', 'IKRIMA SHALEHA, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BINDOXTKJ'),
(93, '421.2/69/SK-GAMA/SMK/2023', 69, '1122334455', 'IKRIMA SHALEHA, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'SEJARAHXTKJ'),
(94, '421.2/70/SK-GAMA/SMK/2023', 70, '123456', 'ULYA ALFIYANI, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'MTKXTBSM'),
(95, '421.2/70/SK-GAMA/SMK/2023', 70, '123456', 'ULYA ALFIYANI, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'MTKXMM'),
(96, '421.2/70/SK-GAMA/SMK/2023', 70, '123456', 'ULYA ALFIYANI, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'MTKXTKJ'),
(97, '421.2/71/SK-GAMA/SMK/2023', 71, '11', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BINGXOTKP'),
(98, '421.2/71/SK-GAMA/SMK/2023', 71, '11', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BASGXOTKP'),
(99, '421.2/71/SK-GAMA/SMK/2023', 71, '11', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BINGXTBSM'),
(100, '421.2/71/SK-GAMA/SMK/2023', 71, '11', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BASGXTBSM'),
(101, '421.2/71/SK-GAMA/SMK/2023', 71, '11', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BINGXMM'),
(102, '421.2/71/SK-GAMA/SMK/2023', 71, '11', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BASGXMM'),
(103, '421.2/71/SK-GAMA/SMK/2023', 71, '11', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BINGXTKJ'),
(104, '421.2/71/SK-GAMA/SMK/2023', 71, '11', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'BASGXTKJ'),
(105, '421.2/72/SK-GAMA/SMK/2023', 72, '0980', 'KHAIRUNESYA,S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'IPAXOTKP'),
(106, '421.2/72/SK-GAMA/SMK/2023', 72, '0980', 'KHAIRUNESYA,S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'ADMUMXOTKP'),
(107, '421.2/72/SK-GAMA/SMK/2023', 72, '0980', 'KHAIRUNESYA,S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'KIMIAXTBSM'),
(108, '421.2/72/SK-GAMA/SMK/2023', 72, '0980', 'KHAIRUNESYA,S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'FISIKAXTBSM'),
(109, '421.2/72/SK-GAMA/SMK/2023', 72, '0980', 'KHAIRUNESYA,S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'KIMIAXMM'),
(110, '421.2/72/SK-GAMA/SMK/2023', 72, '0980', 'KHAIRUNESYA,S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'FISIKAXMM'),
(111, '421.2/72/SK-GAMA/SMK/2023', 72, '0980', 'KHAIRUNESYA,S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'KIMIAXTKJ'),
(112, '421.2/72/SK-GAMA/SMK/2023', 72, '0980', 'KHAIRUNESYA,S.Pd', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'FISIKAXTKJ'),
(113, '421.2/73/SK-GAMA/SMK/2023', 73, '89321', 'HERLINDA YUNITA, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'PENJASXOTKP'),
(114, '421.2/73/SK-GAMA/SMK/2023', 73, '89321', 'HERLINDA YUNITA, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'PENJASXTBSM'),
(115, '421.2/73/SK-GAMA/SMK/2023', 73, '89321', 'HERLINDA YUNITA, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'PENJASXMM'),
(116, '421.2/73/SK-GAMA/SMK/2023', 73, '89321', 'HERLINDA YUNITA, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'PENJASXTKJ'),
(117, '421.2/74/SK-GAMA/SMK/2023', 74, '9782193', 'RIRI FIRMANSYAH, ST ', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'KOMJARDASXMM'),
(118, '421.2/74/SK-GAMA/SMK/2023', 74, '9782193', 'RIRI FIRMANSYAH, ST ', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'SISKOMXMM'),
(119, '421.2/74/SK-GAMA/SMK/2023', 74, '9782193', 'RIRI FIRMANSYAH, ST ', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'SISKOMXTKJ'),
(120, '421.2/75/SK-GAMA/SMK/2023', 75, '1273', 'YUSDA HELMANI,S.KOM', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'PEMDASXMM'),
(121, '421.2/75/SK-GAMA/SMK/2023', 75, '1273', 'YUSDA HELMANI,S.KOM', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'PEMDASXTKJ'),
(122, '421.2/76/SK-GAMA/SMK/2023', 76, '8930', 'M. NOOR ADITYA RAHMAN,S.KOM', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'KOMJARDASXTKJ'),
(123, '421.2/79/SK-GAMA/SMK/2023', 79, '498456', 'AHMAD BURHANUDDIN,S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'PABPISXOTKP'),
(124, '421.2/79/SK-GAMA/SMK/2023', 79, '498456', 'AHMAD BURHANUDDIN,S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'PABPISXTKJ'),
(125, '421.2/80/SK-GAMA/SMK/2023', 80, '58549815', 'RABIATUL ADAWIYAH, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'MTKXOTKP'),
(126, '421.2/80/SK-GAMA/SMK/2023', 80, '58549815', 'RABIATUL ADAWIYAH, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'TEKPERXOTKP'),
(127, '421.2/81/SK-GAMA/SMK/2023', 81, '515489', 'LIA LARASMITA, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'SBUDAYAXOTKP'),
(128, '421.2/81/SK-GAMA/SMK/2023', 81, '515489', 'LIA LARASMITA, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'SBUDAYAXTBSM'),
(129, '421.2/81/SK-GAMA/SMK/2023', 81, '515489', 'LIA LARASMITA, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'SBUDAYAXMM'),
(130, '421.2/81/SK-GAMA/SMK/2023', 81, '515489', 'LIA LARASMITA, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'SBUDAYAXTKJ'),
(131, '421.2/81/SK-GAMA/SMK/2023', 81, '515489', 'LIA LARASMITA, S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'DDGXTKJ'),
(132, '421.2/82/SK-GAMA/SMK/2023', 82, '2211', 'Riady Dimas Saputra', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'SIMKOMDIGXOTKP'),
(133, '421.2/82/SK-GAMA/SMK/2023', 82, '2211', 'Riady Dimas Saputra', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'SIMKOMDIGXTBSM'),
(134, '421.2/82/SK-GAMA/SMK/2023', 82, '2211', 'Riady Dimas Saputra', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'DDGXMM'),
(135, '421.2/82/SK-GAMA/SMK/2023', 82, '2211', 'Riady Dimas Saputra', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'SIMKOMDIGXMM'),
(136, '421.2/82/SK-GAMA/SMK/2023', 82, '2211', 'Riady Dimas Saputra', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'SIMKOMDIGXTKJ'),
(137, '421.2/85/SK-GAMA/SMK/2023', 85, '', 'Annisa', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'EKONOMIBISXOTKP'),
(138, '421.2/85/SK-GAMA/SMK/2023', 85, '', 'Annisa', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'KORESXOTKP'),
(139, '421.2/85/SK-GAMA/SMK/2023', 85, '', 'Annisa', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'KEARSIPXOTKP'),
(140, '421.2/79/SK-GAMA/SMK/2023', 79, '498456', 'AHMAD BURHANUDDIN,S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'BTAISXOTKP'),
(141, '421.2/79/SK-GAMA/SMK/2023', 79, '498456', 'AHMAD BURHANUDDIN,S.Pd', 'Honor', '2023/2024 GANJIL', '08-08-2023', 'BTAISXTKJ'),
(142, '421.2/83/SK-GAMA/SMK/2023', 83, '8465', 'Abdul rahman', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'PKNXOTKP'),
(143, '421.2/83/SK-GAMA/SMK/2023', 83, '8465', 'Abdul rahman', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'PKNXTBSM'),
(144, '421.2/83/SK-GAMA/SMK/2023', 83, '8465', 'Abdul rahman', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'PKNXMM'),
(145, '421.2/83/SK-GAMA/SMK/2023', 83, '8465', 'Abdul rahman', 'Tetap', '2023/2024 GANJIL', '08-08-2023', 'PKNXTKJ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagihan`
--

CREATE TABLE `tagihan` (
  `id_tagihan` int(11) NOT NULL,
  `NIS` varchar(50) NOT NULL,
  `jenispem` varchar(50) NOT NULL,
  `jatuhtempo` date DEFAULT NULL,
  `pembayaran` varchar(50) NOT NULL,
  `nominal` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `bayar` varchar(50) DEFAULT NULL,
  `sisa_bayar` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal_bayar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tagihan`
--

INSERT INTO `tagihan` (`id_tagihan`, `NIS`, `jenispem`, `jatuhtempo`, `pembayaran`, `nominal`, `Semester`, `bayar`, `sisa_bayar`, `status`, `tanggal_bayar`) VALUES
(6192, '22010001', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '20-07-2023'),
(6193, '22010001', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '23-07-2023'),
(6194, '22010001', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Cicilan', '05-08-2023'),
(6195, '22010001', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6196, '22010001', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '05-08-2023'),
(6197, '22010001', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '04-08-2023'),
(6198, '22010002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '04-08-2023'),
(6199, '22010002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6200, '22010002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6201, '22010002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6202, '22010002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6203, '22010002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '150000', '100000', 'Cicilan', '04-08-2023'),
(6204, '22010003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '04-08-2023'),
(6205, '22010003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '04-08-2023'),
(6206, '22010003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6207, '22010003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6208, '22010003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6209, '22010003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6210, '22010004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '04-08-2023'),
(6211, '22010004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '04-08-2023'),
(6212, '22010004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6213, '22010004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6214, '22010004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6215, '22010004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6216, '22010005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '04-08-2023'),
(6217, '22010005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '04-08-2023'),
(6218, '22010005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6219, '22010005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6220, '22010005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6221, '22010005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6222, '22010006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '150000', '100000', 'Cicilan', '04-08-2023'),
(6223, '22010006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6224, '22010006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6225, '22010006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6226, '22010006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6227, '22010006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6228, '22010007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Cicilan', '04-08-2023'),
(6229, '22010007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6230, '22010007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6231, '22010007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6232, '22010007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6233, '22010007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6234, '22010008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6235, '22010008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6236, '22010008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6237, '22010008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6238, '22010008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6239, '22010008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6240, '22010009', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Cicilan', '04-08-2023'),
(6241, '22010009', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6242, '22010009', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6243, '22010009', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6244, '22010009', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6245, '22010009', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6246, '22010010', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Cicilan', '04-08-2023'),
(6247, '22010010', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6248, '22010010', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6249, '22010010', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6250, '22010010', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6251, '22010010', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6252, '22010011', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '50000', '200000', 'Cicilan', '04-08-2023'),
(6253, '22010011', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6254, '22010011', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6255, '22010011', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6256, '22010011', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6257, '22010011', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6258, '22010012', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Cicilan', '04-08-2023'),
(6259, '22010012', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6260, '22010012', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6261, '22010012', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6262, '22010012', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6263, '22010012', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6264, '22010013', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Cicilan', '04-08-2023'),
(6265, '22010013', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Cicilan', '04-08-2023'),
(6266, '22010013', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6267, '22010013', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6268, '22010013', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6269, '22010013', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6270, '22010014', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Cicilan', '04-08-2023'),
(6271, '22010014', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '150000', '100000', 'Cicilan', '04-08-2023'),
(6272, '22010014', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6273, '22010014', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6274, '22010014', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6275, '22010014', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6276, '22010015', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '150000', '100000', 'Cicilan', '04-08-2023'),
(6277, '22010015', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6278, '22010015', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6279, '22010015', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6280, '22010015', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6281, '22010015', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6282, '22010016', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '100000', '150000', 'Cicilan', '04-08-2023'),
(6283, '22010016', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '150000', '100000', 'Cicilan', '04-08-2023'),
(6284, '22010016', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6285, '22010016', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6286, '22010016', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6287, '22010016', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6288, '22010017', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6289, '22010017', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6290, '22010017', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6291, '22010017', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6292, '22010017', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6293, '22010017', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6294, '22010018', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6295, '22010018', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6296, '22010018', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6297, '22010018', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6298, '22010018', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6299, '22010018', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6300, '22010019', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6301, '22010019', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6302, '22010019', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6303, '22010019', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6304, '22010019', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6305, '22010019', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6306, '22010020', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6307, '22010020', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6308, '22010020', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6309, '22010020', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6310, '22010020', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6311, '22010020', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6312, '22010021', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6313, '22010021', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6314, '22010021', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6315, '22010021', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6316, '22010021', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6317, '22010021', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6318, '22020001', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6319, '22020001', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6320, '22020001', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6321, '22020001', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6322, '22020001', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6323, '22020001', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6324, '22020002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6325, '22020002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6326, '22020002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6327, '22020002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6328, '22020002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6329, '22020002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6330, '22020003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '23-07-2023'),
(6331, '22020003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '250000', '0', 'LUNAS', '23-07-2023'),
(6332, '22020003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '200000', '50000', 'Cicilan', '23-07-2023'),
(6333, '22020003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6334, '22020003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6335, '22020003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6336, '22020004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6337, '22020004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6338, '22020004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6339, '22020004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6340, '22020004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6341, '22020004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6342, '22020005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6343, '22020005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6344, '22020005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6345, '22020005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6346, '22020005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6347, '22020005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6348, '22020006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6349, '22020006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6350, '22020006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6351, '22020006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6352, '22020006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6353, '22020006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6354, '22020007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6355, '22020007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6356, '22020007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6357, '22020007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6358, '22020007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6359, '22020007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6360, '22020008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6361, '22020008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6362, '22020008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6363, '22020008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6364, '22020008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6365, '22020008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6366, '22020009', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6367, '22020009', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6368, '22020009', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6369, '22020009', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6370, '22020009', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6371, '22020009', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6372, '22020011', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6373, '22020011', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6374, '22020011', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6375, '22020011', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6376, '22020011', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6377, '22020011', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6378, '22020012', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6379, '22020012', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6380, '22020012', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6381, '22020012', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6382, '22020012', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6383, '22020012', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6384, '22020013', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6385, '22020013', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6386, '22020013', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6387, '22020013', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6388, '22020013', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6389, '22020013', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6390, '22020014', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6391, '22020014', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6392, '22020014', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6393, '22020014', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6394, '22020014', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6395, '22020014', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6396, '22020016', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6397, '22020016', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6398, '22020016', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6399, '22020016', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6400, '22020016', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6401, '22020016', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6402, '22020017', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6403, '22020017', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6404, '22020017', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6405, '22020017', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6406, '22020017', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6407, '22020017', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6408, '22020018', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6409, '22020018', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6410, '22020018', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6411, '22020018', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6412, '22020018', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6413, '22020018', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6414, '22020019', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6415, '22020019', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6416, '22020019', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6417, '22020019', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6418, '22020019', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6419, '22020019', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6420, '22020020', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6421, '22020020', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6422, '22020020', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6423, '22020020', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6424, '22020020', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6425, '22020020', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6426, '22020021', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6427, '22020021', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6428, '22020021', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6429, '22020021', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6430, '22020021', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6431, '22020021', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6432, '22020022', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6433, '22020022', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6434, '22020022', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6435, '22020022', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6436, '22020022', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6437, '22020022', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6438, '22020023', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6439, '22020023', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6440, '22020023', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6441, '22020023', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6442, '22020023', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6443, '22020023', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6444, '22020024', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6445, '22020024', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6446, '22020024', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6447, '22020024', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6448, '22020024', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6449, '22020024', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6450, '22020025', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6451, '22020025', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6452, '22020025', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6453, '22020025', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6454, '22020025', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6455, '22020025', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6456, '22020026', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6457, '22020026', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6458, '22020026', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6459, '22020026', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6460, '22020026', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6461, '22020026', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6462, '22020027', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6463, '22020027', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6464, '22020027', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6465, '22020027', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6466, '22020027', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6467, '22020027', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6468, '22020028', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6469, '22020028', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6470, '22020028', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6471, '22020028', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6472, '22020028', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6473, '22020028', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6474, '22020029', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6475, '22020029', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6476, '22020029', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6477, '22020029', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6478, '22020029', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6479, '22020029', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6480, '22020030', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6481, '22020030', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6482, '22020030', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6483, '22020030', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6484, '22020030', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6485, '22020030', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6486, '22040001', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6487, '22040001', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6488, '22040001', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6489, '22040001', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6490, '22040001', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6491, '22040001', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6492, '22040002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6493, '22040002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6494, '22040002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6495, '22040002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6496, '22040002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6497, '22040002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6498, '22040003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6499, '22040003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6500, '22040003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6501, '22040003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6502, '22040003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6503, '22040003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6504, '22040004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6505, '22040004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6506, '22040004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6507, '22040004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6508, '22040004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6509, '22040004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6510, '22040005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6511, '22040005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6512, '22040005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6513, '22040005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6514, '22040005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6515, '22040005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6516, '22040006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6517, '22040006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6518, '22040006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6519, '22040006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6520, '22040006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6521, '22040006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6522, '22040007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6523, '22040007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6524, '22040007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6525, '22040007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6526, '22040007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6527, '22040007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6528, '22040008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6529, '22040008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL);
INSERT INTO `tagihan` (`id_tagihan`, `NIS`, `jenispem`, `jatuhtempo`, `pembayaran`, `nominal`, `Semester`, `bayar`, `sisa_bayar`, `status`, `tanggal_bayar`) VALUES
(6530, '22040008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6531, '22040008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6532, '22040008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6533, '22040008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6534, '22040009', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6535, '22040009', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6536, '22040009', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6537, '22040009', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6538, '22040009', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6539, '22040009', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6540, '22040010', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6541, '22040010', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6542, '22040010', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6543, '22040010', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6544, '22040010', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6545, '22040010', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6546, '22040012', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6547, '22040012', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6548, '22040012', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6549, '22040012', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6550, '22040012', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6551, '22040012', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6552, '22040013', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6553, '22040013', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6554, '22040013', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6555, '22040013', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6556, '22040013', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6557, '22040013', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6558, '22040014', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6559, '22040014', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6560, '22040014', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6561, '22040014', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6562, '22040014', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6563, '22040014', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6564, '22040015', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6565, '22040015', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6566, '22040015', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6567, '22040015', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6568, '22040015', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6569, '22040015', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6570, '22040016', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6571, '22040016', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6572, '22040016', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6573, '22040016', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6574, '22040016', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6575, '22040016', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6576, '22050001', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6577, '22050001', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6578, '22050001', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6579, '22050001', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6580, '22050001', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6581, '22050001', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6582, '22050004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6583, '22050004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6584, '22050004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6585, '22050004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6586, '22050004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6587, '22050004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6588, '22050005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6589, '22050005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6590, '22050005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6591, '22050005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6592, '22050005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6593, '22050005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6594, '22050006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6595, '22050006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6596, '22050006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6597, '22050006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6598, '22050006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6599, '22050006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6600, '22050007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6601, '22050007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6602, '22050007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6603, '22050007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6604, '22050007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6605, '22050007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6606, '22050008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6607, '22050008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6608, '22050008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6609, '22050008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6610, '22050008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6611, '22050008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6612, '21010001', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6613, '21010001', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6614, '21010001', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6615, '21010001', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6616, '21010001', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6617, '21010001', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6618, '21010002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6619, '21010002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6620, '21010002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6621, '21010002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6622, '21010002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6623, '21010002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6624, '21010003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6625, '21010003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6626, '21010003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6627, '21010003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6628, '21010003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6629, '21010003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6630, '21010004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6631, '21010004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6632, '21010004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6633, '21010004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6634, '21010004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6635, '21010004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6636, '21010005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6637, '21010005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6638, '21010005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6639, '21010005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6640, '21010005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6641, '21010005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6642, '21010006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6643, '21010006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6644, '21010006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6645, '21010006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6646, '21010006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6647, '21010006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6648, '21010007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6649, '21010007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6650, '21010007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6651, '21010007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6652, '21010007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6653, '21010007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6654, '21010008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6655, '21010008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6656, '21010008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6657, '21010008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6658, '21010008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6659, '21010008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6660, '21010009', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6661, '21010009', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6662, '21010009', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6663, '21010009', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6664, '21010009', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6665, '21010009', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6666, '21010010', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6667, '21010010', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6668, '21010010', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6669, '21010010', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6670, '21010010', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6671, '21010010', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6672, '21010011', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6673, '21010011', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6674, '21010011', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6675, '21010011', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6676, '21010011', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6677, '21010011', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6678, '21010012', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6679, '21010012', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6680, '21010012', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6681, '21010012', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6682, '21010012', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6683, '21010012', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6684, '21010013', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6685, '21010013', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6686, '21010013', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6687, '21010013', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6688, '21010013', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6689, '21010013', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6690, '21010014', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6691, '21010014', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6692, '21010014', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6693, '21010014', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6694, '21010014', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6695, '21010014', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6696, '21010015', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6697, '21010015', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6698, '21010015', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6699, '21010015', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6700, '21010015', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6701, '21010015', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6702, '21010016', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6703, '21010016', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6704, '21010016', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6705, '21010016', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6706, '21010016', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6707, '21010016', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6708, '21010017', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6709, '21010017', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6710, '21010017', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6711, '21010017', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6712, '21010017', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6713, '21010017', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6714, '21010018', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6715, '21010018', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6716, '21010018', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6717, '21010018', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6718, '21010018', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6719, '21010018', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6720, '21010019', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6721, '21010019', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6722, '21010019', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6723, '21010019', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6724, '21010019', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6725, '21010019', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6726, '21010020', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6727, '21010020', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6728, '21010020', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6729, '21010020', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6730, '21010020', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6731, '21010020', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6732, '21010021', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6733, '21010021', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6734, '21010021', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6735, '21010021', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6736, '21010021', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6737, '21010021', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6738, '21010022', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6739, '21010022', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6740, '21010022', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6741, '21010022', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6742, '21010022', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6743, '21010022', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6744, '21010023', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6745, '21010023', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6746, '21010023', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6747, '21010023', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6748, '21010023', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6749, '21010023', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6750, '21010025', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6751, '21010025', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6752, '21010025', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6753, '21010025', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6754, '21010025', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6755, '21010025', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6756, '21010026', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6757, '21010026', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6758, '21010026', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6759, '21010026', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6760, '21010026', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6761, '21010026', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6762, '21010027', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6763, '21010027', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6764, '21010027', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6765, '21010027', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6766, '21010027', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6767, '21010027', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6768, '21010028', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6769, '21010028', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6770, '21010028', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6771, '21010028', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6772, '21010028', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6773, '21010028', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6774, '21010029', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6775, '21010029', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6776, '21010029', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6777, '21010029', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6778, '21010029', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6779, '21010029', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6780, '21010030', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6781, '21010030', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6782, '21010030', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6783, '21010030', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6784, '21010030', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6785, '21010030', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6786, '21010032', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6787, '21010032', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6788, '21010032', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6789, '21010032', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6790, '21010032', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6791, '21010032', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6792, '21020002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6793, '21020002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6794, '21020002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6795, '21020002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6796, '21020002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6797, '21020002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6798, '21020003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6799, '21020003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6800, '21020003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6801, '21020003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6802, '21020003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6803, '21020003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6804, '21020004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6805, '21020004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6806, '21020004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6807, '21020004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6808, '21020004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6809, '21020004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6810, '21020005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6811, '21020005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6812, '21020005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6813, '21020005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6814, '21020005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6815, '21020005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6816, '21020006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6817, '21020006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6818, '21020006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6819, '21020006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6820, '21020006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6821, '21020006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6822, '21020007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6823, '21020007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6824, '21020007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6825, '21020007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6826, '21020007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6827, '21020007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6828, '21020008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6829, '21020008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6830, '21020008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6831, '21020008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6832, '21020008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6833, '21020008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6834, '21020009', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6835, '21020009', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6836, '21020009', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6837, '21020009', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6838, '21020009', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6839, '21020009', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6840, '21020010', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6841, '21020010', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6842, '21020010', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6843, '21020010', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6844, '21020010', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6845, '21020010', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6846, '21020011', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6847, '21020011', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6848, '21020011', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6849, '21020011', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6850, '21020011', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6851, '21020011', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6852, '21020012', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6853, '21020012', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6854, '21020012', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6855, '21020012', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6856, '21020012', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6857, '21020012', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6858, '21020013', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6859, '21020013', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6860, '21020013', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6861, '21020013', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6862, '21020013', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6863, '21020013', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6864, '21020014', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6865, '21020014', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6866, '21020014', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6867, '21020014', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL);
INSERT INTO `tagihan` (`id_tagihan`, `NIS`, `jenispem`, `jatuhtempo`, `pembayaran`, `nominal`, `Semester`, `bayar`, `sisa_bayar`, `status`, `tanggal_bayar`) VALUES
(6868, '21020014', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6869, '21020014', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6870, '21020015', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6871, '21020015', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6872, '21020015', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6873, '21020015', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6874, '21020015', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6875, '21020015', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6876, '21020016', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6877, '21020016', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6878, '21020016', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6879, '21020016', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6880, '21020016', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6881, '21020016', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6882, '21020018', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6883, '21020018', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6884, '21020018', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6885, '21020018', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6886, '21020018', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6887, '21020018', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6888, '21020019', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6889, '21020019', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6890, '21020019', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6891, '21020019', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6892, '21020019', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6893, '21020019', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6894, '21020020', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6895, '21020020', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6896, '21020020', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6897, '21020020', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6898, '21020020', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6899, '21020020', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6900, '21020021', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6901, '21020021', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6902, '21020021', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6903, '21020021', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6904, '21020021', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6905, '21020021', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6906, '21020022', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6907, '21020022', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6908, '21020022', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6909, '21020022', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6910, '21020022', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6911, '21020022', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6912, '21020023', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6913, '21020023', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6914, '21020023', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6915, '21020023', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6916, '21020023', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6917, '21020023', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6918, '21020024', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6919, '21020024', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6920, '21020024', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6921, '21020024', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6922, '21020024', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6923, '21020024', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6924, '21020025', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6925, '21020025', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6926, '21020025', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6927, '21020025', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6928, '21020025', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6929, '21020025', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6930, '21020026', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6931, '21020026', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6932, '21020026', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6933, '21020026', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6934, '21020026', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6935, '21020026', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6936, '21020027', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6937, '21020027', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6938, '21020027', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6939, '21020027', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6940, '21020027', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6941, '21020027', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6942, '21020028', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6943, '21020028', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6944, '21020028', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6945, '21020028', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6946, '21020028', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6947, '21020028', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6948, '21020029', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6949, '21020029', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6950, '21020029', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6951, '21020029', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6952, '21020029', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6953, '21020029', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6954, '21040001', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6955, '21040001', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6956, '21040001', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6957, '21040001', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6958, '21040001', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6959, '21040001', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6960, '21040002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6961, '21040002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6962, '21040002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6963, '21040002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6964, '21040002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6965, '21040002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6966, '21040003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6967, '21040003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6968, '21040003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6969, '21040003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6970, '21040003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6971, '21040003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6972, '21040004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6973, '21040004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6974, '21040004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6975, '21040004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6976, '21040004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6977, '21040004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6978, '21040005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6979, '21040005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6980, '21040005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6981, '21040005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6982, '21040005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6983, '21040005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6984, '21040006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6985, '21040006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6986, '21040006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6987, '21040006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6988, '21040006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6989, '21040006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6990, '21040007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6991, '21040007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6992, '21040007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6993, '21040007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6994, '21040007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6995, '21040007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6996, '21040008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6997, '21040008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6998, '21040008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(6999, '21040008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7000, '21040008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7001, '21040008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7002, '21040009', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7003, '21040009', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7004, '21040009', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7005, '21040009', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7006, '21040009', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7007, '21040009', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7008, '21050001', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7009, '21050001', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7010, '21050001', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7011, '21050001', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7012, '21050001', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7013, '21050001', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7014, '21050002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7015, '21050002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7016, '21050002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7017, '21050002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7018, '21050002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7019, '21050002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7020, '21050003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7021, '21050003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7022, '21050003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7023, '21050003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7024, '21050003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7025, '21050003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7026, '21050004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7027, '21050004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7028, '21050004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7029, '21050004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7030, '21050004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7031, '21050004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7032, '21050005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7033, '21050005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7034, '21050005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7035, '21050005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7036, '21050005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7037, '21050005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7038, '21050006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7039, '21050006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7040, '21050006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7041, '21050006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7042, '21050006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7043, '21050006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7044, '21050007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7045, '21050007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7046, '21050007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7047, '21050007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7048, '21050007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7049, '21050007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7050, '21050008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7051, '21050008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7052, '21050008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7053, '21050008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7054, '21050008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7055, '21050008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7056, '20010001', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7057, '20010001', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7058, '20010001', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7059, '20010001', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7060, '20010001', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7061, '20010001', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7062, '20010002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7063, '20010002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7064, '20010002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7065, '20010002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7066, '20010002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7067, '20010002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7068, '20010003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7069, '20010003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7070, '20010003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7071, '20010003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7072, '20010003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7073, '20010003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7074, '20010004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7075, '20010004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7076, '20010004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7077, '20010004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7078, '20010004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7079, '20010004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7080, '20010005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7081, '20010005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7082, '20010005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7083, '20010005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7084, '20010005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7085, '20010005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7086, '20010006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7087, '20010006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7088, '20010006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7089, '20010006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7090, '20010006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7091, '20010006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7092, '20010007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7093, '20010007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7094, '20010007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7095, '20010007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7096, '20010007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7097, '20010007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7098, '20010008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7099, '20010008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7100, '20010008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7101, '20010008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7102, '20010008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7103, '20010008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7104, '20010009', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7105, '20010009', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7106, '20010009', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7107, '20010009', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7108, '20010009', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7109, '20010009', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7110, '20010010', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7111, '20010010', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7112, '20010010', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7113, '20010010', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7114, '20010010', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7115, '20010010', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7116, '20010011', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7117, '20010011', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7118, '20010011', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7119, '20010011', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7120, '20010011', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7121, '20010011', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7122, '20010012', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7123, '20010012', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7124, '20010012', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7125, '20010012', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7126, '20010012', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7127, '20010012', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7128, '20010013', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7129, '20010013', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7130, '20010013', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7131, '20010013', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7132, '20010013', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7133, '20010013', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7134, '20010014', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7135, '20010014', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7136, '20010014', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7137, '20010014', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7138, '20010014', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7139, '20010014', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7140, '20010015', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7141, '20010015', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7142, '20010015', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7143, '20010015', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7144, '20010015', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7145, '20010015', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7146, '20010017', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7147, '20010017', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7148, '20010017', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7149, '20010017', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7150, '20010017', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7151, '20010017', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7152, '20010018', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7153, '20010018', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7154, '20010018', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7155, '20010018', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7156, '20010018', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7157, '20010018', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7158, '20010020', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7159, '20010020', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7160, '20010020', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7161, '20010020', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7162, '20010020', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7163, '20010020', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7164, '20010021', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7165, '20010021', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7166, '20010021', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7167, '20010021', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7168, '20010021', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7169, '20010021', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7170, '20010022', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7171, '20010022', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7172, '20010022', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7173, '20010022', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7174, '20010022', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7175, '20010022', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7176, '20010023', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7177, '20010023', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7178, '20010023', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7179, '20010023', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7180, '20010023', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7181, '20010023', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7182, '20010024', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7183, '20010024', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7184, '20010024', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7185, '20010024', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7186, '20010024', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7187, '20010024', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7188, '20010025', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7189, '20010025', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7190, '20010025', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7191, '20010025', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7192, '20010025', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7193, '20010025', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7194, '20010026', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7195, '20010026', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7196, '20010026', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7197, '20010026', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7198, '20010026', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7199, '20010026', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7200, '20010027', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7201, '20010027', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7202, '20010027', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7203, '20010027', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7204, '20010027', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7205, '20010027', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL);
INSERT INTO `tagihan` (`id_tagihan`, `NIS`, `jenispem`, `jatuhtempo`, `pembayaran`, `nominal`, `Semester`, `bayar`, `sisa_bayar`, `status`, `tanggal_bayar`) VALUES
(7206, '20010029', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7207, '20010029', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7208, '20010029', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7209, '20010029', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7210, '20010029', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7211, '20010029', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7212, '20010030', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7213, '20010030', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7214, '20010030', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7215, '20010030', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7216, '20010030', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7217, '20010030', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7218, '20010031', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7219, '20010031', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7220, '20010031', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7221, '20010031', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7222, '20010031', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7223, '20010031', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7224, '20010032', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7225, '20010032', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7226, '20010032', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7227, '20010032', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7228, '20010032', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7229, '20010032', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7230, '20010033', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7231, '20010033', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7232, '20010033', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7233, '20010033', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7234, '20010033', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7235, '20010033', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7236, '20010034', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7237, '20010034', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7238, '20010034', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7239, '20010034', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7240, '20010034', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7241, '20010034', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7242, '20010035', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7243, '20010035', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7244, '20010035', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7245, '20010035', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7246, '20010035', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7247, '20010035', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7248, '20010036', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7249, '20010036', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7250, '20010036', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7251, '20010036', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7252, '20010036', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7253, '20010036', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7254, '20020001', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7255, '20020001', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7256, '20020001', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7257, '20020001', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7258, '20020001', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7259, '20020001', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7260, '20020002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7261, '20020002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7262, '20020002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7263, '20020002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7264, '20020002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7265, '20020002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7266, '20020003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7267, '20020003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7268, '20020003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7269, '20020003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7270, '20020003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7271, '20020003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7272, '20020004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7273, '20020004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7274, '20020004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7275, '20020004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7276, '20020004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7277, '20020004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7278, '20020005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7279, '20020005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7280, '20020005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7281, '20020005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7282, '20020005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7283, '20020005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7284, '20020006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7285, '20020006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7286, '20020006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7287, '20020006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7288, '20020006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7289, '20020006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7290, '20020007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7291, '20020007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7292, '20020007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7293, '20020007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7294, '20020007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7295, '20020007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7296, '20020008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7297, '20020008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7298, '20020008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7299, '20020008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7300, '20020008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7301, '20020008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7302, '20020009', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7303, '20020009', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7304, '20020009', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7305, '20020009', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7306, '20020009', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7307, '20020009', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7308, '20020010', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7309, '20020010', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7310, '20020010', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7311, '20020010', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7312, '20020010', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7313, '20020010', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7314, '20020011', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7315, '20020011', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7316, '20020011', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7317, '20020011', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7318, '20020011', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7319, '20020011', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7320, '20020013', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7321, '20020013', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7322, '20020013', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7323, '20020013', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7324, '20020013', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7325, '20020013', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7326, '20020014', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7327, '20020014', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7328, '20020014', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7329, '20020014', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7330, '20020014', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7331, '20020014', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7332, '20020015', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7333, '20020015', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7334, '20020015', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7335, '20020015', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7336, '20020015', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7337, '20020015', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7338, '20020016', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7339, '20020016', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7340, '20020016', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7341, '20020016', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7342, '20020016', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7343, '20020016', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7344, '20020017', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7345, '20020017', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7346, '20020017', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7347, '20020017', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7348, '20020017', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7349, '20020017', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7350, '20020018', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7351, '20020018', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7352, '20020018', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7353, '20020018', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7354, '20020018', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7355, '20020018', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7356, '20020020', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7357, '20020020', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7358, '20020020', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7359, '20020020', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7360, '20020020', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7361, '20020020', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7362, '20020021', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7363, '20020021', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7364, '20020021', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7365, '20020021', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7366, '20020021', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7367, '20020021', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7368, '20020022', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7369, '20020022', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7370, '20020022', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7371, '20020022', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7372, '20020022', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7373, '20020022', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7374, '20020023', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7375, '20020023', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7376, '20020023', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7377, '20020023', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7378, '20020023', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7379, '20020023', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7380, '20020024', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7381, '20020024', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7382, '20020024', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7383, '20020024', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7384, '20020024', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7385, '20020024', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7386, '20020025', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7387, '20020025', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7388, '20020025', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7389, '20020025', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7390, '20020025', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7391, '20020025', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7392, '20020026', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7393, '20020026', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7394, '20020026', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7395, '20020026', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7396, '20020026', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7397, '20020026', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7398, '20020027', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7399, '20020027', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7400, '20020027', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7401, '20020027', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7402, '20020027', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7403, '20020027', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7404, '20020028', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7405, '20020028', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7406, '20020028', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7407, '20020028', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7408, '20020028', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7409, '20020028', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7410, '20020030', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7411, '20020030', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7412, '20020030', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7413, '20020030', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7414, '20020030', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7415, '20020030', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7416, '20020031', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7417, '20020031', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7418, '20020031', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7419, '20020031', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7420, '20020031', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7421, '20020031', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7422, '20020032', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7423, '20020032', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7424, '20020032', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7425, '20020032', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7426, '20020032', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7427, '20020032', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7428, '20020033', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7429, '20020033', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7430, '20020033', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7431, '20020033', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7432, '20020033', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7433, '20020033', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7434, '20020034', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7435, '20020034', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7436, '20020034', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7437, '20020034', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7438, '20020034', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7439, '20020034', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7440, '20020035', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7441, '20020035', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7442, '20020035', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7443, '20020035', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7444, '20020035', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7445, '20020035', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7446, '20020037', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7447, '20020037', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7448, '20020037', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7449, '20020037', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7450, '20020037', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7451, '20020037', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7452, '20020038', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7453, '20020038', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7454, '20020038', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7455, '20020038', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7456, '20020038', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7457, '20020038', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7458, '20020040', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7459, '20020040', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7460, '20020040', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7461, '20020040', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7462, '20020040', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7463, '20020040', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7464, '20020041', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7465, '20020041', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7466, '20020041', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7467, '20020041', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7468, '20020041', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7469, '20020041', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7470, '20020042', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7471, '20020042', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7472, '20020042', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7473, '20020042', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7474, '20020042', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7475, '20020042', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7476, '20020043', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7477, '20020043', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7478, '20020043', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7479, '20020043', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7480, '20020043', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7481, '20020043', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7482, '20040001', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7483, '20040001', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7484, '20040001', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7485, '20040001', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7486, '20040001', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7487, '20040001', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7488, '20040002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7489, '20040002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7490, '20040002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7491, '20040002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7492, '20040002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7493, '20040002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7494, '20040003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7495, '20040003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7496, '20040003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7497, '20040003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7498, '20040003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7499, '20040003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7500, '20040005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7501, '20040005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7502, '20040005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7503, '20040005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7504, '20040005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7505, '20040005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7506, '20040006', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7507, '20040006', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7508, '20040006', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7509, '20040006', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7510, '20040006', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7511, '20040006', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7512, '20040007', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7513, '20040007', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7514, '20040007', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7515, '20040007', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7516, '20040007', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7517, '20040007', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7518, '20040009', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7519, '20040009', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7520, '20040009', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7521, '20040009', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7522, '20040009', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7523, '20040009', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7524, '20040010', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7525, '20040010', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7526, '20040010', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7527, '20040010', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7528, '20040010', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7529, '20040010', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7530, '20040011', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7531, '20040011', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7532, '20040011', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7533, '20040011', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7534, '20040011', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7535, '20040011', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7536, '20040012', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7537, '20040012', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7538, '20040012', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7539, '20040012', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7540, '20040012', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7541, '20040012', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7542, '20040013', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7543, '20040013', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL);
INSERT INTO `tagihan` (`id_tagihan`, `NIS`, `jenispem`, `jatuhtempo`, `pembayaran`, `nominal`, `Semester`, `bayar`, `sisa_bayar`, `status`, `tanggal_bayar`) VALUES
(7544, '20040013', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7545, '20040013', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7546, '20040013', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7547, '20040013', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7548, '20040014', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7549, '20040014', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7550, '20040014', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7551, '20040014', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7552, '20040014', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7553, '20040014', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7554, '20040015', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7555, '20040015', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7556, '20040015', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7557, '20040015', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7558, '20040015', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7559, '20040015', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7560, '20040017', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7561, '20040017', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7562, '20040017', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7563, '20040017', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7564, '20040017', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7565, '20040017', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7566, '20040018', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7567, '20040018', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7568, '20040018', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7569, '20040018', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7570, '20040018', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7571, '20040018', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7572, '20040019', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7573, '20040019', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7574, '20040019', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7575, '20040019', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7576, '20040019', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7577, '20040019', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7578, '20040020', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7579, '20040020', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7580, '20040020', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7581, '20040020', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7582, '20040020', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7583, '20040020', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7584, '20040021', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7585, '20040021', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7586, '20040021', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7587, '20040021', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7588, '20040021', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7589, '20040021', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7590, '20040022', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7591, '20040022', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7592, '20040022', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7593, '20040022', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7594, '20040022', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7595, '20040022', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7596, '20040023', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7597, '20040023', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7598, '20040023', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7599, '20040023', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7600, '20040023', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7601, '20040023', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7602, '20040024', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7603, '20040024', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7604, '20040024', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7605, '20040024', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7606, '20040024', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7607, '20040024', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7608, '20040025', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7609, '20040025', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7610, '20040025', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7611, '20040025', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7612, '20040025', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7613, '20040025', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7614, '20040026', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7615, '20040026', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7616, '20040026', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7617, '20040026', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7618, '20040026', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7619, '20040026', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7620, '20040027', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7621, '20040027', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7622, '20040027', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7623, '20040027', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7624, '20040027', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7625, '20040027', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7626, '20040029', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7627, '20040029', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7628, '20040029', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7629, '20040029', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7630, '20040029', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7631, '20040029', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7632, '20040030', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7633, '20040030', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7634, '20040030', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7635, '20040030', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7636, '20040030', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7637, '20040030', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7638, '20040031', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7639, '20040031', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7640, '20040031', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7641, '20040031', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7642, '20040031', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7643, '20040031', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7644, '20050002', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7645, '20050002', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7646, '20050002', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7647, '20050002', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7648, '20050002', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7649, '20050002', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7650, '20050003', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7651, '20050003', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7652, '20050003', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7653, '20050003', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7654, '20050003', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7655, '20050003', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7656, '20050004', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7657, '20050004', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7658, '20050004', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7659, '20050004', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7660, '20050004', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7661, '20050004', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7662, '20050005', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7663, '20050005', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7664, '20050005', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7665, '20050005', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7666, '20050005', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7667, '20050005', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7668, '20050008', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7669, '20050008', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7670, '20050008', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7671, '20050008', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7672, '20050008', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7673, '20050008', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7674, '20050009', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7675, '20050009', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7676, '20050009', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7677, '20050009', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7678, '20050009', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7679, '20050009', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7680, '20050010', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7681, '20050010', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7682, '20050010', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7683, '20050010', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7684, '20050010', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7685, '20050010', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7686, '20050011', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7687, '20050011', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7688, '20050011', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7689, '20050011', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7690, '20050011', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7691, '20050011', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7692, '20050012', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7693, '20050012', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7694, '20050012', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7695, '20050012', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7696, '20050012', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7697, '20050012', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7698, '20050013', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7699, '20050013', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7700, '20050013', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7701, '20050013', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7702, '20050013', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7703, '20050013', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7704, '20050014', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7705, '20050014', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7706, '20050014', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7707, '20050014', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7708, '20050014', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7709, '20050014', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7710, '20050015', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7711, '20050015', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7712, '20050015', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7713, '20050015', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7714, '20050015', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7715, '20050015', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7716, '20050016', '2023/2024 GANJIL', '2023-07-20', 'SPP -  Juli  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7717, '20050016', '2023/2024 GANJIL', '2023-08-20', 'SPP -  Agustus  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7718, '20050016', '2023/2024 GANJIL', '2023-09-20', 'SPP -  September  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7719, '20050016', '2023/2024 GANJIL', '2023-10-20', 'SPP -  Oktober  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7720, '20050016', '2023/2024 GANJIL', '2023-11-20', 'SPP -  November  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7721, '20050016', '2023/2024 GANJIL', '2023-12-20', 'SPP -  Desember  2023', '250000', 'SEMESTER GANJIL', '0', '250000', 'Belum Terbayarkan', NULL),
(7792, '21010001', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7793, '21010002', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7794, '21010003', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7795, '21010004', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7796, '21010005', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7797, '21010006', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7798, '21010007', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7799, '21010008', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7800, '21010009', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7801, '21010010', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7802, '21010011', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7803, '21010012', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7804, '21010013', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7805, '21010014', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7806, '21010015', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7807, '21010016', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7808, '21010017', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7809, '21010018', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7810, '21010019', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7811, '21010020', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7812, '21010021', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7813, '21010022', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7814, '21010023', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7815, '21010025', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7816, '21010026', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7817, '21010027', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7818, '21010028', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7819, '21010029', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7820, '21010030', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7821, '21010032', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7822, '21020002', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7823, '21020003', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7824, '21020004', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7825, '21020005', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7826, '21020006', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7827, '21020007', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7828, '21020008', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7829, '21020009', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7830, '21020010', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7831, '21020011', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7832, '21020012', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7833, '21020013', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7834, '21020014', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7835, '21020015', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7836, '21020016', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7837, '21020018', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7838, '21020019', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7839, '21020020', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7840, '21020021', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7841, '21020022', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7842, '21020023', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7843, '21020024', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7844, '21020025', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7845, '21020026', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7846, '21020027', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7847, '21020028', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7848, '21020029', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7849, '21040001', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7850, '21040002', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7851, '21040003', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7852, '21040004', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7853, '21040005', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7854, '21040006', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7855, '21040007', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7856, '21040008', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7857, '21040009', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7858, '21050001', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7859, '21050002', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7860, '21050003', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7861, '21050004', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7862, '21050005', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7863, '21050006', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7864, '21050007', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7865, '21050008', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7866, '20010001', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7867, '20010002', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7868, '20010003', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7869, '20010004', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7870, '20010005', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7871, '20010006', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7872, '20010007', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7873, '20010008', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7874, '20010009', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7875, '20010010', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7876, '20010011', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7877, '20010012', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7878, '20010013', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7879, '20010014', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7880, '20010015', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7881, '20010017', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7882, '20010018', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7883, '20010020', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7884, '20010021', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7885, '20010022', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7886, '20010023', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7887, '20010024', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7888, '20010025', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7889, '20010026', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7890, '20010027', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7891, '20010029', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7892, '20010030', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7893, '20010031', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7894, '20010032', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7895, '20010033', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7896, '20010034', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7897, '20010035', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7898, '20010036', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7899, '20020001', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7900, '20020002', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7901, '20020003', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7902, '20020004', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7903, '20020005', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7904, '20020006', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7905, '20020007', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7906, '20020008', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7907, '20020009', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7908, '20020010', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7909, '20020011', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7910, '20020013', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7911, '20020014', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7912, '20020015', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7913, '20020016', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7914, '20020017', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7915, '20020018', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7916, '20020020', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7917, '20020021', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7918, '20020022', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7919, '20020023', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7920, '20020024', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7921, '20020025', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7922, '20020026', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7923, '20020027', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7924, '20020028', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7925, '20020030', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7926, '20020031', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7927, '20020032', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7928, '20020033', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL);
INSERT INTO `tagihan` (`id_tagihan`, `NIS`, `jenispem`, `jatuhtempo`, `pembayaran`, `nominal`, `Semester`, `bayar`, `sisa_bayar`, `status`, `tanggal_bayar`) VALUES
(7929, '20020034', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7930, '20020035', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7931, '20020037', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7932, '20020038', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7933, '20020040', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7934, '20020041', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7935, '20020042', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7936, '20020043', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7937, '20040001', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7938, '20040002', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7939, '20040003', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7940, '20040005', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7941, '20040006', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7942, '20040007', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7943, '20040009', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7944, '20040010', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7945, '20040011', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7946, '20040012', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7947, '20040013', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7948, '20040014', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7949, '20040015', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7950, '20040017', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7951, '20040018', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7952, '20040019', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7953, '20040020', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7954, '20040021', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7955, '20040022', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7956, '20040023', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7957, '20040024', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7958, '20040025', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7959, '20040026', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7960, '20040027', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7961, '20040029', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7962, '20040030', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7963, '20040031', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7964, '20050002', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7965, '20050003', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7966, '20050004', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7967, '20050005', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7968, '20050008', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7969, '20050009', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7970, '20050010', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7971, '20050011', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7972, '20050012', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7973, '20050013', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7974, '20050014', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7975, '20050015', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(7976, '20050016', '2023/2024 GANJIL SEMESTER GANJIL', '2024-01-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8000, '22010001', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '400000', '500000', 'Cicilan', '04-08-2023'),
(8001, '22010002', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '350000', '550000', 'Cicilan', '04-08-2023'),
(8002, '22010003', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '250000', '650000', 'Cicilan', '04-08-2023'),
(8003, '22010004', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '250000', '650000', 'Cicilan', '04-08-2023'),
(8004, '22010005', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '500000', '400000', 'Cicilan', '04-08-2023'),
(8005, '22010006', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '125000', '775000', 'Cicilan', '04-08-2023'),
(8006, '22010007', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '150000', '750000', 'Cicilan', '04-08-2023'),
(8007, '22010008', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '150000', '750000', 'Cicilan', '04-08-2023'),
(8008, '22010009', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '150000', '750000', 'Cicilan', '04-08-2023'),
(8009, '22010010', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '300000', '600000', 'Cicilan', '04-08-2023'),
(8010, '22010011', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '300000', '600000', 'Cicilan', '04-08-2023'),
(8011, '22010012', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '250000', '650000', 'Cicilan', '04-08-2023'),
(8012, '22010013', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '600000', '300000', 'Cicilan', '04-08-2023'),
(8013, '22010014', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '400000', '500000', 'Cicilan', '04-08-2023'),
(8014, '22010015', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '150000', '750000', 'Cicilan', '04-08-2023'),
(8015, '22010016', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8016, '22010017', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8017, '22010018', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8018, '22010019', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8019, '22010020', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8020, '22010021', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8021, '22020001', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8022, '22020002', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8023, '22020003', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8024, '22020004', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8025, '22020005', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8026, '22020006', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8027, '22020007', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8028, '22020008', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8029, '22020009', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8030, '22020011', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8031, '22020012', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8032, '22020013', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8033, '22020014', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8034, '22020016', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8035, '22020017', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8036, '22020018', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8037, '22020019', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8038, '22020020', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8039, '22020021', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8040, '22020022', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8041, '22020023', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8042, '22020024', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8043, '22020025', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8044, '22020026', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8045, '22020027', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8046, '22020028', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8047, '22020029', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8048, '22020030', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8049, '22040001', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8050, '22040002', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8051, '22040003', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8052, '22040004', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8053, '22040005', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8054, '22040006', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8055, '22040007', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8056, '22040008', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8057, '22040009', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8058, '22040010', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8059, '22040012', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8060, '22040013', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8061, '22040014', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8062, '22040015', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8063, '22040016', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8064, '22050001', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8065, '22050004', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8066, '22050005', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8067, '22050006', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8068, '22050007', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL),
(8069, '22050008', '2023/2024 GANJIL', '2023-11-20', 'REGISTRASI -  SEMESTER GANJIL', '900000', 'SEMESTER GANJIL', '0', '900000', 'Belum Terbayarkan', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun`
--

CREATE TABLE `tahun` (
  `id_tahun` int(11) NOT NULL,
  `tahun` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tahun`
--

INSERT INTO `tahun` (`id_tahun`, `tahun`) VALUES
(1, '2022'),
(2, '2020'),
(3, '2021'),
(4, '2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbjenispem`
--

CREATE TABLE `tbjenispem` (
  `id_jenispem` int(11) NOT NULL,
  `nama_jenispem` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbjenispem`
--

INSERT INTO `tbjenispem` (`id_jenispem`, `nama_jenispem`, `nominal`) VALUES
(1, 'SPP', '250000'),
(2, 'Registrasi', '900000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tahun_ajaran`
--

CREATE TABLE `tb_tahun_ajaran` (
  `id_tapel` int(11) NOT NULL,
  `tapel` varchar(20) NOT NULL,
  `statustapel` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_tahun_ajaran`
--

INSERT INTO `tb_tahun_ajaran` (`id_tapel`, `tapel`, `statustapel`) VALUES
(10, '2022/2023 GANJIL', 'Tidak Aktif'),
(11, '2022/2023 GENAP', 'Tidak Aktif'),
(12, '2023/2024 GANJIL', 'Aktif'),
(13, '2023/2024 GENAP', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `status` enum('petugasloket','operator','Guru','Kepsek','admsek','siswa','alumni','orangtua') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama_lengkap`, `status`) VALUES
(1, 'petugasloket', '3594d7e41da267c3c21246b53b705e82', 'petugas loket', 'petugasloket'),
(3, 'operator', '4b583376b2767b923c3e1da60d10de59', 'Operator', 'operator'),
(4, 'kepsek', '8561863b55faf85b9ad67c52b3b851ac', 'Kepala Sekolah', 'Kepsek'),
(5, 'adminsekolah', 'c5a9c89e63451dfcd9f6b6d07f4c9fd0', 'Admin Sekolah', 'admsek'),
(882, '22010001', 'd7b8631ff0b03d875376440a43eea3d6', 'Aditya Pratama', 'siswa'),
(883, '22010002', '90af25a229bc7bd38d70b1458db70768', 'Afandi', 'siswa'),
(884, '22010003', '7be4bd80c027a74d461fd290e6f85fc0', 'Auliya Putri Ramadhani', 'siswa'),
(885, '22010004', '16af948681d6e08d1da0992ee7c523fb', 'Bakti Ahmad Satyawiguna', 'siswa'),
(886, '22010005', 'f93b51b8b816206b0a520bfb1a5c792a', 'Christian Yabes Roring', 'siswa'),
(887, '22010006', '90d5238c6c7e65e615bea3b16233b1bf', 'Falha Najib', 'siswa'),
(888, '22010007', 'd81b7f64f06ad41a53ca8439c50a5bfe', 'Hazel Ariqah Shabrina', 'siswa'),
(889, '22010008', '3f8015e166c699c3e022c65094cc81a0', 'Jonathan Oktafriyanto', 'siswa'),
(890, '22010009', 'aee3802d6bf4e597c7d262b3a6d77992', 'M. Amril', 'siswa'),
(891, '22010010', 'ea9b78096f708265ec728420550a39b3', 'Mohamad Irvan Fitriansah', 'siswa'),
(892, '22010011', 'e6eca96b1464403d4add1b2ce9e3d15a', 'Muhammad Luckiyana Mawadda', 'siswa'),
(893, '22010012', '20ad4e4ea2cdaaf2f42f05e1255cf3a3', 'Muhammad Nor Fazri', 'siswa'),
(894, '22010013', 'da3df93d3b0f3b4f1989791234edfdd0', 'Muhammad Raihan', 'siswa'),
(895, '22010014', '3607ca4b0a31e3482974e9c888a915a8', 'Muhammad Rizky Hermawan', 'siswa'),
(896, '22010015', '477d67d0b2f8d6171a17b035148e7aba', 'Nabella Devana Alysia', 'siswa'),
(897, '22010016', 'a395d9082db9282555514548927abf44', 'Nanda Eko Prasetyo', 'siswa'),
(898, '22010017', 'aaeca4310561f915d22699da65784d05', 'Nur Arianty Nabella', 'siswa'),
(899, '22010018', 'a6d9e8ca54fd899ddcb04fcded8c1090', 'Rianaldi Mustafa', 'siswa'),
(900, '22010019', 'd267dd53407943e22bb0314e580f0860', 'Swandharu Suensa', 'siswa'),
(901, '22010020', '1227362cb182cf12a4d44f2397cd83b3', 'Tasya', 'siswa'),
(902, '22010021', '46dc90bd54529b5809f9c3f567f1cc80', 'Ati', 'siswa'),
(903, '22020001', '35b5b71893a77f6680a7f2ab4bef0fd9', 'ABDUL HALIM', 'siswa'),
(904, '22020002', '55ff4095543b8e9397edfc7718be37d7', 'ALYA AMANDA', 'siswa'),
(905, '22020003', '6295012d271d9d87a07df1866c7fc0cb', 'ALYA PUTRI ANZANI', 'siswa'),
(906, '22020004', '4ae46f08174a7b9e0d253f17d480bc48', 'ANA ANGGRAINI', 'siswa'),
(907, '22020005', '39c76fbb1dfd1925136ef8db2980091c', 'ANNISA NURALIFIA HAK', 'siswa'),
(908, '22020006', 'cfc489c6139e46376c626c240d4509ec', 'AZKIYAH FITRI RAMADHANI', 'siswa'),
(909, '22020007', 'c8c67b335ac43b3e11f3c7b21bfc4269', 'BAHRAN MADZI', 'siswa'),
(910, '22020008', '4fde17bbbee9cea015a4b402067314b0', 'BUNAYA ARIFTIA FAUZIAH', 'siswa'),
(911, '22020009', '8f922efb95de82dd369dd1a5ffe4029d', 'CHELSI PRATIWI', 'siswa'),
(912, '22020011', 'dbd83a72d71edf432c528d31a27d749c', 'HALIZA AZRA NAILAH', 'siswa'),
(913, '22020012', '2e0d3ec19f76bf93c1015c3de931f290', 'INNEZ JULIA NATASYA', 'siswa'),
(914, '22020013', '9eb5f5c9e22e022ec491feed2b287efe', 'INTAN AMELIA', 'siswa'),
(915, '22020014', 'c69a4f0247e6f447c181f1f70dbe87c2', 'KHADIJAH FITRIANI', 'siswa'),
(916, '22020016', 'b8c0d519cb16bfac075dc959ad6e3ece', 'MARCHA KENA SYAHRANI', 'siswa'),
(917, '22020017', '46c260208ee90865e9d8398debb3ac95', 'MARSHA PUTRIANA RIHWAN', 'siswa'),
(918, '22020018', '4515b6137ea9b533a29497e06820d7f4', 'MUHAMMAD FAQIH IHSAN', 'siswa'),
(919, '22020019', '90d360ffa0e20fd0a08b27fc467be35e', 'MUHAMMAD NOVAL SAPUTRA', 'siswa'),
(920, '22020020', '10f19f7e5b36696732735116e9fe1966', 'NABILA BAITPOVA SANDARA', 'siswa'),
(921, '22020021', '2b8e990d1652e800c5283f6380849401', 'NOVI FAHRIA ULFA', 'siswa'),
(922, '22020022', 'efc6ee1ae32eb882e38cb654ae62e27a', 'NUR AULIA', 'siswa'),
(923, '22020023', 'a7c52b8e2da9da5e5930b4a5c24c931d', 'NURKHOLISA', 'siswa'),
(924, '22020024', 'd8b71faaa1aa9fce740bf5c44feafc35', 'OKTAVIA RAMADANI', 'siswa'),
(925, '22020025', '33d81cd13cff226be370720070fc6f82', 'PERKASA RAHMAD DANI', 'siswa'),
(926, '22020026', '36d578dededb5e8b7fc8a8167b6c8901', 'PUTRI MARIZKA SALSABILA', 'siswa'),
(927, '22020027', '0952275d82bac8a0ad2823b041688e68', 'RENISA QATRUNNADA ALFAZERY', 'siswa'),
(928, '22020028', 'd4d5e8f88499772a1fd859c26495e8e7', 'SHELMIAYANTI', 'siswa'),
(929, '22020029', 'a8824efea3d7dfe43181616aa485db43', 'SITI FEBRI MAYA SARY', 'siswa'),
(930, '22020030', '7ce8f4228159528fe2892802ed0c4924', 'VIA ERIKA PUTRI', 'siswa'),
(931, '22040001', '9134c807be9b3f97e7f2770a26663e42', 'Ahmad Khaliqi', 'siswa'),
(932, '22040002', '843eb0c3c6225b0acefbca0ead59bade', 'Fitria Wulandari', 'siswa'),
(933, '22040003', '4971edcc411a1b3bc10136058453f3e7', 'Maulida Nur Rahmah', 'siswa'),
(934, '22040004', '1e3e8006968e1de533b029a267249ae1', 'Mawaddah', 'siswa'),
(935, '22040005', 'e53203b9d0fbd5920619cb60e86be176', 'Mohammad Farrell Oktavian', 'siswa'),
(936, '22040006', '8d9dcfcc536b5bfd9d1144d74b23ff84', 'Muhammad Dewa Rizky', 'siswa'),
(937, '22040007', '9c07dbfa80d80ddf92c509db7f5bb70d', 'Muhammad Ikhsan', 'siswa'),
(938, '22040008', '8b06faa3a13006278868b2cdb3265ee8', 'Nabila Huwaida', 'siswa'),
(939, '22040009', '29fb9aa5b85e63051b8d0de9be362365', 'Raffie Aditya Putra', 'siswa'),
(940, '22040010', '034898ddd5ffe9096a9ffb4afccb38f4', 'Rafi Rauf', 'siswa'),
(941, '22040012', 'e8f917c3a8a39794839ac88d8696924e', 'Rifqah Jannati Aulia', 'siswa'),
(942, '22040013', '8d08104f186b594859d5f5b3b481889e', 'Siti Maimunah', 'siswa'),
(943, '22040014', 'e617f6727906673e64a5fc97668ea909', 'Siti Munawarah', 'siswa'),
(944, '22040015', 'b76c6e97e77a62cc75e16c3276e75fb7', 'Fernando Egnacio Herman Wiyono', 'siswa'),
(945, '22040016', '30dd5e7d43b82bb53d606e3b8d54a753', 'Akhmad Ferdy Erlangga', 'siswa'),
(946, '22050001', '5aa0215dcf0383a41faca0d2310ba3bd', 'Abdul Latief', 'siswa'),
(947, '22050004', '00be14de44c683e040473473194e9dbf', 'Kausar Arum Jagad M.P', 'siswa'),
(948, '22050005', 'ecec7eaefbfc494746c0211fb95e5088', 'Madan', 'siswa'),
(949, '22050006', 'bf8ac74a8ec6494d571b4df92a717e96', 'Muhammad Rizqi Ramadhani', 'siswa'),
(950, '22050007', 'f7b84088f9d23e0a29d851e84b8afb52', 'Muhammad Zaini', 'siswa'),
(951, '22050008', '505c305f05a8bd85be95cc25a32df7a4', 'Yusuf Rhasya Eka Saputra', 'siswa'),
(952, 'guru13', '03961a997a1a72be2dfb2e826f89231e', 'Abdul rahman', 'Kepsek'),
(953, 'guru18', 'afb2a1d93361165cfbbf2c5c1e56dac2', 'AHMAD SANTOSO, ST', 'Guru'),
(954, 'guru07', '37ea8b6ea6d079d2bda0cac18883b990', 'Annisa', 'Guru'),
(955, 'guru16', '7b3110a1ca2af3d963f5b608f56abfee', 'BUDI SUSANTO, SH', 'Guru'),
(956, 'guru09', '5fe3d7fd9743b09fab4c97e24cffc6dd', 'YUSDA HELMANI,S.KOM', 'Guru'),
(957, 'guru05', '500a74b85a031a4714fd3626430bb89a', 'IKRIMA SHALEHA, S.Pd', 'Guru'),
(958, 'guru15', '5081c78992f3721f89ed3309f7976d81', 'Irfan noor asyikin', 'Guru'),
(959, 'guru08', '00c5d666926af64d698c3981904b4f84', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'Guru'),
(960, 'guru02', '326f26aeeb02f84913ec5bb274b864dc', 'KHAIRUNESYA,S.Pd', 'Guru'),
(961, 'guru17', 'ce76e845a47be650fd90cd14f9007b3a', 'M. NOOR ADITYA RAHMAN,S.KOM', 'Guru'),
(962, 'guru19', 'a33b3d52279dcf29b01ba5b868f60f58', 'ALFISAH ROSITA DEWI, S.Pd', 'Guru'),
(963, 'guru06', 'd8f15ed80c0f0770536086dca172a095', 'M. RIALDI PRATAMA, S.SOS.I', 'Guru'),
(964, 'guru01', '66712a5cbec98daf00a1dcf67773d2cd', 'MAIMUNAH,S.Pd.I', 'Guru'),
(965, 'guru20', 'b7852469cdb79d30224ae89b18c1298c', 'Nyoman suka dane', 'Guru'),
(966, 'guru10', '16a06f3be32883832a8a958e57e27750', 'RIRI FIRMANSYAH, ST ', 'Guru'),
(967, 'guru14', 'e1b57c22280e54964f44e91f55d369d5', 'Suwati', 'Guru'),
(968, 'guru04', 'c9f98c53280b9149fbedd2d729fc933d', 'ULYA ALFIYANI, S.Pd', 'Guru'),
(969, 'guru12', '148a08ab33a4cf030518d25a297b613d', 'HERLINDA YUNITA, S.Pd', 'Guru'),
(970, 'guru22', 'ecc45571bce596072ef15128e8fa2398', 'MARNO', 'Guru'),
(971, 'guru23', '58c2d0dcf8bc2bdd031c34c5e453b6ab', 'ARIFIN ', 'Guru'),
(972, 'guru24', 'ae586e0c99d2f0c5e3a9361c79c0492a', 'LIA LARASMITA, S.Pd', 'Guru'),
(973, 'guru25', 'aacf5f868154da7a50003d3532b05f7c', 'SOEPARMAN, AMD', 'Guru'),
(974, 'guru26', '2aad314267b82547b3ff994c1b87d1b9', 'RABIATUL ADAWIYAH, S.Pd', 'Guru'),
(975, 'guru27', 'c2c90f562e70cca23738bf2a2c44ab1d', 'AHMAD BURHANUDDIN,S.Pd', 'Guru'),
(976, 'guru28', 'f2d9af26b2ba0c50687f0142814610ce', 'Riady Dimas Saputra', 'Guru'),
(977, '220100010', '51d3929e16e3a10eef66eb0f1b7503bc', 'Aqila', 'siswa'),
(978, '22090912', 'd4a11f4fbb17be392e203746d19eb254', 'Muna', 'siswa'),
(979, '1923091', 'fbaba3dbbd4ca26d0c7f9a7cab217251', 'Rasyid', 'siswa'),
(980, '12310', 'fea18673fc57c343cb5cc2afe462b509', 'Rahma', 'siswa'),
(981, 'siswa1', '23f86cc2c670b465198a4da285e5e890', 'Siswa 1', 'siswa'),
(982, '081934588566', '61b34ada25c00199b786b8025c061b70', 'Riady Dimas Saputra', 'orangtua'),
(983, '081934588566', '831d0d010f6a95576448fdda3917a757', 'Riady Dimas Saputra', 'orangtua'),
(984, '22020001', 'd9b1d7db4cd6e70935368a1efb10e377', 'Riady', 'orangtua'),
(985, 'saputra', '3049a1f0f1c808cdaa4fbed0e01649b1', 'SAPUTRA', 'admsek'),
(986, '22010001', 'd0970714757783e6cf17b26fb8e2298f', 'Iyan', 'orangtua'),
(987, '21010001', '6d9507f4c91874bf878e98f5e29be3e6', 'Ade Marcella', 'siswa'),
(988, '21010002', 'c268f7265becc22d2103b90754c9ded4', 'Aditya Bagus Sadewa', 'siswa'),
(989, '21010003', 'fe1e817efef6291dc077e342b443e711', 'Ahmad Fauzi Fathurrahman', 'siswa'),
(990, '21010004', '3f6f78113e66f9c4720c56c626226b7b', 'Ahmad Husein', 'siswa'),
(991, '21010005', '6bde1a1472df6071a7c658d017a32491', 'Bagas Maulana Prasetyo', 'siswa'),
(992, '21010006', '13dc44a79eb5932dd485d22201191283', 'Bobi Sulistyo', 'siswa'),
(993, '21010007', '7b080aa5dd465790b245d2c7fd93ddc1', 'Idwan Riyadi', 'siswa'),
(994, '21010008', '27f0458b56a50c578f375ab2116c9089', 'Kenya Annisa Pratiwi', 'siswa'),
(995, '21010009', 'd9b2b216c42796a6e15d1dafd1df821a', 'Krisna Wellson Priambodo', 'siswa'),
(996, '21010010', '38119b25f23e6b40d81483f9e726f609', 'Maya Warsita', 'siswa'),
(997, '21010011', '7ad5e64795a575b6426a83816b9059ee', 'Meydina Zahra Supar', 'siswa'),
(998, '21010012', '93de788eae2ac16d8378b3cfa33bb64d', 'Moch. Aryo Sastra Prawira', 'siswa'),
(999, '21010013', '5c24eb52346caebc58308d84fc572e60', 'Muhammad Arya', 'siswa'),
(1000, '21010014', '33923c429fa6889312bfd2c0d1c86b75', 'Muhammad Ferdi Maulana Hidayat', 'siswa'),
(1001, '21010015', 'cf68166a86957dd97d24d151f3bc3a2b', 'Muhammad Harianto', 'siswa'),
(1002, '21010016', '74bfa88684f9b6eb7e5e31053182d2cd', 'Muhammad Junaidi Pratama', 'siswa'),
(1003, '21010017', '4aa22f18dd5821d92eed0a1685d57424', 'Muhammad Lintar Zulkausar', 'siswa'),
(1004, '21010018', 'f9f73ee2148e3d15668a4dcc002500e0', 'Ni Komang Widiatmika', 'siswa'),
(1005, '21010019', '6e10f47f5151b2d23f690151a6beb9b9', 'Nova Elisa', 'siswa'),
(1006, '21010020', '25a1b743df9d4a4b7ccee7848aeb802a', 'Pandji Suryo', 'siswa'),
(1007, '21010021', 'f4c1df9e46599d559e76bb0e58f64edf', 'Pandu Eka Neswandana', 'siswa'),
(1008, '21010022', 'b8177062e2ffb28c7ca37e6215100159', 'Radza Aqmal Maulana Fikrie', 'siswa'),
(1009, '21010023', 'c049a8d8124ca29eb87c83ca15da11e1', 'Rahmad Hatta Rajasa', 'siswa'),
(1010, '21010025', 'c547f275cd0e55b887971a106100bf66', 'Reno Putra Hidayatullah', 'siswa'),
(1011, '21010026', '7147ede23562f6548ae4f15be67df996', 'Rifky Raju Priyantama', 'siswa'),
(1012, '21010027', '761ccb27cd5a3778e1d704590b4d004a', 'Rio Darma Kusuma', 'siswa'),
(1013, '21010028', 'd64bf53217ad42e77f49117ff9460d3f', 'Risma Indah Laulia', 'siswa'),
(1014, '21010029', 'acdd9873e27e5c94a4dd0072cb4b7816', 'Ryan Ananta', 'siswa'),
(1015, '21010030', 'b3862693c4007c839e8a4f319fef3119', 'Shindy Danella', 'siswa'),
(1016, '21010032', '9bc7610291bc26b82336539450183fa7', 'Kausar Sapujagad M.P', 'siswa'),
(1017, '21020002', 'ba249951c8a3e34a60762d50e832393a', 'ALYA', 'siswa'),
(1018, '21020003', 'ae94a3acb4be3bc51b1a7ea6b2503d20', 'ANISA ARIYANTI', 'siswa'),
(1019, '21020004', 'c5aa1e5c75d9b81a3074f95278b7d439', 'ANNI NIKENSARI', 'siswa'),
(1020, '21020005', '5790c16d36a0e1208627d8c07742ec6e', 'ANNISA GALIH RISTAMI', 'siswa'),
(1021, '21020006', '2aa49f33157b65a4e3cbb6f02559fd63', 'DEBBY VENEZIA NURYANTO', 'siswa'),
(1022, '21020007', 'ab08c9d9811f9130120970dbd0177a58', 'DESSY ADELLIA MAHARANI', 'siswa'),
(1023, '21020008', '654584578f90d6b8a5bbefc8caa71d4c', 'DEVI HARYANTI', 'siswa'),
(1024, '21020009', 'a9fca8a9a86314562117cc5d1a851347', 'DINDA LESTARI', 'siswa'),
(1025, '21020010', '1c59ea39bee9c0509e0fcbd55362e62c', 'DWI ANJANI KHOIRUNNISA', 'siswa'),
(1026, '21020011', 'ae134e2b68e489817a09733e36dd2255', 'EKA SUSI AULIA SABRINA', 'siswa'),
(1027, '21020012', '46da7f6df2eb2efe4ebbe8284a460daf', 'EVI YOGIANTARI', 'siswa'),
(1028, '21020013', 'e60fbbfe43b89e7c724a7f52db331ece', 'FIKA YUNIAR', 'siswa'),
(1029, '21020014', '1a591ded78243414de738adff183fa67', 'HALIZA', 'siswa'),
(1030, '21020015', '7753e9de59bd2ce232a6fd6596374956', 'INDIRA JULIANA SINTA', 'siswa'),
(1031, '21020016', '8fc97dd738e27d315abce9cfe496b177', 'JESSICA NAOMI ADRIANA', 'siswa'),
(1032, '21020018', '71d2496bae43551468e3a8380bc360c2', 'NAZWA SALSABILA', 'siswa'),
(1033, '21020019', '7cdc81f0aca3f84861b4e8938d1718fb', 'NUR AFNAN', 'siswa'),
(1034, '21020020', 'e80e58b2072cf40592065d4185cba924', 'NURUL WASHILAH', 'siswa'),
(1035, '21020021', '0f4c44b5ae3551ce037131b7f507ecc2', 'PUTRI NUR AMELIA', 'siswa'),
(1036, '21020022', 'e5f274597003279e1a33deb417f96d50', 'QATRUNNADA NISRINA', 'siswa'),
(1037, '21020023', 'bfc81282ce44c8546799f1890bd62a51', 'RACHEL REGIA LISTY', 'siswa'),
(1038, '21020024', '366ea23c6249948743bf44f9fedf3821', 'SEFTIYANI SITUMORANG', 'siswa'),
(1039, '21020025', 'e76770ed8c2f066a79b48982d15865fb', 'SINTA DWI WULANDARI', 'siswa'),
(1040, '21020026', '3e0d6bcd2569c13b4ad88894a32f3b5b', 'SITI AMELIA RAHMAH', 'siswa'),
(1041, '21020027', '9390c0bf35ea1170685e92cca8fe8438', 'SRI ANDINI', 'siswa'),
(1042, '21020028', '1baa4a6cc4d76a0a853a28f4978357d8', 'TIRTANINGRUM LEVI AYU MAHARANI', 'siswa'),
(1043, '21020029', 'c04f577da4153d7976464e69ab7452ac', 'MOHAMMAD RAHMANDANI ILHAM', 'siswa'),
(1044, '21040001', 'cf26e8d51200a1aa1c2dba7ee82f277c', 'AGUS SHOLIKIN', 'siswa'),
(1045, '21040002', '275f36e6d2a00ee35c97585f1a2313ad', 'FEBRIAN RAHMAT FIRDAUS', 'siswa'),
(1046, '21040003', 'cf84080ff9af20cf24b72952d947ebdd', 'MUAMMAR BILLAH', 'siswa'),
(1047, '21040004', 'cc4c46263dffd1933dde8ed3f611cc14', 'MUHAMMAD ATHA AL-GHIFARI', 'siswa'),
(1048, '21040005', '88b31631117c8100cac3980810454ef8', 'MUHAMMAD NUR RAMADHAN', 'siswa'),
(1049, '21040006', 'fafbbadeb5dd8c11540f3098edc00361', 'MUHAMMAD SYAHRUL AS SHIDIQI', 'siswa'),
(1050, '21040007', 'b44db26eb8bc495b48cf71b9ab4e66fe', 'MUHAMMAD WASKIM', 'siswa'),
(1051, '21040008', '949e82656a1bf2512b194975fdec2b06', 'RIZKY AL AMIN', 'siswa'),
(1052, '21040009', 'be22f664a61fec22943f864252a5ff4a', 'VICKY TAN HANDAYONO', 'siswa'),
(1053, '21050001', 'e3e5bb424ac0f8b8b08ace40a41838ce', 'BAGUS MAULANA PRASETYO', 'siswa'),
(1054, '21050002', '706424a4e1670fe7f64b74fd65adb45d', 'DIAZ ANGGA PRASETYA', 'siswa'),
(1055, '21050003', 'c4fe14fd31db8b27a9975d5d09b93df8', 'M. ILHAM RESNAWAN', 'siswa'),
(1056, '21050004', '89115d67ff091ee7c8390907c6ab7a55', 'MOHAMMAD ZAINI PRATAMA', 'siswa'),
(1057, '21050005', 'f018928a11655a3cad653ca84b47b2bc', 'MUHAMMAD RIFKIE AZKIA', 'siswa'),
(1058, '21050006', '2083794b7d36455a10fa70ec21797b94', 'NASROLLAH', 'siswa'),
(1059, '21050007', 'cb5380a5335176beb10132e921f3b3c7', 'NOVRIAL RAMADHAN', 'siswa'),
(1060, '21050008', '59845b3f4e9dc4a1441004f9b787fff7', 'RIDHO ALFIAN', 'siswa'),
(1061, '20010001', 'd9c0821dbd39948b154da1ff0ac3d30b', 'Abdul Majid', 'alumni'),
(1062, '20010002', 'f451b71d28ce5cb07c6ba330bc238c93', 'Abiyu Yasar Sidik', 'alumni'),
(1063, '20010003', 'ab3dc0b3b5dd231cd6008efa24bf7d79', 'Ahmad Hafiz', 'alumni'),
(1064, '20010004', 'c27a390a24c6d2afc99922f4195c4617', 'Ahmad Jamhari', 'alumni'),
(1065, '20010005', '5e3f4f7c8022ac3495180fb620e3dc25', 'Ahmad Mujahidi', 'alumni'),
(1066, '20010006', '66eb1378d76086edc1dd22183f1c812c', 'Ahmad Zaidan Basri', 'alumni'),
(1067, '20010007', 'c9cc40ed2ecc59d7895c6dade4ffcd17', 'Akhmad Maulana', 'alumni'),
(1068, '20010008', '2fc223f53948ca58165172d35aaf8c93', 'Amelia Putri', 'alumni'),
(1069, '20010009', 'f33c8edd9089e94eea8de6e667b57981', 'Andhika Fayadh Lesmana', 'alumni'),
(1070, '20010010', 'cf6481a4b3dbe2972ddd7c3c1c171925', 'Anggi Pranata', 'alumni'),
(1071, '20010011', 'ccf246da07c0e19f948a20486619464a', 'Biba Ade Anggara', 'alumni'),
(1072, '20010012', '27d4a78b39835a5dcd6df1f5d59911d3', 'Dicky Saputra', 'alumni'),
(1073, '20010013', 'e5b13e852a3d317e269a6d2043b63d26', 'Dimas Anggarisa', 'alumni'),
(1074, '20010014', 'fca432b4e0c47f2ba66c29ecdf7e5f4e', 'Gilang Radit Tia', 'alumni'),
(1075, '20010015', 'ca11fe6380d9e93c2631f51504d4884a', 'Harni', 'alumni'),
(1076, '20010017', 'a92038fb94dd153588599c372c07e220', 'Ikhwan Taufik', 'alumni'),
(1077, '20010018', '6632e2e03905a29b031d4fd423cf3d82', 'Kevin Xavierz Attaillah', 'alumni'),
(1078, '20010020', '7ade77ccdf91dfebbcc278f4eebbca0d', 'M Maulana Al Farizi', 'alumni'),
(1079, '20010021', 'e86c81d55b4c1b5eaae959cfd3cd1c37', 'M Taufik Ridhoni', 'alumni'),
(1080, '20010022', '5f406edc0578899972864115a4a9812e', 'M. Deffry Arfandi', 'alumni'),
(1081, '20010023', '4f06ba70d3e443aeecaaffb35ad402da', 'Muarif Fadillah', 'alumni'),
(1082, '20010024', 'a3c92730a4cc6355a2e52be1a586e158', 'Muhamad Ihsan Aldiyanur', 'alumni'),
(1083, '20010025', '219d06a2fa5eec62bf3f6a549246d9b5', 'Muhammad Arifin Nur', 'alumni'),
(1084, '20010026', 'b3f64838f0b41a0755d6f1df76988c79', 'Muhammad Ichsan', 'alumni'),
(1085, '20010027', '1e65233e1e07d108a04edfc8387a0533', 'Muhammad Muhdiani', 'alumni'),
(1086, '20010029', '869fe90e996893dfc6a852704300deda', 'Muhammad Rizky', 'alumni'),
(1087, '20010030', 'ebf9f3fe2c649b011620cfd90e4ecc23', 'Muhammad Rizky Saputra', 'alumni'),
(1088, '20010031', '1cbdfbe5ca6e90d3058b44bd01c5e377', 'Muhammad Saputra', 'alumni'),
(1089, '20010032', '0d81e3697bbd251a5de6a4cba4145159', 'Robin Utomo Herdyanto', 'alumni'),
(1090, '20010033', '0b8d1545b060ff32f45cb57d7c486dd1', 'Sannanta', 'alumni'),
(1091, '20010034', 'dee30a5690e717b5e49321bec7f7cbed', 'Wanda Nurariyani Tamami', 'alumni'),
(1092, '20010035', 'faea9e993161ef1ea46fb5d6336477b5', 'Wina Miliyana', 'alumni'),
(1093, '20010036', '09dbaa1c04842b072f77af091a70efc0', 'Yogi Cahyadi', 'alumni'),
(1094, '20020001', 'd76afe5bc404f6daad87529aa39eba8a', 'Afifah Giana', 'alumni'),
(1095, '20020002', 'c882714fecf153d8ef90d5c6f3f7b584', 'Afna Rohitna', 'alumni'),
(1096, '20020003', '2338ab38e8029ba57c2b5bb705f062ed', 'Aisya Rahma', 'alumni'),
(1097, '20020004', 'e786305fde488bddd353e6bca75c0843', 'Anggi Herawati', 'alumni'),
(1098, '20020005', '9dc2ef0ac48aa93d941dc47d02a09c67', 'Chandra Nur Hanifan', 'alumni'),
(1099, '20020006', '04eba462353d0f339fe799d667973fdf', 'Della Rakhmawati', 'alumni'),
(1100, '20020007', 'dbb71b05bfb256c1339e30d64f0afd4d', 'Diana Mutiara Putri', 'alumni'),
(1101, '20020008', 'b3918989d3900b7ae2d70b1d157cb5df', 'Dicky Setiawan', 'alumni'),
(1102, '20020009', '5646986bbf41609c64306189736ab006', 'Erik Kusherawarsih', 'alumni'),
(1103, '20020010', 'b4eea9d7771cde2f05aee96ed2f32dad', 'Esti Urbaningrum', 'alumni'),
(1104, '20020011', '0711e907ad142f98d9c0a2225477dd1a', 'Febiana Zahra Ananta', 'alumni'),
(1105, '20020013', 'c9ec78bec3437b9244b088a15ca099cd', 'Hani Karmila', 'alumni'),
(1106, '20020014', '23966bb5d4eb01cd2c7344b79b33fb74', 'Hanifah', 'alumni'),
(1107, '20020015', '4a5409c8ecbe02459a2fdc0a0ec03ff2', 'Hendrawan Martin', 'alumni'),
(1108, '20020016', '7594642f12b5bf4c4615398724ed94ea', 'Holly Vidhama Ratu', 'alumni'),
(1109, '20020017', 'aee9be595acab3b38c4f881357b7ebb4', 'Ica Cahyani', 'alumni'),
(1110, '20020018', 'a072da9fb0bb93533d01746e831ae91d', 'Jahra', 'alumni'),
(1111, '20020020', '7b5216d399f34913ffe4b03101c9469c', 'Latifah Audina', 'alumni'),
(1112, '20020021', '5313d580443cc10dbc1ea6f229eee437', 'Lita Lestari', 'alumni'),
(1113, '20020022', 'f3ece87405449131c57893be08a62cec', 'Meliatun Annisa', 'alumni'),
(1114, '20020023', 'fad29f1a3958907704c3729c545a407a', 'Miftahul Jannah', 'alumni'),
(1115, '20020024', '64332343f6cfb15be4beb6fd5ba4fba4', 'Muh. Amin Fadli', 'alumni'),
(1116, '20020025', 'a837b0d5aa8c7f75d05a4dc559a5c220', 'Muhammad Iqbal Prakosa', 'alumni'),
(1117, '20020026', '766ef8f0f882f7af93748e75fb3266e6', 'Murniati', 'alumni'),
(1118, '20020027', '501fdcadc5586eb28496fcfb6163d3e8', 'Nadjwa Salsabila', 'alumni'),
(1119, '20020028', '127d9323bcf21a05f3f584b1d10510a4', 'Nur Ayu Lestari', 'alumni'),
(1120, '20020030', '261b9e352453e5319ab4cdd12516eb11', 'Puji Siwi Lestari', 'alumni'),
(1121, '20020031', 'bcb3abc1ea012b10cbba317f6ce8db6a', 'Putri Aliya Hasan', 'alumni'),
(1122, '20020032', '9fe78aa131cc481ec9c5d3529d5e882a', 'Putri Wulandari', 'alumni'),
(1123, '20020033', '20da47d4ded842101e3abd039d45bf32', 'Rendy Setiawan', 'alumni'),
(1124, '20020034', '5621e2f2331084612e3748233228cf94', 'Saifullah', 'alumni'),
(1125, '20020035', 'dc9c8d683963c4558b1e080c7c10ef6b', 'Silvia Mutiara BR Manullang', 'alumni'),
(1126, '20020037', 'da3e8645473ed6bc6f18fdfab15f70df', 'Sulaiman Hud Assalami', 'alumni'),
(1127, '20020038', '7dec9d7f228614d4fe413af50dabf246', 'Sultan Zainurrahman AR', 'alumni'),
(1128, '20020040', '92c5020ebfbd799debddee32ab88454e', 'Syeilla Deswita Aulia Syarif', 'alumni'),
(1129, '20020041', '1c3d22b81abde7e5dc0997f66ac16d63', 'Vanya Nurlatifah Frayitno', 'alumni'),
(1130, '20020042', 'cddc9526d595d3a811c5c63e3b65567f', 'Vinata Yulia Bekti', 'alumni'),
(1131, '20020043', '45cdb1dbb7302a21e96da91271919773', 'Dwi kartikasari', 'alumni'),
(1132, '20040001', 'a2b916b0d296d7657d87a8e51907a850', 'Agiska Pebianti', 'siswa'),
(1133, '20040002', 'f55017b9589cbc4237708a15593e80d0', 'Arlina Adha', 'siswa'),
(1134, '20040003', '3fc7b99531fd71a625dc395e7e52a979', 'Bagas Abdurrafi Jauhari', 'siswa'),
(1135, '20040005', 'c27bd9f41dee9eea6dd206c9f6c4c8af', 'Cheysia Feythi Niklas', 'siswa'),
(1136, '20040006', '94b8144ebdf86400b8c7f20069a7586d', 'Gigih Dwi Permana', 'siswa'),
(1137, '20040007', 'd16b7d7c26734b72a306b19b7936b2ac', 'Hizkia Eugenio Charles', 'siswa'),
(1138, '20040009', '4692075e12bc0cd1d73bceaa77fa7afb', 'Julita Parera', 'siswa'),
(1139, '20040010', 'ff77dcb1b3f6d8ac46e296342809cb26', 'M. Diva Primada Putra', 'siswa'),
(1140, '20040011', '56ecb84c321312253911b7c79dbfe0ca', 'Mahrida', 'siswa'),
(1141, '20040012', '929be3aa699b85427f0a61299ddd294a', 'Masrio Joko Putro', 'siswa'),
(1142, '20040013', '2afa612c1f6d36af2351c57563786e9d', 'Maulita Milah', 'siswa'),
(1143, '20040014', 'e22ae7f9a2320d203a7f3cc0fa9b8d13', 'Mufidah Aulia Zaliyanti', 'siswa'),
(1144, '20040015', '6c9bf654283ad9947c8be5f118fef63b', 'Muhamad July Wira Yuda', 'siswa'),
(1145, '20040017', '8db93202968d35f737a84b9f786d501e', 'Muhammad Aliffatul Amrian', 'siswa'),
(1146, '20040018', 'c8846166d6c0adc484b7f04b99cfd29a', 'Muhammad Bahaq Rosanjaya', 'siswa'),
(1147, '20040019', 'd07a4d5ea997d40c6a0ef691e3dcbd3f', 'Muhammad Fauzan Al Azhari', 'siswa'),
(1148, '20040020', 'e8e38478514669562dbac0479ba5c921', 'Muhammad Gafuri Rahman', 'siswa'),
(1149, '20040021', 'd2a7f4c193fa2bb1c4704c0f46c495e5', 'Muhammad Haeksal', 'siswa'),
(1150, '20040022', '7742f6e458a1a4a1a461cce2919c269c', 'Muhammad Imam Nawawi Sapoetra', 'siswa'),
(1151, '20040023', '63510d2450e02c56727689c0726759ac', 'Muhammad Riefly Rizqalmughni', 'siswa'),
(1152, '20040024', 'b94c10b9524f9e04c02d49306055d9d5', 'Muhammad Salim', 'siswa'),
(1153, '20040025', 'a7eed3b75b0fb4939b5c8b297ad3b20b', 'Mustika Murni', 'siswa'),
(1154, '20040026', '74f9094718e0c7851a161039068e1584', 'Nayla Maharani', 'siswa'),
(1155, '20040027', '08b08a2956fc5bcf48ae144755f73824', 'Putri Nornajati', 'siswa'),
(1156, '20040029', 'a2a45cce116d5fbf0e4b13b0777fd32a', 'Tria Agustina W', 'siswa'),
(1157, '20040030', 'ec52c2f4d56e76ae9206f2ff5128bf33', 'Sofian', 'siswa'),
(1158, '20040031', '4741810793126bd6c7fc482541f6c7a7', 'Cherly Anatasya Putri', 'siswa'),
(1159, '20050002', '44a16c82b4a7fbe4aeeadc88302ef336', 'Ahmad Karim', 'siswa'),
(1160, '20050003', '429294c8db102e58b5f45b2180789b0c', 'Andrian Suprianto', 'siswa'),
(1161, '20050004', 'd5785d6725856938bb42779ab2ca1a7c', 'Ari Prasetiawan', 'siswa'),
(1162, '20050005', 'f23d281dd09c55765bf94c20e2675524', 'Badaruddin', 'siswa'),
(1163, '20050008', 'f50e8a6b7c00dbb8e384278d5343fe03', 'M. Nur Yasin', 'siswa'),
(1164, '20050009', 'a23306074f7512838919f5db4b3b208b', 'M. Rizki', 'siswa'),
(1165, '20050010', '347c6325d06b298b595382384a83b64e', 'Muhammad Jalalludin Ibrahim', 'siswa'),
(1166, '20050011', '2e5d7c969f3253e40b2acd3b1ca625db', 'Rifki Fadillah', 'siswa'),
(1167, '20050012', '2e197e9ec786248b801ac1fd0c4f8ecd', 'Tomi Maulana', 'alumni'),
(1168, '20050013', '95c1f63767cee513610192cb9b650824', 'Wahid Khoirul Hanafi', 'alumni'),
(1169, '20050014', '9dd0748590f1d83e32921a46b255e84a', 'Widiyanto', 'alumni'),
(1170, '20050015', 'b091541b6aa03f5c1d879e6004377857', 'Muhammad Rohul Anam', 'alumni'),
(1171, '20050016', 'a889dabcfe9102d158f6174d3fb64669', 'Ahmad Yosep', 'alumni'),
(1172, '22010001', '19d3f295895c6dd289e960b70ab34719', 'Muhammad karyono', 'orangtua'),
(1173, '22010002', 'a6a750e5f6b275f3a3c78491ccec2f66', 'Suparmi', 'orangtua'),
(1174, '22010003', 'c8b0eedb72f8a2e632f008b19487f64e', 'Bapak Saryoto', 'orangtua'),
(1175, '22010004', '5747105752727604e2e66e19c7756e03', 'Goodwill Zubir, Drs. H.', 'orangtua'),
(1176, '22010005', 'e374528d35b54b80d68622f00c12ec11', 'Zuraidah', 'orangtua'),
(1177, '22010006', '124fc48b55c181ddc75e060b524a907f', 'Suparti', 'orangtua'),
(1178, '22010007', '690165421e37a58633421e118dbb55b7', 'Barkah Abdul Jalil, MA, Dr. Hj.', 'orangtua'),
(1179, '22010008', '87dd266b8f093b1b19e8bc201882bc3e', 'Lukas', 'orangtua'),
(1180, '22010009', 'e2c3a15fea206674e2e0f2bbe100f1fd', 'Bobby Herwibowo.,Lc., H', 'orangtua'),
(1181, '22010010', '35df6ba2f50b383a9356f8216a1f0189', 'Sunarti', 'orangtua'),
(1182, '22010011', 'eb3bfb726cbf89c4180780bcfe51d359', 'Renny anita sari', 'orangtua'),
(1183, '22010012', '5ce328c4ea19c0ab0fb26c0928eeb8bc', 'Bakhari Sail At Tahiri, KH, Lc.MA', 'orangtua'),
(1184, '22010013', '2097b0f9b633247a9981e9fd841f7db9', 'Bambang Irawan, DR. MA', 'orangtua'),
(1185, '22010014', 'c2fe86f50132992e57f5f3bade78b8ae', 'M Zaini Usman', 'orangtua'),
(1186, '22010015', 'ac6daf77de667943a67a46d2e2ca1d8c', 'Habib Ahmad Al Kaff, Dr.', 'orangtua'),
(1187, '22010016', '71cca880875332ee3b5034059afd12f3', 'Suryaningsih', 'orangtua'),
(1188, '22010017', 'aed5fdee80e8e06b5cd2b48703f7a1f1', 'Rika Ratmawaty', 'orangtua'),
(1189, '22010018', '411281b98609241bed031a53d4fc102f', 'Bahrian', 'orangtua'),
(1190, '22010019', 'ee5ae819e687469ae8212ab186cb80cf', 'Habib Ahmad bin Novel bin Jindan', 'orangtua'),
(1191, '22010020', 'cdcb7537ba5641e7530c037c8d6757e8', 'Habib Alwi bin Yahya', 'orangtua'),
(1192, '22020001', 'ebaf43dd3c4ad1d72b2201c2077eefb9', 'Habib Jindan bin Novel bin Salim', 'orangtua'),
(1193, '22020002', '39a070749e2ef2ee9d632ae13d8761b6', 'Habib Lutfi bin Yahya, KH', 'orangtua'),
(1194, '22020003', '9b5ba2dea5519771baeb68bcb8697ac2', 'Habib Nabil Al Musawa', 'orangtua'),
(1195, '22020004', '2f26a905d43c6b05dd0d9f65516c2674', 'ainun', 'orangtua'),
(1196, '22020005', '573ff1f4890a1dc71de7c40f030e082b', 'Fathurrahman Djamil, Prof.Dr.H. MA.', 'orangtua'),
(1197, '22020006', 'c2ab0f77064c9fb0ca87cd43e32835a4', 'Fikri Haikal Zainuddin, KH', 'orangtua'),
(1198, '22020007', '036163ad9fef208d16e049b256147ad5', 'Muhammad Riyadi', 'orangtua'),
(1199, '22020008', '4b0155b70acb6191f695590cfde0c4b2', 'IIN INTARSIH', 'orangtua'),
(1200, '22020009', '2d700789cb09052ca3f3d86b5dfb0b0d', 'Darwis Hude, MA., Prof. Dr. H.', 'orangtua'),
(1201, '22020011', 'd50485df0bffaec3f93e729b892d0c1e', 'Dedeh Rosidah, Hj.', 'orangtua'),
(1202, '22020012', 'c4991e9118f36c530bb01dafd3ec365d', 'Ernawati', 'orangtua'),
(1203, '22020013', '379bd05ed40c6445f3325922085296c9', 'Siti mariam', 'orangtua'),
(1204, '22020014', '2975a4c811a04c547733a771732314aa', 'Didin Hafidhuddin, Prof.Dr.KH, MSc.', 'orangtua'),
(1205, '22020016', '89b0d7a4458c1fe969bcdd7d4bc3b471', 'mashadi', 'orangtua'),
(1206, '22020017', '2f50ec6b5b53e4c319a402ec6c7429aa', 'Didin Hafidhuddin, Prof.Dr.KH, MSc.', 'orangtua'),
(1207, '22020018', '5dd1dc4812f878ce6f8853eb44595b6c', 'Emha Ainun Najib, KH', 'orangtua'),
(1208, '22020019', 'ef47fa3e3a2cf0c9518c2bc72d8f4a91', 'Engkos Kosasih, MA, Dr.', 'orangtua'),
(1209, '22020020', '6d204912766dfaf2ab852e6d2d2b3013', 'Fahmi Salim, MA., H', 'orangtua'),
(1210, '22020021', '7566b753ff2587122ca02d2c3ee9e5f2', 'Faizah Ali Sibromalisi, Dr. Hj', 'orangtua'),
(1211, '22020022', '465b112ba27d6e2243abafa786ea03e3', 'Faris Khoirul Anam, LC, Mhi', 'orangtua'),
(1212, '22020023', '3b46584e4b7ee4e23b01e3e00f65bc83', 'Fathurin Zen, Dr.H. M. Si.', 'orangtua'),
(1213, '22020024', '17c1656127f13c436676d8d62bff06a0', 'Muhammad Ali', 'orangtua'),
(1214, '22020025', '617658abca5ece594907d1cfae079f7b', 'Dwi', 'orangtua'),
(1215, '22020026', 'a4135d4c22de674daf9243267298e33b', 'Muhammad', 'orangtua'),
(1216, '22020027', 'ce78c7819eb67e1b61d6bfd7517bd6c3', 'Nur', 'orangtua'),
(1217, '22020028', 'e56d20246e81fcf8f3c560f11fcd5535', 'Dewi', 'orangtua'),
(1218, '22020029', '6abc8317ba69452ba1df13ad188d5b79', 'Tri', 'orangtua'),
(1219, '22020030', '5dd10e7eff8d5be954e85d8918a2d4e4', 'Dian', 'orangtua'),
(1220, '22040001', '944f83864e936af545b075171f7aceea', 'Sri', 'orangtua'),
(1221, '22040002', '1d9b81cfc75cf244f63bc73145d355c0', 'Putri', 'orangtua'),
(1222, '22040003', '3947e861d8f470f08e774943469a0406', 'Eka', 'orangtua'),
(1223, '22040004', 'f99deee9d49d46d35c045f4f62fc6fad', ' Sari', 'orangtua'),
(1224, '22040005', '5236cf22bce7308f4560982ff23748c5', ' Ayu', 'orangtua'),
(1225, '22040006', 'c0aa32e644f20236b300801a9207373b', ' Wahyu', 'orangtua'),
(1226, '22040007', '01c81815b19d475ef1f400d4a7a271ad', ' Indah', 'orangtua'),
(1227, '22040008', 'daab6a523e4ffbcebc25af4e9a9e07d7', ' Siti', 'orangtua'),
(1228, '22040009', '84faf7d784b3eea57890c5a0ad1c7739', ' Ika', 'orangtua'),
(1229, '22040010', 'cd7aa4ea44c84e86e294a9520b03d1af', ' Agus', 'orangtua'),
(1230, '22040012', '41b3816ab9fc17b16c978e06e69a94d6', ' Fitri', 'orangtua'),
(1231, '22040013', '3a64320fc66cb1c18a1261ccc020eadd', ' Ratna', 'orangtua'),
(1232, '22040014', '9a408f7c18d3392404c93ddceaee63c0', ' Andi', 'orangtua'),
(1233, '22040015', 'b952e714a343c3cb7ee8af89023594a6', ' Agung', 'orangtua'),
(1234, '22040016', 'e2dcc46305cf15d152046c330dc79fff', ' Ahmad', 'orangtua'),
(1235, '22050001', '6f10b1d2052eafa1df87a9ff7e0379f6', ' Kurniawan', 'orangtua'),
(1236, '22050004', '025a2f043b0281b492099de774617139', ' Ilham', 'orangtua'),
(1237, '22050005', '1187f38958641901ab54439a36bea070', ' Budi', 'orangtua'),
(1238, '22050006', 'f23784148495bc47075d032361ce679b', ' Adi', 'orangtua'),
(1239, '22050007', 'cfc175bc30bacc094094b02bd881819b', ' Eko', 'orangtua'),
(1240, '22050008', '49e85a00889b008930411534413efdbd', ' Nurul', 'orangtua'),
(1241, '21010001', '1181f401927bd599b584ae368fd956d7', ' Putra', 'orangtua'),
(1242, '21010002', 'd8c4b53876ff363073f7fac23b8365af', ' Ni', 'orangtua'),
(1243, '21010003', '0e8b8338fd4a0f01cbfb900bd3e34d35', ' Arif', 'orangtua'),
(1244, '21010004', '69180437fc57df6f0dddaf26cfd14fa1', ' Puspita', 'orangtua'),
(1245, '21010005', '24614d5883420f7af092b5c196a855e3', ' Ari', 'orangtua'),
(1246, '21010006', 'fb092cca39cecafbbc472632a56c0141', ' Indra', 'orangtua'),
(1247, '21010007', '8794b95a82983f205c4eb93d2900f4bb', ' Dyah', 'orangtua'),
(1248, '21010008', '2ec38ba231bb88a582a98da8c5cfbd8b', ' Rizki', 'orangtua'),
(1249, '21010009', '4b4d0ad8632a81d401c65fda6e4f4d9b', ' Maria', 'orangtua'),
(1250, '21010010', '0be92ec4ddc2de6820fc884b13bb4247', ' Ratih', 'orangtua'),
(1251, '21010011', 'd3ea4d7577cdaac9a8507efa613ce29b', ' Pratiwi', 'orangtua'),
(1252, '21010012', '702b500c031aba22ca408918b92b419b', ' Kartika', 'orangtua'),
(1253, '21010013', '6ac7cf1bb0ee5eb30f201f40c4d59b91', ' Wulandari', 'orangtua'),
(1254, '21010014', 'dc9c6d0892f59a071bd9ca52327afb76', ' Fajar', 'orangtua'),
(1255, '21010015', 'e067afe04d615532ca62e98be665c3a2', ' Bayu', 'orangtua'),
(1256, '21010016', 'af43890d4c11a0f0cac5ed2dd1156fab', ' Lestari', 'orangtua'),
(1257, '21010017', 'f15566ae21c8b7ddf838245780dc3a87', ' Anita', 'orangtua'),
(1258, '21010018', '7c5af0b047f199c084b51b3e803aed8a', ' Muhamad', 'orangtua'),
(1259, '21010019', '75ebb42a550311f7ba6bb3ef37c2d672', ' Kusuma', 'orangtua'),
(1260, '21010020', 'a192b35906b63bde804ab26cf21773ec', ' Rahmawati', 'orangtua'),
(1261, '21010021', '31fad0fddcbc80c5ac50563ef8770f15', ' Fitria', 'orangtua'),
(1262, '21010022', '1f473e8c33fc21f89a59e2585ec87cca', ' Retno', 'orangtua'),
(1263, '21010023', '5fdd8d0a3f0612254e2e58310637a3d1', ' Kurnia', 'orangtua'),
(1264, '21010025', 'a651eb2bdc2a91daf2d27608a416c879', ' Novita', 'orangtua'),
(1265, '21010026', '42b12dc5fb37273e7659877641dd3dc1', ' Aditya', 'orangtua'),
(1266, '21010027', 'cc2c4aef31a7bb61533d82bd36ba8fe9', ' Ria', 'orangtua'),
(1267, '21010028', '55aabe8f78945349c120431375ba0067', ' Nugroho', 'orangtua'),
(1268, '21010029', '01a064b6edd908b361a31e63dcf546cb', ' Putu', 'orangtua'),
(1269, '21010030', 'fe1f6e9b4816286a5d3b7fd7fa5dd80b', ' Handayani', 'orangtua'),
(1270, '21010032', '8adda6ca29a2a0c925b57db9e0cc3d4d', ' Rahayu', 'orangtua'),
(1271, '21020002', '87468b8be73b67cffd14646ce448bca8', ' Yunita', 'orangtua'),
(1272, '21020003', 'c05d4f5b01909a3817fd8e99f555f619', ' Rina', 'orangtua'),
(1273, '21020004', '65315fde3b9c325a86b8b8ea63fb1e45', ' Widya', 'orangtua'),
(1274, '21020005', '0d2f00b53d349f7b8b1a634e8729fac4', ' Intan', 'orangtua'),
(1275, '21020006', 'eec7b6b6d9407a04d9ec73d6c3f8cf83', ' Diah', 'orangtua'),
(1276, '21020007', '3429636c9f6e72343d0b2672c6b1cd62', ' Agustina', 'orangtua'),
(1277, '21020008', 'c981d0da8c9455ff052edce6e8f48bcc', ' Made', 'orangtua'),
(1278, '21020009', '402f0ed0439474d37b7b1f9a7750eef5', ' Abdul', 'orangtua'),
(1279, '21020010', '745701af396ab8d0e091ded7af19cb39', ' Setiawan', 'orangtua'),
(1280, '21020011', '24b1e04a7eaa1be3adbab602d6fda145', ' Rizky', 'orangtua'),
(1281, '21020012', '74e4b85dae989680795b03f485c1372f', ' Rini', 'orangtua'),
(1282, '21020013', 'c99089ba9dfc1ed78dc309c0c0dbb2e8', ' Wahyuni', 'orangtua'),
(1283, '21020014', '4288d8453a974b558768c7b4a668de05', ' Yulia', 'orangtua'),
(1284, '21020015', 'c27031079f1d5f4a402a65d757db3dc2', ' Puji', 'orangtua'),
(1285, '21020016', 'ac1e1706c8659a8a0cb0df16734920c5', ' Utami', 'orangtua'),
(1286, '21020018', '933deb1ef6197cccd7dbb0ad91cbd77d', ' Amalia', 'orangtua'),
(1287, '21020019', '03dcec7eb5aa34579758477273b4472c', ' Dina', 'orangtua'),
(1288, '21020020', '1ecf21d6d095bcc34a940bc07340c367', ' Devi', 'orangtua'),
(1289, '21020021', 'b20eed8e382c57894570585cb1e74c01', ' Citra', 'orangtua'),
(1290, '21020022', '3934417e60b66c92925b7861795bf3bf', ' Arief', 'orangtua'),
(1291, '21020023', '49c7ffc4057685f00f2106ab92407e6a', ' Munaroh', 'orangtua'),
(1292, '21020024', 'f087f87cf758aa03553df31b9af895e5', ' Bagus', 'orangtua'),
(1293, '21020025', '9b0bd13a341ea463326c3c02839911cd', ' Hidayat', 'orangtua'),
(1294, '21020026', 'a7a89821e3c46251b094ef25aeaa9a06', ' Hendra', 'orangtua'),
(1295, '21020027', 'c776b84c58491cba97d18c3b9f88051f', ' Eva', 'orangtua'),
(1296, '21020028', 'c5d0a23ac092e4aa9843738908740b45', ' Endah', 'orangtua'),
(1297, '21020029', '0dc8c8338e54c12c534dd4ef89c8e06c', ' Raden', 'orangtua'),
(1298, '21040001', 'c25028714bf842a228b199ee50f7da34', ' Novi', 'orangtua'),
(1299, '21040002', '1ff6a6bf695028332e3db84ec46e8097', ' Irma', 'orangtua'),
(1300, '21040003', 'a63b166dbe8ed08614741596224a36e6', ' Astuti', 'orangtua'),
(1301, '21040004', 'da32b6f4086a29ac00f72f6ab5f69649', ' Aulia', 'orangtua'),
(1302, '21040005', '9b8e4f125813770138d2d8f515a9022a', ' Surya', 'orangtua'),
(1303, '21040006', '207fb98e976ef75150a304d13557961b', ' Amelia', 'orangtua'),
(1304, '21040007', 'ad91a2f5424eaace03c674122d5c5781', ' Prima', 'orangtua'),
(1305, '21040008', '3c4691adb6e78381b519fd756e483d59', ' Angga', 'orangtua'),
(1306, '21040009', 'e6ed7679433992cf86aa070d7563bd94', ' Hadi', 'orangtua'),
(1307, '21050001', '80a39c53cedea38ea5fe89ced69dd5ce', ' Diana', 'orangtua'),
(1308, '21050002', '8d6530d62282414839c2559b9af61816', ' Anggraini', 'orangtua'),
(1309, '21050003', 'a85ac60457c43184ee4580a75530dfc0', ' Wulan', 'orangtua'),
(1310, '21050004', '120499776b4f03b92900ba17dcd87d3b', ' Saputra', 'orangtua'),
(1311, '21050005', 'e397d3871da7dac50592bbabf6d77920', ' Yuni', 'orangtua'),
(1312, '21050006', '2bfb23a141e6933733388c89a0dd4777', ' Agung', 'orangtua'),
(1313, '21050007', '6b4e050eb5f4c39a5d9f0fb3d231ad44', 'Dinda', 'orangtua'),
(1314, '21050008', '84f6cd3ca294b0f74dbb36db7a0a35e4', 'Amel', 'orangtua'),
(1315, '20010001', '61efe3e9344f8555de915802cf16c3be', 'Putra', 'orangtua'),
(1316, '20010002', 'fc51db173b12c52572dd6a6333161dba', 'Muhammad', 'orangtua'),
(1317, '20010003', 'e6f7aeaa81fc17684fcd9679834ff529', 'Wahyu', 'orangtua'),
(1318, '20010004', 'd672b8706b7bef61585d2eed7b7af645', 'Agus', 'orangtua'),
(1319, '20010005', '03e995694afcb4696f827169aa8538a9', 'Agung', 'orangtua'),
(1320, '20010006', '176cc2264682668c9bdea7cf4bfc7c4c', 'Ahmad', 'orangtua'),
(1321, '20010007', 'c8f1a9807b3d5c93bf72a8bca8b2a0c8', 'Kurniawan', 'orangtua'),
(1322, '20010008', '631102e2ad33a49042c3184f30ac932b', 'Budi', 'orangtua'),
(1323, '20010009', '0f799fbf2720979d41d3ac1e3775e7be', 'Adi', 'orangtua'),
(1324, '20010010', '365f0253639b5084b7f41d4c6be680c1', ' Eko', 'orangtua'),
(1325, '20010011', 'be772bc2a81b02080c7590780b46de73', ' Arief', 'orangtua'),
(1326, '20010012', 'a889a17b24e33c06e4df926ffbf20d2a', ' Ari', 'orangtua'),
(1327, '20010013', '3988aa48d4bdccbd1fdfef2b59e02352', ' Indra', 'orangtua'),
(1328, '20010014', 'd59ef035eea8b64089ab08c173c41abc', ' Rizki', 'orangtua'),
(1329, '20010015', '47ea498284f5caa05d3877a25e44a087', ' Yusuf', 'orangtua'),
(1330, '20010017', '5f75a08e1da34e4aa943f7ee7ac69f8a', ' Fajar', 'orangtua'),
(1331, '20010018', '39f0b6e57a82282b6df18ef272ebdaec', ' Bayu', 'orangtua'),
(1332, '20010020', 'a94943195c200f7f90e42e58406fb0bb', ' Aditya', 'orangtua'),
(1333, '20010021', 'd08637cbeffd2cfd51b2b0c1ea5b9303', ' Nugroho', 'orangtua'),
(1334, '20010022', 'e662de04a21a58f703ddb8f00c57d7b9', ' Abdul', 'orangtua'),
(1335, '20010023', '1b3243ae4997736f828eed53afcf250b', ' Setiawan', 'orangtua'),
(1336, '20010024', 'ba72a9db3d1beaf2f7cecfb8e9b4ffeb', ' Riski', 'orangtua'),
(1337, '20010025', '3ba8f6daee465d9be8b1a9bbc35f8890', ' Puji', 'orangtua'),
(1338, '20010026', '048f42ce3d7bb47378ad894c5d65fad8', ' Bagus', 'orangtua'),
(1339, '20010027', '94e507353986e777edd0b71978f003ee', ' Hidayat', 'orangtua'),
(1340, '20010029', '07afb03f66ac8f4988d32f6108896f9f', ' Jimmy', 'orangtua'),
(1341, '20010030', '61cbc630ceda72ae640b9806bace1967', ' Rian', 'orangtua'),
(1342, '20010031', '43e4b68e5cfc7cb4119b9bd1c8536a8a', ' Hendra', 'orangtua'),
(1343, '20010032', '74d756443482954f45c44626236bb885', ' Raden', 'orangtua'),
(1344, '20010033', '34426588b613f34d85bd81a1a21a1a36', ' Surya', 'orangtua'),
(1345, '20010034', '40c60597073d35cb17628c1a67f3cb52', ' Angga', 'orangtua'),
(1346, '20010035', '62df468e51082007f1fe34ab9981a9ff', ' Hadi', 'orangtua'),
(1347, '20010036', '57abd01fa25247b0339689d3e4278be8', ' Michael', 'orangtua'),
(1348, '20020001', '86828ba56c75ec2104a1795430e4cbae', ' Thomas', 'orangtua'),
(1349, '20020002', '5ba6d387088bcf0b57fb3f3f4259c27c', ' Charles', 'orangtua'),
(1350, '20020003', 'a7a4b1a5ebd457744a7d7f910f2dd757', ' Kevin', 'orangtua'),
(1351, '20020004', '5a8676708e6743edb030294c1f78ea1e', ' Brian', 'orangtua'),
(1352, '20020005', 'e3bd977496007e22bf0364f7955d7a48', ' Samuel', 'orangtua'),
(1353, '20020006', '818df9c5505458d04a6a1addd8ff0f0b', ' Billy', 'orangtua'),
(1354, '20020007', 'e7ee310fb4263abcc64cd03987f2d43e', ' Hari', 'orangtua'),
(1355, '20020008', 'd8691b0e947ffa519baca5907afaa6fb', ' Adam', 'orangtua'),
(1356, '20020009', '8f76f5570d38e5841901dd5009149f5d', ' Gabriel', 'orangtua'),
(1357, '20020010', 'dadfb46c03e47c49972b722f4dfbd791', ' Erik', 'orangtua'),
(1358, '20020011', 'b96f36056c06b4232d263c791cee0edc', ' Andre', 'orangtua'),
(1359, '20020013', '07cf022f8eb9a4b31cdab04889a6c9bf', ' Aris', 'orangtua'),
(1360, '20020014', '6e7b93fb93f23f7b9cf6d575608778ad', ' Daniel', 'orangtua'),
(1361, '20020015', '5802019f6bb4c486c1616d58d0e4233d', ' Rudi', 'orangtua'),
(1362, '20020016', '1f647de925afe44d5bb9775358365356', ' Andri', 'orangtua'),
(1363, '20020017', 'ec14b5a71df8db5562ac93ad38d9c1f4', ' Taufik', 'orangtua'),
(1364, '20020018', 'c4f40e2c984fa736dd2450106080e5c2', ' Hanif', 'orangtua'),
(1365, '20020020', '44b11e12f67fdbdb779d35ce42d5a6e5', 'Rumadi, DR', 'orangtua'),
(1366, '20020021', '3e8563d629c6a677d3ca46b8e59d9ad3', 'Abas Mansur Tamam, Dr.', 'orangtua'),
(1367, '20020022', '64d8faa760b9bec1c57accb404647ba9', 'Abdul Ghafar Rozin, MA, KH', 'orangtua'),
(1368, '20020023', '78619525a3644f8e99c02ac291363ba9', 'Abdul Ghofur Maimun, Dr', 'orangtua'),
(1369, '20020024', '563da97663260edecf214fe1880bf79a', 'Abdul Mannan, MA', 'orangtua'),
(1370, '20020025', '1f7d3aa7cd16bcce68cdb14d183f51b8', 'Abdul Moqsith Ghozali, DR', 'orangtua'),
(1371, '20020026', '04f8005a5f76d4e0246c6f6502ae778e', 'Abdul Mukti, Dr. H. M.Ed', 'orangtua'),
(1372, '20020028', '56d8155fb27385301778577e6d35fa94', 'Abdullah Gymnastiar, KH', 'orangtua'),
(1373, '20020030', '939c8fc239f2b302b1ab3ff558d7bc61', 'Abdullah Jaidi, KH', 'orangtua'),
(1374, '20020031', '76afd462ed2abdc2ef2260c45ba7e409', 'Abdurrahim Yapono, Dr,H, MA, MSc.', 'orangtua'),
(1375, '20020032', '2f5603b08a72d8709a1910317d7227a9', 'Abdurrahman Dahlan, Dr,KH.', 'orangtua'),
(1376, '20020033', 'dc9be801d7a92f73cd32769786480ae5', 'Abdurrahman Madina, KH', 'orangtua'),
(1377, '20020035', '4841c94bda4cf2c3ff56faf1a8c146ec', 'Abudinata, Prof.Dr.H. MA.', 'orangtua'),
(1378, '20020037', '5f7aad917b2397cbbf82850f2730edbb', 'Aceng Rahmat, M.Pd., Prof. Dr. H.', 'orangtua'),
(1379, '20020038', '429fc00b22d51199e262dea044bcfe6d', 'Adian Husaini, Dr. H. MA', 'orangtua'),
(1380, '20020040', 'a6f0ebcab67d5f1d0af32633658c83c3', 'Adnan Harahap, Drs. KH.', 'orangtua'),
(1381, '20020041', '9364ed17ec5042cdbc0ab37006adfc6c', 'Ahmad Ali MD, KH, MA.', 'orangtua'),
(1382, '20020042', '3da1071267bff8475d0fdf40c013d4bd', 'Ahmad Azaim Ibraihimy, KH', 'orangtua'),
(1383, '20020043', '67c8d2f32cd5cb4f7ec0898c792a4397', 'Ahmad Husnul Hakim IMZI, DR, MA', 'orangtua'),
(1384, '20040001', '82574c71159c3dca9d55c4adb6421503', 'Ahmad Murodi, MA, KH', 'orangtua'),
(1385, '20040002', '10332df545aabe1788ab9358ec5fffa4', 'Ahmad Musthofa Bisri, KH', 'orangtua'),
(1386, '20040003', '2d4fd8637502704486e2a2429de03edb', 'Ahmad Sarwat, MA', 'orangtua'),
(1387, '20040005', 'a367b0a2c2408fbc42c5d8e53f737c8a', 'Ahmad Satori Ismail, Prof. Dr. H. MA', 'orangtua'),
(1388, '20040006', '3fecd9859a22450ea9de4a64a6a7a18f', 'Ahmad Shodiq, KH', 'orangtua'),
(1389, '20040007', 'aa00f714c6c5bf05400014bec4f04cd5', 'Ahmad Shunhaji,Dr., M.Pdi', 'orangtua'),
(1390, '20040009', 'df7c88658d9aac07d97ecf3ce18e70c3', 'Ahmad Syafii Mufid, Dr', 'orangtua'),
(1391, '20040010', 'a0da1014c9a728fd32c7d65ae4176a90', 'Ahmad Thib Raya, MA., Prof. Dr. H.', 'orangtua'),
(1392, '20040011', '1d44acf7d2964fad12dea238d01816db', 'Ahmad Yani, Drs. H', 'orangtua'),
(1393, '20040012', '08875404298b7cf8e308e74835a08aeb', 'Ahsin Sakho DR. KH', 'orangtua'),
(1394, '20040013', '120d9018fcc8588c52efa3682fe944f3', 'Ajad Sudrajad, LC, MA', 'orangtua'),
(1395, '20040014', 'b928f5b0b87844e33cc33dccc23d1551', 'Alai Najib, Dra.', 'orangtua'),
(1396, '20040015', '11642ba28e84e6807d27945b4dde3d56', 'Ali Hasan Bahar, H. Lc, MA.', 'orangtua'),
(1397, '20040017', '88de384f6af07e34530ddd24ef201a96', 'Ali Masyhuri, KH', 'orangtua'),
(1398, '20040018', '1b49dc1fb67567a906b8362cc6eec4a2', 'Ali Mustofa', 'orangtua'),
(1399, '20040019', '47cf0ce5ba1d5d8bd7c4384a11e36404', 'Ali Nurdin, DR. KH. MA', 'orangtua'),
(1400, '20040020', '3784c59170b6b61a262daf119dcd0627', 'Alwi Shihab, Dr. MA', 'orangtua'),
(1401, '20040021', '15b8ad02ee4890bf5d2b8fa413f3ce84', 'Amani Lubis, Prof. Dr. Hj', 'orangtua'),
(1402, '20040022', '75a19f9ae86897c01b3111b398fc210a', 'Amin Summa, Prof.Dr. H.SH, MA.', 'orangtua'),
(1403, '20040023', '76731817541db585ebbc134ce36a7929', 'Amir Faishal Fath, MA, Dr.', 'orangtua'),
(1404, '20040024', '62b5752942f98de8c756e3b201f0454b', 'Anwar Abbas, Dr,H,MM,M.Ag.', 'orangtua'),
(1405, '20040025', 'e82e13997a4e0471c1da12723a47bde2', 'Anwar Sanusi, KH.', 'orangtua'),
(1406, '20040026', '8ebe5170cbee774b88581526bb68cbbf', 'Anwar Zahid, KH', 'orangtua'),
(1407, '20040027', '18f148bf417c77cf6f152db45069bf32', 'Arja Imroni, Dr.', 'orangtua'),
(1408, '20040030', '276a755f5e2f1729fafa3a25e56d106d', 'Atabik Luthfie, Dr, MA', 'orangtua'),
(1409, '20040031', '1fb3e33f27b37ce4e60cfa710e326665', 'Atiqah Noer Ali', 'orangtua'),
(1410, '20050002', '645f214806fcfdc8ef3933f70276e601', 'Aziz Fakhrurrozi, Prof.Dr.H. MA.', 'orangtua'),
(1411, '20050003', 'd1ac76bc82ebd76638ce3a199a8b4c4a', 'Badriyah Fayumi, Dra,Hj, MA', 'orangtua'),
(1412, '20050004', 'bd5bb0ca70a22a3725257f45e0e9f549', 'Hamdan Rasyid, Dr.H. MA.', 'orangtua'),
(1413, '20050005', 'd5abc4f40b92b46c560df4e85b3adab6', 'Hamdani Anwar, Prof. Dr. H. M.A', 'orangtua'),
(1414, '20050008', '59a8da63f9aa7e77ec059c1a6f6459ed', 'Haris Shodaqoh, KH', 'orangtua'),
(1415, '20050009', '537c5bc938f7791d72a34cc162574f5e', 'Hasanuddin Sinaga, Al Hafizh, Drs. H. MA', 'orangtua'),
(1416, '20050010', 'f04b66db548e6e0a25384a7815728a75', 'Hasnah Almunawwar, Dra., Hj', 'orangtua'),
(1417, '20050011', '81dc9bdb52d04dc20036dbd8313ed055', 'Helmi Hidayat, MA', 'orangtua'),
(1418, '20050012', '3ef318c7423926d5abf0febfd66e0d16', 'Hidayat Nur Wahid, DR. H. MA', 'alumni'),
(1419, '20050013', 'a1c5ec0277dca60efa39b750c4b96aa6', 'Husein Muhammad, KH', 'alumni'),
(1420, '20050014', '18257294d0f96fbfac7d2dcb54c5bfdb', 'Husen Hamid Al Athas, Lc, MA.', 'alumni'),
(1421, '20050015', '76288737dd674fed3c85cc035a8762ad', 'Huzaimah T Yanggo, Prof. Dr. Hj', 'alumni'),
(1422, '20050016', 'd0ca67d2305daa069c502c09ba2d24b5', 'Idris Jamal', 'alumni'),
(1423, '20050012', '3ef318c7423926d5abf0febfd66e0d16', 'nama_ortu', 'alumni'),
(1424, '20050013', 'a1c5ec0277dca60efa39b750c4b96aa6', 'Hidayat Nur Wahid, DR. H. MA', 'alumni'),
(1425, '20050014', '18257294d0f96fbfac7d2dcb54c5bfdb', 'Husein Muhammad, KH', 'alumni'),
(1426, '20050015', '76288737dd674fed3c85cc035a8762ad', 'Husen Hamid Al Athas, Lc, MA.', 'alumni'),
(1427, '20050016', 'd0ca67d2305daa069c502c09ba2d24b5', 'Huzaimah T Yanggo, Prof. Dr. Hj', 'alumni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifbeasiswa`
--

CREATE TABLE `verifbeasiswa` (
  `id_verifbeasiswa` int(11) NOT NULL,
  `id_lobeasiswa` int(11) NOT NULL,
  `nama_beasiswa` varchar(50) NOT NULL,
  `NIS` varchar(50) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status_verif` enum('Belum Terverifikasi','Sudah Terverifikasi') NOT NULL,
  `status_daftar` enum('Diterima','Ditolak','Menunggu Konfirmasi') NOT NULL,
  `tanggal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `verifbeasiswa`
--

INSERT INTO `verifbeasiswa` (`id_verifbeasiswa`, `id_lobeasiswa`, `nama_beasiswa`, `NIS`, `nama_siswa`, `kelas`, `file`, `status_verif`, `status_daftar`, `tanggal`) VALUES
(1, 1, 'KIP', '22020004', 'ANA ANGGRAINI', 'X OTKP', '1.pdf', 'Sudah Terverifikasi', 'Diterima', '16-07-2023'),
(2, 1, 'KIP', '22010001', 'Aditya Pratama', 'X TKJ', 'Sertifikat Web.pdf', 'Sudah Terverifikasi', 'Diterima', '20-07-2023'),
(3, 1, 'KIP', '22010002', 'Afandi', 'X TKJ', 'Surat Lamaran Nooby Hijab.pdf', 'Sudah Terverifikasi', 'Diterima', '20-07-2023'),
(4, 1, 'KIP', '22010004', 'Bakti Ahmad Satyawiguna', 'X TKJ', 'Surat Lamaran syihab.pdf', 'Sudah Terverifikasi', 'Diterima', '20-07-2023'),
(5, 2, 'RANKING 1-5', '22010005', 'Christian Yabes Roring', 'X TKJ', 'Sertifikat Attitude.pdf', 'Sudah Terverifikasi', 'Diterima', '20-07-2023'),
(6, 2, 'RANKING 1-5', '22010006', 'Falha Najib', 'X TKJ', 'Sertifikat terbaru.pdf', 'Sudah Terverifikasi', 'Diterima', '20-07-2023'),
(7, 2, 'RANKING 1-5', '22010007', 'Hazel Ariqah Shabrina', 'X TKJ', 'IMG_20190924_0001.pdf', 'Sudah Terverifikasi', 'Diterima', '20-07-2023'),
(8, 2, 'RANKING 1-5', '22010008', 'Jonathan Oktafriyanto', 'X TKJ', 'Sertifikat Web.pdf', 'Sudah Terverifikasi', 'Diterima', '20-07-2023'),
(9, 2, 'RANKING 1-5', '22010010', 'Mohamad Irvan Fitriansah', 'X TKJ', 'Sertifikat Web.pdf', 'Sudah Terverifikasi', 'Ditolak', '20-07-2023'),
(10, 2, 'RANKING 1-5', '22010011', 'Muhammad Luckiyana Mawadda', 'X TKJ', 'sertifikat.pdf', 'Sudah Terverifikasi', 'Ditolak', '20-07-2023'),
(11, 2, 'RANKING 1-5', '22010001', 'Aditya Pratama', 'X TKJ', 'dina_oktavia,+##default.groups.name.manager##,+1282-99Z_Artikel-7703-2-2-20170820.pdf', 'Sudah Terverifikasi', 'Diterima', '04-08-2023'),
(12, 2, 'RANKING 1-5', '22010002', 'Afandi', 'X TKJ', 'P1rint.pdf', 'Belum Terverifikasi', 'Menunggu Konfirmasi', '04-08-2023'),
(13, 2, 'RANKING 1-5', '22010003', 'Auliya Putri Ramadhani', 'X TKJ', 'manager_jap,+16.+Ria+Ogearti++339-350.pdf', 'Belum Terverifikasi', 'Menunggu Konfirmasi', '04-08-2023'),
(14, 2, 'RANKING 1-5', '22010004', 'Bakti Ahmad Satyawiguna', 'X TKJ', 'Print.pdf', 'Belum Terverifikasi', 'Menunggu Konfirmasi', '04-08-2023'),
(15, 2, 'RANKING 1-5', '22010005', 'Christian Yabes Roring', 'X TKJ', 'manager_jap,+16.+Ria+Ogearti++339-350.pdf', 'Belum Terverifikasi', 'Menunggu Konfirmasi', '04-08-2023'),
(16, 2, 'RANKING 1-5', '22010006', 'Falha Najib', 'X TKJ', 'Print.pdf', 'Belum Terverifikasi', 'Menunggu Konfirmasi', '04-08-2023'),
(17, 2, 'RANKING 1-5', '22010007', 'Hazel Ariqah Shabrina', 'X TKJ', 'Print.pdf', 'Sudah Terverifikasi', 'Diterima', '04-08-2023'),
(18, 2, 'RANKING 1-5', '22010008', 'Jonathan Oktafriyanto', 'X TKJ', 'UAS BJB NONREG GENAP 20222023.pdf', 'Belum Terverifikasi', 'Menunggu Konfirmasi', '04-08-2023'),
(19, 2, 'RANKING 1-5', '22010009', 'M. Amril', 'X TKJ', 'BJM-REG-GENAP-20222023.pdf', 'Belum Terverifikasi', 'Menunggu Konfirmasi', '04-08-2023'),
(20, 2, 'RANKING 1-5', '22010010', 'Mohamad Irvan Fitriansah', 'X TKJ', 'Print.pdf', 'Belum Terverifikasi', 'Menunggu Konfirmasi', '04-08-2023'),
(21, 2, 'RANKING 1-5', '22010011', 'Muhammad Luckiyana Mawadda', 'X TKJ', 'Print.pdf', 'Belum Terverifikasi', 'Menunggu Konfirmasi', '04-08-2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi`
--

CREATE TABLE `verifikasi` (
  `id_verif` int(11) NOT NULL,
  `id_tag_v` int(11) NOT NULL,
  `NIS` varchar(25) NOT NULL,
  `kategori_pem` varchar(50) NOT NULL,
  `bayar_verif` varchar(50) NOT NULL,
  `foto` text NOT NULL,
  `bulan` varchar(25) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `status_verif` enum('Belum Verifikasi','Sudah Verifikasi') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `verifikasi`
--

INSERT INTO `verifikasi` (`id_verif`, `id_tag_v`, `NIS`, `kategori_pem`, `bayar_verif`, `foto`, `bulan`, `tahun`, `semester`, `status_verif`) VALUES
(2, 3893, '22010008', 'SPP -  Februari  2023', '250000', 'berhasil.png', 'Juni', '2023', 'SEMESTER GENAP', 'Sudah Verifikasi'),
(5, 3851, '22010001', 'SPP -  Februari  2023', '250000', 'tes.png', 'Juni', '2023', 'SEMESTER GENAP', 'Sudah Verifikasi'),
(6, 3852, '22010001', 'SPP -  Maret  2023', '250000', 'berhasil.png', 'Juni', '2023', 'SEMESTER GENAP', 'Sudah Verifikasi'),
(7, 6192, '22010001', 'SPP -  Juli  2023', '250000', 'kartu keluarga 2.jpg', 'Juli', '2023', 'SEMESTER GANJIL', 'Sudah Verifikasi'),
(8, 6204, '22010003', 'SPP -  Juli  2023', '150000', 'nilai.jpg', 'Juli', '2023', 'SEMESTER GANJIL', 'Belum Verifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `veriflapguru`
--

CREATE TABLE `veriflapguru` (
  `id_veriflapguru` int(11) NOT NULL,
  `kategori_kegiatan` varchar(50) NOT NULL,
  `tahunajaran` varchar(50) NOT NULL,
  `nama_pengajar` varchar(50) NOT NULL,
  `file_lap` varchar(255) NOT NULL,
  `status_verif` enum('Diterima','Ditolak','Sedang Diperiksa') NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `veriflapguru`
--

INSERT INTO `veriflapguru` (`id_veriflapguru`, `kategori_kegiatan`, `tahunajaran`, `nama_pengajar`, `file_lap`, `status_verif`, `catatan`) VALUES
(4, 'RAPAT DINAS', '2023/2024 GANJIL', 'Nyoman suka dane', '1.pdf', 'Diterima', ''),
(12, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'Annisa', 'KK.pdf', 'Diterima', ''),
(13, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'YUSDA HELMANI,S.KOM', 'RESUME.pdf', 'Diterima', ''),
(17, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'Irfan noor asyikin', 'Surat Lamaran syihab.pdf', 'Diterima', ''),
(18, 'SEMINAR', '2023/2024 GANJIL', 'Irfan noor asyikin', 'SKL.pdf', 'Diterima', ''),
(19, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'M. NOOR ADITYA RAHMAN,S.KOM', 'SKL.pdf', 'Diterima', ''),
(20, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'AHMAD SANTOSO, ST', 'Surat Lamaran Nooby Hijab.pdf', 'Diterima', ''),
(21, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'LIA LARASMITA, S.Pd', 'Surat Lamaran syihab.pdf', 'Diterima', ''),
(23, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'Riady Dimas Saputra', 'Sertifikat terbaru.pdf', 'Diterima', ''),
(24, 'RAPAT DINAS', '2023/2024 GANJIL', 'MAIMUNAH,S.Pd.I', 'Print.pdf', 'Diterima', ''),
(25, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'KHAIRUNESYA,S.Pd', 'Print.pdf', 'Diterima', ''),
(26, 'Seminar', '2023/2024 GANJIL', 'ULYA ALFIYANI, S.Pd', 'Print.pdf', 'Diterima', ''),
(27, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'ULYA ALFIYANI, S.Pd', 'UAS BJB NONREG GENAP 20222023.pdf', 'Diterima', ''),
(28, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'IKRIMA SHALEHA, S.Pd', 'BJM-REG-GENAP-20222023.pdf', 'Diterima', ''),
(29, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'M. RIALDI PRATAMA, S.SOS.I', 'UAS BJB NONREG GENAP 20222023.pdf', 'Diterima', ''),
(30, 'Laporan SPPD', '2023/2024 GANJIL', 'MUHAMMAD IRHAM HABIBIE, S.Pd', 'UAS BJB NONREG GENAP 20222023.pdf', 'Diterima', ''),
(31, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'RIRI FIRMANSYAH, ST ', 'BJM-REG-GENAP-20222023.pdf', 'Diterima', ''),
(32, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'HERLINDA YUNITA, S.Pd', 'UAS BJB NONREG GENAP 20222023.pdf', 'Diterima', ''),
(33, 'Laporan Jurnal Mengajar', '2023/2024 GANJIL', 'Abdul rahman', 'Print.pdf', 'Diterima', ''),
(34, 'Laporan SPPD', '2023/2024 GANJIL', 'MAIMUNAH,S.Pd.I', 'UAS BJB NONREG GENAP 20222023.pdf', 'Sedang Diperiksa', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`);

--
-- Indeks untuk tabel `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indeks untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`id_beasiswa`);

--
-- Indeks untuk tabel `databeasiswa`
--
ALTER TABLE `databeasiswa`
  ADD PRIMARY KEY (`id_databeasiswa`);

--
-- Indeks untuk tabel `ekskul`
--
ALTER TABLE `ekskul`
  ADD PRIMARY KEY (`id_ekskul`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `jadwalekskul`
--
ALTER TABLE `jadwalekskul`
  ADD PRIMARY KEY (`id_jadwalekskul`);

--
-- Indeks untuk tabel `jadwalmapel`
--
ALTER TABLE `jadwalmapel`
  ADD PRIMARY KEY (`id_jadwalmapel`);

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indeks untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id_jurnal`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `kritik`
--
ALTER TABLE `kritik`
  ADD PRIMARY KEY (`id_kritik`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_lap`);

--
-- Indeks untuk tabel `laporanguru`
--
ALTER TABLE `laporanguru`
  ADD PRIMARY KEY (`id_laporanguru`);

--
-- Indeks untuk tabel `lobeasiswa`
--
ALTER TABLE `lobeasiswa`
  ADD PRIMARY KEY (`id_lobeasiswa`);

--
-- Indeks untuk tabel `loker`
--
ALTER TABLE `loker`
  ADD PRIMARY KEY (`id_loker`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `orangtua`
--
ALTER TABLE `orangtua`
  ADD PRIMARY KEY (`id_ortu`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indeks untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indeks untuk tabel `prestasiguru`
--
ALTER TABLE `prestasiguru`
  ADD PRIMARY KEY (`id_prestasiguru`);

--
-- Indeks untuk tabel `regisekskul`
--
ALTER TABLE `regisekskul`
  ADD PRIMARY KEY (`id_regisekskul`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `sk`
--
ALTER TABLE `sk`
  ADD PRIMARY KEY (`id_skguru`);

--
-- Indeks untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id_tagihan`),
  ADD KEY `id_kelas` (`NIS`);

--
-- Indeks untuk tabel `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indeks untuk tabel `tbjenispem`
--
ALTER TABLE `tbjenispem`
  ADD PRIMARY KEY (`id_jenispem`);

--
-- Indeks untuk tabel `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  ADD PRIMARY KEY (`id_tapel`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `verifbeasiswa`
--
ALTER TABLE `verifbeasiswa`
  ADD PRIMARY KEY (`id_verifbeasiswa`);

--
-- Indeks untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD PRIMARY KEY (`id_verif`);

--
-- Indeks untuk tabel `veriflapguru`
--
ALTER TABLE `veriflapguru`
  ADD PRIMARY KEY (`id_veriflapguru`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `bayar`
--
ALTER TABLE `bayar`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `id_beasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `databeasiswa`
--
ALTER TABLE `databeasiswa`
  MODIFY `id_databeasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `ekskul`
--
ALTER TABLE `ekskul`
  MODIFY `id_ekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `jadwalekskul`
--
ALTER TABLE `jadwalekskul`
  MODIFY `id_jadwalekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jadwalmapel`
--
ALTER TABLE `jadwalmapel`
  MODIFY `id_jadwalmapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72330;

--
-- AUTO_INCREMENT untuk tabel `jam`
--
ALTER TABLE `jam`
  MODIFY `id_jam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  MODIFY `id_jurnal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kritik`
--
ALTER TABLE `kritik`
  MODIFY `id_kritik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_lap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `laporanguru`
--
ALTER TABLE `laporanguru`
  MODIFY `id_laporanguru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `lobeasiswa`
--
ALTER TABLE `lobeasiswa`
  MODIFY `id_lobeasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `loker`
--
ALTER TABLE `loker`
  MODIFY `id_loker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT untuk tabel `orangtua`
--
ALTER TABLE `orangtua`
  MODIFY `id_ortu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `prestasiguru`
--
ALTER TABLE `prestasiguru`
  MODIFY `id_prestasiguru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `regisekskul`
--
ALTER TABLE `regisekskul`
  MODIFY `id_regisekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1066;

--
-- AUTO_INCREMENT untuk tabel `sk`
--
ALTER TABLE `sk`
  MODIFY `id_skguru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8070;

--
-- AUTO_INCREMENT untuk tabel `tahun`
--
ALTER TABLE `tahun`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbjenispem`
--
ALTER TABLE `tbjenispem`
  MODIFY `id_jenispem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  MODIFY `id_tapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1428;

--
-- AUTO_INCREMENT untuk tabel `verifbeasiswa`
--
ALTER TABLE `verifbeasiswa`
  MODIFY `id_verifbeasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  MODIFY `id_verif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `veriflapguru`
--
ALTER TABLE `veriflapguru`
  MODIFY `id_veriflapguru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
