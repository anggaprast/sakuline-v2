-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2024 at 03:39 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19158976_banjarnegara`
--

-- --------------------------------------------------------

--
-- Table structure for table `branchs`
--

CREATE TABLE `branchs` (
  `ID` int(11) NOT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `IsDelete` tinyint(1) DEFAULT NULL,
  `CreateBy` varchar(100) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` varchar(100) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branchs`
--

INSERT INTO `branchs` (`ID`, `Code`, `Name`, `IsDelete`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`) VALUES
(1, 'JABAR', 'Badan Perpustakaan dan Kearsipan Daerah Prov Jawa Barat', 0, 'SYSTEM', '2012-09-12 13:53:41', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:41', 'DeniPC'),
(2, 'JATIM', 'Badan Perpustakaan dan Kearsipan Prov. Jawa Timur', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(3, 'BALLI', 'Badan Perpustakaan dan Arsip Prov. Bali', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(4, 'SULSE', 'Badan Arsip dan Perpustakaan Daerah Prov. Sulawesi Selatan', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(5, 'SULBA', 'Kantor Perpustakaan, Arsip dan Dokumentasi Daerah Prov. Sulawesi Barat', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(6, 'GORTA', 'Kantor Perpustakaan dan Arsip Daerah Prov. Gorontalo', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(7, 'SULUT', 'Badan Perpustakaan, Arsip dan Dokumentasi Prov. Sulawesi Utara', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(8, 'SULTR', 'Badan Perpustakaan dan Arsip Daerah Prov. Sulawesi Tenggara', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(9, 'MALUT', 'Badan Kearsipan dan Perpustakaan Daerah Prov. Maluku Utara', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(10, 'MALUK', 'Badan Perpustakaan dan Arsip Daerah Prov. Maluku', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(11, 'KATIM', 'Badan Perpustakaan Prov. Kalimantan Timur', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(12, 'KATEN', 'Badan Perpustakaan, Arsip dan Dokumentasi Kalimantan Tengah', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(13, 'KASEL', 'Badan Perpustakaan dan Arsip Daerah Prov. Kalimantan Selatan', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(14, 'KABAR', 'Badan Perpustakaan, Kearsipandan Dokumentasi Prov. Kalimantan Barat', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(15, 'PAPUA', 'Badan Perpustakaan dan Arsip Daerah Papua', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(16, 'NADAR', 'Badan Arsip dan Perpustakaan Prov. Nangroe Aceh Darussalam', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(17, 'SUMUT', 'Badan Perpustakaan, Arsip Daerah Prov. Sumatera Utara', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(18, 'RIIAU', 'Badan Perpustakaan, Arsip dan Dokumentasi Prov. Riau', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(19, 'SUMBA', 'Badan Perpustakaan dan Kearsipan Prov. Sumatera Barat', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(20, 'SUMSE', 'Badan Perpustakaan Prov. Sumatera Selatan', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(21, 'JAMBI', 'Badan Perpustakaan dan Arsip Daerah Prov. Jambi', 0, 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:42', 'DeniPC'),
(22, 'KEPRI', 'Badan Perpustakaan dan Arsip Daerah Prov. Kep. Riau', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(23, 'BNKUL', 'Badan Perpustakaan Prov. Bengkulu', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(24, 'LAMPU', 'Badan Perpustakaan, Arsip dan Dokumentasi Daerah Prov. Lampung', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(25, 'NUTBA', 'Badan Perpustakaan dan Arsip Prov. Nusa Tenggara Barat', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(26, 'NUTTI', 'Badan Perpustakaan Prov. Nusa Tenggara Timur', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(27, 'JATEN', 'Badan Arsip dan Perpustakaan Prov. JawaTengah', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(28, 'YOGYA', 'Badan Perpustakaan Daerah Prov. DI Yogyakarta', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(29, 'JAKPU', 'Badan Perpustakaan dan Arsip Daerah Prov. DKI Jakarta', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(30, 'PBK', 'UPT Perpustakaan Proklamator Bung Karno Kota Blitar', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(31, 'BHATT', 'UPT Perpustakaan Proklamator BungHatta', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(32, 'BANTN', 'Badan Perpustakaan dan Arsip Daerah Prov. Banten', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(33, 'SULTE', 'Badan Perpustakaan dan Arsip Daerah Prov. Sulawesi Tengah', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(34, 'PROGO', 'Kantor Perpustakaan dan Arsip Daerah Kab. Kulonprogo', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(35, 'MALAN', 'Kantor Perpustakaan dan Arsip Daerah Kota Malang', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(36, 'PJAKU', 'Perpustakaan Merdeka Selatan Jakarta', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC'),
(37, 'INLIS', 'Perpustakaan Salemba Jakarta', 0, 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC', 'SYSTEM', '2012-09-12 13:53:43', 'DeniPC');

-- --------------------------------------------------------

--
-- Table structure for table `collectioncategorys`
--

CREATE TABLE `collectioncategorys` (
  `ID` int(11) NOT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `IsDelete` tinyint(1) DEFAULT NULL,
  `CreateBy` varchar(100) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` varchar(100) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `collectioncategorys`
--

INSERT INTO `collectioncategorys` (`ID`, `Code`, `Name`, `IsDelete`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`) VALUES
(1, '1', 'Koleksi Umum', NULL, '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG', '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG'),
(2, '2', 'Koleksi Anak-anak', NULL, '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG', '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG'),
(3, '3', 'Koleksi Khusus', NULL, '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG', '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG'),
(4, '4', 'Koleksi Perpustakaan Keliling', NULL, '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG', '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG'),
(5, '5', 'Koleksi Referensi', NULL, '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG', '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG'),
(6, '6', 'Koleksi Tambahan', NULL, '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG', '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG'),
(7, '7', 'Koleksi Book Loan', 0, 'admindaerah', '2017-01-03 10:53:16', '192.168.0.203', 'admindaerah', '2017-01-03 10:53:16', '192.168.0.203'),
(8, '8', 'Koleksi Buku Rusak', 0, 'admindaerah', '2017-12-21 11:22:16', '192.168.0.200', 'admindaerah', '2017-12-21 11:22:16', '192.168.0.200'),
(9, '9', 'Koleksi Motor Pintar', 0, 'admindaerah', '2020-08-12 09:45:57', '192.168.0.230', 'admindaerah', '2020-08-12 09:45:57', '192.168.0.230');

-- --------------------------------------------------------

--
-- Table structure for table `collectionrules`
--

CREATE TABLE `collectionrules` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `MaxLoanDays` int(11) DEFAULT NULL,
  `PenaltyAmountDaily` double DEFAULT NULL,
  `SuspendMember` tinyint(1) DEFAULT NULL,
  `WarningLoanDueDay` int(11) DEFAULT NULL,
  `DaySuspend` int(11) DEFAULT 0 COMMENT 'Lama hari suspend',
  `DayPerpanjang` int(11) DEFAULT 0 COMMENT 'Berapa hari diperpanjang',
  `CountPerpanjang` int(11) DEFAULT 0 COMMENT 'Berapa x boleh di perpanjang',
  `IsDelete` tinyint(1) DEFAULT NULL,
  `CreateBy` varchar(100) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` varchar(100) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `collectionrules`
--

INSERT INTO `collectionrules` (`ID`, `Name`, `MaxLoanDays`, `PenaltyAmountDaily`, `SuspendMember`, `WarningLoanDueDay`, `DaySuspend`, `DayPerpanjang`, `CountPerpanjang`, `IsDelete`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`) VALUES
(1, 'Dapat dipinjam', 7, 0, 1, 0, 0, 7, 2, 0, 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC', 'admindaerah', '2016-08-11 08:16:37', '192.168.0.203'),
(2, 'Baca ditempat', 0, 0, 0, 0, 0, 0, 0, 0, 'SYSTEM', '2012-09-12 13:56:31', 'DeniPC', 'SYSTEM', '2012-09-12 13:56:31', 'DeniPC'),
(3, 'Tandon', 0, 0, 0, 0, 0, 0, 0, 0, 'SYSTEM', '2012-09-12 13:56:31', 'DeniPC', 'SYSTEM', '2012-09-12 13:56:31', 'DeniPC'),
(5, 'Cadangan', 0, 0, 0, 0, 0, 0, 0, 0, 'SYSTEM', '2012-10-30 15:18:50', 'DeniPC', '760000606', '2013-05-16 15:48:01', '192.168.16.9');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `ID` double NOT NULL,
  `NoInduk` varchar(255) DEFAULT NULL,
  `Title` text DEFAULT NULL,
  `TitleAdded` text DEFAULT NULL,
  `Author` text DEFAULT NULL,
  `AuthorAdded` text DEFAULT NULL,
  `Cooperation` varchar(200) DEFAULT NULL,
  `PublishLocation` varchar(200) DEFAULT NULL,
  `Publisher` text DEFAULT NULL,
  `PublishYear` varchar(200) DEFAULT NULL,
  `KalaTerbit` varchar(200) DEFAULT NULL,
  `Edition` varchar(200) DEFAULT NULL,
  `Class` varchar(200) DEFAULT NULL,
  `PhysicalDescription` text DEFAULT NULL,
  `Note` text DEFAULT NULL,
  `Currency` varchar(30) DEFAULT NULL,
  `ISBN` varchar(2000) DEFAULT NULL,
  `MapScale` varchar(200) DEFAULT NULL,
  `MapNumber` varchar(200) DEFAULT NULL,
  `MapSubject` varchar(200) DEFAULT NULL,
  `RFID` varchar(255) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `TanggalKirim` datetime DEFAULT NULL,
  `IsDelete` tinyint(1) DEFAULT NULL,
  `Branch_id` int(11) DEFAULT NULL,
  `Catalog_id` double DEFAULT NULL,
  `Partner_id` int(11) DEFAULT NULL,
  `Location_id` int(11) DEFAULT NULL,
  `Rule_id` int(11) DEFAULT NULL,
  `Category_id` int(11) DEFAULT NULL,
  `Media_id` int(11) DEFAULT NULL,
  `Source_id` int(11) DEFAULT NULL,
  `Worksheet_id` int(11) DEFAULT NULL,
  `GroupingNumber` double DEFAULT NULL,
  `NomorBarcode` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT 'TANDON',
  `Keterangan_Sumber` varchar(200) DEFAULT NULL,
  `Penempatan` varchar(200) DEFAULT NULL,
  `CreateBy` varchar(100) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` varchar(100) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL,
  `IsVerified` tinyint(4) DEFAULT 0,
  `SLA_REGISTER` varchar(45) DEFAULT NULL,
  `SENAYAN_ID` varchar(45) DEFAULT NULL,
  `NCIBookMan_ID` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`ID`, `NoInduk`, `Title`, `TitleAdded`, `Author`, `AuthorAdded`, `Cooperation`, `PublishLocation`, `Publisher`, `PublishYear`, `KalaTerbit`, `Edition`, `Class`, `PhysicalDescription`, `Note`, `Currency`, `ISBN`, `MapScale`, `MapNumber`, `MapSubject`, `RFID`, `Price`, `TanggalKirim`, `IsDelete`, `Branch_id`, `Catalog_id`, `Partner_id`, `Location_id`, `Rule_id`, `Category_id`, `Media_id`, `Source_id`, `Worksheet_id`, `GroupingNumber`, `NomorBarcode`, `Status`, `Keterangan_Sumber`, `Penempatan`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`, `IsVerified`, `SLA_REGISTER`, `SENAYAN_ID`, `NCIBookMan_ID`) VALUES
(892, '218', 'Pedoman Microsoft Visual FoxPro 6.0; Termasuk Visual FoxPro 5.0', '', 'Zinsari', '', '', 'Yogyakarta', 'Andi', '2001', NULL, 'Ed.1; Cet.3', '005 Zin p', 'xii+136 hlm.; 16x23 cm.', '', '', '979-533-555-3', NULL, NULL, NULL, '', 30000, NULL, 0, 37, 191, NULL, 1286, 1, 1, NULL, NULL, NULL, 191, '0000000084', 'Tersedia', NULL, NULL, 'SYSTEM', '2006-12-06 13:33:52', '(NCIBookMan)', 'puspo', '2021-01-09 11:58:20', '192.168.0.218', 1, NULL, NULL, 'B0000000084'),
(926, '35', 'Aplikasi Database dengan SQL Server 2000 dan Visula Basic 6', '', 'Budiharto, Widodo', '', '', 'Jakarta', 'Elek Media Komputindo PT', '2002', NULL, 'Cet.2', '005.7 Bud a', 'xi+166 hlm.; 14x21 cm.', '', '', '979-20-2971-0', NULL, NULL, NULL, '', 30000, NULL, 0, 37, 224, NULL, 417, 1, 1, NULL, NULL, NULL, 224, '0000000118', 'Tersedia', NULL, NULL, 'SYSTEM', '2006-12-07 13:04:26', '(NCIBookMan)', 'admindaerah', '2015-12-31 10:09:36', '192.168.0.217', 1, NULL, NULL, 'B0000000118'),
(1362, '449', 'Buku pintar pengetahuan umum', '', 'Sihombing, H', 'Dwiyana, K', '', 's.l.', 'Delapratasa Publishing', '2002', NULL, 'cet.4', '001 Sih b', '239 hlm, 14 x 20,5 cm', '', '', '979-8965-97-3', NULL, NULL, NULL, '', 30000, NULL, 0, 37, 569, NULL, 1286, 1, 1, NULL, NULL, NULL, 569, '0000000364', 'Tersedia', NULL, NULL, 'SYSTEM', '2006-12-13 12:44:54', '(NCIBookMan)', 'puspo', '2021-01-09 12:55:28', '192.168.0.218', 1, NULL, NULL, 'B0000000364'),
(1656, '593', 'Pertanyaan Kaum Muda Jawaban yang Praktis, Watch Tower Bible and Tract Society of Pennsylvania', '', 'yp-IN', '', '', 'Jakarta', 'Perkumpulan Siswa-siswa Alkitab', '1989', NULL, '', '155.5 ypi p', '320 hlm.; 11 x 18 cm.', '', '', '', NULL, NULL, NULL, '', 20000, NULL, 0, 37, 795, NULL, 1276, 1, 1, NULL, NULL, NULL, 795, '0000001478', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-01-10 01:54:20', '(NCIBookMan)', 'puspo', '2020-12-16 08:24:17', '192.168.0.240', 1, NULL, NULL, 'B0000001478'),
(1691, '716', 'Mengubah Pasir Menjadi Mutiara', '', 'sinamo Jansen. H', '', '', 'Jakarta', 'Institut Darma Mahardika', '2003', NULL, 'cet.2', '158, sin m', 'xxi + 174 hlm: 11x18 cm.', '', '', '979-96804-2-5', NULL, NULL, NULL, '', 25, NULL, 0, 37, 823, NULL, 417, 1, 1, NULL, NULL, NULL, 823, '0000001500', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-01-10 08:23:01', '(NCIBookMan)', 'admindaerah', '2015-11-11 11:28:43', '192.168.0.200', 1, NULL, NULL, 'B0000001500'),
(1903, '891', '160 Ayat-ayat Hukum Al-Qur\'an', '', 'Rochman, Fatchur', '', '', 'Surabaya', 'Apollo', '1993', NULL, '', '2x1.44 Roc s', '130 hlm.; 21 cm', '', '', '', NULL, NULL, NULL, '', 15000, NULL, 0, 37, 1010, NULL, 417, 1, 1, NULL, NULL, NULL, 1010, '0000050009', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-01-17 13:06:19', '(NCIBookMan)', 'hartini', '2016-02-18 15:31:10', '192.168.0.203', 1, NULL, NULL, 'B0000050009'),
(1994, '970', 'Ilmu Tafsir', '', 'As Suyuthi, Al Imam', 'Masyhuri, Abd. Aziz', '', 'Surabaya', 'Bina Ilmu', '1982', NULL, '', '2x1.1 Suy i', '58 hlm, 14,3 x 21 cm', '', '', '', NULL, NULL, NULL, '', 10000, NULL, 0, 37, 1091, NULL, 1286, 1, 1, NULL, NULL, NULL, 1091, '0000000729', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-01-22 09:35:40', '(NCIBookMan)', 'puspo', '2021-01-26 08:45:04', '192.168.0.207', 1, NULL, NULL, 'B0000000729'),
(2289, '1347', 'Kumpulan Khutbah Pilihan', '', 'Zaini, Syahminan', '', '', 'Jakarta', 'Kalam Mulia', '2001', NULL, 'cet. 4', '2X4.124 Zai k', 'viii + 187 hlm. ; 21 cm', '', '', '979-8590-08-2', NULL, NULL, NULL, '', 25000, NULL, 0, 37, 1334, NULL, 417, 1, 1, NULL, NULL, NULL, 1334, '0000000888', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-01-30 10:42:06', '(NCIBookMan)', 'hartini', '2016-02-19 10:38:03', '192.168.0.200', 1, NULL, NULL, 'B0000000888'),
(2533, '1603', 'Bunga Rampai Pendidikan Agama Islam', '', 'Saridjo, Marwan', '', '', 'Jakarta', 'Amisco CV', '1996', NULL, 'cet. 1', '2X7.302 Sar b', 'x + 182 hlm. ; 21 cm', '', '', '', NULL, NULL, NULL, '', 30000, NULL, 0, 37, 1517, NULL, 417, 1, 1, NULL, NULL, NULL, 1517, '0000001739', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-02-08 12:12:47', '(NCIBookMan)', 'admindaerah', '2016-01-18 14:42:07', '192.168.0.228', 1, NULL, NULL, 'B0000001739'),
(2644, '1566', 'Riwayat Ringkas 25 Rasul', '', 'Syamsuri, Baidlowi', '', '', 'Surabaya', 'Apollo', '', NULL, '', '2x9.42 Sya r', '265 hlm, 14 x 20,5 cm', '', '', '', NULL, NULL, NULL, '', 20000, NULL, 0, 37, 1612, NULL, 1300, 1, 1, NULL, NULL, NULL, 1612, '0000001685', 'Dipinjam', NULL, NULL, 'SYSTEM', '2007-02-14 10:36:42', '(NCIBookMan)', 'ifon', '2021-10-05 09:34:40', '192.168.0.201', 1, NULL, NULL, 'B0000001685'),
(2706, '1738', 'Anda Pasti Bisa Bila Anda Pikir Bisa: You Can If You Think You Can', 'You Can If You Think You Can', 'Peale, Norman Vincent', 'Budiyanto, FX', '', 'Jakarta', 'Professional Books', '1997', NULL, 'cet. 1', '153.2 Pea a', 'iv + 487 hlm. ; 19 cm', '', '', '', NULL, NULL, NULL, '', 35000, NULL, 0, 37, 1665, NULL, 417, 1, 1, NULL, NULL, NULL, 1665, '0000001827', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-02-17 11:43:01', '(NCIBookMan)', 'hartini', '2016-02-24 11:44:59', '192.168.0.228', 1, NULL, NULL, 'B0000001827'),
(2754, '1817', 'Ulama-ulama Oposan', '', 'Subhan SD', '', '', 'Bandung', 'Pustaka Hidayah', '2000', NULL, 'cet 1', '2x7.21 Sub u', '198 hlm, 14,5 x 20,5 cm', '', '', '', NULL, NULL, NULL, '', 25000, NULL, 0, 37, 1711, NULL, 417, 1, 1, NULL, NULL, NULL, 1711, '0000001909', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-02-20 09:05:37', '(NCIBookMan)', 'hartini', '2016-02-24 11:47:03', '192.168.0.228', 1, NULL, NULL, 'B0000001909'),
(2771, '1822', 'Mengajar EQ Cara Nabi : Konsep Belajar Mengajar Cara Rasulullah SAW Panduan Praktis untuk Para Pendidik', 'Konsep Belajar Mengajar Cara Rasulullah SAW Panduan Praktis untuk Para Pendidik', 'Asy-Syalhub, Fuad bin Abdul Aziz', 'Ikhwan Fauzi', '', 'Bandung', 'MQS Publishing', '2005', NULL, 'cet 1', '2X7.31 Sya m', 'xiii + 158 hlm, 14,5 x 20 cm', '', '', '979-3503-69-6', NULL, NULL, NULL, '', 25000, NULL, 0, 37, 1728, NULL, 417, 1, 1, NULL, NULL, NULL, 1728, '0000001914', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-02-20 11:12:24', '(NCIBookMan)', 'hartini', '2016-02-24 11:48:08', '192.168.0.228', 1, NULL, NULL, 'B0000001914'),
(2845, '1855', 'BUNG HATTA, Pribadinya dalam Kenangan', '', 'Meutia Farida Swasono', '', '', 'Jakarta', 'Sinar Harapan', '1980', NULL, 'Cet.2', '923.1 Bun b', 'xiii + 730 hlm.; 15 x 21 cm.', '', '', '', NULL, NULL, NULL, '', 120000, NULL, 0, 37, 1780, NULL, 417, 1, 1, NULL, NULL, NULL, 1780, '0000001987', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-02-23 08:41:49', '(NCIBookMan)', 'hartini', '2018-09-10 08:17:52', '192.168.0.217', 1, NULL, NULL, 'B0000001987'),
(2965, '1941', 'Cut Meutia Pahlawan Nasional dan Puteranya', '', 'Yakub, Ismail', '', '', 'Semarang', 'Faizan', '', NULL, 'cet. 1', '920.72 Yak c', '145 hlm. ; 21 cm', '', '', '', NULL, NULL, NULL, '', 30000, NULL, 0, 37, 1862, NULL, 417, 1, 1, NULL, NULL, NULL, 1862, '0000002099', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-03-01 12:28:13', '(NCIBookMan)', 'hartini', '2016-02-24 11:59:31', '192.168.0.228', 1, NULL, NULL, 'B0000002099'),
(3006, '2046', 'Jagat Wartawan Indonesia', '', 'Notodidjojo, Soebagijo Ilham', '', '', 'Jakarta', 'Gunung Agung', '1981', NULL, 'cet 1', '920.5 Not j', 'xvi + 636 hlm, 14 x 20,5 cm', '', '', '', NULL, NULL, NULL, '', 50000, NULL, 0, 37, 1894, NULL, 417, 1, 1, NULL, NULL, NULL, 1894, '0000000376', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-03-04 09:15:21', '(NCIBookMan)', 'hartini', '2016-02-24 12:01:28', '192.168.0.228', 1, NULL, NULL, 'B0000000376'),
(3025, '1967', 'Buku Pintar Indonesia Abad XX', '', 'Eddy Soetrisno', '', '', 'Jakarta', 'Taramedia', '', NULL, 'cet. 1', '909.03 Buk b', '409 hlm. ; 25 cm', '', '', '', NULL, NULL, NULL, '', 60000, NULL, 0, 37, 1912, NULL, 417, 1, 1, NULL, NULL, NULL, 1912, '0000000940', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-03-05 10:52:23', '(NCIBookMan)', 'admindaerah', '2016-02-24 15:53:00', '192.168.0.200', 1, NULL, NULL, 'B0000000940'),
(3338, '2343', 'Sejumlah Masalah Sastra', '', 'Hoerip, Satyagraha', '', '', 'Jakarta', 'Sinar Harapan', '1982', NULL, 'cet 2', '800 Sej s', '283 hlm, 14,5 x 20 cm', '', '', '', NULL, NULL, NULL, '', 10000, NULL, 0, 37, 2131, NULL, 1288, 1, 1, NULL, NULL, NULL, 2131, '0000002270', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-07-05 13:11:11', '(NCIBookMan)', 'fatimah', '2020-11-12 15:07:07', '192.168.0.18', 1, NULL, NULL, 'B0000002270'),
(3364, '2163', 'Hormat Kepada Tuhan dlm Sistem Pendidikan Israel Kuno', '', 'Soebagjo, Meno', '', '', 'Jakarta', 'Grasindo', '1994', NULL, 'cet. 1', '265 Soe h', 'xxiv+130 hlm.; 21 cm', '', '', '979-553-502-1', NULL, NULL, NULL, '', 4, NULL, 0, 37, 2150, NULL, 417, 3, 1, NULL, NULL, NULL, 2150, '0000002926', 'Tidak diketahui', NULL, NULL, 'SYSTEM', '2007-07-06 09:53:35', '(NCIBookMan)', 'hartini', '2017-05-02 08:11:00', '192.168.0.228', 1, NULL, NULL, 'B0000002926'),
(3389, '2442', 'Winnetou 2 : Si Pencari Jejak', 'Si Pencari Jejak', 'May, Karl', '', '', 'Jakarta', 'Pustaka Primatama', '2004', NULL, '', '813 May w', '563 hlm, 14 x 20 cm', '', '', '979-97376-1-3', NULL, NULL, NULL, '', 50000, NULL, 0, 37, 2171, NULL, 417, 1, 1, NULL, NULL, NULL, 2171, '0000002368', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-07-12 09:47:42', '(NCIBookMan)', 'admindaerah', '2016-02-25 11:06:02', '192.168.0.228', 1, NULL, NULL, 'B0000002368'),
(3465, '2418', 'Guru Tarno', '', 'Ireng Laras Sari', '', '', 'Yogyakarta', 'Bigraf', '1994', NULL, 'cet 1', '808.830 1 Gur g', 'xiv + 134 hlm, 15 x 21 cm', '', '', '979-8680-05-7', NULL, NULL, NULL, '', 20000, NULL, 0, 37, 2213, NULL, 1288, 1, 1, NULL, NULL, NULL, 2213, '0000002344', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-07-11 10:31:24', '(NCIBookMan)', 'fatimah', '2020-11-13 11:46:55', '192.168.0.18', 1, NULL, NULL, 'B0000002344'),
(3938, '2934', 'Bukan Milik Kami: Kumpulan Lima Cerita Pendek', 'Kumpulan Lima Cerita Pendek', 'Arifin, Syamsul', '', '', 'Jakarta', 'Balai Pustaka', '1993', NULL, 'Cet.5', '808.83 Ari b', '73 hlm; 21 cm.', '', '', '979-407-133-1', NULL, NULL, NULL, '', 15000, NULL, 0, 37, 2624, NULL, 1288, 1, 1, NULL, NULL, NULL, 2624, '0000002560', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-07-30 11:53:28', '(NCIBookMan)', 'fatimah', '2020-11-13 11:46:35', '192.168.0.18', 1, NULL, NULL, 'B0000002560'),
(4044, '2996', 'Alkitab: Firman Allah', 'Firman Allah', 'Crampton, W.Ggary', '', '', 'Surabaya', 'Momentum', '2000', NULL, 'cet. 1', '220.7 Cra a', '157 hlm.; 21 cm', '', '', '979-8307-68-2', NULL, NULL, NULL, '', 5, NULL, 0, 37, 2718, NULL, 1286, 1, 1, NULL, NULL, NULL, 2718, '0000003035', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-04 13:28:31', '(NCIBookMan)', 'puspo', '2020-12-16 10:33:59', '192.168.0.240', 1, NULL, NULL, 'B0000003035'),
(4066, '3006', 'Orang-orang Tertindas', '', 'Gibran, Kahlil', '', '', 'Jakarta', 'Inovasi', '2003', NULL, 'cet. 1', '810 Gib o', '88 hlm.; 19 cm', '', '', '979-335954-4', NULL, NULL, NULL, '', 3, NULL, 0, 37, 2738, NULL, 417, 1, 1, NULL, NULL, NULL, 2738, '0000003044', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-06 10:53:55', '(NCIBookMan)', 'admindaerah', '2016-02-25 12:58:39', '192.168.0.228', 1, NULL, NULL, 'B0000003044'),
(4167, '3229', 'Amir Hamzah, Pangeran dari Seberang', '', 'Dini, NH', '', '', 'Jakarta', 'Gaya Favorit Press', '1981', NULL, '', '813 Din a', '290 hlm.; 18 cm.', '', '', '', NULL, NULL, NULL, '', 28700, NULL, 0, 37, 2834, NULL, 417, 1, 1, NULL, NULL, NULL, 2834, '0000003229', 'Dipinjam', NULL, NULL, 'SYSTEM', '2007-08-08 15:57:18', '(NCIBookMan)', 'admindaerah', '2016-02-25 13:03:13', '192.168.0.228', 1, NULL, NULL, 'B0000003229'),
(4214, '3303', '50 Hari Untuk Membangun Dasar Yang Teguh', '', 'Joyner, Rick', '', '', 'Jakarta', 'Nafiri Gabriel', '2001', NULL, 'cet. 1', '248.4 Joy h', '168 hlm.; 23 cm', '', '', '979-9428-27-0', NULL, NULL, NULL, '', 4, NULL, 0, 37, 2878, NULL, 417, 1, 1, NULL, NULL, NULL, 2878, '0000003163', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-13 12:14:11', '(NCIBookMan)', 'admindaerah', '2016-02-25 13:07:09', '192.168.0.228', 1, NULL, NULL, 'B0000003163'),
(4403, '3164', 'Menangkar dan Melatih Anis', '', 'Hastoro, Indriyadi', '', '', 'Jakarta', 'Penebar Swadaya', '2000', NULL, 'cet 4', '636.68 Has m', 'viii + 40 hlm, 21 cm', '', '', '979-489-544-X', NULL, NULL, NULL, '', 20000, NULL, 0, 37, 3016, NULL, 417, 1, 1, NULL, NULL, NULL, 3016, '0000003364', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-21 09:13:51', '(NCIBookMan)', 'admindaerah', '2016-02-22 15:48:06', '192.168.0.200', 1, NULL, NULL, 'B0000003364'),
(4519, '3539', 'TOGA 3 : Tanaman Obat Keluarga', 'Tanaman Obat Keluarga', 'Santoso, Hieronymus Budi', '', '', 'Yogyakarta', 'Kanisius', '1998', NULL, 'cet 4', '633.88 San t', '88 hlm, 19 cm', '', '', '979-672-267-4', NULL, NULL, NULL, '', 15000, NULL, 0, 37, 3112, NULL, 1288, 1, 1, NULL, NULL, NULL, 3112, '0000003539', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-22 09:26:18', '(NCIBookMan)', 'fatimah', '2020-12-10 13:55:45', '192.168.0.240', 1, NULL, NULL, 'B0000003539'),
(4600, '3585', 'Istri-istri Orang Lain', '', 'Mansur, Anis', '', '', 'Yogyakarta', 'Mitra Pustaka', '2003', NULL, 'cet 1', '808.301 Man i', 'viii + 188 hlm, 19 cm', '', '', '', NULL, NULL, NULL, '', 20000, NULL, 0, 37, 3177, NULL, 417, 1, 1, NULL, NULL, NULL, 3177, '0000003585', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-22 14:25:22', '(NCIBookMan)', 'admindaerah', '2016-02-25 13:16:29', '192.168.0.228', 1, NULL, NULL, 'B0000003585'),
(4832, '3824', 'Public Relations', '', 'Jefkins, Frank', '', '', 'Jakarta', 'Erlangga', '2000', NULL, 'cet 1', '', 'xi + 394 hlm, 24 cm', '', '', '', NULL, NULL, NULL, '', 45000, NULL, 0, 37, 3325, NULL, 417, 1, 1, NULL, NULL, NULL, 3325, '0000003824', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-27 23:37:49', '(NCIBookMan)', 'admindaerah', '2016-02-25 14:26:33', '192.168.0.228', 1, NULL, NULL, 'B0000003824'),
(4849, '3831', 'The Financial Times on Management : The Financial Times tentang Manajemen Menghadapi Perubahan dan Ketidakpastian', 'The Financial Times tentang Manajemen Menghadapi Perubahan dan Ketidakpastian', 'Lorenz, Christopher', 'Nicholas Leslie', '', 'Jakarta', 'Elek Media Komputindo PT', '1995', NULL, '', '650.1 Lor f', 'viii + 258 hlm, 23 cm', '', '', '979-637-737-3', NULL, NULL, NULL, '', 35000, NULL, 0, 37, 3336, NULL, 417, 1, 1, NULL, NULL, NULL, 3336, '0000003831', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-28 00:21:36', '(NCIBookMan)', 'admindaerah', '2016-01-21 14:11:40', '192.168.0.200', 1, NULL, NULL, 'B0000003831'),
(4877, '3851', 'Manajemen Untuk Sekretaris', '', 'Waworuntu, Tony', '', '', 'Jakarta', 'Gramedia', '1991', NULL, 'cet 4', '651.3 Waw m', 'xiv + 140 hlm, 24 cm', '', '', '979-403-408-8', NULL, NULL, NULL, '', 25000, NULL, 0, 37, 3363, NULL, 1287, 1, 1, NULL, NULL, NULL, 3363, '0000003851', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-29 21:34:07', '(NCIBookMan)', 'fatimah', '2020-11-24 10:41:53', '192.168.0.18', 1, NULL, NULL, 'B0000003851'),
(4889, '3860', 'Makan Enak Cara Food Combining Plus Panduan bagi Pemula', '', 'Marahimin, Hiang', '', '', 'Jakarta', 'Nirmala', '2002', NULL, 'cet 1', '641.6 Mar m', '104 hlm, 24 cm', '', '', '979-96641-1-X', NULL, NULL, NULL, '', 30000, NULL, 0, 37, 3372, NULL, 417, 1, 1, NULL, NULL, NULL, 3372, '0000003860', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-29 22:39:00', '(NCIBookMan)', 'admindaerah', '2015-12-21 11:48:45', '192.168.0.200', 1, NULL, NULL, 'B0000003860'),
(4902, '3871', 'Resep-resep Pedas Pembangkit Selera', '', 'Klara Siauw', '', '', 'Jakarta', 'Gramedia', '2002', NULL, 'cet 1', '641.5 Kla r', '63 hlm, 20,5 cm', '', '', '979-695-951-8', NULL, NULL, NULL, '', 15000, NULL, 0, 37, 3383, NULL, 417, 1, 1, NULL, NULL, NULL, 3383, '0000003871', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-08-30 00:34:29', '(NCIBookMan)', 'admindaerah', '2015-12-21 11:49:03', '192.168.0.200', 1, NULL, NULL, 'B0000003871'),
(5481, '4370', 'Gelang Giok Naga', '', 'Helena, Leny', '', '', 'Bima', 'Qanita', '2006', NULL, 'cet 1', '813 Hel g', '316 hlm, 20,5 cm', '', '', '979-3269-51-0', NULL, NULL, NULL, '', 45000, NULL, 0, 37, 3811, NULL, 417, 1, 1, NULL, NULL, NULL, 3811, '0000004370', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-09-30 23:17:14', '(NCIBookMan)', 'admindaerah', '2016-02-25 15:19:11', '192.168.0.228', 1, NULL, NULL, 'B0000004370'),
(5543, '4581', 'The Strange Girl', '', 'Dermawan, Laurentia', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '979-22-2729-6', NULL, NULL, NULL, '', 4, NULL, 0, 37, 3850, NULL, 417, 1, 1, NULL, NULL, NULL, 3850, '0000004581', 'Tersedia', NULL, NULL, 'SYSTEM', '2007-10-02 21:16:59', '(NCIBookMan)', 'admindaerah', '2016-02-25 15:24:44', '192.168.0.228', 1, NULL, NULL, 'B0000004581'),
(5903, '7049', 'Asyik mengerjakan PR Matematika SD Kelas 5', '', 'Alfarian, de', '', '', 'Jakarta', 'WahyuMedia', '2006', NULL, 'cet 1', '371 Alf a', 'viii, 25 cm, 150 hlm', '', '', '979-795-058-1', NULL, NULL, NULL, '', 45000, NULL, 0, 37, 4021, NULL, 417, 1, 1, NULL, NULL, NULL, 4021, '0000007049', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-02-05 00:58:34', '(NCIBookMan)', 'hartini', '2016-02-26 11:15:26', '192.168.0.203', 1, NULL, NULL, 'B0000007049'),
(6029, '7113', 'Wedding Planner', '', 'Hariwijaya', '', '', 'Yogyakarta', 'Edsa Mahkota', '2007', NULL, '', '362.8 Har w', 'x,172 hlm.;21 cm', '', '', '978-979-3996-1', NULL, NULL, NULL, '', 25000, NULL, 0, 37, 4084, NULL, 417, 1, 1, NULL, NULL, NULL, 4084, '0000007113', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-02-11 23:24:00', '(NCIBookMan)', 'hartini', '2016-02-26 11:21:02', '192.168.0.203', 1, NULL, NULL, 'B0000007113'),
(6480, '6335', 'Pelajaran Bahasa Mandarin Modern Tingkat Dasar Jil. 1', '', 'Tan Tiong Hwat', '', '', 'Jakarta', 'Puspa Swara', '2002', NULL, 'cet. 1', '495.1 Tan p', '114 hlm.; 25 cm', '', '', '979-9386-50-0', NULL, NULL, NULL, '', 4, NULL, 0, 37, 4331, NULL, 417, 1, 1, NULL, NULL, NULL, 4331, '0000006335', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-03-05 21:16:50', '(NCIBookMan)', 'admindaerah', '2016-03-07 14:47:57', '192.168.0.200', 1, NULL, NULL, 'B0000006335'),
(6814, '7553', 'Emulsi dan pangan instant ber-lesitin', '', 'Hartomo, AJ', '', '', 'Yogyakarta', 'Andi', '1993', NULL, 'ed 1 cet 1', '664 Har e', 'vii + 75 hlm, 23 cm', '', '', '979-533-121-3', NULL, NULL, NULL, '', 15, NULL, 0, 37, 4562, NULL, 417, 1, 1, NULL, NULL, NULL, 4562, '0000007553', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-04-02 10:16:38', '(NCIBookMan)', 'admindaerah', '2016-03-07 15:03:59', '192.168.0.200', 1, NULL, NULL, 'B0000007553'),
(7124, '6505', 'Budi daya Bambu', '', 'Hartanto', '', '', 's.l.', 'Dahara Prize', '1991', NULL, '', '633.5 Har b', '95 hlm.; 21 cm', '', '', '', NULL, NULL, NULL, '', 3, NULL, 0, 37, 4793, NULL, 1288, 1, 1, NULL, NULL, NULL, 4793, '0000006505', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-04-22 23:10:54', '(NCIBookMan)', 'fatimah', '2020-12-10 11:21:07', '192.168.0.240', 1, NULL, NULL, 'B0000006505'),
(7176, '8068', 'Tanaman Sumber Pemanis', '', 'Lutony, Toni Luqman', '', '', 'Jakarta', 'Penebar Swadaya', '1993', NULL, 'cet. 1', '633.6 Lut t', 'x+154 hlm.; 20 cm', '', '', '979-489-177-0', NULL, NULL, NULL, '', 3, NULL, 0, 37, 4841, NULL, 417, 1, 1, NULL, NULL, NULL, 4841, '0000008068', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-04-25 23:35:13', '(NCIBookMan)', 'admindaerah', '2016-01-27 10:07:23', '192.168.0.200', 1, NULL, NULL, 'B0000008068'),
(7501, '6750', 'Panduan Belajar Kls. 3 SMA: Fisika', 'Fisika', '', '', '', 'Yogyakarta', 'Lembaga Pendidikan Primagama', '1995', NULL, 'cet. 1', '378.1 p', '99 hlm.; 28 cm', '', '', '', NULL, NULL, NULL, '', 3, NULL, 0, 37, 5093, NULL, 417, 1, 1, NULL, NULL, NULL, 5093, '0000006750', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-06-16 09:29:08', '(NCIBookMan)', 'admindaerah', '2016-03-10 13:39:12', '192.168.0.200', 1, NULL, NULL, 'B0000006750'),
(7661, '7714', 'Trik Cepat Menguasai MS Excel 2007', '', '', '', '', 'Jakarta', 'Elek Media Komputindo PT', '2007', NULL, '', '005.369 t', '246 hlm.; 19 cm', '', '', '979-27-0', NULL, NULL, NULL, '', 3, NULL, 0, 37, 5204, NULL, 417, 1, 1, NULL, NULL, NULL, 5204, '0000007714', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-05-29 09:32:46', '(NCIBookMan)', 'admindaerah', '2016-03-14 11:21:06', '192.168.0.200', 1, NULL, NULL, 'B0000007714'),
(7729, '5266', 'English for Banking', '', 'Cyssco, Dhanny R.', '', '', 'Jakarta', 'Puspa Swara', '2003', NULL, 'cet. 1', '428 Cys e', 'vi+102 hlm.; 18 cm', '', '', '979-3235-96-9', NULL, NULL, NULL, '', 3, NULL, 0, 37, 5248, NULL, 417, 1, 1, NULL, NULL, NULL, 5248, '0000005266', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-05-16 09:33:07', '(NCIBookMan)', 'admindaerah', '2016-03-14 11:23:44', '192.168.0.200', 1, NULL, NULL, 'B0000005266'),
(8117, '10047', '101 tips dan trik handphone', '', 'Zam, Efvy Zamidra', '', '', 'Yogyakarta', 'Gava Media', '2007', NULL, 'ed 1 cert 1', '005.369 Zam t', 'xiv + 300 hlm, 18 cm', '', '', '979-3469-58-7', NULL, NULL, NULL, '', 35000, NULL, 0, 37, 5442, NULL, 1286, 1, 1, NULL, NULL, NULL, 5442, '0000010047', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-09-18 10:43:50', '(NCIBookMan)', 'puspo', '2021-01-09 11:19:14', '192.168.0.218', 1, NULL, NULL, 'B0000010047'),
(8303, '5832', 'Pintar Matematika Berhitung untuk SD Kls. 5', '', '', '', '', 's.l.', 'Yustadi', '2000', NULL, 'cet. 1', '510. 76 Pin p', '387 hlm.; 25 cm', '', '', '', NULL, NULL, NULL, '', 4, NULL, 0, 37, 5568, NULL, 417, 1, 1, NULL, NULL, NULL, 5568, '0000005832', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-06-10 11:30:12', '(NCIBookMan)', 'admindaerah', '2016-03-14 15:07:23', '192.168.0.228', 1, NULL, NULL, 'B0000005832'),
(8384, '5945', 'cara Belajar Yang Sukses di Perguruan Tinggi', '', 'Salam, Burhanuddin', '', '', 'Jakarta', 'Rineka Cipta', '2004', NULL, 'cet. 1', '378.07 Sal c', '163 hlm.; 21 cm', '', '', '979-518-692-0', NULL, NULL, NULL, '', 4, NULL, 0, 37, 5631, NULL, 1287, 1, 1, NULL, NULL, NULL, 5631, '0000005945', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-06-11 10:19:32', '(NCIBookMan)', 'naraswari', '2020-12-03 09:17:10', '192.168.0.18', 1, NULL, NULL, 'B0000005945'),
(8535, '6875', 'Menyiapkan Masa Depan Anak', '', 'Etty, Maria', '', '', 'Jakarta', 'Grasindo', '', NULL, 'cet. 1', '374.2 Ett m', 'vi+110 hlm.; 23 cm', '', '', '979-732-009-X', NULL, NULL, NULL, '', 3, NULL, 0, 37, 5755, NULL, 1287, 1, 1, NULL, NULL, NULL, 5755, '0000006875', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-06-27 08:42:50', '(NCIBookMan)', 'naraswari', '2020-12-03 08:19:16', '10.1.5.107', 1, NULL, NULL, 'B0000006875'),
(8618, '8289', 'studi notariat dan serba-serbi praktek notaris', '', 'Kie,Tan thong', '', '', 'Jakarta', 'PT.Ictiar baru van hoeve', '1994', NULL, '1', '346.04 Kie s', 'xxvi+414,24 cm', '', '', '979-9226-97-4', NULL, NULL, NULL, '', 4, NULL, 0, 37, 5822, NULL, 417, 1, 1, NULL, NULL, NULL, 5822, '0000008289', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-07-01 10:55:58', '(NCIBookMan)', 'admindaerah', '2016-03-14 15:25:07', '192.168.0.228', 1, NULL, NULL, 'B0000008289'),
(9093, '9033', 'Orde Baru dlm Angka', '', '', '', '', 'Jakarta', 'Sekjend DPP Golkar', '1992', NULL, 'cet. 1', '320 Ord o', '197 hlm.; 21 cm', '', '', '', NULL, NULL, NULL, '', 2, NULL, 0, 37, 6217, NULL, 417, 1, 1, NULL, NULL, NULL, 6217, '0000009033', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-07-22 11:15:43', '(NCIBookMan)', 'admindaerah', '2016-03-15 09:59:04', '192.168.0.217', 1, NULL, NULL, 'B0000009033'),
(9139, '8670', 'Neraca Gusdur di Panggung Kekuasaan', '', 'Zada, Khamami', '', '', 'Jakarta', 'Lakpesdam', '2002', NULL, 'cet. 1', '320.08 Zad n', 'xxvi+296 hlm.; 23 cm', '', '', '979-95818-2-6', NULL, NULL, NULL, '', 4, NULL, 0, 37, 6262, NULL, 417, 1, 1, NULL, NULL, NULL, 6262, '0000008670', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-07-22 14:17:13', '(NCIBookMan)', 'admindaerah', '2016-03-17 14:11:47', '192.168.0.200', 1, NULL, NULL, 'B0000008670'),
(9352, '8744', 'Dibawah Cengkraman IMF: Peran IMF dalam krisis Ekonomi Indonesia', 'Peran IMF dalam krisis Ekonomi Indonesia', 'Ismawan, Indra', '', '', 'Solo', 'Pondok Edukasi', '2002', NULL, 'cet. 1', '330.598 Ism d', '171 hlm.; 21 cm', '', '', '979-3305-03-7', NULL, NULL, NULL, '', 4, NULL, 0, 37, 6435, NULL, 417, 1, 1, NULL, NULL, NULL, 6435, '0000008744', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-08-05 06:05:05', '(NCIBookMan)', 'admindaerah', '2016-01-18 14:22:08', '192.168.0.228', 1, NULL, NULL, 'B0000008744'),
(9392, '9120', 'membunuh Itu Gampang', '', 'Christie, Agatha', '', '', 'Jakarta', 'Gramedia Pustaka Utama', '2002', NULL, 'cet. 5', 'Fik Chr m', '352 hlm,;18cm', '', '', '979-403-082-1', NULL, NULL, NULL, '', 4, NULL, 0, 37, 6463, NULL, 417, 1, 1, NULL, NULL, NULL, 6463, '0000009130', 'Dipinjam', NULL, NULL, 'SYSTEM', '2008-08-05 20:57:46', '(NCIBookMan)', 'admindaerah', '2016-03-17 14:51:56', '192.168.0.200', 1, NULL, NULL, 'B0000009130'),
(9393, '9200', 'Pemantapan Usaha Pembangunan di Daerah Transmigrasi', '', '', '', '', 'Jakarta', 'Pusat Pembinaan Sumber Daya Manusia', '', NULL, 'cet. 1', '307.2 Pem p', '223 hlm.; 21 cm', '', '', '', NULL, NULL, NULL, '', 4, NULL, 0, 37, 6464, NULL, 417, 1, 1, NULL, NULL, NULL, 6464, '0000009200', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-08-06 08:53:20', '(NCIBookMan)', 'admindaerah', '2016-03-17 14:51:58', '192.168.0.200', 1, NULL, NULL, 'B0000009200'),
(9448, '9152', 'Yasha (9)', '', 'Yoshida Akimi', '', '', 'Jakarta', 'PT. Gramedia', '2002', NULL, '', '899.2213 Yos y', '184 hlm,;17cm', '', '', '979-20-3597-4', NULL, NULL, NULL, '', 4, NULL, 0, 37, 6511, NULL, 417, 1, 1, NULL, NULL, NULL, 6511, '0000009152', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-08-05 22:50:45', '(NCIBookMan)', 'admindaerah', '2016-03-17 14:53:22', '192.168.0.200', 1, NULL, NULL, 'B0000009152'),
(9519, '8824', 'Si Badung Jadi Pengawas', '', 'Blyton, Enid', '', '', 'Jakarta', 'Gramedia Pustaka Utama', '2002', NULL, 'cet. 6', 'Fik Bly s', '254hlm,:18cm', '', '', '979- 605-658-5', NULL, NULL, NULL, '', 3, NULL, 0, 37, 6569, NULL, 417, 1, 1, NULL, NULL, NULL, 6569, '0000008824', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-08-06 13:32:44', '(NCIBookMan)', 'admindaerah', '2016-03-14 11:47:22', '192.168.0.200', 1, NULL, NULL, 'B0000008824'),
(9781, '9512', '60 Permainan Kecerdasan Kinestetik', '', 'Faruq, Muhammad Muhyi', '', '', 'Jakarta', 'PT. Grasindo', '2007', NULL, 'cet. 1', '649.5 Far p', 'vi+119 hlm.;20 cm', '', '', '', NULL, NULL, NULL, '', 2, NULL, 0, 37, 6760, NULL, 417, 1, 1, NULL, NULL, NULL, 6760, '0000009512', 'Dipinjam', NULL, NULL, 'SYSTEM', '2008-08-14 11:08:22', '(NCIBookMan)', 'admindaerah', '2015-12-21 11:51:26', '192.168.0.200', 1, NULL, NULL, 'B0000009512'),
(9980, '9381', 'Perfect Decisions', '', 'Leigh, Andrew', '', '', 'Jakarta', 'Elek Media Komputindo PT', '1997', NULL, 'cet. 1', '658.4 Lei p', '132 hlm.; 20 cm', '', '', '979-663-612-3', NULL, NULL, NULL, '', 4, NULL, 0, 37, 6904, NULL, 417, 1, 1, NULL, NULL, NULL, 6904, '0000009381', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-08-21 10:30:35', '(NCIBookMan)', 'admindaerah', '2016-02-25 15:29:27', '192.168.0.228', 1, NULL, NULL, 'B0000009381'),
(10160, '9806', 'Pengaturan Hak Atas Tanah Beserta Bangunan', '', 'Sumardjono, Maria SW.', '', '', 'Jakarta', 'Grafika Mardi Yuwana', '2007', NULL, 'cet 1', '333 Sum p', 'x+130 hlm,; 21 cm', '', '', '978-979-709-303-7', NULL, NULL, NULL, '', 4, NULL, 0, 37, 7056, NULL, 417, 1, 1, NULL, NULL, NULL, 7056, '0000009806', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-08-26 09:48:15', '(NCIBookMan)', 'admindaerah', '2016-01-04 11:05:29', '192.168.0.200', 1, NULL, NULL, 'B0000009806'),
(10189, '9826', 'PPN', '', 'Sukardji, Untung', '', '', 'Jakarta', 'PT Raja Grafindo Persada', '2002', NULL, 'cet 5', '336.2 Suk p', 'xxiv+606 hlm,; 21 cm', '', '', '979-421-863-4', NULL, NULL, NULL, '', 4, NULL, 0, 37, 7081, NULL, 417, 1, 1, NULL, NULL, NULL, 7081, '0000009826', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-08-26 11:28:27', '(NCIBookMan)', 'admindaerah', '2016-01-04 11:05:48', '192.168.0.200', 1, NULL, NULL, 'B0000009826'),
(10236, '9856', 'Hukum Administrasi Negara', '', 'Koentjoro, Diana Halim', '', '', 'Jakarta', 'Ghalia Indonesia', '2004', NULL, 'cet 1', '342 Koe h', '178 hlm,; 23 cm', '', '', '979-450-487-5', NULL, NULL, NULL, '', 3, NULL, 0, 37, 7121, NULL, 1287, 1, 1, NULL, NULL, NULL, 7121, '0000009856', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-08-27 09:15:50', '(NCIBookMan)', 'naraswari', '2020-11-10 14:50:00', '10.1.5.180', 1, NULL, NULL, 'B0000009856'),
(10408, '9982', 'Pendidikan Matematika', '', 'Karim,Muchtar', '', '', 'Jakarta', 'Universitas Terbuka', '2004', NULL, 'CET 13', '510 Kar p', '20,5 cm', '', '', '979-602-671-6', NULL, NULL, NULL, '', 3, NULL, 0, 37, 7262, NULL, 417, 1, 1, NULL, NULL, NULL, 7262, '0000009982', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-09-02 23:16:57', '(NCIBookMan)', 'admindaerah', '2016-03-29 12:09:05', '192.168.0.228', 1, NULL, NULL, 'B0000009982'),
(10473, '11375', 'Brain Management for self improvement', '', 'Pasiak, Taufiq', '', '', 'Bandung', 'Mizan', '2007', NULL, '', '', '257 hlm, 21 cm', '', '', '979-433-461-8', NULL, NULL, NULL, '', 4, NULL, 0, 37, 7314, NULL, 417, 1, 1, NULL, NULL, NULL, 7314, '0000011375', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-11-06 04:36:53', '(NCIBookMan)', 'admindaerah', '2015-11-10 14:15:36', '192.168.0.228', 1, NULL, NULL, 'B0000011375'),
(10733, '16132', 'Olga : Leukemia Kemping', 'Leukemia Kemping', 'Hilman', '', '', 'Jakarta', 'Gramedia', '1991', NULL, '4', 'Fik Hil o', '168 hlm, 18 cm', '', '', '', NULL, NULL, NULL, '', 3, NULL, 0, 37, 7499, NULL, 417, 1, 1, NULL, NULL, NULL, 7499, '0000016132', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-11-03 14:20:40', '(NCIBookMan)', 'admindaerah', '2015-11-28 11:40:57', '192.168.0.217', 1, NULL, NULL, 'B0000016132'),
(10933, '10799', 'Bugar dengan lari', '', 'Brown, Richard L', '', '', 'Jakarta', 'Raja Grafindo Perkasa', '1996', NULL, '', '796.42 Bro b', 'vi + 154 hlm, 24 cm', '', '', '979-421-553-8', NULL, NULL, NULL, '', 25000, NULL, 0, 37, 7637, NULL, 417, 1, 1, NULL, NULL, NULL, 7637, '0000010799', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-10-15 14:17:15', '(NCIBookMan)', 'admindaerah', '2016-03-29 12:18:35', '192.168.0.228', 1, NULL, NULL, 'B0000010799'),
(10952, '10911', 'Lembaran Daerah Prop Dati I Jateng Tentang Pola Dasar Pembangunan Daerah Prop Dati I Jateng', '', '', '', '', 's.l.', 'Pem Prop Dati I Jateng', '', NULL, '', '', '74 hlm,; 21 cm', '', '', '', NULL, NULL, NULL, '', 4, NULL, 0, 37, 7652, NULL, 417, 1, 1, NULL, NULL, NULL, 7652, '0000010911', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-10-08 13:53:50', '(NCIBookMan)', 'admindaerah', '2016-03-29 12:19:03', '192.168.0.228', 1, NULL, NULL, 'B0000010911'),
(10975, '10824', 'Huru-hara Kiamat', '', 'Al-Adnani, Abu Fatiah', '', '', 'Solo', 'Roemah Buku', '2007', NULL, 'cet. 1', '297.219 Al- h', '278 hlm.; 21 cm', '', '', '979-16761-3-5', NULL, NULL, NULL, '', 4, NULL, 0, 37, 7674, NULL, 417, 1, 1, NULL, NULL, NULL, 7674, '0000010824', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-10-10 09:33:24', '(NCIBookMan)', 'admindaerah', '2015-11-10 14:18:46', '192.168.0.228', 1, NULL, NULL, 'B0000010824'),
(11006, '10835', '86 Langkah Meraih Kebahgiaan Hidup', '', 'Bakkar, Abdul Karim', '', '', 'Jakarta', 'Grafindo Khazanah Ilmu', '2008', NULL, 'cet. 1', '297.5 Bak l', '265 hlm.; 21 cm', '', '', '979-3858-32-X', NULL, NULL, NULL, '', 5, NULL, 0, 37, 7697, NULL, 417, 1, 1, NULL, NULL, NULL, 7697, '0000010835', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-10-10 10:28:03', '(NCIBookMan)', 'admindaerah', '2015-12-28 15:07:03', '192.168.0.200', 1, NULL, NULL, 'B0000010835'),
(11015, '10927', 'Pedoman Penulisan Skripsi, Tesis, dan Disertasi', '', 'Azra, Azyumardi', '', '', 'Jakarta', 'IAIN JAKARTA PRESS', '2000', NULL, 'Cet 1', '001.4 Ped a', 'xii, 84 hlm,;21 cm', '', '', '979-95829-0-3', NULL, NULL, NULL, '', 8, NULL, 0, 37, 7706, NULL, 417, 1, 1, NULL, NULL, NULL, 7706, '0000010927', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-10-11 05:18:26', '(NCIBookMan)', 'admindaerah', '2015-11-28 09:40:31', '192.168.0.217', 1, NULL, NULL, 'B0000010927'),
(11106, '11010', 'Tom & Jerry : Kapal Selam', 'Kapal Selam', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', 3, NULL, 0, 37, 7780, NULL, 417, 1, 1, NULL, NULL, NULL, 7780, '0000011010', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-10-17 16:37:35', '(NCIBookMan)', 'admindaerah', '2016-03-29 12:57:19', '192.168.0.228', 1, NULL, NULL, 'B0000011010'),
(11145, '11203', 'Seluk beluk tentang bumi kita', '', 'Sutton, Felix', '', '', 'Jakarta', 'Mutiara', '1978', NULL, '', '525.07 Sut s', '75 hlm, 21 cm', '', '', '', NULL, NULL, NULL, '', 15000, NULL, 0, 37, 7817, NULL, 1232, 2, 1, NULL, NULL, NULL, 7817, '0000011203', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-10-21 00:19:47', '(NCIBookMan)', 'hartini', '2016-11-01 10:05:42', '192.168.0.217', 1, NULL, NULL, 'B0000011203'),
(11155, '11210', 'Bimbingan dan konseling di sekolah', '', 'Walgito, Bimo', '', '', 's.l.', 'Andi', '2004', NULL, '', '371.4 Wal b', 'xvi + 244 hlm, 23 cm', '', '', '979-731-206-2', NULL, NULL, NULL, '', 35000, NULL, 0, 37, 7824, NULL, 417, 1, 1, NULL, NULL, NULL, 7824, '0000011210', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-10-21 01:24:31', '(NCIBookMan)', 'admindaerah', '2016-03-29 12:58:41', '192.168.0.228', 1, NULL, NULL, 'B0000011210'),
(11267, '11550', 'The Queen of Dead', '', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 7914, NULL, 417, 1, 1, NULL, NULL, NULL, 7914, '0000011550', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-11-20 14:38:41', '(NCIBookMan)', 'admindaerah', '2016-03-29 13:00:41', '192.168.0.228', 1, NULL, NULL, 'B0000011550'),
(11407, '11805', 'Disini cinta pertama kali bersemi', '', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', 1, NULL, 0, 37, 8027, NULL, 417, 1, 1, NULL, NULL, NULL, 8027, '0000011805', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-11-07 02:40:12', '(NCIBookMan)', 'admindaerah', '2016-03-14 13:15:02', '192.168.0.200', 1, NULL, NULL, 'B0000011805'),
(11421, '11393', 'Meski Pialaku Terbang', '', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 8038, NULL, 417, 1, 1, NULL, NULL, NULL, 8038, '0000011393', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-11-08 02:29:46', '(NCIBookMan)', 'admindaerah', '2016-03-29 13:03:10', '192.168.0.228', 1, NULL, NULL, 'B0000011393'),
(11473, '11426', 'Deviasi 2', '', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 8082, NULL, 417, 1, 1, NULL, NULL, NULL, 8082, '0000011426', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-11-15 01:37:37', '(NCIBookMan)', 'admindaerah', '2016-03-29 13:04:32', '192.168.0.228', 1, NULL, NULL, 'B0000011426'),
(11740, '12185', 'Seri Anak Cerdas : Alat Transportasi', 'Alat Transportasi', 'Wardhana, Eka', '', '', 'Bandung', 'Syaamil Kid', '2007', NULL, '', '813 War s', '24 hlm, 17 cm', '', '', '', NULL, NULL, NULL, '', 10000, NULL, 0, 37, 8240, NULL, 1210, 1, 1, NULL, NULL, NULL, 8240, '0000012185', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-11-21 02:10:10', '(NCIBookMan)', 'admindaerah', '2015-11-28 11:47:12', '192.168.0.217', 1, NULL, NULL, 'B0000012185'),
(11806, '12240', 'Jalan Hidayah', '', 'Manandin, Johan', '', '', 'Yogyakarta', 'Pustaka Insan Madani', '2008', NULL, '', 'Fik Man j', '30 hlm, 30 cm', '', '', '978-979-026-114-3', NULL, NULL, NULL, '', 1, NULL, 0, 37, 8276, NULL, 417, 1, 1, NULL, NULL, NULL, 8276, '0000012240', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-11-22 12:42:09', '(NCIBookMan)', 'admindaerah', '2016-03-14 13:18:46', '192.168.0.200', 1, NULL, NULL, 'B0000012240'),
(12081, '12374', 'Membaca otak cowok', '', 'Lestari, Endang', '', '', 'Yogyakarta', 'Galang Press', '2005', NULL, '', '155.5 Les m', '115 hlm, 17 cm', '', '', '979-3627-94-8', NULL, NULL, NULL, '', 2, NULL, 0, 37, 8432, NULL, 417, 1, 1, NULL, NULL, NULL, 8432, '0000012374', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-12-01 21:24:49', '(NCIBookMan)', 'admindaerah', '2016-03-15 09:43:02', '192.168.0.217', 1, NULL, NULL, 'B0000012374'),
(12221, '12789', 'Fenomena kalam ilahi : bukti kemukjizatan Al-Qur\'an', 'bukti kemukjizatan Al-Qur\'an', 'Quthb, Muhammad', '', '', 'Jakarta', 'Pena Pundi Aksara', '2005', NULL, '', '297.2 Qut f', '238 hlm, 23 cm', '', '', '797-3855-04-5', NULL, NULL, NULL, '', 4, NULL, 0, 37, 8540, NULL, 1286, 1, 1, NULL, NULL, NULL, 8540, '0000012789', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-03-30 14:16:09', '(NCIBookMan)', 'puspo', '2020-11-29 13:26:47', '192.168.0.18', 1, NULL, NULL, 'B0000012789'),
(12409, '17880', 'Catatan Harian Sandera GAM: Kisah Nyata Safrida dan Soraya', 'Kisah Nyata Safrida dan Soraya', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', 4, NULL, 0, 37, 8673, NULL, 417, 1, 1, NULL, NULL, NULL, 8673, '0000017880', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-10-27 11:03:20', '(NCIBookMan)', 'hartini', '2017-06-09 10:27:59', '192.168.0.200', 1, NULL, NULL, 'B0000017880'),
(12503, '13109', 'Algoritme Pengambilan Keputusan Klinis', '', 'Kim, A. Eagle', '', '', 'Jakarta', 'EGC', '2006', NULL, 'cet. 1', '610.68 Kim a', '212 hlm.; 21 cm', '', '', '979-448-723-6', NULL, NULL, NULL, '', 4, NULL, 0, 37, 8737, NULL, 417, 1, 1, NULL, NULL, NULL, 8737, '0000013109', 'Tersedia', NULL, NULL, 'SYSTEM', '2008-12-28 12:51:29', '(NCIBookMan)', 'admindaerah', '2015-11-04 15:03:28', '192.168.0.200', 1, NULL, NULL, 'B0000013109'),
(12597, '13179', 'Mantra Orang Jawa', '', 'Damono, Sapardi Djoko', '', '', 'Magelang', 'IndonesiaTera', '2005', NULL, 'cet. 1', '819 Dam m', '80 hlm.; 18 cm', '', '', '979-9375-98-4', NULL, NULL, NULL, '', 15, NULL, 0, 37, 8792, NULL, 417, 1, 1, NULL, NULL, NULL, 8792, '0000013179', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-01-05 19:07:08', '(NCIBookMan)', 'admindaerah', '2015-11-28 11:34:20', '192.168.0.217', 1, NULL, NULL, 'B0000013179'),
(12802, '14178', 'BBM antara Hajat Hidup dan Lahan Korupsi', '', '', '', '', 'Jakarta', 'Kompas', '2005', NULL, '', '330.959 8', 'xi, 252 hlm.; 21 cm', '', '', '979-709-18-97', NULL, NULL, NULL, '', 4, NULL, 0, 37, 8908, NULL, 1287, 1, 1, NULL, NULL, NULL, 8908, '0000014178', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-03-11 11:22:19', '(NCIBookMan)', 'naraswari', '2020-11-06 09:22:44', '10.1.5.180', 1, NULL, NULL, 'B0000014178'),
(12868, '7778', 'Topik paling seru : planet bumi', 'planet bumi', 'Matthews, Rupert', '', '', 'Jakarta', 'Erlangga', '2005', NULL, '', '525 Mat t', '32 hlm, 21 cm', '', '', '', NULL, NULL, NULL, '', 3, NULL, 0, 37, 8945, NULL, 417, 1, 1, NULL, NULL, NULL, 8945, '0000007778', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-01-14 13:46:31', '(NCIBookMan)', 'admindaerah', '2016-03-15 09:38:06', '192.168.0.217', 1, NULL, NULL, 'B0000007778'),
(12935, '15493', 'Schoolaholic Princess 2 : Romansa Singapura', 'Romansa Singapura', 'Yunisa KD', '', '', 'Yogyakarta', 'Andi', '2008', NULL, '', 'Fik Yun s', '202 hlm, 21 cm', '', '', '978-979-29-0322-5', NULL, NULL, NULL, '', 3, NULL, 0, 37, 8982, NULL, 417, 1, 1, NULL, NULL, NULL, 8982, '0000015493', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-02-15 14:12:17', '(NCIBookMan)', 'admindaerah', '2016-03-14 13:45:23', '192.168.0.200', 1, NULL, NULL, 'B0000015493'),
(12955, '7963', 'Pedoman obat pediatrik dan Implikasi Keperawatan', '', 'Bindler, Ruth McGillis', '', '', 'Jakarta', 'EGC', '2007', NULL, '', '618.92 Bin p', '818 hlm, 21 cm', '', '', '', NULL, NULL, NULL, '', 9, NULL, 0, 37, 8991, NULL, 417, 1, 1, NULL, NULL, NULL, 8991, '0000007963', 'Dipinjam', NULL, NULL, 'SYSTEM', '2009-01-15 12:01:44', '(NCIBookMan)', 'admindaerah', '2016-03-30 08:18:12', '192.168.0.228', 1, NULL, NULL, 'B0000007963'),
(13263, '8180', 'Metode penelitian pendidikan bahasa', '', 'Syamsudin AR', '', '', 'Bandung', 'Remaja Rosdakarya', '2007', NULL, '', '370.7 Sya m', '258 hlm, 25 cm', '', '', '', NULL, NULL, NULL, '', 5, NULL, 0, 37, 9155, NULL, 417, 1, 1, NULL, NULL, NULL, 9155, '0000008180', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-01-20 11:07:36', '(NCIBookMan)', 'admindaerah', '2016-03-30 08:40:16', '192.168.0.228', 1, NULL, NULL, 'B0000008180'),
(13365, '13638', 'Bisikan Hati Yang Rindu', '', 'Freddy S', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 9214, NULL, 417, 1, 1, NULL, NULL, NULL, 9214, '0000013638', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-01-22 19:03:44', '(NCIBookMan)', 'admindaerah', '2016-03-30 09:30:14', '192.168.0.228', 1, NULL, NULL, 'B0000013638'),
(13482, '13718', 'Gangway Let Me Begin : Mendadak Benjut', 'Mendadak Benjut', 'Lebon, Boim', '', '', 'Jakarta', 'Gramedia Pustaka Utama', '2008', NULL, 'cet. 1', 'Fik Leb g', '280 hlm.; 20 cm', '', '', '978-979-22-3856-3', NULL, NULL, NULL, '', 4, NULL, 0, 37, 9282, NULL, 417, 1, 1, NULL, NULL, NULL, 9282, '0000013718', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-01-28 09:31:50', '(NCIBookMan)', 'admindaerah', '2015-11-28 10:19:24', '192.168.0.217', 1, NULL, NULL, 'B0000013718'),
(13508, '8473', 'Manajemen Sumber daya manusia : Human resources Management', 'Human resources Management', 'Mathis, Robert L', '', '', 'Jakarta', 'Salemba Empat', '2006', NULL, '', '658.3 Mat m', '558 hlm, 26 cm', '', '', '979-691-355-6', NULL, NULL, NULL, '', 8, NULL, 0, 37, 9297, NULL, 417, 1, 1, NULL, NULL, NULL, 9297, '0000008473', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-01-28 12:20:10', '(NCIBookMan)', 'admindaerah', '2016-03-07 15:32:01', '192.168.0.200', 1, NULL, NULL, 'B0000008473'),
(13609, '8953', 'Mo\'s Smelly Jumper : Kaus bau si Mo monyet', 'Kaus bau si Mo monyet', 'Bedford, David', '', '', 'Jakarta', 'Erlangga', '2005', NULL, '', 'Fik Bed m', '21 cm', '', '', '979-781-127-1', NULL, NULL, NULL, '', 2, NULL, 0, 37, 9353, NULL, 1210, 1, 1, NULL, NULL, NULL, 9353, '0000008953', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-02-02 11:18:44', '(NCIBookMan)', 'admindaerah', '2015-11-28 11:54:39', '192.168.0.217', 1, NULL, NULL, 'B0000008953'),
(13677, '13777', 'Merenovasi Rumah Tipe 21dan Tipe 36', '', 'Saragih, John F.B.', '', '', 'Jakarta', 'Gramedia Pustaka Utama', '1997', NULL, 'cet. 3', '728.3 Sar m', '138 hlm.; 33 cm', '', '', '979-605-801-4', NULL, NULL, NULL, '', 5, NULL, 0, 37, 9400, NULL, 417, 1, 1, NULL, NULL, NULL, 9400, '0000013777', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-02-04 18:16:23', '(NCIBookMan)', 'admindaerah', '2016-02-25 15:31:01', '192.168.0.228', 1, NULL, NULL, 'B0000013777'),
(13728, '13817', 'Dora Emon 10', '', 'Fujio, Fujiko F', '', '', 'Jakarta', 'Elex Media Komputindo', '1995', NULL, 'cet. 1', 'Fik Fuj d', '183 hlm.; 16 cm', '', '', '', NULL, NULL, NULL, '', 3, NULL, 0, 37, 9438, NULL, 417, 1, 1, NULL, NULL, NULL, 9438, '0000013817', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-02-07 10:55:56', '(NCIBookMan)', 'admindaerah', '2015-11-28 10:34:14', '192.168.0.217', 1, NULL, NULL, 'B0000013817'),
(13826, '13894', 'Belajar Merawat di Bangsal Anak ( Learning to Careon The Paediatric Ward)', '', 'Lewer, Helen', '', '', 'Jakarta', 'EGC', '1996', NULL, 'cet. 3', '610.736 Lew b', 'ix+179 hlm.; 21 cm', '', '', '979-448-213-7', NULL, NULL, NULL, '', 4, NULL, 0, 37, 9499, NULL, 417, 1, 1, NULL, NULL, NULL, 9499, '0000013894', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-02-13 16:29:17', '(NCIBookMan)', 'admindaerah', '2015-11-28 11:21:23', '192.168.0.217', 1, NULL, NULL, 'B0000013894'),
(13953, '13978', '12 JamBelajar AutoCAD 2007', '', 'Sastra, M. Suparno', '', '', 'Yogyakarta', 'Andi', '2008', NULL, 'cet. 1', '006.68 Sas j', 'xiv+242 hlm.; 23 cm', '', '', '978-979-29-0288-4', NULL, NULL, NULL, '', 5, NULL, 0, 37, 9587, NULL, 417, 1, 1, NULL, NULL, NULL, 9587, '0000013978', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-02-22 13:39:19', '(NCIBookMan)', 'admindaerah', '2015-11-28 09:41:29', '192.168.0.217', 1, NULL, NULL, 'B0000013978'),
(14119, '18530', 'Pendidikan Moral dan Budi Pekerti dalam Perspektif Perubahan: Menggagagas Platform Pendidikan Budi Pekerti secara Kontekstual dan Futuristik', 'Menggagagas Platform Pendidikan Budi Pekerti secara Kontekstual dan Futuristik', 'Zuriah, Nurul', '', '', 'Jakarta', 'Bumi Aksara', '2007', NULL, 'Ed. 1, Cet. 1', '370.114 Zur p', 'viii+268 hlm.; 23 cm', '', '', '978-979-010-169-2', NULL, NULL, NULL, '', 5, NULL, 0, 37, 9696, NULL, 417, 1, 1, NULL, NULL, NULL, 9696, '0000018530', 'Tersedia', NULL, NULL, 'SYSTEM', '2011-02-25 05:00:04', '(NCIBookMan)', 'admindaerah', '2016-03-30 08:41:05', '192.168.0.228', 1, NULL, NULL, 'B0000018530'),
(14350, '11881', 'Penyembuhan dengan kristal', '', 'Jacquie Burges', '', '', 'Jakarta', 'Gramedia', '1998', NULL, '', '615.8 Jac p', '205 hlm, 18 cm', '', '', '', NULL, NULL, NULL, '', 3, NULL, 0, 37, 9864, NULL, 1288, 1, 1, NULL, NULL, NULL, 9864, '0000011881', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-03-19 11:35:42', '(NCIBookMan)', 'fatimah', '2020-12-11 15:28:56', '192.168.0.240', 1, NULL, NULL, 'B0000011881'),
(14422, '14462', 'Mengenal Cerita Rakyat di daerah tengger', '', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 9924, NULL, 417, 3, 1, NULL, NULL, NULL, 9924, '0000014462', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-03-27 10:37:29', '(NCIBookMan)', 'hartini', '2017-07-10 08:55:23', '192.168.0.217', 1, NULL, NULL, 'B0000014462'),
(14487, '12804', 'Na Yoan dengan tukang sihir', '', 'Khaidar Noor', '', '', 'Bandung', 'Indah Jaya', '', NULL, '', 'Fik Kha n', '36 hlm, 18 cm', '', '', '', NULL, NULL, NULL, '', 2, NULL, 0, 37, 9985, NULL, 1285, 1, 1, NULL, NULL, NULL, 9985, '0000012804', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-04-07 08:37:11', '(NCIBookMan)', 'ifon', '2020-11-06 11:30:51', '192.168.0.249', 1, NULL, NULL, 'B0000012804'),
(14732, '16031', 'Trampil membawa Acara', '', 'Wiyanto, Asul', '', '', 'Jakarta', 'Grasindo', '2002', NULL, '', '808 Wiy t', 'viii + 87 hlm,; 23 cm', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 10164, NULL, 417, 1, 1, NULL, NULL, NULL, 10164, '0000016031', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-04-29 11:54:13', '(NCIBookMan)', 'admindaerah', '2016-03-30 13:22:14', '192.168.0.228', 1, NULL, NULL, 'B0000016031'),
(14825, '14757', 'CD Bahan/Materi Sosialisasi Kebijakan Pemerintah dalam Mengatasi Keuangan Global', '', '', '', '', 'Jakarta', 'Depkominfo RI', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', 1, NULL, 0, 37, 10248, NULL, 1231, 1, 1, NULL, NULL, NULL, 10248, '0000014757', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-05-07 11:04:38', '(NCIBookMan)', 'admindaerah', '2015-11-28 11:03:29', '192.168.0.217', 1, NULL, NULL, 'B0000014757'),
(14867, '14742', 'Hama dan Penyakit Tanaman Perkebunan', '', 'Joko, Sartono', '', '', 'Yogyakarta', 'Citra Aji Parama', '2007', NULL, 'cet. 1', '632.9 Jok h', '44 hlm.; 23 cm', '', '', '978-979-3483-89-4', NULL, NULL, NULL, '', 2, NULL, 0, 37, 10285, NULL, 417, 1, 1, NULL, NULL, NULL, 10285, '0000014742', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-05-13 12:21:02', '(NCIBookMan)', 'admindaerah', '2016-01-04 09:27:27', '192.168.0.200', 1, NULL, NULL, 'B0000014742'),
(14999, '15052', 'Demokrasi Indonesia', '', 'Suparyanto, Yudi', '', '', 'Klaten', 'Cempaka Putih', '2008', NULL, 'cet.1', '321 Sup d', 'iv+60 hlm.;23 cm', '', '', '979-662-382-2', NULL, NULL, NULL, '', 3, NULL, 0, 37, 10367, NULL, 417, 1, 1, NULL, NULL, NULL, 10367, '0000015052', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-05-18 14:29:14', '(NCIBookMan)', 'admindaerah', '2016-03-30 13:26:18', '192.168.0.228', 1, NULL, NULL, 'B0000015052'),
(15071, '15122', 'Menulis Surat Dinas', '', 'Darmawati, Uti', '', '', 'Klaten', 'Intan Pariwara', '2008', NULL, '', '651.25 Dar m', 'iv+44 hlm.; 21 cm', '', '', '979-28-0210-8', NULL, NULL, NULL, '', 2, NULL, 0, 37, 10404, NULL, 417, 1, 1, NULL, NULL, NULL, 10404, '0000015122', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-05-19 13:30:12', '(NCIBookMan)', 'admindaerah', '2016-03-07 15:32:26', '192.168.0.200', 1, NULL, NULL, 'B0000015122'),
(15438, '12529', '10 menit menuju sehat dengan terapi refleksi telapak tangan', '', 'Wijaya Kusuma, H.M.Hembing', '', '', 'Jakarta', 'Gramedia', '2000', NULL, '', '615.32 Wij m', '212 hlm, 21 cm', '', '', '979-655-920-X', NULL, NULL, NULL, '', 3, NULL, 0, 37, 10635, NULL, 417, 1, 1, NULL, NULL, NULL, 10635, '0000012529', 'Dipinjam', NULL, NULL, 'SYSTEM', '2009-06-22 11:06:31', '(NCIBookMan)', 'admindaerah', '2015-11-04 14:54:25', '192.168.0.200', 1, NULL, NULL, 'B0000012529'),
(15458, '12545', 'Mewaspadai hipertensi : penyebab tekanan darah tinggi dan cara meredakannya', 'penyebab tekanan darah tinggi dan cara meredakannya', 'Nugroho, Adi', '', '', 'Solo', 'Aneka', '1996', NULL, '', '616.1 Nug m', '72 hlm, 21 cm', '', '', '', NULL, NULL, NULL, '', 3, NULL, 0, 37, 10652, NULL, 1288, 1, 1, NULL, NULL, NULL, 10652, '0000012545', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-06-22 12:37:17', '(NCIBookMan)', 'fatimah', '2020-12-11 15:37:42', '192.168.0.240', 1, NULL, NULL, 'B0000012545'),
(15542, '15835', 'cake & kue tanpa panggang', '', 'Ambarini', '', '', 's.l.', 'Gramedia Pustaka Utama', '2001', NULL, '', '641.865 3 amb c', '40 hlm.; 20cm', '', '', '979-686-456-8', NULL, NULL, NULL, '', 3, NULL, 0, 37, 10728, NULL, 417, 1, 1, NULL, NULL, NULL, 10728, '0000015835', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-08-24 14:05:15', '(NCIBookMan)', 'admindaerah', '2015-12-21 11:52:19', '192.168.0.200', 1, NULL, NULL, 'B0000015835'),
(15737, '14881', 'Gizi dan Tanaman di Pekarangan', '', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', 1, NULL, 0, 37, 10882, NULL, 417, 1, 1, NULL, NULL, NULL, 10882, '0000014881', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-07-07 15:27:55', '(NCIBookMan)', 'admindaerah', '2016-01-04 09:28:48', '192.168.0.200', 1, NULL, NULL, 'B0000014881');
INSERT INTO `collections` (`ID`, `NoInduk`, `Title`, `TitleAdded`, `Author`, `AuthorAdded`, `Cooperation`, `PublishLocation`, `Publisher`, `PublishYear`, `KalaTerbit`, `Edition`, `Class`, `PhysicalDescription`, `Note`, `Currency`, `ISBN`, `MapScale`, `MapNumber`, `MapSubject`, `RFID`, `Price`, `TanggalKirim`, `IsDelete`, `Branch_id`, `Catalog_id`, `Partner_id`, `Location_id`, `Rule_id`, `Category_id`, `Media_id`, `Source_id`, `Worksheet_id`, `GroupingNumber`, `NomorBarcode`, `Status`, `Keterangan_Sumber`, `Penempatan`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`, `IsVerified`, `SLA_REGISTER`, `SENAYAN_ID`, `NCIBookMan_ID`) VALUES
(15814, '16070', 'Shahih Al Bukhari Juz 1-2', '', 'Bukhari, Imam', '', '', 's.l.', 'Nur Asia', '', NULL, '', '297.130 1 Buk s', '260 hlm.; 25 cm', '', '', '', NULL, NULL, NULL, '', 6, NULL, 0, 37, 10955, NULL, 417, 1, 1, NULL, NULL, NULL, 10955, '0000016070', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-07-13 16:42:58', '(NCIBookMan)', 'admindaerah', '2016-01-04 11:19:09', '192.168.0.200', 1, NULL, NULL, 'B0000016070'),
(15877, '16972', 'Epistemologi Filsafat Pengetahuan', '', 'Gallagher, Kenneth T.', '', '', 'Yogyakarta', 'Kanisius', '2001', NULL, 'cet. 6', '121 Gal e', '187 hlm.; 21 cm', '', '', '979-497-090-5', NULL, NULL, NULL, '', 3, NULL, 0, 37, 11012, NULL, 417, 1, 1, NULL, NULL, NULL, 11012, '0000016972', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-07-16 13:55:26', '(NCIBookMan)', 'admindaerah', '2015-11-10 14:54:42', '192.168.0.228', 1, NULL, NULL, 'B0000016972'),
(16006, '10332', 'Pelumas Otomotif dan industri', '', 'Anton L', '', '', 'Jakarta', 'Balai Pustaka', '1998', NULL, '', '629.2 Ant p', '286 hlm, 21 cm', '', '', '979-666-205-1', NULL, NULL, NULL, '', 3, NULL, 0, 37, 11139, NULL, 1288, 1, 1, NULL, NULL, NULL, 11139, '0000010332', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-08-29 14:56:08', '(NCIBookMan)', 'fatimah', '2020-12-11 09:22:15', '192.168.0.240', 1, NULL, NULL, 'B0000010332'),
(16086, '17126', 'The Magicians\' Guild: Persekutuan Penyihir', 'Persekutuan Penyihir', 'Canavan, Trudi', '', '', 'Bandung', 'Mizan', '2008', NULL, 'cet. 1', '899.2213 Can m', '618 hlm.; 21 cm', '', '', '978-979-433-523-9', NULL, NULL, NULL, '', 5, NULL, 0, 37, 11201, NULL, 417, 1, 1, NULL, NULL, NULL, 11201, '0000017126', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-09-10 11:42:26', '(NCIBookMan)', 'admindaerah', '2015-11-28 10:20:17', '192.168.0.217', 1, NULL, NULL, 'B0000017126'),
(16428, '17175', 'Kau Bunuh Aku dengan Cinta', '', 'Andi Lotex', '', '', 'Yogyakarta', 'Galang Press', '2004', NULL, 'cet. 1', '813 And k', 'XX+446 hlm.; 21 cm', '', '', '979-9341-82-5', NULL, NULL, NULL, '', 4, NULL, 0, 37, 11378, NULL, 417, 1, 1, NULL, NULL, NULL, 11378, '0000017175', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-10-28 13:00:25', '(NCIBookMan)', 'admindaerah', '2015-11-28 11:34:36', '192.168.0.217', 1, NULL, NULL, 'B0000017175'),
(16606, '16221', 'Mengembangkan kreativitas anak', '', 'Amal Abdussalam Al Khalili', '', '', 'Jakarta', 'Pustaka Al-Kautsar', '2005', NULL, 'cet. 1', '155.4 Ama m', '393 hlm.; 21 cm', '', '', '979-592-305-6', NULL, NULL, NULL, '', 5, NULL, 0, 37, 11508, NULL, 417, 1, 1, NULL, NULL, NULL, 11508, '0000016221', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-11-18 17:23:04', '(NCIBookMan)', 'admindaerah', '2015-11-10 14:55:25', '192.168.0.228', 1, NULL, NULL, 'B0000016221'),
(16647, '16248', 'Konvensi-konvensi Palang Merah 1949', '', 'Kusumaatmadja, Mochtar', '', '', 'Bandung', 'Alumni', '2002', NULL, 'cet. 1', '361.7 Kus k', '398 hlm.; 21 cm', '', '', '', NULL, NULL, NULL, '', 5, NULL, 0, 37, 11544, NULL, 417, 1, 1, NULL, NULL, NULL, 11544, '0000016248', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-12-01 13:06:19', '(NCIBookMan)', 'admindaerah', '2016-01-04 11:17:41', '192.168.0.200', 1, NULL, NULL, 'B0000016248'),
(16654, '16258', 'Pengadaan Perumahan Kota dengan Peran saerta Masyarakat berpenghasilan rendah', '', 'Panudju, Bambang', '', '', 'Bandung', 'Alumni', '1999', NULL, 'cet. 1', '363.5 Pan p', '336 hlm.; 21 cm', '', '', '', NULL, NULL, NULL, '', 4, NULL, 0, 37, 11551, NULL, 417, 1, 1, NULL, NULL, NULL, 11551, '0000016258', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-12-01 14:19:45', '(NCIBookMan)', 'admindaerah', '2016-01-04 11:17:27', '192.168.0.200', 1, NULL, NULL, 'B0000016258'),
(16672, '16275', 'Rahasia penghuni rimba', '', 'Ihsan, Nurul', '', '', 'Jakarta', 'Agromedia Pustaka', '2008', NULL, 'cet. 3', 'Fik Ihs r', '24 hlm.; 23 cm', '', '', '978-979-006-097-5', NULL, NULL, NULL, '', 2, NULL, 0, 37, 11562, NULL, 417, 1, 1, NULL, NULL, NULL, 11562, '0000016275', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-12-02 14:23:08', '(NCIBookMan)', 'SYSTEM', '2009-12-02 14:23:08', '(NCIBookMan)', 1, NULL, NULL, 'B0000016275'),
(16944, '16363', 'Budi daya lele dumbo di kolam terpal', '', 'Khairuman', '', '', 'Jakarta', 'Agromedia Pustaka', '2009', NULL, 'cet. 2', '639.31 Kha b', 'vi+84 hlm.; 23 cm', '', '', '979-006-211-7', NULL, NULL, NULL, '', 4, NULL, 0, 37, 11750, NULL, 417, 1, 1, NULL, NULL, NULL, 11750, '0000016363', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-12-29 12:41:49', '(NCIBookMan)', 'admindaerah', '2016-01-04 09:31:17', '192.168.0.200', 1, NULL, NULL, 'B0000016363'),
(16953, '16373', 'Ia masuk surga, padahal tak pernah shalat', '', 'Asti, BM', '', '', 'Yogyakarta', 'Mutiara Media', '2009', NULL, 'cet. 1', '297.9 Ast i', '184 hlm.; 20 cm', '', '', '978-979-878-040-0', NULL, NULL, NULL, '', 4, NULL, 0, 37, 11759, NULL, 417, 1, 1, NULL, NULL, NULL, 11759, '0000016373', 'Tersedia', NULL, NULL, 'SYSTEM', '2009-12-29 13:17:55', '(NCIBookMan)', 'admindaerah', '2015-12-28 15:13:39', '192.168.0.200', 1, NULL, NULL, 'B0000016373'),
(17654, '15434', 'CD Membuat aplikasi web server dengan Winsock', '', '', '', '', 'Yogyakarta', 'Andi', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', 2, NULL, 0, 37, 12220, NULL, 1231, 1, 1, NULL, NULL, NULL, 12220, '0000015434', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-02-08 12:35:15', '(NCIBookMan)', 'admindaerah', '2015-11-28 11:03:48', '192.168.0.217', 1, NULL, NULL, 'B0000015434'),
(17920, '14439', 'Miliki Prinsip-prinsip jadi kaya bagi kalangan wirausaha kecil', '', 'Prasetyono, DS', '', '', 'Yogyakarta', 'Think', '2009', NULL, '', '338.04 Pra m', '255 hlm, 21 cm', '', '', '979-963-734-1', NULL, NULL, NULL, '', 3, NULL, 0, 37, 12366, NULL, 1287, 1, 1, NULL, NULL, NULL, 12366, '0000014439', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-02-23 12:01:05', '(NCIBookMan)', 'naraswari', '2020-11-10 13:57:40', '10.1.5.180', 1, NULL, NULL, 'B0000014439'),
(17922, '14441', 'Komunikasi organisasi', '', 'Arni Muhammad, Dr', '', '', 'Jakarta', 'Bumi Aksara', '2009', NULL, '', '302.2 Arn k', '228 hlm, 21 cm', '', '', '979-526-187-8', NULL, NULL, NULL, '', 4, NULL, 0, 37, 12367, NULL, 417, 1, 1, NULL, NULL, NULL, 12367, '0000014441', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-02-23 12:03:47', '(NCIBookMan)', 'admindaerah', '2016-03-29 13:17:11', '192.168.0.228', 1, NULL, NULL, 'B0000014441'),
(17960, '10110', 'Kamus teknik dalam tiga bahasa: Inggris, Belanda, Indonesia', 'Inggris, Belanda, Indonesia', 'Anwir, B.S.', '', '', 'Jakarta', 'Pradana Paramita', '1992', NULL, 'cet. 1', 'R 620.003 Anw k', '528 hal.; 21 cm', '', '', '979-408-107-8', NULL, NULL, NULL, '', 5, NULL, 0, 37, 12389, NULL, 1175, 1, 1, NULL, NULL, NULL, 12389, '0000010110', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-03-02 17:46:02', '(NCIBookMan)', 'admindaerah', '2016-01-28 15:00:58', '192.168.0.228', 1, NULL, NULL, 'B0000010110'),
(18000, '19651', 'CD Kamus Visual Disc 2', '', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', 2, NULL, 0, 37, 12421, NULL, 1231, 1, 1, NULL, NULL, NULL, 12421, '0000019651', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-03-03 18:07:35', '(NCIBookMan)', 'admindaerah', '2015-11-28 11:03:43', '192.168.0.217', 1, NULL, NULL, 'B0000019651'),
(18016, '19388', 'Petunjuk Bimbingan Pelaksanaan Haji', '', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', 25000, NULL, 0, 37, 12433, NULL, 417, 1, 1, NULL, NULL, NULL, 12433, '0000019388', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-03-04 09:19:04', '(NCIBookMan)', 'admindaerah', '2015-11-11 15:31:19', '192.168.0.203', 1, NULL, NULL, 'B0000019388'),
(18278, '17427', 'Roro Mendut', '', '', '', '', 'Jakarta', 'Elek Media Komputindo PT', '2000', NULL, '', 'Fik r', '20 hlm, 18 cm', '', '', '', NULL, NULL, NULL, '', 2, NULL, 0, 37, 12612, NULL, 1210, 1, 1, NULL, NULL, NULL, 12612, '0000017427', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-04-15 09:25:22', '(NCIBookMan)', 'admindaerah', '2015-11-28 12:01:10', '192.168.0.217', 1, NULL, NULL, 'B0000017427'),
(18456, '17669', 'Profil Daerah Kabupaten dan Kota', '', '', '', '', 'Jakarta', 'Kompas', '2003', NULL, 'cet. 1', 'R 912.1 p', '603 hlm.; 23 cm', '', '', '', NULL, NULL, NULL, '', 6, NULL, 0, 37, 12787, NULL, 1175, 2, 5, NULL, NULL, NULL, 12787, '0000017669', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-05-21 15:18:46', '(NCIBookMan)', 'admindaerah', '2016-02-05 12:58:29', '192.168.0.200', 1, NULL, NULL, 'B0000017669'),
(18464, '99909', 'Renungan Sufiditik Islam jawa', '', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 12795, NULL, 417, 1, 1, NULL, NULL, NULL, 12795, '0000099909', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-05-22 18:31:32', '(NCIBookMan)', 'admindaerah', '2016-01-18 14:54:05', '192.168.0.228', 1, NULL, NULL, 'B0000099909'),
(18492, '17636', 'Kendaraan hebat di pertanian', '', 'Graham, Ian', '', '', 'Solo', 'Tiga Serangkai', '2008', NULL, 'cet. 1', '629.255 2 Gra k', '36 hlm.; 25 cm', '', '', '978-979-018-797-9', NULL, NULL, NULL, '', 4, NULL, 0, 37, 12821, NULL, 417, 1, 1, NULL, NULL, NULL, 12821, '0000017636', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-06-15 12:24:28', '(NCIBookMan)', 'admindaerah', '2016-01-04 09:37:02', '192.168.0.200', 1, NULL, NULL, 'B0000017636'),
(19118, '17956', '50 kisah menakjubkan', '', 'Tim Darul Fikri', '', '', 'Jakarta', 'QultumMedia', '2010', NULL, '', 'Fik Tim k', 'vii + 100 hlm, 20 cm', '', '', '979-017-91-2', NULL, NULL, NULL, '', 3, NULL, 0, 37, 13199, NULL, 1210, 1, 1, NULL, NULL, NULL, 13199, '0000017956', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-09-27 12:57:09', '(NCIBookMan)', 'admindaerah', '2015-11-28 12:01:30', '192.168.0.217', 1, NULL, NULL, 'B0000017956'),
(19143, '17994', 'All Test : Kumpulan soal psikotes, TPA, TKU, dan CPNS terlengkap', 'Kumpulan soal psikotes, TPA, TKU, dan CPNS terlengkap', 'Tim Redaksi', '', '', 'Jakarta', 'Tangga Pustaka', '2010', NULL, 'cet 1', '153.9 Tim a', 'vi + 342 hlm, 23 cm', '', '', '979-9051-92-4', NULL, NULL, NULL, '', 7, NULL, 0, 37, 13212, NULL, 417, 1, 1, NULL, NULL, NULL, 13212, '0000017994', 'Tersedia', NULL, NULL, 'SYSTEM', '2010-09-28 10:34:30', '(NCIBookMan)', 'admindaerah', '2016-03-15 10:02:41', '192.168.0.217', 1, NULL, NULL, 'B0000017994'),
(19541, '22585', 'Cara cepat Taklukkan Seleksi CPNS & BUMN', '', 'Margiyanto', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 13445, NULL, 417, 1, 1, NULL, NULL, NULL, 13445, '0000022585', 'Tersedia', NULL, NULL, 'SYSTEM', '2011-01-17 15:29:56', '(NCIBookMan)', 'hartini', '2016-03-29 14:31:55', '192.168.0.200', 1, NULL, NULL, 'B0000022585'),
(19732, '18512', 'Hidup bahagia setiap hari sesuai tuntunan Nabi Muhammad SAW', '', 'Allamah, Al Majlisi', '', '', 'Jakarta', 'Zahra', '2010', NULL, '', '297.51 All h', '144 hlm, 15.5 cm', '', '', '978-979-26-6565-9', NULL, NULL, NULL, '', 3, NULL, 0, 37, 13562, NULL, 417, 1, 1, NULL, NULL, NULL, 13562, '0000018512', 'Tersedia', NULL, NULL, 'SYSTEM', '2011-02-14 15:29:19', '(NCIBookMan)', 'hartini', '2016-03-29 14:20:41', '192.168.0.200', 1, NULL, NULL, 'B0000018512'),
(20057, '18982', 'Doa-Doa Melejitkan Karier', '', 'Komaruddin', '', '', 'Jakarta Selatan', 'Qultum Media', '2010', NULL, '', '', '12cm,103hal', '', '', '979-017-095-5', NULL, NULL, NULL, '', 25000, NULL, 0, 37, 13802, NULL, 1210, 1, 1, NULL, NULL, NULL, 13802, '0000018982', 'Tersedia', NULL, NULL, 'SYSTEM', '2011-07-06 08:01:40', '(NCIBookMan)', 'admindaerah', '2015-11-05 11:41:25', '192.168.0.206', 1, NULL, NULL, 'B0000018982'),
(20170, '18893', 'Rebecca of Sunnybrook Farm', '', 'Wiggin, Kate Douglas', '', '', 'Jakarta', 'Orange Books', '2011', NULL, 'cet 1', '813 Wig r', '310 hlm, 20 cm', '', '', '978-602-8436-85-4', NULL, NULL, NULL, '', 4, NULL, 0, 37, 13881, NULL, 417, 1, 1, NULL, NULL, NULL, 13881, '0000018893', 'Tersedia', NULL, NULL, 'SYSTEM', '2011-09-06 13:19:29', '(NCIBookMan)', 'admindaerah', '2016-03-30 15:01:20', '192.168.0.228', 1, NULL, NULL, 'B0000018893'),
(20526, '20196', 'Fakta tentang uang', '', 'Hall, Alvin', '', '', 'Jakarta', 'Erlangga', '2011', NULL, 'cet. 1', '330.4 Hal f', '96 hlm.; 28 cm', '', '', '', NULL, NULL, NULL, '', 5, NULL, 0, 37, 14086, NULL, 417, 1, 1, NULL, NULL, NULL, 14086, '0000020196', 'Tersedia', NULL, NULL, 'SYSTEM', '2012-02-23 13:52:03', '(NCIBookMan)', 'admindaerah', '2015-11-28 10:48:08', '192.168.0.217', 1, NULL, NULL, 'B0000020196'),
(20936, '20358', 'Wah,Bunda melahirkan!', '', 'Ade Jayadireja', '', '', 'Jakarta', 'PT.Ufuk Publising House', '', NULL, 'cet.1', 'Fik Ida w', '23 hlm', '', '', '978-602-9159-19-6', NULL, NULL, NULL, '', 20000, NULL, 0, 37, 14331, NULL, 417, 1, 1, NULL, NULL, NULL, 14331, '0000020358', 'Tersedia', NULL, NULL, 'SYSTEM', '2012-01-30 12:38:42', '(NCIBookMan)', 'admindaerah', '2016-03-30 15:27:17', '192.168.0.228', 1, NULL, NULL, 'B0000020358'),
(20984, '20569', 'Cara Cepat Membangun Database dengan Microsoft Excel 2007', '', 'Krisna, Busana Karya', '', '', 'Yogyakarta', 'Andi', '2009', NULL, '', '005.369 Kri c', 'x + 198 hlm, 23 cm', '', '', '978-979-29-1260-9', NULL, NULL, NULL, '', 4, NULL, 0, 37, 14364, NULL, 417, 1, 1, NULL, NULL, NULL, 14364, '0000020569', 'Tersedia', NULL, NULL, 'SYSTEM', '2012-03-17 15:01:58', '(NCIBookMan)', 'admindaerah', '2016-03-30 15:31:07', '192.168.0.228', 1, NULL, NULL, 'B0000020569'),
(21136, '22045', 'Kecil-Kecil Punya Karya: My New Life', 'My New Life', 'Ade Jayadireja', '', '', 'Bandung', 'DAR! Mizan', '', NULL, '2', '927 Ade k', '', '', '', '978-979-066-501-9', NULL, NULL, NULL, '', 3, NULL, 0, 37, 14486, NULL, 417, 1, 1, NULL, NULL, NULL, 14486, '0000022045', 'Tersedia', NULL, NULL, 'SYSTEM', '2012-08-14 11:45:24', '(NCIBookMan)', 'SYSTEM', '2012-08-14 11:45:24', '(NCIBookMan)', 1, NULL, NULL, 'B0000022045'),
(21539, '23032', 'Heist Society : Pencuri Kelas Atas', 'Pencuri Kelas Atas', 'Carter, Ally', '', '', 'Jakarta', 'PT Gramedia Pustaka Utama', '2011', NULL, '', 'Fik Car h', '326 hlm.; 20 cm', '', '', '978-979-22-7802-6', NULL, NULL, NULL, '', 4, NULL, 0, 37, 14700, NULL, 417, 1, 1, NULL, NULL, NULL, 14700, '0000023032', 'Tersedia', NULL, NULL, 'SYSTEM', '2012-09-17 10:08:20', '(NCIBookMan)', 'admindaerah', '2015-11-28 12:31:42', '192.168.0.217', 1, NULL, NULL, 'B0000023032'),
(21861, '24323', 'Riwayat dan khasiat batu permata', '', '', '', '', 's.l.', 's.n.', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', 3, NULL, 0, 37, 14888, NULL, 1288, 1, 1, NULL, NULL, NULL, 14888, '0000024323', 'Tersedia', NULL, NULL, 'SYSTEM', '2012-12-18 13:40:53', '(NCIBookMan)', 'fatimah', '2020-11-09 15:44:58', '192.168.0.18', 1, NULL, NULL, 'B0000024323'),
(22104, '21882', 'Berbagai permainan yang meningkatkan kinerja: 30 aktivitas kelompok yang siap digunakan', '30 aktivitas kelompok yang siap digunakan', 'Sugar, Steve', '', '', 'Jakarta', 'Indeks', '2011', NULL, 'cet. 1', '651.3 Sug b', '336 hlm.; 28 cm', '', '', '978-979-062-307-1', NULL, NULL, NULL, '', 15, NULL, 0, 37, 15008, NULL, 417, 1, 1, NULL, NULL, NULL, 15008, '0000021882', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-01-04 12:23:38', '(NCIBookMan)', 'admindaerah', '2016-03-07 15:34:32', '192.168.0.200', 1, NULL, NULL, 'B0000021882'),
(22334, '20232', 'Peraturan Pedoman Pelaksanaan Pengadaan Barang/Jasa Pemerintah Dari Keppres Nomor 80 tahun 2003 smp Perpres No.54 tahun 2010', '', '', '', '', 'Jakarta', 'Visi Media', '2007', NULL, '', '348.02 Per p', 'vi + 444 hlm, 21 cm', '', '', '9789790650817', NULL, NULL, NULL, '', 50000, NULL, 0, 37, 15132, NULL, 1287, 1, 1, NULL, NULL, NULL, 15132, '0000020232', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-01-30 10:55:35', '(NCIBookMan)', 'naraswari', '2020-11-24 08:16:52', '192.168.0.18', 1, NULL, NULL, 'B0000020232'),
(22342, '20240', 'Statistika untuk Penelitian', '', 'Wiratna Sujarweni, V', '', '', 'Yogyakarta', 'Graha Ilmu', '2012', NULL, 'cet 1', '310 Wir s', 'viii + 220 hlm, 23 cm', '', '', '9789797568191', NULL, NULL, NULL, '', 40000, NULL, 0, 37, 15136, NULL, 417, 1, 1, NULL, NULL, NULL, 15136, '0000020240', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-01-30 11:10:15', '(NCIBookMan)', 'admindaerah', '2016-01-18 14:14:23', '192.168.0.228', 1, NULL, NULL, 'B0000020240'),
(22501, '20869', 'Tadabbur ayat-ayat motivasi', '', 'Hudzaifah Ismail', '', '', 'Jakarta', 'Elek Media Komputindo PT', '2010', NULL, 'cet. 1', '297.114 Hud t', '284 hlm.; 21 cm', '', '', '978-979-27-6907-4', NULL, NULL, NULL, '', 6, NULL, 0, 37, 15217, NULL, 417, 1, 1, NULL, NULL, NULL, 15217, '0000020869', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-02-11 17:27:27', '(NCIBookMan)', 'admindaerah', '2016-02-25 15:38:58', '192.168.0.228', 1, NULL, NULL, 'B0000020869'),
(22877, '23148', 'Sulam Payet India', '', 'Jacinta Harsi Laksmini', '', '', 'Jakarta', 'DeMedia', '2012', NULL, '1', '746.5 Jac s', '65 hlm.; 23 cm', '', '', '', NULL, NULL, NULL, '', 37500, NULL, 0, 37, 15551, NULL, 417, 1, 1, NULL, NULL, NULL, 15551, '23148', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-09-24 09:51:46', '(NCIBookMan)', 'admindaerah', '2015-11-11 13:20:34', '192.168.0.203', 1, NULL, NULL, 'B23148'),
(22922, '0000021176', 'Saladin : Pahlawan Islam', 'Pahlawan Islam', 'Hindley, Geoffrey', '', '', 'Jakarta', 'Gramedia Pustaka Utama', '2012', NULL, 'cet 1', '297.9 Hin s', '307 hlm, 21 cm', '', '', '978-979-22-8348-8', NULL, NULL, NULL, '', 60000, NULL, 0, 37, 15594, NULL, 417, 1, 1, NULL, NULL, NULL, 15594, '0000021176', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-10-22 11:45:07', '(NCIBookMan)', 'admindaerah', '2016-01-18 14:57:21', '192.168.0.228', 1, NULL, NULL, 'B0000021176'),
(22970, '0000024324', '25esai Fasad Rumah Di LahanLebar 8 M', '', 'Dwi Rinjani Putri Palupi', '', '', 'Bogor', 'Griya Kreasi', '2013', NULL, '', '720 Dwi d', '115hlm,;Ilus.:22cm', '', '', '978-979-661-172-0', NULL, NULL, NULL, '', 3, NULL, 0, 37, 15640, NULL, 1232, 2, 7, NULL, NULL, NULL, 15640, '0000024324', 'Dipinjam', NULL, NULL, 'SYSTEM', '2013-10-26 09:38:55', '(NCIBookMan)', 'hartini', '2017-02-01 09:36:57', '192.168.0.200', 1, NULL, NULL, 'B0000024324'),
(23049, '0000024405', 'Sunnah Sunnah Pilihan:Makanan Dan Minuman Serta Hewan Qurban Sembelihan', 'Makanan Dan Minuman Serta Hewan Qurban Sembelihan', 'Majelis Tertinggi Urusan Keislaman Mesir', '', '', 'Bandung', 'Angkasa', '2007', NULL, '', '297.1 Sun s', 'Xi,357hlm.;23,5cm', '', '', '978-979-665-487-1', NULL, NULL, NULL, '', 4, NULL, 0, 37, 15720, NULL, 417, 1, 1, NULL, NULL, NULL, 15720, '0000024405', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-10-31 10:27:04', '(NCIBookMan)', 'admindaerah', '2016-04-05 12:01:20', '192.168.0.228', 1, NULL, NULL, 'B0000024405'),
(23142, '24482', '10 hari aja!! Langsung Sakti Berbahsa Inggris', '', 'Panca Prastowo', '', '', 'Cimahi', 'Abiyoso', '2013', NULL, '4', '410 Pan s', '50 hlm.; 40 cm', '', '', '', NULL, NULL, NULL, '', 40000, NULL, 0, 37, 15801, NULL, 1231, 1, 1, NULL, NULL, NULL, 15801, '24482', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-11-11 09:04:32', '(NCIBookMan)', 'admindaerah', '2015-11-28 10:52:01', '192.168.0.217', 1, NULL, NULL, 'B24482'),
(23249, '0000024591', 'Muslim Visioner', '', 'Amang Syafrudin', '', '', 'Jakarta', 'Gema Insani', '2009', NULL, '', '297.613 1', 'Xvii,240hlm.;Ilus.:19,5cm', '', '', '978-979-077-116-1', NULL, NULL, NULL, '', 5, NULL, 0, 37, 15904, NULL, 417, 1, 1, NULL, NULL, NULL, 15904, '0000024591', 'Dipinjam', NULL, NULL, 'SYSTEM', '2013-11-21 10:13:02', '(NCIBookMan)', 'hartini', '2019-02-08 09:46:24', '192.168.0.217', 1, NULL, NULL, 'B0000024591'),
(23479, '0000024819', 'Ragam Menu Sehat Untuk Vegetarian', '', 'Aim.', '', '', 'Yogyakarta', 'Buku Biru', '2010', NULL, '', '664.6 Aim r', '93hlm.;20cm', '', '', '978-602-955-948-4', NULL, NULL, NULL, '', 3, NULL, 0, 37, 16129, NULL, 417, 1, 1, NULL, NULL, NULL, 16129, '0000024819', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-12-04 08:27:47', '(NCIBookMan)', 'admindaerah', '2016-02-25 11:15:54', '192.168.0.228', 1, NULL, NULL, 'B0000024819'),
(23615, '0000024954', 'Meningkatkan Hasil Panen Sayuran Dengan Teknologi EMP', '', 'Wahyudi', '', '', 'Jakarta', 'Agromedia Pustaka', '2011', NULL, '', '631.51 Wah m', 'viii,184hlm.;23cm', '', '', '979-006-312-1', NULL, NULL, NULL, '', 4, NULL, 0, 37, 16260, NULL, 417, 1, 1, NULL, NULL, NULL, 16260, '0000024954', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-12-11 08:55:44', '(NCIBookMan)', 'admindaerah', '2015-11-05 15:35:04', '192.168.0.200', 1, NULL, NULL, 'B0000024954'),
(23794, '0000025129', 'Asbabun Nuzul Untuk Zaman Kita', '', 'Fathi Fawzi Abd al-Mu\'thi', '', '', 'Jakarta Selatan', 'Zaman', '2011', NULL, '', '297.111 Fat a', '723hlm.;23cm.', '', '', '978-979-024-269-2', NULL, NULL, NULL, '', 10, NULL, 0, 37, 16431, NULL, 1232, 1, 7, NULL, NULL, NULL, 16431, '0000025129', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-12-18 14:03:37', '(NCIBookMan)', 'admindaerah', '2019-07-12 08:46:25', '192.168.0.110', 1, NULL, NULL, 'B0000025129'),
(23980, '0000025304', 'Miskin Bukan Halangan Sekolah', '', 'Suyadi', '', '', 'Jogjakarta', 'Buku Biru', '2011', NULL, '', '370.1 Suy m', '280hlm.;18cm', '', '', '978-602-978-419-0', NULL, NULL, NULL, '', 5, NULL, 0, 37, 16606, NULL, 417, 1, 1, NULL, NULL, NULL, 16606, '0000025304', 'Tersedia', NULL, NULL, 'SYSTEM', '2013-12-30 13:26:14', '(NCIBookMan)', 'admindaerah', '2016-04-05 12:38:55', '192.168.0.228', 1, NULL, NULL, 'B0000025304'),
(24111, '0000025432', 'Mencari Emas', '', 'J.M.G. Le Clezio', '', '', 'Jakarta', 'Pustaka Obor Populer', '2013', NULL, '', '813 Jea m', 'xiii,445hlm.;20cm', '', '', '978-979-461-842-4', NULL, NULL, NULL, '', 9, NULL, 0, 37, 16735, NULL, 417, 1, 1, NULL, NULL, NULL, 16735, '0000025432', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-02-06 12:44:14', '(NCIBookMan)', 'admindaerah', '2016-04-05 12:43:57', '192.168.0.228', 1, NULL, NULL, 'B0000025432'),
(24124, '0000025443', 'Lantang Lantung', '', 'Roy Saputra', '', '', 'Jakarta', 'Bukune', '2013', NULL, '', '813 Roy l', 'x,239hlm.;18cm', '', '', '', NULL, NULL, NULL, '', 5, NULL, 0, 37, 16748, NULL, 417, 1, 1, NULL, NULL, NULL, 16748, '0000025443', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-02-09 09:27:01', '(NCIBookMan)', 'admindaerah', '2016-04-05 12:44:20', '192.168.0.228', 1, NULL, NULL, 'B0000025443'),
(24234, '0000025578', 'Di Sudut Hati', '', 'Nenny Makmun', '', '', 'Jakarta Timur', 'Rumah Oranye', '2013', NULL, '', '813 Nen d', 'x,236hlm.;15cm', '', '', '978-602-1588-02-4', NULL, NULL, NULL, '', 4, NULL, 0, 37, 16856, NULL, 417, 1, 1, NULL, NULL, NULL, 16856, '0000025578', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-02-18 08:41:37', '(NCIBookMan)', 'admindaerah', '2016-04-05 12:48:21', '192.168.0.228', 1, NULL, NULL, 'B0000025578'),
(24289, '0000023717', 'zaid binTsabit', '', 'Tubagus Fajar', '', '', 'Jakarta Pusat', 'Titian Ilmu', '2007', NULL, 'revisi', 'Fik Tub z', 'vi.; 64 hlm.; 25 cm', '', '', '978-979-1304-05-4', NULL, NULL, NULL, '', 20000, NULL, 0, 37, 16911, NULL, 1210, 1, 1, NULL, NULL, NULL, 16911, '0000023717', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-03-17 10:00:04', '(NCIBookMan)', 'admindaerah', '2016-04-05 12:50:20', '192.168.0.228', 1, NULL, NULL, 'B0000023717'),
(24445, '0000023918', 'I\'ve Got Your Number', '', 'Sophie Kinsella', '', '', 'Jakarta', 'Gramedia Pustaka Utama', '2012', NULL, '1', '813 Sop i', '578 hlm.; 20 cm', '', '', '978-979-22-8408-9', NULL, NULL, NULL, '', 40000, NULL, 0, 37, 17063, NULL, 1232, 2, 7, NULL, NULL, NULL, 17063, '0000023918', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-03-22 08:54:43', '(NCIBookMan)', 'fatimah', '2021-05-27 09:31:31', '192.168.0.215', 1, NULL, NULL, 'B0000023918'),
(24803, '0000028238', 'Buah Ajaib: Tuntas Penyakit', 'Tuntas Penyakit', 'N.S Budiana', '', '', 'Jakarta', 'Penebar Swadaya', '2013', NULL, '1', '610 Bud b', 'iv.; 220 hlm.; 23 cm', '', '', '978-979-002-598-1', NULL, NULL, NULL, '', 40000, NULL, 0, 37, 17404, NULL, 417, 1, 1, NULL, NULL, NULL, 17404, '0000028238', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-04-07 08:52:48', '(NCIBookMan)', 'admindaerah', '2015-11-11 13:24:37', '192.168.0.203', 1, NULL, NULL, 'B0000028238'),
(25084, '0000027673', 'Ensiklopedi Matematika : Operasi Hitung Gabungan Buku 5', 'Operasi Hitung Gabungan Buku 5', 'Yoni Yuniarto', '', '', 'Jakarta', 'Azka Press', '2006', NULL, '1', '510.031 Yon', '26 hlm.; 27 cm', '', '', '979-1211-11-6', NULL, NULL, NULL, '', 45000, NULL, 0, 37, 17682, NULL, 417, 1, 1, NULL, NULL, NULL, 17682, '0000027673', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-04-28 08:20:01', '(NCIBookMan)', 'admindaerah', '2016-04-06 08:41:32', '192.168.0.228', 1, NULL, NULL, 'B0000027673'),
(25121, '0000027713', 'Bekerja dengan PowerPoint 2013', '', 'Pandapotan Sianipar', '', '', 'Jakarta', 'PT. Elex Media Kompter Indonesia', '2013', NULL, '1', '005', '220 hlm.; 21 cm', '', '', '', NULL, NULL, NULL, '', 40000, NULL, 0, 37, 17719, NULL, 417, 1, 1, NULL, NULL, NULL, 17719, '0000027713', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-04-30 11:46:28', '(NCIBookMan)', 'admindaerah', '2016-04-06 08:41:59', '192.168.0.228', 1, NULL, NULL, 'B0000027713'),
(25162, '0000027751', 'Yang Ter(di)lupakan Kaum Indo dan Benih Nasionalosme Indonesia', '', 'Pradipto Nirwandhono', '', '', 'Jakarta', 'Penerbit Buku Kompas', '2013', NULL, '', '301 Pra y', '', '', '', '', NULL, NULL, NULL, '', 45000, NULL, 0, 37, 17758, NULL, 417, 1, 1, NULL, NULL, NULL, 17758, '0000027751', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-05-03 13:20:32', '(NCIBookMan)', 'SYSTEM', '2014-05-03 13:20:32', '(NCIBookMan)', 1, NULL, NULL, 'B0000027751'),
(25459, '0000026232', 'Bukit mimpi Gitya', '', 'Kanita Desfara Adzani', '', '', 'Bandung', 'dari mizan', '2014', NULL, 'Cet.I', 'Fik Kan b', '116 hlm.; ilust. : 21 cm', '', '', '978-602-242-314-0', NULL, NULL, NULL, '', 3, NULL, 0, 37, 17991, NULL, 417, 1, 1, NULL, NULL, NULL, 17991, '0000026232', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-09-18 10:06:16', '(NCIBookMan)', 'admindaerah', '2016-04-07 15:26:40', '192.168.0.200', 1, NULL, NULL, 'B0000026232'),
(25767, '0000026555', 'The Special Day', '', 'Yasyfa Alifya Radiany', '', '', 'Bandung', 'dari mizan', '2012', NULL, '', 'Fik Yas t', '148 hlm.; ilust. : 21 cm', '', '', '978-979-066-756-3', NULL, NULL, NULL, '', 4, NULL, 0, 37, 18167, NULL, 417, 1, 1, NULL, NULL, NULL, 18167, '0000026555', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-11-11 10:13:06', '(NCIBookMan)', 'hartini', '2018-03-25 08:55:50', '192.168.0.217', 1, NULL, NULL, 'B0000026555'),
(25827, '0000026617', 'Kakek Penjaga Palang Kereta', '', 'Sherina Salsabila', '', '', 'Jakarta', 'Zettu', '2014', NULL, '', 'Fik She k', '128 hlm.; ilust. : 21 cm', '', '', '978-602-7999-17-6', NULL, NULL, NULL, '', 4, NULL, 0, 37, 18197, NULL, 417, 1, 1, NULL, NULL, NULL, 18197, '0000026617', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-11-17 11:03:36', '(NCIBookMan)', 'hartini', '2018-03-25 09:22:54', '192.168.0.217', 1, NULL, NULL, 'B0000026617'),
(25843, '0000026635', 'My Sister\'s Secret', '', 'Aurada Tsaqofa Hidayat', '', '', 'Bandung', 'dari mizan', '2014', NULL, '', 'Fik Aur m', '124 hlm.; ilust. : 21 cm', '', '', '978-602-242-316-4', NULL, NULL, NULL, '', 4, NULL, 0, 37, 18205, NULL, 417, 1, 1, NULL, NULL, NULL, 18205, '0000026635', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-11-18 15:59:18', '(NCIBookMan)', 'hartini', '2017-08-29 09:25:23', '192.168.0.228', 1, NULL, NULL, 'B0000026635'),
(25937, '0000026803', 'Kerja Sama Tim SAR cilik', '', 'Anee Rahman', '', '', 'Yogyakarta', 'Mitra Pustaka', '2013', NULL, '1', 'Fik Ane k', '', '', '', '978-602-9224-10-8', NULL, NULL, NULL, '', 25000, NULL, 0, 37, 18252, NULL, 417, 1, 1, NULL, NULL, NULL, 18252, '0000026803', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-11-25 08:16:52', '(NCIBookMan)', 'hartini', '2018-03-25 09:14:42', '192.168.0.217', 1, NULL, NULL, 'B0000026803'),
(26071, '0000026843', 'Sorry, My Friend', '', 'Nabila Ulamy Alya', '', '', 'Jakarta', 'DAR! Mizan', '2014', NULL, '1', 'Fik Nab s', '', '', '', '978-602-949-808-0', NULL, NULL, NULL, '', 35000, NULL, 0, 37, 18326, NULL, 417, 1, 1, NULL, NULL, NULL, 18326, '0000026843', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-11-29 08:03:26', '(NCIBookMan)', 'SYSTEM', '2014-11-29 08:03:26', '(NCIBookMan)', 1, NULL, NULL, 'B0000026843'),
(26137, '0000027108', 'Sun(ny)', '', 'Achi TM', '', '', 'Yogyakarta', 'Sheila', '2013', '', '1', '813 Ach s', '', '', '', '978-979-29-3469-4', '', '', '', '', 55000, '2014-11-12 00:00:00', 0, 37, 18364, 6, 417, 3, 8, 2, 3, 1, 18364, '0000027108', 'Rusak', '', '', 'SYSTEM', '2014-12-01 08:22:54', '(NCIBookMan)', 'widyo pranoto', '2019-02-01 09:57:53', '192.168.0.231', 1, NULL, NULL, 'B0000027108'),
(26249, '0000026989', 'Made Yang Berbudi', '', 'Riza A', '', '', 'Bandung', 'Sinar Grafika', '2014', NULL, '', 'Fik Riz m', '48 hlm.; Ilust. : 30 cm', '', '', '979-007-129-9', NULL, NULL, NULL, '', 2, NULL, 0, 37, 18421, NULL, 1210, 1, 1, NULL, NULL, NULL, 18421, '0000026989', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-12-01 12:58:22', '(NCIBookMan)', 'admindaerah', '2016-04-24 13:33:19', '192.168.0.228', 1, NULL, NULL, 'B0000026989'),
(26426, '0000028770', 'Kita Semua Sama', '', 'Riza A', '', '', 'Bandung', 'Sinar Grafika', '2014', NULL, '', 'Fik Riz k', '48 hlm.; Ilust. : 30 cm', '', '', '979-007-124-8', NULL, NULL, NULL, '', 3, NULL, 0, 37, 18511, NULL, 417, 1, 1, NULL, NULL, NULL, 18511, '0000028770', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-12-04 10:00:02', '(NCIBookMan)', 'admindaerah', '2016-04-24 12:12:52', '192.168.0.228', 1, NULL, NULL, 'B0000028770'),
(26885, '0000027451', 'INSPIRITO : Inspirasi Kreatif dari Foto CARA MERANGSANG KREATIVITAS', 'Inspirasi Kreatif dari Foto CARA MERANGSANG KREATIVITAS', 'Hengki Setiawan', '', '', 'Yogyakarta', 'Andi', '2013', NULL, '', '770 Hen i', '', 'Bahkan secuil karya fotografi bisa menjadi partitur komposisi musik, inspirasi puisi dan cereta pendek.', '', '', NULL, NULL, NULL, '', 45000, NULL, 0, 37, 18749, NULL, 1288, 1, 1, NULL, NULL, NULL, 18749, '0000027451', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-12-11 09:40:02', '(NCIBookMan)', 'fatimah', '2020-11-11 14:52:20', '192.168.0.18', 1, NULL, NULL, 'B0000027451'),
(26984, '0000029253', 'Rythm Of Friendship', '', 'Ade Bunga', '', '', 'Bandung', 'dari mizan', '2012', NULL, '', 'Fik Ade r', '192 hlm.; Ilust. : 19,5 cm', '', '', '978-979-066-985-7', NULL, NULL, NULL, '', 4, NULL, 0, 37, 18805, NULL, 417, 1, 1, NULL, NULL, NULL, 18805, '0000029253', 'Tersedia', NULL, NULL, 'SYSTEM', '2014-12-15 10:52:10', '(NCIBookMan)', 'admindaerah', '2016-04-24 10:34:26', '192.168.0.228', 1, NULL, NULL, 'B0000029253'),
(27158, '0000029395', 'Complete Story Of Liverpool FC', '', 'Suryo', '', '', 'Jakarta', 'Rexa Pustaka', '2013', NULL, '1', '796.33 Sur c', '203hlm.;13.5x20.5cm', '', '', '978-602-7618-66-4', NULL, NULL, NULL, '', 30000, NULL, 0, 37, 18907, NULL, 417, 1, 1, NULL, NULL, NULL, 18907, '0000029395', 'Dipinjam', NULL, NULL, 'SYSTEM', '2014-12-17 09:10:34', '(NCIBookMan)', 'admindaerah', '2016-04-20 12:50:48', '192.168.0.217', 1, NULL, NULL, 'B0000029395'),
(27197, '0000029501', 'Dua Surga Dalam Cintaku', '', 'Altho Al-Rahman', '', '', 'Jogjakarta', 'Diva Press', '2012', NULL, '', 'Fik Ath d', '348 hlm.; 20 cm', '', '', '978-602-191-299-7', NULL, NULL, NULL, '', 6, NULL, 0, 37, 18933, NULL, 417, 1, 1, NULL, NULL, NULL, 18933, '0000029501', 'Dipinjam', NULL, NULL, 'SYSTEM', '2014-12-17 14:12:00', '(NCIBookMan)', 'hartini', '2017-11-23 14:57:09', '192.168.0.228', 1, NULL, NULL, 'B0000029501'),
(27564, '0000029483', 'Majalah BOBO Nmer 15 Tahun XLII Terbit 17 Juli 2014', '', 'Majalah BOBO', '', '', 'Jakarta', 'Gramedia Pustaka Utama', '2014', NULL, '', '051', '', '', '', '', NULL, NULL, NULL, '', 11000, NULL, 0, 37, 19200, NULL, 1210, 1, 1, NULL, NULL, NULL, 19200, '0000029483', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-01-05 08:52:35', '(NCIBookMan)', 'admindaerah', '2016-04-20 12:32:54', '192.168.0.217', 1, NULL, NULL, 'B0000029483'),
(27591, '0000029886', 'The Royal Secret', '', 'Tasnima Ranti Weningtyas', '', '', 'Bandung', 'dari mizan', '2013', NULL, '', '899.2213 Tas t', '112 hlm.; Ilust. : 21 cm', '', '', '978-602-242-102-3', NULL, NULL, NULL, '', 4, NULL, 0, 37, 19225, NULL, 417, 1, 1, NULL, NULL, NULL, 19225, '0000029886', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-01-05 11:24:20', '(NCIBookMan)', 'admindaerah', '2016-04-20 12:31:47', '192.168.0.217', 1, NULL, NULL, 'B0000029886'),
(27915, '0000030426', 'Lentera Kehidupan : Kumpulan 20 Esai Terbaik Lomba Mengarang 50 Tahun BPBI \"Abiyoso\"', 'Kumpulan 20 Esai Terbaik Lomba Mengarang 50 Tahun BPBI \"Abiyoso\"', 'Abiyoso', '', '', 'Cimahi', 'Abiyoso', '2012', NULL, '', '808 Abi l', '', '', '', '', NULL, NULL, NULL, '', 4, NULL, 0, 37, 19448, NULL, 1231, 1, 1, NULL, NULL, NULL, 19448, '0000030426', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-01-15 08:24:29', '(NCIBookMan)', 'admindaerah', '2016-04-20 12:19:51', '192.168.0.217', 1, NULL, NULL, 'B0000030426'),
(28014, '0000030181', 'All In One : Kumpulan Rumus Matematika SMP / MTS', 'Kumpulan Rumus Matematika SMP / MTS', 'Hilda Yohana', '', '', 'Depok', 'Pustaka Makmur', '2012', NULL, '', '510 Hil a', 'vi, f146 hlm.; 15 cm', '', '', '9786027639096', NULL, NULL, NULL, '', 5, NULL, 0, 37, 19509, NULL, 417, 1, 1, NULL, NULL, NULL, 19509, '0000030181', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-01-19 14:25:13', '(NCIBookMan)', 'admindaerah', '2016-04-20 12:09:12', '192.168.0.217', 1, NULL, NULL, 'B0000030181'),
(28071, '0000030499', 'Majalah Bobo Tahun XLII 14 Agustus 2014', '', 'Majalah BOBO', '', '', 'Jakarta', 'Gramedia', '2014', NULL, '', '051 Maj m', '', '', '', '', NULL, NULL, NULL, '', 15000, NULL, 0, 37, 19540, NULL, 1210, 1, 1, NULL, NULL, NULL, 19540, '0000030499', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-01-20 10:31:46', '(NCIBookMan)', 'admindaerah', '2016-04-20 12:06:07', '192.168.0.217', 1, NULL, NULL, 'B0000030499'),
(28144, '0000030274', 'CD 2T (Tips & Trik ) Melejitkan Talenta Sang Buah Hati Ed.2 BPBI Abiyoso', '', 'Ummu Haya Nida', '', '', 's.l.', 'Pustaka Al-Kautsar', '2009', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 19598, NULL, 1231, 1, 1, NULL, NULL, NULL, 19598, '0000030274', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-01-29 11:11:25', '(NCIBookMan)', 'admindaerah', '2016-04-20 12:03:22', '192.168.0.217', 1, NULL, NULL, 'B0000030274'),
(28148, '0000030278', 'CD IPS Cerdas Untuk SMP Kelas 3 Ed.2 BPBI Abiyoso', '', 'Ustadz A.Ruswan', '', '', 's.l.', 'In-Books', '2010', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 19602, NULL, 1231, 1, 1, NULL, NULL, NULL, 19602, '0000030278', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-01-29 14:45:53', '(NCIBookMan)', 'admindaerah', '2016-04-20 12:02:56', '192.168.0.217', 1, NULL, NULL, 'B0000030278'),
(28172, '0000030603', '100 Koleksi Lagu Wajib Nasional Terpopuler', '', 'Yulia Rendra', '', '', 'Yogyakarta', 'Indonesia Cerdas', '2014', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 37, 19625, NULL, 1231, 1, 1, NULL, NULL, NULL, 19625, '0000030603', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-02-02 08:37:15', '(NCIBookMan)', 'admindaerah', '2016-04-20 12:02:28', '192.168.0.217', 1, NULL, NULL, 'B0000030603'),
(28241, '0000030553', 'Kaset Aku Tahu Tentang Danau Edisi 2', '', 'Beni S. Ambarjaya', '', '', 'Cimahi', 'Abiyoso', '2013', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '', 2, NULL, 0, 37, 19688, NULL, 1231, 1, 1, NULL, NULL, NULL, 19688, '0000030553', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-02-05 07:49:06', '(NCIBookMan)', 'admindaerah', '2016-04-20 11:58:33', '192.168.0.217', 1, NULL, NULL, 'B0000030553'),
(28278, '0000030650', 'Bussines Statistics in Practice', '', 'Bruce L.Bowerman', '', '', 'New York', 'McGraw-Hill', '2007', NULL, '4', '657 Bru b', '22x28.5cm', '', '', '978-0-07-297747-9', NULL, NULL, NULL, '', 225000, NULL, 0, 37, 19726, NULL, 417, 1, 1, NULL, NULL, NULL, 19726, '0000030650', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-02-10 15:35:27', '(NCIBookMan)', 'admindaerah', '2016-03-30 08:20:47', '192.168.0.228', 1, NULL, NULL, 'B0000030650'),
(28314, '0000030686', 'Human Genetics Concets And Applications Eighth Edition', '', 'Ricki Lewis', '', '', 'New York', 'Mc Graw Hill', '2008', NULL, '8', '575 Ric h', '22x28.5cm', '', '', '978-0-07-299539-8', NULL, NULL, NULL, '', 150000, NULL, 0, 37, 19762, NULL, 417, 1, 1, NULL, NULL, NULL, 19762, '0000030686', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-02-13 09:09:39', '(NCIBookMan)', 'admindaerah', '2016-03-30 08:21:41', '192.168.0.228', 1, NULL, NULL, 'B0000030686'),
(28342, '0000030712', 'Round Table Organizational Leadership', '', 'Joyce Huth Munro', '', '', 'New York', 'Mc Graw Hill', '2008', NULL, '1', '302.3 Joy r', '15.5x23.5cm', '', '', '978-0-07-352782-6', NULL, NULL, NULL, '', 150000, NULL, 0, 37, 19789, NULL, 417, 1, 1, NULL, NULL, NULL, 19789, '0000030712', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-02-16 11:05:48', '(NCIBookMan)', 'admindaerah', '2016-03-30 08:22:01', '192.168.0.228', 1, NULL, NULL, 'B0000030712'),
(28520, '0000030939', 'Braille Ketika Orang Tua Bercerai Jilid 1', '', 'Balai Penerbitan Braille Abiyoso', '', '', 'Cimahi', 'Abiyoso', '2015', NULL, '1', '', '28cm', '', '', '', NULL, NULL, NULL, '', 30000, NULL, 0, 37, 19948, NULL, 417, 1, 1, NULL, NULL, NULL, 19948, '0000030939', 'Tersedia', NULL, NULL, 'SYSTEM', '2015-05-22 13:51:56', '(NCIBookMan)', 'admindaerah', '2016-03-30 08:25:59', '192.168.0.228', 1, NULL, NULL, 'B0000030939'),
(28975, '28241', 'Mengelola Kecerdasan Dalam Pembelajaran Sebuah Konsep Pembelajaran Berbasis Kecerdasan', 'Sebuah Konsep Pembelajaran Berbasis Kecerdasan', 'Hamzah B. Uno', 'Masri Kudrat Umar', 'KPAD BNA', 'Jakarta', 'Bumi Aksara', '2014', '', 'Ed. I, Cet. 3', '371.3', 'x, Ed. 1, Cet. 3, 196 hlm 21 cm', '', 'rupiah', '979-010-553-3', '', '', '', '00000028975', 35000, '2015-07-15 00:00:00', 0, 37, 20371, 6, 417, 1, 1, 2, 1, 1, 20183, '00000028975', 'Tersedia', '', '', 'admindaerah', '2015-07-14 10:25:12', '192.168.0.202', 'admindaerah', '2016-03-30 09:09:55', '192.168.0.228', 1, NULL, NULL, NULL),
(29553, '29551', 'Kajian Sastra Anak', '', 'Retno Winarni', '', '', 'Yogyakarta', 'Graha Ilmu', '2014', '', 'Eds.2', '802', '114 hlm vii 23 cm', '', 'Rupiah', '978-602-262-156-0', '', '', '', '00000029553', 25000, '2015-07-08 00:00:00', 0, 37, 20667, 6, 417, 1, 1, 2, 1, 1, 20472, '00000029553', 'Tersedia', '', '', 'kelana', '2015-08-10 10:37:41', '192.168.0.207', 'widyo pranoto', '2015-12-13 09:25:31', '10.1.1.1', 1, NULL, NULL, NULL),
(29701, '28989', 'Misteri Ramalan Jayabaya', '', 'Petir Abimanyu', '', '', 'Yogyakarta', 'Palapa', '2014', '', '', '133.3', '288 hlm 20 cm', '', 'Rupiah', '978-602-255-394-6', '', '', '', '00000029701', 35000, '2015-07-01 00:00:00', 0, 37, 20743, 6, 417, 1, 1, 2, 1, 1, 20546, '00000029701', 'Tersedia', '', '', 'kelana', '2015-08-13 09:09:06', '192.168.0.207', 'hartini', '2017-06-09 10:50:19', '192.168.0.200', 1, NULL, NULL, NULL),
(30071, '28997', 'Strategi Cita-Ciita Islam', '', 'Fazlur Rahman', '', 'KPAD BNA', 'Madiun', 'Jaya Star Nine', '2013', '', '', '297.69', 'Cet. 1, 142 hlm. 18 cm', '', 'rupiah', '9978-602-17423-5-8', '', '', '', '00000030071', 0, '2015-08-26 00:00:00', 0, 37, 20930, 6, 417, 1, 1, 2, 1, 1, 20731, '00000030071', 'Tersedia', '', '', 'admindaerah', '2015-08-26 08:12:10', '192.168.0.220', 'hartini', '2016-08-16 15:15:45', '192.168.0.217', 1, NULL, NULL, NULL),
(30163, '28587', 'Pesawat Habibie Sayap Sayap Mimpi Indonesia', 'Sayap Sayap Mimpi Indonesia', 'Arimbi Bimoseno', '', 'KPAD BNA', 'Jakarta', 'Kata Media', '2014', '', '', '926', 'Cet. 1, iv, 380 hlm. ilust. 25 cm', '', 'rupiah', '978-979-1478-62-5', '', '', '', '00000030163', 50000, '2015-08-27 00:00:00', 0, 37, 20978, 6, 417, 1, 1, 2, 1, 1, 20777, '00000030163', 'Tersedia', '', '', 'admindaerah', '2015-08-27 11:25:46', '192.168.0.220', 'widyo pranoto', '2015-12-21 15:11:47', '192.168.0.207', 1, NULL, NULL, NULL),
(30708, '10806', 'Step By step Menggambar & Mewarnai Dinosaurus', '', 'Angelika', '', 'KPAD BNA', 'Jakarta', 'Cikal Aksara', '2014', '', 'Cet. 1', '370', 'Cet. 1, 32 hlm. ilust. 26 cm', '', 'rupiah', '978-602-1267-08-0', '', NULL, NULL, '00000030708', 25000, '2015-09-16 00:00:00', 0, 37, 21285, 6, 1210, 1, 2, 2, 1, NULL, 21060, '00000030708', 'Tersedia', 'APBD II', '', 'widyo pranoto', '2015-09-15 08:57:37', '192.168.0.202', 'admindaerah', '2015-11-05 11:41:35', '192.168.0.206', 1, NULL, NULL, NULL),
(30916, '63535', 'Ke Surga Lewat Mana,Ya?', '', 'Hendranto Pratama Putra', 'Andika', 'KPAD BANJARNEGARA', 'Bandung', 'Dari Mizan', '2015', '', '', 'Fik', '88 hlm 20.5 cm', '', 'Rupiah', '978-602-7870-87-1', '', NULL, NULL, '00000030916', 60000, '2015-09-03 00:00:00', 0, 37, 21037, 6, 1232, 2, 7, 2, 1, NULL, 21177, '00000030916', 'Dipinjam', 'APBD 2', '', 'kelana', '2015-09-17 15:49:31', '192.168.0.207', 'ifon', '2020-11-27 09:48:17', '192.168.0.249', 1, NULL, NULL, NULL),
(30924, '6513', 'Kerapan Sapi', '', 'Herry Lisbijanto', '', '', 'Yogyakarta', 'Graha Ilmu', '2013', '', '', '798.9', '48 hlm viii 21 cm', '', 'Rupiah', '978-602-262-110-2', '', NULL, NULL, '00000030924', 5500, '2015-09-03 00:00:00', 0, 37, 20776, 6, 421, 2, 4, 2, 1, NULL, 21181, '00000030924', 'Tersedia', 'APBD 2', '', 'kelana', '2015-09-18 08:03:25', '192.168.0.207', 'kelana', '2015-09-18 08:03:25', '192.168.0.207', 1, NULL, NULL, NULL),
(31127, '6478', 'Pasti Nilai 100 Ulangan Harian SD/MI Kelas 6 All Mapel', '', 'TIM Pakar Tentor', '', 'KPAD BNA', 'Jogjakarta', 'Laksana', '2013', '', '', '371.3 Tim p', '344 hlm ilust. 30 cm', '', 'rupiah', '978-602-7641-86-0', '', NULL, NULL, '00000031127', 80000, '2015-09-23 00:00:00', 0, 37, 20261, 6, 421, 2, 4, 2, 1, NULL, 21283, '00000031127', 'Tersedia', 'APBD II', '', 'widyo pranoto', '2015-09-22 15:18:04', '192.168.0.220', 'widyo pranoto', '2015-09-22 15:18:04', '192.168.0.220', 1, NULL, NULL, NULL),
(31239, '6370', 'Naruto Vol.18 Tsunade\'s Decision', 'Tsunade\'s Decision', 'Masashi Kishimoto', 'Natalie', 'KPAD', 'Jakarta', 'Gramedia', '2005', '', '', 'Fiksi', '185 hlm 17 cm', '', 'rupiah', '978-979-20-7718-9', '', NULL, NULL, '00000031239', 40000, '2015-09-02 00:00:00', 0, 37, 21237, 6, 421, 2, 4, 2, 1, NULL, 21340, '00000031239', 'Tersedia', 'APBD 2', '', 'kelana', '2015-10-01 09:20:10', '192.168.0.207', 'kelana', '2015-10-01 09:20:10', '192.168.0.207', 1, NULL, NULL, NULL),
(31261, '6190', 'Ta\'aruf Is My Way', '', '@Muslimah_Talk', '', '', 'Jakarta', 'Qultum Media', '2014', '', '', '297.431 1', '148 hlm vii 19 cm', '', 'rupiah', '979-017-295-8', '', NULL, NULL, '00000031261', 65000, '2015-08-31 00:00:00', 0, 37, 20960, 6, 1251, 2, 7, 2, 1, NULL, 21352, '00000031261', 'Dipinjam', 'APBD 2', '', 'kelana', '2015-10-01 11:09:04', '192.168.0.207', 'hartini', '2017-10-31 14:11:21', '192.168.0.228', 1, NULL, NULL, NULL),
(33022, '7967', 'Fotografer Cilik', '', 'Iswara Aulia Widasari', 'Yulia Nurul Irawan', 'KPAD BNA', 'Bandung', 'DAR! Mizan', '2015', '', '', '813', '104 hlm 21 cm', '', 'rupiah', '978-602-242-748-3', '', NULL, NULL, '00000033022', 50000, '2015-12-21 00:00:00', 0, 37, 21584, 6, 421, 2, 4, 2, 1, NULL, 22212, '00000033022', 'Tersedia', 'APBD Perubahan', '', 'widyo pranoto', '2015-12-21 15:05:07', '192.168.0.230', 'widyo pranoto', '2015-12-21 15:05:07', '192.168.0.230', 1, NULL, NULL, NULL),
(33106, '7517', 'Smart Grammar:Paling Cepat Menguasai English Grammar', '', 'Jerry Mahas', 'Randi Renggana', 'KPAD BNA', 'Bandung', 'Kawan Pustaka', '2014', '', '', '420', '202 hlm vi 20 cm', '', 'rupiah', '978-602-1576-13-7', '', NULL, NULL, '00000033106', 45000, '2015-12-21 00:00:00', 0, 37, 21403, 6, 421, 2, 4, 2, 1, NULL, 22240, '00000033106', 'Tersedia', 'APBD Perubahan', '', 'widyo pranoto', '2015-12-21 15:43:05', '10.1.1.1', 'widyo pranoto', '2015-12-21 15:43:05', '10.1.1.1', 1, NULL, NULL, NULL),
(33421, '7290', 'Facebook Untuk UKM', '', 'Jubilee Enterprice', '', 'KPAD BNA', 'Jakarta', 'Gramedia', '2009', '', '', '005', '187 hlm 20 cm', '', 'rupiah', '978-979-27-5331-8', '', NULL, NULL, '00000033421', 50000, '2015-12-22 00:00:00', 0, 37, 21662, 6, 421, 2, 4, 2, 1, NULL, 22347, '00000033421', 'Tersedia', 'APBD Perubahan', '', 'widyo pranoto', '2015-12-22 14:20:04', '10.1.1.1', 'widyo pranoto', '2015-12-22 14:20:04', '10.1.1.1', 1, NULL, NULL, NULL),
(33540, '7550', 'Aku Siaga Di Sekolah', '', 'Sarah Ismullah', 'Tetty Yullia', 'KPAD BNA', 'Jakarta', 'Cikal Aksara', '2012', '', '', 'FIK', '48 hlm 26 cm', '', 'rupiah', '602-8526-63-0', '', NULL, NULL, '00000033540', 40000, '2015-12-23 00:00:00', 0, 37, 21720, 6, 421, 2, 4, 2, 1, NULL, 22387, '00000033540', 'Tersedia', 'APBD Perubahan', '', 'widyo pranoto', '2015-12-23 13:50:25', '10.1.1.1', 'widyo pranoto', '2015-12-23 13:50:25', '10.1.1.1', 1, NULL, NULL, NULL),
(33798, '2027', 'Sang Pemenang Kejujuran', '', 'Asrori', '', '', 'Semarang', 'CV Ghyyas Putra', '', '', '', 'Fik', 'iii, 28 hlm ilust. 21 cm', '', '', '978-979-051-074-6', '', NULL, NULL, '00000033798', 0, '2010-01-14 00:00:00', 0, 37, 21824, 6, 421, 2, 4, 2, 1, NULL, 22568, '00000033798', 'Tersedia', '', '', 'laras', '2016-04-07 14:50:29', '192.168.0.207', 'laras', '2016-04-07 14:50:29', '192.168.0.207', 1, NULL, NULL, NULL),
(33800, '774', 'Visi Al-Qur\'an tentang etika dan bisnis', '', 'Fauroni, R. Lukman', '', '', 'Jakarta', 'Salemba Diniyah', '2002', '', '', '297.1', '214 hlm, 23 cm', '', '', '979-96866-2-8', '', NULL, NULL, '00000033800', 0, '2007-04-18 00:00:00', 0, 37, 7729, 6, 1232, 2, 7, 2, 1, NULL, 22570, '00000033800', 'Dipinjam', 'Perpusnas RI 2006', '', 'laras', '2016-04-07 14:53:45', '192.168.0.207', 'ifon', '2020-11-26 13:47:22', '192.168.0.249', 1, NULL, NULL, NULL),
(34216, '1571', 'Nyanyian Anak-anak untuk TK-SD dan Permainan Piano', '', 'A.F. Kau Besin', '', '', 'Jakarta', 'Balai Pustaka', '1983', '', '', '', '104 hlm 29 cm', '', '', '', '', NULL, NULL, '00000034216', 0, '1998-07-31 00:00:00', 0, 37, 21928, 6, 417, 1, 1, 2, 1, NULL, 22966, '00000034216', 'Tersedia', '', '', 'laras', '2016-07-21 14:26:35', '192.168.0.207', 'laras', '2016-07-21 14:26:35', '192.168.0.207', 1, NULL, NULL, NULL),
(34430, '11334', 'Married By Monday', '', 'Catherine Bybee', '', 'KPAD BNA', 'Jakarta', 'Gramedia', '2016', '', '', '899.2213 Cat m', '370 hlm. 18 cm', '', 'Rupiah', '978-602-02-8702-7', '', NULL, NULL, '00000034430', 50000, '2016-07-26 00:00:00', 0, 37, 22191, 6, 417, 1, 1, 2, 1, NULL, 23151, '00000034430', 'Tersedia', 'APBD I 2016', '', 'widyo pranoto', '2016-07-26 11:13:41', '192.168.0.220', 'widyo pranoto', '2016-07-26 11:13:41', '192.168.0.220', 1, NULL, NULL, NULL),
(34580, '11431', 'Uda Ganteng No. 13', '', 'FLP Sumatra', '', '', 'Jakarta', 'Gema Insani Press', '2006', '', 'cet. 1', '899.2213 Flp u', '157 hlm.; 18 cm', '', 'Rupiah', '979-56-0114-8', '', NULL, NULL, '00000034580', 50000, '2016-07-28 00:00:00', 0, 37, 8221, 6, 417, 1, 1, 2, 1, NULL, 23273, '00000034580', 'Tersedia', 'APBD I 2016', '', 'widyo pranoto', '2016-07-27 13:57:09', '192.168.0.220', 'widyo pranoto', '2016-07-27 13:57:09', '192.168.0.220', 1, NULL, NULL, NULL),
(35170, '31916', 'Financial Parenting Menjadikan Anak Cerdas dan Cermat Mengelola Uang', '', 'Seto Mulyadi Kak Seto Mulyadi dan Lutfi Trizki', 'Seto Mulyadi', 'KPAD BNA', 'Jakarta', 'Naura Books', '2012', '', '', '153 Set f', 'xiv, 164 hlm. : ilust. ; 20 cm', '', 'Rupiah', '978-602-9498-81-3', '', NULL, NULL, '00000035170', 45000, '2016-08-09 00:00:00', 0, 37, 22532, 6, 417, 1, 1, 2, 1, NULL, 23702, '00000035170', 'Tersedia', 'APBD I TAHUN 2016', 'Rak Koleksi Umum', 'sitirohyati', '2016-08-09 07:58:34', '10.1.1.1', 'sitirohyati', '2016-08-09 07:58:34', '10.1.1.1', 1, NULL, NULL, NULL),
(35227, '11103', 'Aku Bukan Kucing', '', 'Eko Wahyu W.', '', 'KPAD Banjarnegara', 'Solo', 'Era Pustaka Utama', '2012', '', '', '899.2213 Eko a', '24 hlm 14,5 cm', '', '', '978-602-8024-91-4', '', NULL, NULL, '00000035227', 0, '2016-07-20 00:00:00', 0, 37, 22560, 6, 417, 1, 1, 2, 1, NULL, 23732, '00000035227', 'Tersedia', 'APBD I Tahun 2016', '', 'laras', '2016-08-09 14:12:10', '192.168.0.207', 'laras', '2016-08-09 14:12:10', '192.168.0.207', 1, NULL, NULL, NULL),
(36013, '31120', 'Kamus Tematik 3 Bahasa Tema Transportasi', '', 'Arizatus Salis', '', 'KPAD BNA', 'Makasar', 'Galeri Lontara', '2008', '', 'Cet. 1', '403 Ari k', '52 hlm ilus; 25 cm', '', '', '979-9418-19-4', '', NULL, NULL, '00000036013', 0, '2016-07-22 00:00:00', 0, 37, 22904, 6, 1287, 1, 1, 2, 1, NULL, 24110, '00000036013', 'Tersedia', 'APBD 1 2016', '', 'laras', '2016-08-24 15:45:27', '192.168.0.207', 'naraswari', '2020-12-10 11:09:28', '192.168.0.18', 1, NULL, NULL, NULL),
(36213, '8333', 'Kosong', '', 'Ade Igama', '', 'KPAD Banjarnegara', 'Yogyakarta', 'Bentang Belia', '2015', '', '', '899.2213 Ade k', '234 hlm vi.;ilus 20,8 cm', '', '', '978-602-1383-47-6', '', NULL, NULL, '00000036213', 0, '2016-08-04 00:00:00', 0, 37, 22452, 6, 421, 2, 4, 2, 1, NULL, 24200, '00000036213', 'Tersedia', 'APBD I 2016', '', 'laras', '2016-08-26 08:40:55', '192.168.0.207', 'laras', '2016-08-26 08:40:55', '192.168.0.207', 1, NULL, NULL, NULL),
(36269, '8835', 'Panduan Praktis Tes Minat & Bakat Anak', '', 'Bunda Lucy', '', 'KPAD Banjarnegara', 'Jakarta', 'Penebar Plus', '2016', '', 'Cet.1', '153.9 Luc p', '235 hlm 23 cm', '', '', '978-602-1279-30-4', '', NULL, NULL, '00000036269', 0, '2016-08-05 00:00:00', 0, 37, 22356, 6, 1251, 2, 7, 2, 1, NULL, 24219, '00000036269', 'Diolah', 'APBD I 2016', '', 'laras', '2016-08-26 09:36:17', '192.168.0.207', 'hartini', '2017-10-31 13:57:46', '192.168.0.228', 1, NULL, NULL, NULL);
INSERT INTO `collections` (`ID`, `NoInduk`, `Title`, `TitleAdded`, `Author`, `AuthorAdded`, `Cooperation`, `PublishLocation`, `Publisher`, `PublishYear`, `KalaTerbit`, `Edition`, `Class`, `PhysicalDescription`, `Note`, `Currency`, `ISBN`, `MapScale`, `MapNumber`, `MapSubject`, `RFID`, `Price`, `TanggalKirim`, `IsDelete`, `Branch_id`, `Catalog_id`, `Partner_id`, `Location_id`, `Rule_id`, `Category_id`, `Media_id`, `Source_id`, `Worksheet_id`, `GroupingNumber`, `NomorBarcode`, `Status`, `Keterangan_Sumber`, `Penempatan`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`, `IsVerified`, `SLA_REGISTER`, `SENAYAN_ID`, `NCIBookMan_ID`) VALUES
(36475, '8111', 'The Queen of the Tearling', '', 'Johansen, Erika', '', 'KPAD BNA', 'Bandung', 'PT Mizan Pustaka', '2016', '', 'Cet.II', '899.2213 Joh t', '540 hlm 20,5 cm', '', '', '978-979-433-908-4', '', NULL, NULL, '00000036475', 0, '2016-08-03 00:00:00', 0, 37, 22583, 6, 1251, 2, 7, 2, 1, NULL, 24290, '00000036475', 'Dipinjam', 'APBD I 2016', '', 'widyo pranoto', '2016-08-26 13:24:36', '192.168.0.220', 'hartini', '2017-10-31 14:16:31', '192.168.0.228', 1, NULL, NULL, NULL),
(36982, '8285', 'Seri Serba Tahu Dunia Yuk, Berpetualang Seru Menelusuri Banguna-bangunan Terunik & Misterius di Dunia', '', 'Bayu Ardy', '', 'KPAD BNA', 'Yogyakarta', 'Araska', '2015', '', 'cet. 1', '031 Bay s', '32 hlm 30 cm', '', '', '978-602-300-175-0', '', NULL, NULL, '00000036982', 0, '2016-08-04 00:00:00', 0, 37, 22951, 6, 1232, 2, 7, 2, 1, NULL, 24463, '00000036982', 'Dipinjam', 'APBD I Tahun 2016', '', 'laras', '2016-08-30 08:12:17', '192.168.0.207', 'susiyanto', '2020-11-18 10:59:17', '192.168.0.18', 1, NULL, NULL, NULL),
(37008, '8239', 'Ensiklopedia Raja-Raja Nusantara Menyingkap Tuntas Riwayat Hidup Raja-Raja Nusantara', '', 'Sri Wintala Achmad', '', 'KPAD Banjarnegara', 'Yogyakarta', 'Araska', '2014', '', 'Cet.I', '959.8 Sri e', '304 hlm 20,5 cm', '', '', '978-602-300-000-5', '', NULL, NULL, '00000037008', 0, '2016-08-04 00:00:00', 0, 37, 23000, 6, 1232, 2, 7, 2, 1, NULL, 24472, '00000037008', 'Tersedia', 'APBD I Tahun 2016', '', 'laras', '2016-08-30 08:34:32', '192.168.0.207', 'hartini', '2019-02-15 09:27:57', '192.168.0.15', 1, NULL, NULL, NULL),
(37042, '8526', 'Seri Hidangan Mancanegara Thailand', '', 'Tabularasa', '', 'KPAD BNA', 'Jakarta', '', '', '', '', '641.5', '52 hlm 21 cm', '', 'Rupiah', '978-602-7596-89-4', '', NULL, NULL, '00000037042', 50000, '2016-08-31 00:00:00', 0, 37, 22791, 6, 421, 2, 4, 2, 1, NULL, 24485, '00000037042', 'Tersedia', 'APBD I 2016', '', 'widyo pranoto', '2016-08-31 11:40:34', '192.168.0.220', 'widyo pranoto', '2016-08-31 11:40:34', '192.168.0.220', 1, NULL, NULL, NULL),
(37204, '6228', 'Hak Asasi Manusia', '', '', '', '', 'Jakarta', 'Pustaka Sinar harapan', '1998', '', '', '341.4', 'viii, 151 hlm 21 cm', '', '', '979-416-577-8', '', NULL, NULL, '00000037204', 0, '2016-10-11 00:00:00', 0, 37, 23087, 5, 1287, 1, 1, 2, 3, NULL, 24635, '00000037204', 'Tersedia', '', 'Ruang Pelayanan Perpustakaan', 'hartini', '2016-10-11 11:12:18', '192.168.0.200', 'naraswari', '2020-11-10 14:52:54', '10.1.5.180', 1, NULL, NULL, NULL),
(37524, '9495', 'Percobaan Sederhana tentang Waktu dengan Bahan Sehari-hari', '', 'Muriel mandel', '', 'KPAD Banjarnegara', 'Bandung', 'Angkasa', '2013', '', 'Edisi Revisi', '529.7 Mur p', 'vi 102 hlm. ilus. 25 cm.', '', '', '978-979-665-568-8', '', NULL, NULL, '00000037524', 0, '2016-11-16 00:00:00', 0, 37, 23240, 6, 421, 2, 4, 2, 1, NULL, 24804, '00000037524', 'Tersedia', 'APBD Perubahan 2016', '', 'laras', '2016-11-22 13:26:20', '192.168.0.208', 'laras', '2016-11-22 13:26:20', '192.168.0.208', 1, NULL, NULL, NULL),
(37560, '9339', 'Penyakit Rohani Menghalau Cita-citaku', '', 'Miftah Farid', '', 'KPAD Banjarnegara', 'Bandung', 'Titian Ilmu', '2016', '', '', '297.261 Mif p', '', '', '', '978-979-027-208-8', '', NULL, NULL, '00000037560', 0, '2016-11-16 00:00:00', 0, 37, 23184, 6, 421, 2, 4, 2, 1, NULL, 24816, '00000037560', 'Tersedia', 'APBD Perubahan 2016', '', 'laras', '2016-11-22 14:22:11', '192.168.0.208', 'laras', '2016-11-22 14:22:11', '192.168.0.208', 1, NULL, NULL, NULL),
(38012, '32049', 'Manage Your Galau Al-Quran', '', 'Miski Muhammad Mudin', '', 'KPAD Banjarnegara', 'Yogyakarta', 'DIVA Press', '2016', '', 'Cet.I', '297.122 Mis m', '172 hlm 20 cm', '', '', '978-602-391-075-5', '', NULL, NULL, '00000038012', 0, '2016-11-16 00:00:00', 0, 37, 23149, 6, 417, 1, 1, 2, 3, NULL, 24968, '00000038012', 'Dipinjam', 'ANGGARAN PERUBAHAN', '', 'laras', '2016-11-28 08:31:51', '10.5.0.16', 'laras', '2016-11-28 08:31:51', '10.5.0.16', 1, NULL, NULL, NULL),
(38024, 'S16', 'Majalah Parlementaria Edisi 141 Th. XLVI 2016', '', '', '', 'KPAD Banjarnegara', 'Jakarta', 'DPR-RI', '2016', '', '', '', '79 hlm 28 cm', '', '', '', '', NULL, NULL, '00000038024', 0, '2016-11-21 00:00:00', 0, 37, 23361, 6, 1175, 2, 5, 2, 3, NULL, 24980, '00000038024', 'Tersedia', '', '', 'laras', '2016-12-09 09:42:06', '192.168.0.207', 'laras', '2016-12-09 09:42:06', '192.168.0.207', 1, NULL, NULL, NULL),
(38107, '1855', 'Di Sungai', '', 'Nyoman Sri Utami', '', 'DISARPUS', '', 'Tim EDITOR PRIORITAS', '2015', '', '', '899.2213 Nyo d', '16 hlm 15 cm', '', '', '978-602-0832-37-1', '', NULL, NULL, '00000038107', 0, '2017-02-06 00:00:00', 0, 37, 23406, 6, 1232, 1, 2, 2, 3, NULL, 25054, '00000038107', 'Tersedia', '', '', 'laras', '2017-02-06 14:18:13', '192.168.0.207', 'laras', '2017-02-06 14:18:13', '192.168.0.207', 1, NULL, NULL, NULL),
(38169, 'A46', 'Bobo Edisi 43 tahun XLIV', '', '', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Kompas Gramedia', '2017', '', '', '505 Bob b', '51 hlm 28 cm', '', '', '', '', NULL, NULL, '00000038169', 0, '2017-02-06 00:00:00', 0, 37, 23450, 6, 1210, 1, 2, 2, 2, NULL, 25116, '00000038169', 'Tersedia', '', '', 'laras', '2017-02-10 09:27:47', '192.168.0.207', 'laras', '2017-02-10 09:27:47', '192.168.0.207', 1, NULL, NULL, NULL),
(38849, '12689', 'KKPK: The Wonder Girl', 'The Wonder Girl', 'Alleya Hanifa', '', 'DISARPUS Banjarnegara', 'Bandung', 'Dar! Mizan', '2017', '', 'Cet. II', '899.2213 All k', '124 hlm ilust 21 cm', '', '', '979-602-420-188-3', '', NULL, NULL, '00000038849', 0, '2017-07-05 00:00:00', 0, 37, 23734, 6, 417, 1, 1, 2, 1, NULL, 25434, '00000038849', 'Tersedia', 'APBD I Tahun 2017', '', 'laras', '2017-07-06 08:34:10', '192.168.0.208', 'laras', '2017-07-06 08:34:10', '192.168.0.208', 1, NULL, NULL, NULL),
(39009, '12231', 'I Can Be a Farm Vet Aku Bisa Menjadi Dokter Hewan Ternak', '', 'Apple Jordan', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Gramedia Pustaka Utama', '2016', '', '', '899.2213 App i', '24 hlm. ilus. 23 cm.', '', '', '978-602-03-3672-5', '', NULL, NULL, '00000039009', 0, '2017-06-20 00:00:00', 0, 37, 23799, 6, 1232, 2, 7, 2, 1, NULL, 25502, '00000039009', 'Dipinjam', 'APBD I 2017', '', 'laras', '2017-07-06 14:57:11', '192.168.0.207', 'admindaerah', '2019-09-05 10:30:54', '192.168.0.217', 1, NULL, NULL, NULL),
(39096, '32368', 'Sukses Budi Daya Melon Golden di Pekarangan dan Perkebunan', '', 'Arrum L.', '', 'DISARPUS Banjarnegara', 'Yogyakarta', 'Lily Publisher', '2017', '', '', '635.6 Arr s', '120 hlm ilust.;viii 23 cm', '', '', '978-979-29-6088', '', NULL, NULL, '00000039096', 0, '2017-07-04 00:00:00', 0, 37, 23829, 6, 1232, 2, 7, 2, 1, NULL, 25536, '00000039096', 'Dipinjam', 'APBD I 2017', '', 'laras', '2017-07-07 09:51:30', '192.168.0.207', 'hartini', '2018-03-16 13:36:34', '192.168.0.200', 1, NULL, NULL, NULL),
(39112, '32374', 'Jadi Guru BK? Siapa Takut!', '', 'Datuk Fitra', '', 'DISARPUS Banjarnegara', 'Yogyakarta', 'Andi Offset', '2017', '', '', '371.4 Dat j', '134 hlm ilust.;x 23 cm', '', '', '978-979-29-6132-4', '', NULL, NULL, '00000039112', 0, '2017-07-04 00:00:00', 0, 37, 23834, 6, 1232, 2, 7, 2, 1, NULL, 25544, '00000039112', 'Tersedia', 'APBD I 2017', '', 'laras', '2017-07-07 10:13:34', '192.168.0.207', 'hartini', '2019-02-18 10:10:43', '192.168.0.3', 1, NULL, NULL, NULL),
(39438, '0719', 'Kamus Besar Bahasa Prancis', '', 'Tim Pustaka Cerdas', '', 'DISARPUS Banjarnegara', 'Yogyakarta', 'PustakaBaruPress', '', '', '', 'R 413 Tim k', '884 hlm ; 23 cm', '', '', '978-602-0874-67-8', '', NULL, NULL, '00000039438', 0, '2017-07-06 00:00:00', 0, 37, 23939, 6, 1175, 1, 1, 2, 1, NULL, 25660, '00000039438', 'Tersedia', 'APBD I 2017', '', 'laras', '2017-07-11 08:17:58', '192.168.0.207', 'laras', '2017-07-11 08:17:58', '192.168.0.207', 1, NULL, NULL, NULL),
(39872, '32754', 'Kreasi Cantik Berbahan Kancing', '', 'Indah Arifah Febriany', '', 'KPAD Banjarnegara', 'Yogyakarta', 'Diva Kids', '2015', '', 'Cet.I', '687 Ind k', '51 hlm 27 cm', '', '', '978-602-296-095-9', '', NULL, NULL, '00000039872', 0, '2017-09-13 00:00:00', 0, 37, 23153, 6, 417, 1, 1, 2, 3, NULL, 25866, '00000039872', 'Tersedia', 'Dva Press', '', 'laras', '2017-09-14 09:19:11', '192.168.0.207', 'laras', '2017-09-14 09:19:11', '192.168.0.207', 1, NULL, NULL, NULL),
(39971, '12783', 'Terjebak di Sarang Penjahat', '', 'Zaenal Radar T.', '', 'DISARPUS Banjarnegara', 'Solo', 'Indiva Media Kreasi', '2016', '', '', '899.2213 Zae t', '128 hlm ; 20 cm', '', '', '978-602-6334-13-8', '', NULL, NULL, '00000039971', 0, '2017-10-24 00:00:00', 0, 37, 24156, 6, 417, 1, 1, 2, 1, NULL, 25915, '00000039971', 'Tersedia', 'APBD Perubahan 2017', '', 'laras', '2017-10-26 08:20:29', '192.168.0.207', 'laras', '2017-10-26 08:20:29', '192.168.0.207', 1, NULL, NULL, NULL),
(40231, '13202', 'Komik Next G: Alergi Bedak', 'Alergi Bedak', 'Dahayu Khansa Irana', 'Idha', 'DISARPUS Banjarnegara', 'Bandung', 'Muffin Graphics', '2017', '', 'cet. 1', '899.2213 Dah k', '104 hlm. ilus. 21 cm.', '', '', '978-602-367-276-9', '', NULL, NULL, '00000040231', 0, '2017-10-26 00:00:00', 0, 37, 24240, 6, 417, 1, 1, 2, 1, NULL, 25999, '00000040231', 'Dipinjam', 'APBD Perubahan 2017', '', 'arfin', '2017-10-27 13:24:27', '192.168.0.208', 'arfin', '2017-10-27 13:24:27', '192.168.0.208', 1, NULL, NULL, NULL),
(40574, '33089', 'Rahasia Keajaiban Api', '', 'Nurul Ihsan', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Luxima Metro Media', '2016', '', 'Cet.I', '552.1 Nur r', '28 hlm ; 19 cm', '', '', '978-602-268-103-8', '', NULL, NULL, '00000040574', 0, '2017-10-26 00:00:00', 0, 37, 24348, 6, 1232, 2, 7, 2, 1, NULL, 26121, '00000040574', 'Dipinjam', 'APBD Perubahan 2017', '', 'laras', '2017-10-31 15:39:38', '192.168.0.207', 'hartini', '2018-12-05 10:10:52', '192.168.0.18', 1, NULL, NULL, NULL),
(40677, '33256', 'Pembelajaran Yang Ramah Merancang Pmbelajaran Aktif, novatif, Kreatif, Efektif dan Menyenangkan di Sekolah Ramah Anak', '', 'Dedy Kustawan', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Luxima', '2016', '', 'Cet.II', '371.3 Ded p', '129 hlm ; 28 cm', '', '', '978-602-268-021-5', '', NULL, NULL, '00000040677', 0, '2017-11-02 00:00:00', 0, 37, 24381, 6, 417, 1, 1, 2, 1, NULL, 26156, '00000040677', 'Tersedia', 'APBD Perubahan 2017', '', 'laras', '2017-11-02 15:42:22', '192.168.0.207', 'laras', '2017-11-02 15:42:22', '192.168.0.207', 1, NULL, NULL, NULL),
(41000, '33290', 'Esai Bumi', '', 'Oman Abdurahman', '', 'DISARPUS Banjarnegara', 'Bandung', 'Badan Geologi', '2015', '', 'cet. 1', '553 Oma e', 'v+200 hlm. ; 23 cm.', 'Membingkai Bumi dalam Fotografi Geologi', '', '978-602-9105-57-5', '', NULL, NULL, '00000041000', 0, '2017-12-13 00:00:00', 0, 37, 24496, 6, 417, 1, 1, 2, 3, NULL, 26286, '00000041000', 'Tersedia', 'Kementrian ESDM', '', 'arfin', '2017-12-13 08:12:55', '192.168.0.208', 'arfin', '2017-12-13 08:12:55', '192.168.0.208', 1, NULL, NULL, NULL),
(41403, '13803', '1Q84 Jilid 1', '', 'Haruki Murakami', 'Penerjemah: Ribeka Ota', 'Disarpus Kab. Banjarnegara', 'Jakarta', 'KPG', '2018', '', 'Cet. 7', '899.2213 Mur i', 'vi, 516 hlm. ; 20 cm.', '', '', '978-602-424-005-9', '', NULL, NULL, '00000041403', 0, '2018-05-25 00:00:00', 0, 37, 24663, 6, 1232, 1, 1, 2, 1, NULL, 26492, '00000041403', 'Tersedia', 'APBD 2018', '', 'laras', '2018-05-02 09:37:20', '192.168.0.207', 'hartini', '2019-12-31 10:09:20', '192.168.0.229', 1, NULL, NULL, NULL),
(41789, '13812', 'Stasiun Ngaji Budaya: Restrospeksi Pembacaan Teks Cerita Unik, Lucu, Sekaligus Paradoks', 'Restrospeksi Pembacaan Teks Cerita Unik, Lucu, Sekaligus Paradoks', 'Amang Mawardi', '', 'DISARPUS Banjarnegara', 'Surabaya', 'Grammatical Publishing', '2016', '', 'cet. 1', '808.7 Ama s', 'xvi+130 hlm. ; 20 cm.', '', '', '978-602-1526-78-1', '', NULL, NULL, '00000041789', 0, '2018-04-25 00:00:00', 0, 37, 24763, 6, 417, 1, 1, 2, 1, NULL, 26595, '00000041789', 'Tersedia', 'APBD 2018', '', 'arfin', '2018-05-04 15:19:26', '192.168.0.208', 'arfin', '2018-05-04 15:19:26', '192.168.0.208', 1, NULL, NULL, NULL),
(41941, '13887', 'Crayon Shinchan Vol. 37', '', 'Yoshito Usui', 'Alih bahasa: Ninuk Sulistyawati', 'Disarpus Kab. Banjarnegara', 'Jakarta', 'Elex Media Komputindo', '2015', '', 'Cet. 1', '899.2213 Usu c', '112 hlm. : ilus. ; 21 cm.', 'Shinchan begitu terpukau saat melihat Bo memasangkan kancing yang lepas. Sejak saat itu, Shinchan terobsesi ingin dapat memasang kancing. Mama pun mengajarkan cara memasang kancing yang benar pada Shinchan. Dan kebetulan pada suatu hari kancing Papa lepas. Sanggupkah Shinchan membetulkannya tanpa melakukan tindakan yang aneh?', '', '978-602-02-5936-9', '', NULL, NULL, '00000041941', 0, '2018-04-26 00:00:00', 0, 37, 24808, 6, 1279, 1, 1, 2, 1, NULL, 26643, '00000041941', 'Dipinjam', 'APBD 2018', '', 'laras', '2018-05-08 10:01:35', '192.168.0.208', 'ifon', '2020-11-18 15:25:57', '192.168.0.240', 1, NULL, NULL, NULL),
(42196, '14209', 'Temi Ke Negeri Kincir Angin', '', 'Kinanti R.', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Pustaka Pembangunan Swadaya Nusantara', '2009', '', '', '899.2213 Kin t', '32 hlm ; 20 cm', '', '', '979-3833-46-7', '', NULL, NULL, '00000042196', 0, '2018-05-14 00:00:00', 0, 37, 24869, 6, 1210, 1, 2, 2, 1, NULL, 26704, '00000042196', 'Tersedia', 'APBD I 2018', '', 'laras', '2018-05-14 11:41:54', '192.168.0.207', 'laras', '2018-05-14 11:41:54', '192.168.0.207', 1, NULL, NULL, NULL),
(42425, '33999', 'Kisah Cinta Gajah Mada', '', 'Gesta Bayuadhy', '', 'Disarpus Kab. Banjarnegara', 'Yogyakarta', 'DIPTA', '2015', '', 'Cet. 1', '959.801 Ges k', '216 hlm. ; 20 cm.', 'Buku ini menyuguhkan semua informasi yang berkaitan denga kehidupan gajah Mada, mulai dari lahirnya, kiprahnya di dunia politik, kisah percintaannya, hingga meninggalnya. Buku ini juga menguraikan makna-makna yang terkandung dalam jiwa kepahlawanan gajah mada agar penerus bangsa ini dapat menghayatinya.', '', '978-602-255-722-7', '', NULL, NULL, '00000042425', 0, '2018-05-14 00:00:00', 0, 37, 24937, 6, 417, 1, 1, 2, 1, NULL, 26772, '00000042425', 'Tersedia', 'APBD 2018', '', 'laras', '2018-05-17 08:07:45', '192.168.0.208', 'laras', '2018-05-17 08:07:45', '192.168.0.208', 1, NULL, NULL, NULL),
(42534, '33977', 'Siap Hadapi Ujian Akhir Matematika', '', 'Mohamad Yasin', '', 'DISARPUS Banjarnegara', 'Depok', 'Media Pusindo', '2014', '', '', '510 Moh s', '68 hlm : iv.;ilust ; 21 cm', '', '', '978-602-8922-30-2', '', NULL, NULL, '00000042534', 0, '2018-05-17 00:00:00', 0, 37, 24971, 6, 417, 1, 1, 2, 1, NULL, 26807, '00000042534', 'Dipinjam', 'APBD I 2018', '', 'laras', '2018-05-17 13:58:55', '192.168.0.207', 'laras', '2018-05-17 13:58:55', '192.168.0.207', 1, NULL, NULL, NULL),
(42785, '34032', 'Mempersiapkan Kehamilan Sehat', '', 'Judi Januadi Endjun dr.SpOG', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Pustaka Bunda', '2009', '', '', '612.6 Jud m', '68 hlm : iv.;ilust ; 23 cm', '', '', '978-979-1480-25-3', '', NULL, NULL, '00000042785', 0, '2018-05-22 00:00:00', 0, 37, 25060, 6, 417, 1, 1, 2, 1, NULL, 26899, '00000042785', 'Tersedia', 'APBD I 2018', '', 'laras', '2018-05-22 14:07:43', '192.168.0.207', 'laras', '2018-05-22 14:07:43', '192.168.0.207', 1, NULL, NULL, NULL),
(42904, '33412', 'Tabel Lengkap Matematika', '', 'Osdirwan Osman', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Puspa Swara', '2007', '', '', '510 Osd t', '100 hlm : iv.;ilust ; 23,5 cm', '', '', '979-1133-24-7', '', NULL, NULL, '00000042904', 0, '2018-05-23 00:00:00', 0, 37, 25101, 6, 1271, 2, 7, 2, 1, NULL, 26945, '00000042904', 'Dipinjam', 'APBD I 2018', '', 'laras', '2018-05-23 12:19:37', '192.168.0.207', 'hartini', '2018-10-24 12:23:06', '192.168.0.218', 1, NULL, NULL, NULL),
(43329, '774', 'Kecamatan Punggelan Dalam Angka 2017', '', 'Dinkominfo Kab. Banjarnegara', '', 'DISARPUS Kab. Banjarnegara', 'Banjarnegara', 'Dinkominfo Kab. Banjarnegara', '2018', '', 'cet. 1', 'R 315.98 Kec', '84 hlm. : ilus. ; 21 cm.', '', '', '', '', NULL, NULL, '00000043329', 0, '2018-12-03 00:00:00', 0, 37, 25267, 6, 1175, 2, 5, 2, 3, NULL, 27145, '00000043329', 'Tersedia', 'DINKOMINFO Kab. Banjarnegara', '', 'arfin', '2018-12-13 10:00:33', '192.168.0.208', 'arfin', '2018-12-13 10:00:33', '192.168.0.208', 1, NULL, NULL, NULL),
(43732, 'A139', 'Bobo Edisi 12 Tahun XLVII Juni 2019', '', '', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Kompas Gramedia', '2019', '', '', '505 Bob b', '35 hlm ; 25 cm', '', '', '', '', NULL, NULL, '00000043732', 0, '2019-07-01 00:00:00', 0, 37, 25508, 6, 1210, 1, 2, 2, 2, NULL, 27509, '00000043732', 'Tersedia', '', '', 'laras', '2019-07-01 10:55:05', '192.168.0.207', 'laras', '2019-07-01 10:55:05', '192.168.0.207', 1, NULL, NULL, NULL),
(44038, '14391', 'Jodoh Terbaik', '', 'Seolhan-Na', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Wahyu Qolbu', '2017', '', 'Cet. I', '899.2213 Seo j', '398 hlm ; 19 cm', '', '', '978-602-6358-18-9', '', NULL, NULL, '00000044038', 0, '2019-10-14 00:00:00', 0, 37, 23595, 6, 417, 1, 1, 2, 1, NULL, 27753, '00000044038', 'Dipinjam', 'APBD 2019', '', 'laras', '2019-10-14 12:52:43', '192.168.0.207', 'laras', '2019-10-14 12:52:43', '192.168.0.207', 1, NULL, NULL, NULL),
(44181, '14276', 'Matahari di Atas Samudra', '', 'Ciiderella Sarif', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Bukune', '2017', '', 'cet.I', '899.2213 Cii m', '334 hlm ; 20 cm', '', '', '978-602-220-225-7', '', NULL, NULL, '00000044181', 0, '2019-10-16 00:00:00', 0, 37, 25706, 6, 417, 1, 1, 2, 1, NULL, 27821, '00000044181', 'Tersedia', 'APBD 2019', '', 'laras', '2019-10-16 08:38:52', '192.168.0.207', 'laras', '2019-10-16 08:38:52', '192.168.0.207', 1, NULL, NULL, NULL),
(44200, '14292', 'Koala Kumal', '', 'Raditya Dika', '', 'DISARPUS Banjarnegara', 'Jakarta', 'GagasMedia', '2015', '', '', '899.2213 Rad k', '250 hlm ; 20 cm', '', '', '978-979-780-899-0', '', NULL, NULL, '00000044200', 0, '2019-10-16 00:00:00', 0, 37, 25717, 6, 417, 1, 1, 2, 1, NULL, 27833, '00000044200', 'Dipinjam', 'APBD 2019', '', 'laras', '2019-10-16 09:41:33', '192.168.0.207', 'laras', '2019-10-16 09:41:33', '192.168.0.207', 1, NULL, NULL, NULL),
(44305, '35526', 'Diet Sehat Mudah Berdasarkan Golongan darah A B AB O', '', 'Astrid Savitri', '', 'DISARPUS Banjarnegara', 'Yogyakarta', 'Pustaka Baru Press', '2016', '', '', '613.2 Ast d', 'vi, 146 hlm. ; 23 cm.', 'Panduan diet berdasakan golongan darah. Asupan makanan dan minuman yang tepat. Jenis makanan dan minuman yang harus dihindari. Pola hidup berdasarkan golongan darah.', '', '602-376-038-4', '', NULL, NULL, '00000044305', 0, '2019-10-17 00:00:00', 0, 37, 24021, 2, 417, 1, 1, 2, 2, NULL, 27882, '00000044305', 'Tersedia', 'APBD 2019', '', 'arfin', '2019-10-17 15:06:01', '192.168.0.208', 'arfin', '2019-10-17 15:06:01', '192.168.0.208', 1, NULL, NULL, NULL),
(44713, '35694', 'Sosiologi Dalam Keperawatan', '', 'Wahyu Ratna', '', 'Disarpus Banjarnegara', 'Yogyakarta', 'Pustaka Baru Press', '2015', '', 'cet. 1', '610.7 Wah s', '160 hlm. ; 23 cm.', '', '', '978-602-6237-22-4', '', NULL, NULL, '00000044713', 0, '2019-10-22 00:00:00', 0, 37, 25858, 2, 417, 1, 1, 2, 2, NULL, 28025, '00000044713', 'Tersedia', 'APBD 2019', '', 'arfin', '2019-10-24 13:17:58', '192.168.0.208', 'arfin', '2019-10-24 13:17:58', '192.168.0.208', 1, NULL, NULL, NULL),
(44855, '14908', 'Kumpulan Cerita Anak Penunggu Rumah Tua', '', 'Sandi Situmorang', '', 'DISARPUS Banjarnegara', 'Yogyakarta', 'ANDI', '2009', '', '', '899.2213 San k', '85 hlm ; 19 cm', '', '', '978-979-29-0622-6', '', NULL, NULL, '00000044855', 0, '2019-10-25 00:00:00', 0, 37, 25893, 6, 1278, 1, 2, 2, 1, NULL, 28077, '00000044855', 'Tersedia', 'APBD 2019', '', 'laras', '2019-10-25 09:55:48', '192.168.0.207', 'hartini', '2020-03-06 14:10:17', '192.168.0.229', 1, NULL, NULL, NULL),
(45035, '35872', 'Meluruskan Gerakan Shalat Menuai Mukjizat', '', 'Kaha Anwar', '', 'Disarpus Banjarnegara', 'Yogyakarta', 'Pustaka Baru Press', '2016', '', 'cet. 1', '397.412 Kah m', '163 hlm. ; 23 cm.', '', '', '602-376-003-1', '', NULL, NULL, '00000045035', 0, '2019-10-25 00:00:00', 0, 37, 25943, 2, 1279, 1, 1, 2, 2, NULL, 28140, '00000045035', 'Tersedia', 'APBD 2019', '', 'arfin', '2019-10-28 14:12:32', '192.168.0.208', 'hartini', '2020-03-09 11:33:13', '192.168.0.229', 1, NULL, NULL, NULL),
(45279, '36084', 'Seri Bio Sel', '', 'R. Arifin Nugroho', '', 'DISARPUS Banjarnegara', 'Yogyakarta', 'ANDI', '2011', '', '', '571.6 Ari s', '22 hlm ; 23 cm', '', '', '978-979-29-2528-9', '', NULL, NULL, '00000045279', 0, '2019-10-30 00:00:00', 0, 37, 26003, 6, 1269, 1, 2, 2, 1, NULL, 28228, '00000045279', 'Tersedia', 'APBD 2019', '', 'laras', '2019-10-30 14:35:22', '192.168.0.207', 'susiyanto', '2020-11-18 09:09:16', '192.168.0.18', 1, NULL, NULL, NULL),
(45329, '36188', 'Perilaku dan Soft Skills Kesehatan', '', 'Th. Endang Purwoastuti', '', 'DISARPUS Banjarnegara', 'Yogyakarta', 'Pustaka Baru Press', '2015', '', '', '174.2 End p', '186 hlm ; 23 cm', '', '', '978-602-17344-6-9', '', NULL, NULL, '00000045329', 0, '2019-10-31 00:00:00', 0, 37, 26021, 6, 417, 1, 1, 2, 1, NULL, 28248, '00000045329', 'Tersedia', 'APBD 2019', '', 'laras', '2019-10-31 08:32:53', '192.168.0.207', 'laras', '2019-10-31 08:32:53', '192.168.0.207', 1, NULL, NULL, NULL),
(45857, '36657', 'Solusi Lele Sehat & Tumbuh Cepat', '', 'Usni Arie', '', 'DISARPUS Banjarnegara', 'Jakarta', 'Penebar Swadaya Grup', '2012', '', '', '639.31 Usn s', '84 hlm ; 23 cm', '', '', '978-979-002-538-7', '', NULL, NULL, '00000045857', 0, '2019-11-19 00:00:00', 0, 37, 26151, 6, 1278, 1, 1, 2, 1, NULL, 28463, '00000045857', 'Tersedia', 'APBD 2019', '', 'laras', '2019-11-19 14:42:20', '192.168.0.207', 'hartini', '2020-03-06 14:39:24', '192.168.0.229', 1, NULL, NULL, NULL),
(45863, '36666', 'Kreasi Handicraft Kayu Kelapa', '', 'Norbertus Kaleka', '', 'DISARPUS Banjarnegara', 'Yogyakarta', 'Arcitra', '2014', '', '', '745.5 Nor k', '112 hlm ; 25 cm', '', '', '978-602-7849-31-0', '', NULL, NULL, '00000045863', 0, '2019-11-19 00:00:00', 0, 37, 26186, 6, 1279, 1, 1, 2, 1, NULL, 28465, '00000045863', 'Tersedia', 'APBD 2019', '', 'laras', '2019-11-19 15:22:54', '192.168.0.207', 'hartini', '2020-03-09 09:43:02', '192.168.0.229', 1, NULL, NULL, NULL),
(46028, '9530', 'Rumah Modern Minimalis', '', 'Ratna Fedara Fatimah', '', 'Disarpus Kab Banjarnegara', 'Jakarta', 'Gramedia Pustaka Utama', '2009', '', '', '692.1', '48 hlm : ilustrasi ; 28 cm', 'Rumah tinggal yang nyaman, sehat,dan menyenangkan akan membuat penghuni merasa betah.', '', '978-979-22-4594-3', '', NULL, NULL, '00000046028', 0, '2019-12-05 00:00:00', 0, 37, 26263, 6, 421, 2, 4, 2, 1, NULL, 28576, '00000046028', 'Tersedia', 'Pengadaan Tahun 2009', '', 'widyo pranoto', '2019-12-26 09:34:13', '192.168.0.232', 'widyo pranoto', '2019-12-26 09:34:13', '192.168.0.232', 1, NULL, NULL, NULL),
(46537, '37719', 'Tandon Air Bermanfaat', '', 'Tuhana Taufik A', '', 'DISARPUS BANJARNEGARA', 'Klaten', 'SAKA MITRA KOMPETENSI', '2007', '', '', '628.11', '48 ; 21 cm', '', '', '978-979-1136-66-2', '', NULL, NULL, '00000046537', 0, '2020-02-19 00:00:00', 0, 37, 26488, 6, 417, 1, 1, 2, 3, NULL, 28831, '00000046537', 'Rusak', '', '', 'laras', '2020-02-19 10:46:44', '192.168.0.208', 'laras', '2020-02-19 10:46:44', '192.168.0.208', 1, NULL, NULL, NULL),
(46638, '37952', 'Generasi Penuh Persahabatan', '', 'Lufti Avianto', '', 'DISARPUS BANJARNEGARA', 'Bekasi', 'BINA SARANA PUSTAKA', '2012', '', '', '302', '68 hlm ; 23,8 cm', '', '', '978-602-8181-27-3', '', NULL, NULL, '00000046638', 0, '2020-02-20 00:00:00', 0, 37, 26535, 6, 417, 1, 1, 2, 3, NULL, 28878, '00000046638', 'Tersedia', '', '', 'laras', '2020-02-20 09:25:43', '192.168.0.208', 'laras', '2020-02-20 09:25:43', '192.168.0.208', 1, NULL, NULL, NULL),
(46817, '36836', 'Rahasia Anak Cerdas: belajar bersama anak, melihat cermin diri', 'belajar bersama anak, melihat cermin diri', 'Achmad Saifullah', '', 'DISARPUS BANJARNEGARA', 'Jogjakarta', 'AR-RUZZ MEDIA', '2011', '', '', '155.4 Ach r', '120 hlm ; 21 cm', '', '', '979-25-4452-6', '', NULL, NULL, '00000046817', 0, '2020-02-28 00:00:00', 0, 37, 26635, 6, 417, 1, 1, 2, 3, NULL, 28977, '00000046817', 'Tersedia', '', '', 'laras', '2020-02-28 09:43:08', '192.168.0.207', 'laras', '2020-02-28 09:43:08', '192.168.0.207', 1, NULL, NULL, NULL),
(46887, '38014', '30 Perilaku Durhaka Istri Terhadap Suami', '', 'Muhammad Thalib', '', 'DISARPUS BANJARNEGARA', 'Yogyakarta', 'MU Media', '2011', '', '', '297.436 Muh t', '168 hlm ; 14 cm', '', '', '', '', NULL, NULL, '00000046887', 0, '2020-02-28 00:00:00', 0, 37, 26677, 6, 417, 1, 1, 2, 3, NULL, 29019, '00000046887', 'Tersedia', '', '', 'laras', '2020-02-28 14:12:57', '192.168.0.208', 'laras', '2020-02-28 14:12:57', '192.168.0.208', 1, NULL, NULL, NULL),
(46947, '38257', 'Kisah kisah motivasi untuk anak berkebutuhan khusus disleksia', '', 'Andi Rismawan', '', 'DISARPUS BANJARNEGARA', 'Jogjakarta', 'JAVALITERA', '2012', '', '', '153.8', '72 hlm ; 14,8 x 21 cm', '', '', '978-602-98185-1-2', '', NULL, NULL, '00000046947', 0, '2020-03-03 00:00:00', 0, 37, 26721, 6, 417, 1, 1, 2, 3, NULL, 29063, '00000046947', 'Tersedia', '', '', 'laras', '2020-03-03 10:23:34', '192.168.0.208', 'laras', '2020-03-03 10:23:34', '192.168.0.208', 1, NULL, NULL, NULL),
(46992, '38478', 'pijat dan senam sehat untuk bayi', '', 'sabrina maharani', '', 'DISARPUS BANJARNEGARA', 'jogjakarta', 'katahati', '2013', '', '', '615.8 Sab p', '100 hlm ; 12 x 19 cm', '', '', '978-979-25-4586-9', '', NULL, NULL, '00000046992', 0, '2020-03-04 00:00:00', 0, 37, 26763, 6, 417, 1, 1, 2, 3, NULL, 29105, '00000046992', 'Tersedia', '', '', 'laras', '2020-03-04 14:51:57', '192.168.0.207', 'laras', '2020-03-04 14:51:57', '192.168.0.207', 1, NULL, NULL, NULL),
(47257, '38933', 'Dinosaurus Hewan Prasejarah dan Hewan Buas', '', 'Abu Nuha Hanifah', '', 'DISARPUS BANJARNEGARA', 'Yogyakarta', 'FAMILIA', '2012', '', '', '567', '130 hlm ; 19 cm', '', '', '978-602-97660-8-0', '', NULL, NULL, '00000047257', 0, '2020-03-11 00:00:00', 0, 37, 26981, 6, 417, 1, 1, 2, 3, NULL, 29326, '00000047257', 'Tersedia', '', '', 'laras', '2020-03-11 10:36:22', '192.168.0.208', 'laras', '2020-03-11 10:36:22', '192.168.0.208', 1, NULL, NULL, NULL),
(47293, '38300', 'Fun English for Student With Special Need Untuk Siswa', '', 'Endah Dwi Hastuti', '', 'DISARPUS BANJARNEGARA', 'Yogyakarta', 'FAMILIA', '2012', '', '', '428 End f', '124 hlm ; 18,5 cm', '', '', '978-602-98663-6-0', '', NULL, NULL, '00000047293', 0, '2020-03-11 00:00:00', 0, 37, 27014, 6, 417, 1, 1, 2, 3, NULL, 29360, '00000047293', 'Tersedia', '', '', 'laras', '2020-03-11 14:13:43', '192.168.0.208', 'laras', '2020-03-11 14:13:43', '192.168.0.208', 1, NULL, NULL, NULL),
(47295, '38261', 'Pahala Shalat Hajat', '', 'Rafiudin', '', 'DISARPUS BANJARNEGARA', 'Jakarta', 'INDOCAMP', '2014', '', '', '297.4122 Raf p', '98 hlm ; 19 cm', '', '', '979-020-202-4', '', NULL, NULL, '00000047295', 0, '2020-03-11 00:00:00', 0, 37, 27016, 6, 417, 1, 1, 2, 3, NULL, 29362, '00000047295', 'Tersedia', '', '', 'laras', '2020-03-11 14:18:14', '192.168.0.208', 'laras', '2020-03-11 14:18:14', '192.168.0.208', 1, NULL, NULL, NULL),
(47392, '25763', 'Rahasia Di balik Logam Mulia', '', '', '', '', 'Jakarta', 'Dharma Utama Publishing', '2006', '', '', '553.4 Abd r', 'iii.;76 hlm.; 21 cm', '', '', '979-1212-04-X', '', NULL, NULL, '00000047392', 0, '2013-08-14 00:00:00', 0, 37, 17203, 6, 417, 1, 1, 2, 2, NULL, 29448, '00000047392', 'Tersedia', 'APBD', '', 'arfin', '2020-04-08 14:03:38', '192.168.0.207', 'arfin', '2020-04-08 14:03:38', '192.168.0.207', 1, NULL, NULL, NULL),
(47703, '38638', 'Camilan Renyah', '', 'Emi Sulami', '', 'DISARPUS Banjarnegara', 'Klaten', 'Macanan Jaya Cemerlang', '2011', '', '', '541.3 Emi c', '52 hlm ; 21 cm', '', '', '602-8921-02-2', '', NULL, NULL, '00000047703', 0, '2020-04-27 00:00:00', 0, 37, 27268, 6, 417, 1, 1, 2, 3, NULL, 29684, '00000047703', 'Tersedia', 'Bantuan DISARPUS Provinsi', '', 'laras', '2020-04-27 08:50:21', '192.168.0.208', 'laras', '2020-04-27 08:50:21', '192.168.0.208', 1, NULL, NULL, NULL),
(48220, '37221', 'Usaha Budidaya Sorgum : Si Jago Lahan Kering', 'Si Jago Lahan Kering', 'Rudi Hermawan', '', 'Disarpus Banjarnegara', 'Yogyakarta', 'Pustaka Baru Press', '2018', '', 'cet. 1', '633.1 Rud u', '166 hlm. ; 21 cm.', '', '', '602-1674-05-7', '', NULL, NULL, '00000048220', 0, '2020-05-14 00:00:00', 0, 37, 25641, 2, 417, 1, 1, 2, 3, NULL, 30040, '00000048220', 'Tersedia', 'banprov jateng 2019', '', 'puspo', '2020-05-14 14:08:09', '192.168.0.217', 'puspo', '2020-05-14 14:08:09', '192.168.0.217', 1, NULL, NULL, NULL),
(48435, '38318', '25 Asas Islami Mendidik Anak', '', 'Muhammad Thalib', '', 'Disarpus Bna', 'Yogyakarta', 'MU Media', '2010', '', 'Cet 1', '297.732 Muh d', '95 hlm ; 21 cm', '', '', '9791997522', '', NULL, NULL, '00000048435', 0, '2020-05-22 00:00:00', 0, 37, 27584, 2, 417, 1, 1, 2, 3, NULL, 30174, '00000048435', 'Tersedia', 'Banprov Jateng', '', 'naraswari', '2020-05-22 08:26:24', '192.168.0.15', 'naraswari', '2020-05-22 08:26:24', '192.168.0.15', 1, NULL, NULL, NULL),
(48523, '38567', 'Fauna 3 in 1 Seri Capung Piranha Penyu', '', 'Arzy Jessica', '', 'disarpus banjarnegara', 'Sidoarjo', 'Masmedia Buana Pustaka', '2010', '', 'cet 1', '899.2213 Arz f', '24 hlm ; 20 cm', '', '', '978-602-8786-49-2', '', NULL, NULL, '00000048523', 0, '2020-05-27 00:00:00', 0, 37, 27645, 2, 1210, 1, 2, 2, 3, NULL, 30259, '00000048523', 'Tersedia', 'banprov jateng', '', 'naraswari', '2020-05-27 09:39:22', '192.168.0.249', 'naraswari', '2020-05-27 09:39:22', '192.168.0.249', 1, NULL, NULL, NULL),
(48615, '38898', 'Why you lose in finacial market : menguasai seni mengendalikan diri untuk trader & investor / Adi Ardiyan', 'menguasai seni mengendalikan diri untuk trader & investor / Adi Ardiyan', 'Adi Ardiyan, 1978 -', '', 'disarpus banjarnegara', 'Jakarta :', 'Gramedia Pustaka Utama,', '2016.', '', 'Cet. 1', '658.15 ADI w', 'ix, 182 hlm. : : ilus. ; ; 21 cm.', '', '', '978-602-03-2567-5', '', NULL, NULL, '00000048615', 0, '2020-05-29 00:00:00', 0, 37, 27680, 7, 1276, 1, 1, 2, 3, NULL, 30345, '00000048615', 'Tersedia', 'Bank Indonesia', '', 'fatimah', '2020-05-29 14:02:07', '192.168.0.150', 'fatimah', '2020-05-29 14:02:07', '192.168.0.150', 1, NULL, NULL, NULL),
(48649, '38456', 'Competitive Marketing Strategy Strategi Pemasaran Menghadapi Pesaing ASEAN+3 di Era MEA', '', 'Jenu Widjaja Tandjung', '', 'KPAD BNA', 'Jakarta', 'PT Elex Media Komputindo', '2016', '', '', '658.81 Jen c', '208 hlm ; 23 cm', '', '', '978-602-02-8505-4', '', NULL, NULL, '00000048649', 0, '2020-05-29 00:00:00', 0, 37, 22864, 7, 1276, 1, 1, 2, 3, NULL, 30378, '00000048649', 'Tersedia', 'Bank Indonesia', '', 'fatimah', '2020-05-29 14:49:40', '192.168.0.150', 'fatimah', '2020-05-29 14:49:40', '192.168.0.150', 1, NULL, NULL, NULL),
(48775, '38414', 'manajemen kesekretariatan', '', 'susatyo herlambang', '', 'disarpus banjarnegara', 'yogyakarta', 'gosyen', '2014', '', 'cet 1', '651.3 Sus m', '131 hlm : ilus ; 14x25cm', '', '', '9786029018981', '', NULL, NULL, '00000048775', 0, '2020-06-02 00:00:00', 0, 37, 27851, 7, 1276, 1, 1, 2, 3, NULL, 30504, '00000048775', 'Tersedia', 'bank indonesia', '', 'puspo', '2020-06-02 14:53:27', '192.168.0.217', 'puspo', '2020-06-02 14:53:27', '192.168.0.217', 1, NULL, NULL, NULL),
(48787, '38846', 'The Maxwell daily reader : bacaan inspirasional 365 hari untuk mengembangkan jiwa pemimpin di dalam diri anda dan mempengaruhi orang di sekitar anda / John C. Maxwell ; pengalih bahasa, Paul A. Rajoe ; penyunting, Maximillian Samuel Puji', 'bacaan inspirasional 365 hari untuk mengembangkan jiwa pemimpin di dalam diri anda dan mempengaruhi orang di sekitar anda / John C. Maxwell ; pengalih bahasa, Paul A. Rajoe ; penyunting, Maximillian Samuel Puji', 'Maxwell, John C.', 'Paul A. Rajoe, Maximillian Samuel Puji', 'disarpus banjarnegara', 'Jakarta :', 'Bhuana Ilmu Populer,', '2014.', '', 'Cet. 7.', '303.34 MAX m', 'vii, 421 hlm. ; ; 24 cm.', '', '', '978-979-074-838-5', '', NULL, NULL, '00000048787', 0, '2020-06-02 00:00:00', 0, 37, 27863, 7, 1276, 1, 1, 2, 3, NULL, 30516, '00000048787', 'Dipinjam', 'Bank Indonesia', '', 'fatimah', '2020-06-02 15:16:30', '192.168.0.150', 'fatimah', '2020-06-02 15:16:30', '192.168.0.150', 1, NULL, NULL, NULL),
(49042, '38197', 'Eloknya Candi Negeriku', '', 'Dwi Cahyati Anggarawati', '', '', 'Jakarta', 'Pustaka Tiga Kelana', '2011', '', 'I', '722.4 Dwi e', 'x, ed I, 86 hlm : ilust. ; 25 cm', '', '', '978-979-091-059-1', '', NULL, NULL, '00000049042', 0, '2020-06-04 00:00:00', 0, 37, 21806, 8, 417, 1, 1, 2, 3, NULL, 30726, '00000049042', 'Tersedia', 'Bantuan Disarpus Provinsi', '', 'laras', '2020-06-04 13:48:15', '192.168.0.208', 'laras', '2020-06-04 13:48:15', '192.168.0.208', 1, NULL, NULL, NULL),
(49259, '13205', 'Modul sosialisasi pengembangan lembaga penampungan pengaduan masyarakat', '', 'departemen dalam negeri', '', 'disarpus banjarnegara', 'Jakarta', 'Departemen Dalam Negeri Direktorat Jenderal Pemerintahan Umum', '', '', '', '306', '124 hlm ; 14x21 cm', '', '', '', '', NULL, NULL, '00000049259', 0, '2020-06-08 00:00:00', 0, 37, 28199, 2, 1175, 2, 5, 2, 3, NULL, 30929, '00000049259', 'Tersedia', '', '', 'puspo', '2020-06-08 09:53:33', '192.168.0.229', 'puspo', '2020-06-08 09:53:33', '192.168.0.229', 1, NULL, NULL, NULL),
(49307, '39006', 'Rahasia Pola Makan Sehat Beragam Manfaat Makan Tepat Waktu Bagi Kesehatan', 'Beragam Manfaat Makan Tepat Waktu Bagi Kesehatan', 'Adi D. Tilong', '', '', 'Yogyakarta', 'Flash Book', '2014', '', '', '641.1', '178 hlm ; 20 cm', '', '', '978-602-296-055-3', '', NULL, NULL, '00000049307', 0, '2020-06-08 00:00:00', 0, 37, 20324, 8, 417, 1, 1, 2, 3, NULL, 30970, '00000049307', 'Tersedia', 'Banprov Jateng 2019', '', 'arfin', '2020-06-09 09:20:49', '192.168.0.215', 'arfin', '2020-06-09 09:20:49', '192.168.0.215', 1, NULL, NULL, NULL),
(49513, '0119/r', 'Complete Handyman Do-it-yourself Encyclopedia 14 Pastics Fabricating Repairs Automobile', '', '', '', 'Disarpus Banjarnegara', 'USA', 'H S Stuttman Co', '', '', '14', 'R 645.403 Com', '; 18x22 cm', '', '', '0874757002', '', NULL, NULL, '00000049513', 0, '2020-06-11 00:00:00', 0, 37, 28402, 5, 1175, 2, 5, 2, 3, NULL, 31163, '00000049513', 'Tersedia', 'Yayasan Serulingmas', '', 'fatimah', '2020-06-11 08:45:15', '192.168.0.18', 'fatimah', '2020-06-11 08:45:15', '192.168.0.18', 1, NULL, NULL, NULL),
(49527, '0411/R', 'Illustrated Medical and Health Encyclopedia vol 5', '', 'The modern home medical advisor', '', 'disarpus banjarnegara', 'New York', 'United Tates of America', '1956', '', 'cet 9', '613.03', '2166 hlm : ilus ; 14x25 cm', '', '', '', '', NULL, NULL, '00000049527', 0, '2020-06-11 00:00:00', 0, 37, 28415, 6, 1175, 2, 5, 2, 2, NULL, 31177, '00000049527', 'Tersedia', '', '', 'puspo', '2020-06-11 09:10:52', '192.168.0.229', 'puspo', '2020-06-11 09:10:52', '192.168.0.229', 1, NULL, NULL, NULL),
(49670, '0102/r', 'Indeks Artikel Majalah Daerah Jawa Tengah Tahun XI No 1 dan 2', '', 'Kantor Perpustakaan Daerah Provinsi Jawa Tengah', '', 'Disarpus Banjarnegara', 'Semarang', 'Kantor Perpustakaan Daerah Provinsi Jawa Tengah', '2004', '', 'Cet. 1', 'R 025.48 Ind', 'vii ; 145 hlm ; 25 cm', '', '', '', '', NULL, NULL, '00000049670', 0, '2020-06-12 00:00:00', 0, 37, 28529, 8, 1175, 2, 5, 2, 3, NULL, 31310, '00000049670', 'Tersedia', '', '', 'fatimah', '2020-06-12 09:29:01', '192.168.0.18', 'fatimah', '2020-06-12 09:29:01', '192.168.0.18', 1, NULL, NULL, NULL),
(49718, '21325', 'Katalog Induk Daerah Jawa Barat Nomor 7 tahun VII 2008', '', 'Kantor Perpustakaan Daerah Prov Jawa Tengah', '', 'Disarpus Banjarnegara', 'Bandung', 'Badan Perpustakaan Kab. Bandung', '2008', '', 'Cet. 1', 'R 018 Kat', '115 hlm ; 28 cm', '', '', '', '', NULL, NULL, '00000049718', 0, '2020-06-15 00:00:00', 0, 37, 28564, 5, 1175, 2, 5, 2, 3, NULL, 31355, '00000049718', 'Tersedia', '', '', 'naraswari', '2020-06-15 09:19:05', '192.168.0.18', 'naraswari', '2020-06-15 09:19:05', '192.168.0.18', 1, NULL, NULL, NULL),
(49725, '17634', 'Ensiklopedia Nama-nama Bayi Dunia', '', 'Ernawati', '', 'Disarpus Banjarnegara', 'Jakarta', 'Wahyu Media', '2006', '', '', 'R 903 Ern e', 'iv., 150 hlm ; 19 cm', '', '', '979-79-5014-X', '', NULL, NULL, '00000049725', 0, '2020-06-15 00:00:00', 0, 37, 28570, 5, 1175, 2, 5, 2, 3, NULL, 31362, '00000049725', 'Tersedia', '', '', 'naraswari', '2020-06-15 09:45:02', '192.168.0.18', 'naraswari', '2020-06-15 09:45:02', '192.168.0.18', 1, NULL, NULL, NULL),
(50097, '1107R', 'UPAYA MENINGKATKAN KESUKSESAN MANAJEMEN PAUD DENGAN SISTEM IMTAQ PLUS PADA KELOMPOK BERMAIN ISLAM TERPADU PERMATA HATI KELURAHAN SOKANANDI KECAMATAN BANJARNEGARA KABUPATEN BANJARNEGARA TAHUN 2017', '', 'K. Kristiana S.Pd', '', 'DISARPUS BANJARNEGARA', 'BANJARNEGARA', 'UPT DINDIKPORA KECAMATAN BANJARNEGARA KABUPATEN BANJARNEGARA', '2017', '', '', '372.12 Kri u', '', '', '', '', '', NULL, NULL, '00000050097', 0, '2020-08-10 00:00:00', 0, 37, 28854, 5, 1175, 2, 5, 2, 3, NULL, 31714, '00000050097', 'Tersedia', '', '', 'arfin', '2020-08-10 11:18:51', '192.168.0.207', 'arfin', '2020-08-10 11:18:51', '192.168.0.207', 1, NULL, NULL, NULL),
(50171, '174Sikib', 'Seri Usaha Boga Kue Favorit Ala Cake Shop dan Bakery', '', 'Hendro Utomo', '', 'disarpus banjarnegara', '', 'Gramedia Pustaka Utama', '2006', '', '', '641.3', '32 hlmn. : ilus. ; 23 cm', '', '', '9792221921', '', NULL, NULL, '00000050171', 0, '2020-09-07 00:00:00', 0, 37, 28920, 5, 1284, 2, 9, 2, 3, NULL, 31783, '00000050171', 'Tersedia', 'SIKIB', '', 'ifon', '2020-09-07 13:16:16', '192.168.0.150', 'ifon', '2020-09-07 13:16:16', '192.168.0.150', 1, NULL, NULL, NULL),
(50284, '15332', 'Hobiku Cita-citaku: Dokter Hewan', 'Dokter Hewan', 'Cucu Nurhasanah', '', 'DISARPUS Banjarnegara', 'Solo', 'Tiga Ananda', '2019', '', '', '899.2213 Cuc h', '24 hlm ; 19 cm', '', '', '978-623-206-108-8', '', NULL, NULL, '00000050284', 0, '2020-09-17 00:00:00', 0, 37, 28995, 5, 1210, 1, 2, 2, 1, NULL, 31856, '00000050284', 'Tersedia', 'APBD Tahun 2020', '', 'laras', '2020-09-17 14:51:48', '192.168.0.207', 'laras', '2020-09-17 14:51:48', '192.168.0.207', 1, NULL, NULL, NULL),
(50680, '39279', 'Kumpulan Fakta Seru Sains Di Sekitarmu Seri Flora dan Fauna', '', 'Kadewi', '', 'DISARPUS Banjarnegara', 'Yogyakarta', 'Playground', '2018', '', '', '503 Kad k', '120 hlm ; 25 cm', '', '', '978-602-5638-87-9', '', NULL, NULL, '00000050680', 0, '2020-09-30 00:00:00', 0, 37, 29226, 5, 417, 1, 1, 2, 1, NULL, 32091, '00000050680', 'Dipinjam', 'APBD Tahun 2020', '', 'laras', '2020-09-30 14:34:00', '192.168.0.207', 'laras', '2020-09-30 14:34:00', '192.168.0.207', 1, NULL, NULL, NULL),
(50708, '1108', 'Hubugan Antara Timbulan Sampah dan Pengelolaannya dengan Kepadatan Lalat di Badan RSUD Kabupaten Banjarnegara', '', 'Holly Kurniawati', '', '', 'Semarang', 'UNDIP', '2005', '', 'cet. 1', '613.1', '82 hlm. ; 35 cm.', '', '', '', '', NULL, NULL, '00000050708', 0, '2020-10-01 00:00:00', 0, 37, 29245, 5, 1175, 2, 5, 2, 3, NULL, 32112, '00000050708', 'Tersedia', 'Penulis', '', 'arfin', '2020-10-14 13:27:51', '192.168.0.207', 'arfin', '2020-10-14 13:27:51', '192.168.0.207', 1, NULL, NULL, NULL),
(50899, '6117', 'Psikologi Pendidikan', '', 'Haryu Islamuddin', '', 'Disarpus Kab. Banjarnegara', 'Yogyakarta', 'Pustaka Pelajar', '2012', '', 'Cet. 1', '297.73203 Har p', 'ix , 284 hlm, 14 x 21 cm', '', '', '978-602-229-075-9', '', NULL, NULL, '00000050899', 0, '2020-12-16 00:00:00', 0, 37, 29365, 8, 421, 2, 4, 2, 3, NULL, 32291, '00000050899', 'Tersedia', 'Bantuan Barpusprov Jateng 2012', '', 'ifon', '2020-12-16 14:32:00', '192.168.0.249', 'ifon', '2020-12-16 14:32:00', '192.168.0.249', 1, NULL, NULL, NULL),
(50941, '9556', 'Kapten Czi Anumerta Pierre A Tendean Si Tampan yang Setia dan Rendah Hati', '', 'Wahyu Mardhatillah', '', 'Disarpus Kab Banjarnegara', 'Jakarta', 'Bee Media Pustaka', '2019', '', 'Cet. 1', '920 Wah k', 'vi ; 62 hlm; 14,8 cm x 21 cm : ilus', '', '', '978-602-6227-20-1', '', NULL, NULL, '00000050941', 0, '2021-01-28 00:00:00', 0, 37, 29395, 5, 421, 2, 4, 2, 3, NULL, 32331, '00000050941', 'Tersedia', 'Perpusnas RI', '', 'ifon', '2021-01-28 15:15:34', '192.168.0.249', 'ifon', '2021-01-28 15:15:34', '192.168.0.249', 1, NULL, NULL, NULL),
(51038, '9609', 'Love is Allah', '', 'Onedeliciosa', '', 'Disarpus Kab. Banjarnegara', 'Depok', 'Kaysa Media', '2019', '', 'Cet. 1', '297.5 One l', 'v, 122 hlm : ilus ; 21 cm', '', '', '978-602-215-066-4', '', NULL, NULL, '00000051038', 0, '2021-02-16 00:00:00', 0, 37, 29461, 2, 421, 2, 4, 2, 3, NULL, 32424, '00000051038', 'Tersedia', 'Perpusnas', '', 'naraswari', '2021-02-16 11:27:39', '192.168.0.217', 'naraswari', '2021-02-16 11:27:39', '192.168.0.217', 1, NULL, NULL, NULL),
(51157, '1118', 'Dewey Decimal Classification and Relative Index Ed. 23 Vol. 1', '', 'Melvil Dewey', '', 'Disarpus Banjarnegara', 'Dublin', 'Online Computer Library Centre', '2011', '', 'cet. 1', 'R 025.431 Mel d', '779 hlm. ; 23 cm.', '', '', '978-1-910608-80-7', '', NULL, NULL, '00000051157', 0, '2021-04-27 00:00:00', 0, 37, 29532, 5, 1175, 2, 5, 2, 3, NULL, 32503, '00000051157', 'Tersedia', 'Perpusnas RI', '', 'arfin', '2021-04-28 12:55:00', '192.168.0.207', 'arfin', '2021-04-28 12:55:00', '192.168.0.207', 1, NULL, NULL, NULL),
(51192, '9792', 'Dikejar Pekerjaan, Pesanan,Dan Penghasilan Resep Jitu Terus Diburu Rupiah Lewat Usaha Mandiri', 'Resep Jitu Terus Diburu Rupiah Lewat Usaha Mandiri', 'John Afifi', '', 'Disarpus Kab Banjarnegara', 'Yogyakarta', 'Laksana', '2019', '', '', '650.1', '200 hlm ; 20 cm', 'Kamu ingin dikejar pekerjaan? Bukan dikejar deadline pekerjaan', '', '978-602-407-512-5', '', NULL, NULL, '00000051192', 0, '2021-06-02 00:00:00', 0, 37, 29553, 2, 421, 2, 4, 2, 3, NULL, 32527, '00000051192', 'Tersedia', 'Bantuan perpusnas pusling 2020', '', 'widyo pranoto', '2021-06-03 10:26:27', '192.168.0.253', 'widyo pranoto', '2021-06-03 10:26:27', '192.168.0.253', 1, NULL, NULL, NULL),
(51214, '104', 'Jago Tip & Trik Fotografi Ponsel untuk Pemula', '', 'Hadiiswa', '', 'Disarpus Kab. Banjarnegara', 'Yogyakarta', 'Indonesia Tera', '2010', '', 'Cet. 1', '770 Had j', 'vi; 176 hlm; 14 x 21 cm', '', '', '979-775-086-8', '', NULL, NULL, '00000051214', 0, '2021-06-08 00:00:00', 0, 37, 29567, 5, 1232, 1, 7, 2, 3, NULL, 32543, '00000051214', 'Tersedia', '', '', 'ifon', '2021-06-08 11:20:19', '192.168.0.249', 'fatimah', '2021-06-23 10:01:59', '192.168.0.16', 1, NULL, NULL, NULL),
(51257, '37', 'Trubus Edisi 617 Peluang Bisnis Saca, Pendatang Dari Amazon', '', 'Sardi Duryatmo', '', '', 'Jakarta', 'Trubus Swadaya', '2021', '', '', '', '112 hlm : ilustrasi ; 20 cm', '', '', '', '', '', '', '00000051257', 0, '2021-06-05 00:00:00', 0, 37, 29592, 5, 1175, 2, 5, 2, 2, 1, 32575, '00000051257', 'Tersedia', '', '', 'widyo pranoto', '2021-06-28 11:09:11', '192.168.0.253', 'widyo pranoto', '2021-08-19 08:59:57', '192.168.0.253', 1, NULL, NULL, NULL),
(51287, '9746', 'Ketika Jago Tak Bisa Berkokok', '', 'Bambang Joko Susilo', '', 'Disarpus Kab Banjarnegara', 'Jakarta', 'Bee Media Pustaka', '2016', '', '', '899.2213', '28 hlm. : ilustrasi ; 20 cm', 'Seekor Ayam Jago Yang Licik', '', '978-602-6227-69-0', '', NULL, NULL, '00000051287', 0, '2021-06-30 00:00:00', 0, 37, 29610, 2, 421, 2, 4, 2, 3, NULL, 32596, '00000051287', 'Tersedia', 'Bantuan perpusnas pusling 2020', '', 'widyo pranoto', '2021-06-30 10:25:20', '192.168.0.253', 'widyo pranoto', '2021-06-30 10:25:20', '192.168.0.253', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collectionsources`
--

CREATE TABLE `collectionsources` (
  `ID` int(11) NOT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `IsDelete` tinyint(1) DEFAULT NULL,
  `CreateBy` varchar(100) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` varchar(100) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `collectionsources`
--

INSERT INTO `collectionsources` (`ID`, `Code`, `Name`, `IsDelete`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`) VALUES
(1, '1', 'Pengadaan', NULL, '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG', '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG'),
(2, '2', 'Pembelian', NULL, '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG', '(MIGRASI)', '2015-04-06 09:27:25', 'ADMINPBG'),
(3, '3', 'Hadiah', 0, 'admindaerah', '2015-07-02 10:15:30', '192.168.0.203', 'admindaerah', '2015-07-02 10:15:30', '192.168.0.203'),
(4, '4', 'Penulis Banjarnegara', 0, 'admindaerah', '2021-04-20 11:43:14', '192.168.0.206', 'admindaerah', '2021-04-20 11:43:14', '192.168.0.206');

-- --------------------------------------------------------

--
-- Table structure for table `collectionstatus`
--

CREATE TABLE `collectionstatus` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(45) DEFAULT NULL,
  `UpdateBy` varchar(45) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `collectionstatus`
--

INSERT INTO `collectionstatus` (`ID`, `Name`, `CreatedBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`) VALUES
(1, 'Tersedia', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC'),
(2, 'Tidak diketahui', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC'),
(3, 'Rusak', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC'),
(4, 'Dalam Perbaikan', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC'),
(5, 'Dipinjam', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC'),
(6, 'Dalam Penggandaan', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC'),
(7, 'Diolah', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC'),
(8, 'Hilang', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC', 'SYSTEM', '2012-09-12 13:56:30', 'DeniPC');

-- --------------------------------------------------------

--
-- Table structure for table `history_pesanbuku`
--

CREATE TABLE `history_pesanbuku` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `id_anggota` varchar(128) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `tanggal_action` varchar(128) NOT NULL,
  `keterangan` varchar(128) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `status` varchar(128) NOT NULL,
  `pesan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `history_pesanbuku`
--

INSERT INTO `history_pesanbuku` (`id`, `nama`, `email`, `id_anggota`, `judul`, `penulis`, `penerbit`, `kelas`, `tanggal_action`, `keterangan`, `tanggal_pesan`, `status`, `pesan`) VALUES
(1, 'Angga Prastyo', 'anggaprastyo010@gmail.com', '22012100001', 'Waspada ! Osteoporosis', 'Endang Purwoastuti', 'Kanisius', '616.7 End w', '1648622133', 'kedua', '2022-03-30 13:35:12', 'accepted', 'pertama sukses'),
(2, 'Angga Prastyo', 'anggaprastyo010@gmail.com', '22012100001', 'Membuat Aksesori Rambut & Busana', 'Wardana, Enen', 'Kawan Pustaka', '745.5 War m', '1648781111', 'pertama', '2022-03-30 13:34:14', 'rejected', 'gaboleh'),
(3, 'Agani Satria', 'aganisatria@gmail.com', '', 'Tentang Hati Yang Ragu', 'Malika Nurul Janah', 'Pustaka One', '811 Mal t', '1648781422', 'senja', '2022-04-01 09:49:53', 'accepted', 'okemas gani'),
(4, 'Aditya Rahmat', 'alienssipule@gmail.com', '', 'Perjalanan Sunyi', 'Nurangkoso, Drajat', 'Lawe Pawinihan', '811 Nur p', '1649754641', 'bacabaca', '2022-04-12 16:08:38', 'accepted', 'oke mas adit'),
(5, 'Rio Isac Baghiz Ardana', 'rioisac@gmail.com', '22031000002', 'Guardian Angels', 'Rere', 'Araska', '899.2213 Rer g', '1649754847', 'kedua', '2022-04-11 14:14:41', 'accepted', 'pk'),
(6, 'Rio Isac Baghiz Ardana', 'rioisac@gmail.com', '22031000002', 'Botol Kesayangan Indra', 'Riza A', 'Sinar Grafika', 'Fik Riz b', '1649754854', 'pinjam lah mak', '2022-04-11 14:13:56', 'accepted', 'ok'),
(7, 'Aditya Rahmat', 'alienssipule@gmail.com', '', 'Gertie\'s Perfect Party', 'Arleen Amidjaja', 'Bumi Aksara', 'Fik Arl g', '1649755609', 'referensi', '2022-04-12 16:26:25', 'accepted', 'oke mas\r\n'),
(8, 'Rio Isac Baghiz Ardana', 'rioisac@gmail.com', '22031000002', 'Forgotten love', 'Amidjaja, Arleen', 'Andi', 'Fik Ami f', '1650863759', 'bacabaca', '2022-04-25 12:00:40', 'rejected', 'buku rusak'),
(9, 'Rio Isac Baghiz Ardana', 'rioisac@gmail.com', '22031000002', 'Beternak Kelinci', 'Subroto, Seno', 'Aneka Ilmu', '636.9 Sub b', '1651033138', 'belajar', '2022-04-27 11:17:59', 'accepted', 'silahkan'),
(10, 'Angga Prastyo', 'anggaprastyo010@gmail.com', '', 'Misteri Pembunuhan di usaha tando', 'Mara', 'Gramedia Pustaka Utama', 'Fik Mar m', '1651043728', 'Untuk belajar', '2022-04-27 14:14:08', 'accepted', 'oke');

-- --------------------------------------------------------

--
-- Table structure for table `jenisanggota`
--

CREATE TABLE `jenisanggota` (
  `ID` int(11) NOT NULL,
  `jenisanggota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `jenisanggota`
--

INSERT INTO `jenisanggota` (`ID`, `jenisanggota`) VALUES
(1, 'KARYAWAN'),
(2, 'MAHASISWA'),
(3, 'PELAJAR'),
(4, 'UMUM');

-- --------------------------------------------------------

--
-- Table structure for table `jenisdenda`
--

CREATE TABLE `jenisdenda` (
  `ID` int(11) NOT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CreateBy` varchar(100) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` varchar(100) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jenisdenda`
--

INSERT INTO `jenisdenda` (`ID`, `Code`, `Name`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`) VALUES
(1, 'D01', 'Ganti Koleksi yang Sama', 'Deni Syahreza', '2012-11-01 00:49:40', '::1', 'inlislite', '2013-06-14 14:49:48', '192.168.16.12'),
(2, 'D02', 'Ganti Dengan Koleksi Baru', 'Deni Syahreza', '2012-11-01 00:49:56', '::1', 'inlislite', '2013-06-14 14:49:35', '192.168.16.12'),
(3, 'D03', 'Ganti Uang', 'Deni Syahreza', '2012-11-01 00:50:23', '::1', 'Deni Syahreza', '2012-11-01 00:50:23', '::1'),
(6, 'D05', 'Bayar Denda Keterlambatan', 'inlislite', '2013-06-14 14:51:28', '192.168.16.12', 'inlislite', '2013-06-14 14:51:28', '192.168.16.12');

-- --------------------------------------------------------

--
-- Table structure for table `jenispelanggaran`
--

CREATE TABLE `jenispelanggaran` (
  `ID` int(11) NOT NULL,
  `JenisPelanggaran` varchar(255) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL,
  `CreateBy` varchar(100) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` varchar(100) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jenispelanggaran`
--

INSERT INTO `jenispelanggaran` (`ID`, `JenisPelanggaran`, `Keterangan`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`) VALUES
(1, 'Telat', 'Telat Pengembalian', 'Deni Syahreza', '2012-11-01 00:39:22', '::1', 'inlislite', '2013-06-14 14:47:00', '192.168.16.12'),
(2, 'Rusak', 'Koleksi Rusak', 'Deni Syahreza', '2012-11-01 00:39:33', '::1', 'inlislite', '2013-06-14 14:47:47', '192.168.16.12'),
(3, 'Hilang', 'Koleksi Hilang', 'Deni Syahreza', '2012-11-01 00:39:43', '::1', 'inlislite', '2013-06-14 14:48:21', '192.168.16.12'),
(12, 'Telat + Rusak', 'Telat Pengembalian dan Koleksi Rusak', 'inlislite', '2013-06-14 14:46:48', '192.168.16.12', 'inlislite', '2013-06-14 14:47:59', '192.168.16.12');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `nama`) VALUES
(1, 'Banjarnegara'),
(2, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `id_kab` int(11) NOT NULL,
  `nama_kec` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `id_kab`, `nama_kec`) VALUES
(1, 2, 'Lainnya'),
(2, 1, 'Banjarmangu'),
(3, 1, 'Banjarnegara'),
(4, 1, 'Batur'),
(5, 1, 'Bawang'),
(6, 1, 'Kalibening'),
(7, 1, 'Karangkobar'),
(8, 1, 'Madukara'),
(9, 1, 'Mandiraja'),
(10, 1, 'Pagedongan'),
(11, 1, 'Pagentan'),
(12, 1, 'Pandanarum'),
(13, 1, 'Pejawaran'),
(14, 1, 'Punggelan'),
(15, 1, 'Purwanegara'),
(16, 1, 'Purworejo Klampok'),
(17, 1, 'Rakit'),
(18, 1, 'Sigaluh'),
(19, 1, 'Susukan'),
(20, 1, 'Wanadadi'),
(21, 1, 'Wanayasa');

-- --------------------------------------------------------

--
-- Table structure for table `masterkelasbesar`
--

CREATE TABLE `masterkelasbesar` (
  `kdKelas` varchar(3) NOT NULL,
  `namakelas` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `masterkelasbesar`
--

INSERT INTO `masterkelasbesar` (`kdKelas`, `namakelas`) VALUES
('000', '000 - Karya Umum'),
('100', '100 - Filsafat dan Psikologi'),
('200', '200 - Agama'),
('300', '300 - Ilmu Sosial'),
('400', '400 - Bahasa'),
('500', '500 - Ilmu Murni'),
('600', '600 - Ilmu Terapan'),
('700', '700 - Kesenian dan Olahraga'),
('800', '800 - Kesusasteraan'),
('900', '900 - Sejarah dan Geografi');

-- --------------------------------------------------------

--
-- Table structure for table `master_range_umur`
--

CREATE TABLE `master_range_umur` (
  `id` int(11) NOT NULL,
  `umur1` int(11) DEFAULT NULL,
  `umur2` int(11) DEFAULT NULL,
  `Keterangan` text DEFAULT NULL,
  `CREATEBY` varchar(255) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(255) DEFAULT NULL,
  `UpdateBy` varchar(255) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(255) DEFAULT NULL,
  `TrashBy` varchar(255) DEFAULT NULL,
  `TrashDate` datetime DEFAULT NULL,
  `TrashTerminal` varchar(255) DEFAULT NULL,
  `IsDelete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `master_range_umur`
--

INSERT INTO `master_range_umur` (`id`, `umur1`, `umur2`, `Keterangan`, `CREATEBY`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`, `TrashBy`, `TrashDate`, `TrashTerminal`, `IsDelete`) VALUES
(1, 0, 5, 'Masa Balita ( 0 sd 5 tahun)', 'denisyahreza', '2015-02-23 11:13:07', NULL, 'denisyahreza', '2015-02-23 11:18:30', '::1', NULL, NULL, NULL, NULL),
(2, 6, 11, 'Masa Kanak-kanak (6 sd 11 tahun)', 'denisyahreza', '2015-02-23 11:13:07', NULL, 'denisyahreza', '2015-02-23 11:21:23', '::1', NULL, NULL, NULL, NULL),
(3, 12, 16, 'Masa Remaja Awal (12-16)', 'denisyahreza', '2015-02-23 11:13:07', NULL, 'denisyahreza', '2015-02-23 11:35:22', '::1', NULL, NULL, NULL, NULL),
(4, 17, 25, 'Masa Remaja Akhir (17-25)', 'denisyahreza', '2015-02-23 11:13:07', NULL, 'denisyahreza', '2015-02-23 11:35:00', '::1', NULL, NULL, NULL, NULL),
(5, 26, 35, 'Masa Dewasa Awal (26-35)', 'denisyahreza', '2015-02-23 11:13:07', NULL, 'denisyahreza', '2015-02-23 11:37:26', '::1', NULL, NULL, NULL, NULL),
(6, 36, 45, 'Masa Dewasa Akhir (Umur 36-45 tahun)', 'denisyahreza', '2015-02-23 11:13:07', NULL, 'denisyahreza', '2015-02-23 11:39:06', '::1', NULL, NULL, NULL, NULL),
(7, 46, 55, 'Massa Lansia Awal (46-55)', 'denisyahreza', '2015-02-23 11:13:07', NULL, 'denisyahreza', '2015-02-23 11:40:46', '::1', NULL, NULL, NULL, NULL),
(9, 65, 200, 'Masa Manula (65-200)', 'denisyahreza', '2015-02-23 11:42:59', '::1', 'denisyahreza', '2015-02-23 13:11:16', '::1', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_action` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `nama`, `email`, `judul`, `tanggal_pesan`, `tanggal_action`, `status`) VALUES
(34, 'Angga Prastyo', 'anggaprastyo010@gmail.com', 'Soliloqui', '2022-04-27 14:14:51', '', 'waiting');

--
-- Triggers `notifikasi`
--
DELIMITER $$
CREATE TRIGGER `update_status_from_notif` AFTER UPDATE ON `notifikasi` FOR EACH ROW UPDATE pesan_buku
SET pesan_buku.status =  new.status
WHERE notifikasi.id = pesan_buku.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi_user`
--

CREATE TABLE `notifikasi_user` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `tanggal_action` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL,
  `pesan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `notifikasi_user`
--

INSERT INTO `notifikasi_user` (`id`, `email`, `judul`, `tanggal_action`, `status`, `pesan`) VALUES
(10, 'anggaprastyo010@gmail.com', 'Misteri Pembunuhan di usaha tando', '1651043728', 'accepted', 'oke');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_buku`
--

CREATE TABLE `pesan_buku` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `id_anggota` varchar(128) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `tanggal_action` varchar(128) NOT NULL,
  `keterangan` varchar(128) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `status` varchar(128) NOT NULL,
  `pesan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pesan_buku`
--

INSERT INTO `pesan_buku` (`id`, `nama`, `email`, `id_anggota`, `judul`, `penulis`, `penerbit`, `kelas`, `tanggal_action`, `keterangan`, `tanggal_pesan`, `status`, `pesan`) VALUES
(1, 'Angga Prastyo', 'anggaprastyo010@gmail.com', '22012100001', 'Membuat Aksesori Rambut &amp; Busana', 'Wardana, Enen', 'Kawan Pustaka', '745.5 War m', '1648781111', 'pertama', '2022-01-30 13:34:14', 'rejected', 'gaboleh'),
(2, 'Angga Prastyo', 'anggaprastyo010@gmail.com', '22012100001', 'Waspada ! Osteoporosis', 'Endang Purwoastuti', 'Kanisius', '616.7 End w', '1648622133', 'kedua', '2022-01-30 13:35:12', 'accepted', 'pertama sukses'),
(3, 'Agani Satria', 'aganisatria@gmail.com', '', 'Tentang Hati Yang Ragu', 'Malika Nurul Janah', 'Pustaka One', '811 Mal t', '1648781422', 'senja', '2022-02-01 09:49:53', 'accepted', 'okemas gani'),
(4, 'Rio Isac Baghiz Ardana', 'rioisac@gmail.com', '22031000002', 'Botol Kesayangan Indra', 'Riza A', 'Sinar Grafika', 'Fik Riz b', '1649754854', 'pinjam lah mak', '2022-03-11 14:13:56', 'accepted', 'ok'),
(5, 'Rio Isac Baghiz Ardana', 'rioisac@gmail.com', '22031000002', 'Guardian Angels', 'Rere', 'Araska', '899.2213 Rer g', '1649754847', 'kedua', '2022-04-11 14:14:41', 'accepted', 'pk'),
(7, 'Aditya Rahmat', 'alienssipule@gmail.com', '', 'Perjalanan Sunyi', 'Nurangkoso, Drajat', 'Lawe Pawinihan', '811 Nur p', '1649754641', 'bacabaca', '2022-04-12 16:08:38', 'accepted', 'oke mas adit'),
(8, 'Aditya Rahmat', 'alienssipule@gmail.com', '', 'Gertie\'s Perfect Party', 'Arleen Amidjaja', 'Bumi Aksara', 'Fik Arl g', '1649755609', 'referensi', '2022-04-12 16:26:25', 'accepted', 'oke mas\r\n'),
(9, 'Rio Isac Baghiz Ardana', 'rioisac@gmail.com', '22031000002', 'Forgotten love', 'Amidjaja, Arleen', 'Andi', 'Fik Ami f', '1650863759', 'bacabaca', '2022-04-25 12:00:40', 'rejected', 'buku rusak'),
(10, 'Agani Satria', 'aganisatria@gmail.com', '', 'Jangan Takut Gagal!', 'Aldilla Dharma', 'QultumMedia', '297.5 Ald j', '', 'referensi', '2022-04-25 12:02:05', 'waiting', ''),
(11, 'Agani Satria', 'aganisatria@gmail.com', '', 'Bertanam Kedelai', 'Suprapto', 'Penebar Swadaya', '634 Sup b', '', 'belajar sayuran', '2022-04-25 12:11:26', 'waiting', ''),
(12, 'Aditya Rahmat', 'alienssipule@gmail.com', '', 'Jenis Teks Bahasa Inggris', 'Putut Pratyasto', 'Pustaka Pitaloka', '425 Put j', '', 'referensi', '2022-04-25 12:15:16', 'waiting', ''),
(13, 'Agani Satria', 'aganisatria@gmail.com', '', 'Agar Beo Bicara', 'Prijono, Siti Nurmaliati', 'Penebar Swadaya', '636.6 Pri a', '', 'referensi', '2022-04-27 11:14:35', 'waiting', ''),
(14, 'Rio Isac Baghiz Ardana', 'rioisac@gmail.com', '22031000002', 'Beternak Kelinci', 'Subroto, Seno', 'Aneka Ilmu', '636.9 Sub b', '1651033138', 'belajar', '2022-04-27 11:17:59', 'accepted', 'silahkan'),
(15, 'Angga Prastyo', 'anggaprastyo010@gmail.com', '', 'Misteri Pembunuhan di usaha tando', 'Mara', 'Gramedia Pustaka Utama', 'Fik Mar m', '1651043728', 'Untuk belajar', '2022-04-27 14:14:08', 'accepted', 'oke'),
(16, 'Angga Prastyo', 'anggaprastyo010@gmail.com', '', 'Soliloqui', 'Ma\'ruf, Ade', 'Jendela', '100 Mar s', '', 'Buat ngerjain pr', '2022-04-27 14:14:51', 'waiting', '');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_kartu`
--

CREATE TABLE `pesan_kartu` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `jeniskelamin` varchar(128) NOT NULL,
  `tempatlahir` varchar(128) NOT NULL,
  `tanggallahir` date NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `kabupaten` varchar(128) NOT NULL,
  `kecamatan` varchar(128) NOT NULL,
  `kelurahan` varchar(128) NOT NULL,
  `nohp` varchar(128) NOT NULL,
  `nik` varchar(128) NOT NULL,
  `pekerjaan` varchar(128) NOT NULL,
  `instansi` varchar(128) NOT NULL,
  `pendidikan` varchar(128) NOT NULL,
  `namaibu` varchar(128) NOT NULL,
  `date_created` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pesan_kartu`
--

INSERT INTO `pesan_kartu` (`id`, `nama`, `jeniskelamin`, `tempatlahir`, `tanggallahir`, `alamat`, `kabupaten`, `kecamatan`, `kelurahan`, `nohp`, `nik`, `pekerjaan`, `instansi`, `pendidikan`, `namaibu`, `date_created`, `status`) VALUES
(1, 'Agani Satria', 'Laki-Laki', 'Jakarta', '2022-03-29', 'Limbangan Baru, Rt 08/RW 02', '1', '2', 'Limbangan', '2132414', '21314514', 'qe', 'wgvava', 'SMA', 'oafdnfda', '2022-03-29 20:37:14', 'accepted'),
(2, 'Aditya Rahmat', 'Laki-Laki', 'Jakarta', '2022-03-10', 'aojd a8 eaweu da uaduhsieiwau', '1', '15', 'rarw aq', 'aewq', 'qedfw', 'aedqa', 'dawea', 'SMA', 'aw cwq', '2022-03-29 20:44:33', 'accepted'),
(3, 'Suryana', 'Laki-Laki', 'Jakarta', '2022-04-01', 'Limbangan Baru, Rt 08/RW 02', '1', '14', 'rarw aq', '2132414', '23wq2', 'qe', 'wgvava', 'SMP', 'q', '2022-04-12 16:33:59', 'accepted'),
(4, 'Angga Prastyo', 'Laki-Laki', 'Banjarnegara', '2022-04-27', 'Jembangan, RT 01/RW 07', '1', '14', 'Jembangan', '081325562625', '3304126701010002', 'Guru', 'SMA N 1 Banjarnegara', 'Perguruan Tinggi', 'Nanik Indrawati', '2022-04-27 14:16:20', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `kabupaten` varchar(128) NOT NULL,
  `kecamatan` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `id_anggota` varchar(20) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `kabupaten`, `kecamatan`, `password`, `role_id`, `date_created`, `nohp`, `id_anggota`, `alamat`, `image`, `is_active`) VALUES
(0, 'Admin', 'admin@gmail.com', '1', '20', '$2y$10$NJl5w.FNTK7LOhXSv4ZhputzBPDLL6XFiMJD0xiJx0wiLf/AzOgYe', 1, '2024-05-31', '', '', '', 'user.png', 1),
(2, 'Administrator', 'administrator@gmail.com', '1', '3', '$2y$10$Jt23aieL17qZB3wCozkSd.NwcvE2ucdkthpWhR94RHgniFgeadHW.', 1, '2021-10-01', 'belum diisi', '', 'belum diisi', 'user.png', 1),
(3, 'Rio Isac', 'rioisac@gmail.com', '1', '13', '$2y$10$3IfkMD8KtHCvBsbyBE3nI.H97sO.0Vbfss8WKJI763ydBgKUD84e.', 2, '2021-11-10', '081235128012', '22031000002', 'Jl Kalimendong nomor 34, Danaraja RT 01/RW 07', 'angular.jpg', 1),
(25, 'Aditya Rahmat', 'alienssipule@gmail.com', '1', '2', '$2y$10$eBapYkJNwNE0cDzCD6xX7eosJoviu0SRoDW40SoTX7WvlasCJnSES', 2, '2022-01-18', 'belum diisi', '', 'belum diisi', 'user.png', 1),
(28, 'Agani Satria', 'agani@gmail.com', '1', '14', 'agani123', 2, '2022-02-18', '085274297101', '', 'Limbangan Baru, Rt 08/RW 02', 'vue.jpg', 1),
(32, 'Daffa Hilmi Yusuf', 'adreamcatcher010@gmail.com', '1', '9', '$2y$10$fnXl1lvuhUtQhfXUp3BXHOXq1XmMOhERJgs2mAmhNbofxOIqips4O', 2, '2022-03-01', 'belum diisi', '', 'belum diisi', 'user.png', 1),
(36, 'Angga Prastyo', 'anggaprastyo010@gmail.com', '1', '14', '$2y$10$xkUS6sP8.NdQpVouxdljlu2bIliF10LwXALlRLtSieLzMSrvVTwa.', 2, '2022-04-27', 'belum diisi', '', 'belum diisi', 'user.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'Dashboard User'),
(3, 'Menu Admin'),
(4, 'Layanan');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-desktop'),
(2, 2, 'Home', 'anggota', 'fas fa-fw fa-home'),
(3, 4, 'Katalog Buku', 'buku', 'fas fa-fw fa-book'),
(4, 4, 'Daftar Pesanan', 'infopesan', 'fas fa-fw fa-bell'),
(5, 4, 'Riwayat Pesan Buku', 'riwayat', 'fas fa-fw fa-shopping-cart'),
(6, 4, 'Buat Kartu Anggota', 'form_kartu', 'fas fa-fw fa-address-card'),
(7, 3, 'Edit Buku', 'admin_buku', 'fas fa-fw fa-book'),
(8, 3, 'Daftar User', 'daftar_user', 'fas fa-fw fa-user-circle'),
(9, 3, 'Pesanan Kartu', 'pesanan_kartu', 'fas fa-fw fa-id-card'),
(10, 3, 'Pesanan Buku', 'pesanan_buku', 'fas fa-fw fa-shopping-cart'),
(11, 2, 'Profile', 'profile', 'fas fa-fw fa-user'),
(12, 3, 'History Pesanan', 'riwayat_pesanan', 'fas fa-fw fa-history'),
(13, 4, 'Maps', 'maps_anggota', 'fas fa-fw fa-map-marked-alt');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(0, 'admin@gmail.com', 'uB2TqSTMRCqYkWBLiCoTaeXbfPUCUen9oG9Yr2QfUsM=', 1717125464),
(4, 'anggapr82@gmail.com', 'PupyBxqadwO6ynxw+jRqp0GSBy5QD6uaRXk8yViSe/U=', 1647408516),
(9, 'aganisatria@gmail.com', 'zDdAMHtaQhYeBmKhutdOPiaTmbs7SwJEsNnntq8klUg=', 1647583946),
(10, 'aganisatria@gmail.com', 'tmtdt6OvR04m5ANymitDpmiEUl6+VpW+vxsQ4bQ+NKc=', 1647584182),
(11, 'aganisatria@gmail.com', '/3h2VwzvEfLjXD5tr1nvdfyk728c0+fgyGqzQ9G8wy8=', 1647585023),
(12, 'peter@gmail.com', 'uq8RlJselQLip0JSCB1sSSoIn9BhpbCfTEUfSKrB0lI=', 1648094456),
(13, 'bro@gmail.com', 'XpXzLBTgPxtfStD4E7GyCLkykvSOjAywJSRIHxg7fFo=', 1648634248),
(14, 'berawalldecor@gmail.com', 'CiO4HZ5tvuu8pYe9nOhjpmEuiwEx6Q1hMpMa5djDuio=', 1648634325),
(15, 'adreamcatcher010@gmail.com', 'J1GuKF0843UqVAfIpTXc2Y+Wu6tu2JOwYqSjnIZOlT0=', 1648797457),
(16, 'anggapr82@gmail.com', 'P3P4L6TzEJb59xrmdtpNtqAl8yREx1Wyg0sDceYkF+M=', 1651033317);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branchs`
--
ALTER TABLE `branchs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `collectioncategorys`
--
ALTER TABLE `collectioncategorys`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `collectionrules`
--
ALTER TABLE `collectionrules`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Unik_NomorBarcode` (`NomorBarcode`),
  ADD KEY `Branch_id` (`Branch_id`),
  ADD KEY `Catalog_id` (`Catalog_id`),
  ADD KEY `Partner_id` (`Partner_id`),
  ADD KEY `Location_id` (`Location_id`),
  ADD KEY `Rule_id` (`Rule_id`),
  ADD KEY `Category_id` (`Category_id`),
  ADD KEY `Media_id` (`Media_id`),
  ADD KEY `Source_id` (`Source_id`),
  ADD KEY `collections_worksheets` (`Worksheet_id`);

--
-- Indexes for table `collectionsources`
--
ALTER TABLE `collectionsources`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `collectionstatus`
--
ALTER TABLE `collectionstatus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `history_pesanbuku`
--
ALTER TABLE `history_pesanbuku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenisanggota`
--
ALTER TABLE `jenisanggota`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jenisdenda`
--
ALTER TABLE `jenisdenda`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jenispelanggaran`
--
ALTER TABLE `jenispelanggaran`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masterkelasbesar`
--
ALTER TABLE `masterkelasbesar`
  ADD PRIMARY KEY (`kdKelas`);

--
-- Indexes for table `master_range_umur`
--
ALTER TABLE `master_range_umur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi_user`
--
ALTER TABLE `notifikasi_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_buku`
--
ALTER TABLE `pesan_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_kartu`
--
ALTER TABLE `pesan_kartu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branchs`
--
ALTER TABLE `branchs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `collectioncategorys`
--
ALTER TABLE `collectioncategorys`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `collectionrules`
--
ALTER TABLE `collectionrules`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `ID` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51503;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
