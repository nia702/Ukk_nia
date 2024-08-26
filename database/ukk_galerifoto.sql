-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2024 at 04:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_galerifoto`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggalbuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggalbuat`, `userid`) VALUES
(8, 'Otomotif', 'mobil', '2024-08-08', 2),
(11, 'Teknologi', 'hp', '2024-08-08', 2),
(15, 'teknologi', 'Hp', '2024-08-20', 4),
(16, 'Teknologi', 'Laptop', '2024-08-21', 2);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(9, 'hp', '            hp 16 samsung', '2024-08-08', '1917356477-16 HP.jpg', 11, 2),
(11, 'HP', 'SAMSUNG', '2024-08-20', '1115326148-16 HP.jpg', 9, 4),
(12, 'laptop', 'canggih', '2024-08-21', '65193109-1745749396-260059388-912402627-komputer.jpg', 11, 2),
(13, 'mobill', 'pink', '2024-08-21', '1868427406-Mobil.jpg', 8, 2),
(14, 'laptop', 'canggih', '2024-08-22', '1188481518-', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(12, 13, 2, 'lucu sekli', '2024-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(50, 0, 2, '2024-08-21'),
(51, 0, 2, '2024-08-21'),
(52, 0, 2, '2024-08-21'),
(53, 0, 2, '2024-08-21'),
(54, 0, 2, '2024-08-21'),
(55, 0, 2, '2024-08-21'),
(56, 0, 2, '2024-08-21'),
(57, 0, 2, '2024-08-21'),
(58, 0, 2, '2024-08-21'),
(59, 0, 2, '2024-08-21'),
(60, 0, 2, '2024-08-21'),
(61, 0, 2, '2024-08-21'),
(62, 0, 2, '2024-08-21'),
(63, 0, 2, '2024-08-21'),
(64, 0, 2, '2024-08-21'),
(65, 0, 2, '2024-08-21'),
(66, 0, 2, '2024-08-21'),
(67, 0, 2, '2024-08-21'),
(68, 0, 2, '2024-08-21'),
(69, 0, 2, '2024-08-21'),
(70, 0, 2, '2024-08-21'),
(71, 0, 2, '2024-08-21'),
(72, 0, 2, '2024-08-21'),
(73, 0, 2, '2024-08-21'),
(74, 0, 2, '2024-08-21'),
(75, 0, 2, '2024-08-21'),
(76, 0, 2, '2024-08-21'),
(77, 0, 2, '2024-08-21'),
(78, 0, 2, '2024-08-21'),
(79, 0, 2, '2024-08-21'),
(80, 0, 2, '2024-08-21'),
(81, 0, 2, '2024-08-21'),
(82, 0, 2, '2024-08-21'),
(83, 0, 2, '2024-08-21'),
(84, 0, 2, '2024-08-21'),
(85, 0, 2, '2024-08-21'),
(86, 0, 2, '2024-08-21'),
(87, 0, 2, '2024-08-21'),
(88, 0, 2, '2024-08-21'),
(89, 0, 2, '2024-08-21'),
(90, 0, 2, '2024-08-21'),
(91, 0, 2, '2024-08-21'),
(92, 0, 2, '2024-08-21'),
(93, 0, 2, '2024-08-21'),
(94, 0, 2, '2024-08-21'),
(95, 0, 2, '2024-08-21'),
(96, 0, 2, '2024-08-21'),
(97, 0, 2, '2024-08-21'),
(98, 0, 2, '2024-08-21'),
(99, 0, 2, '2024-08-21'),
(100, 0, 2, '2024-08-21'),
(101, 0, 2, '2024-08-21'),
(102, 0, 2, '2024-08-21'),
(103, 0, 2, '2024-08-21'),
(104, 0, 2, '2024-08-21'),
(105, 0, 2, '2024-08-21'),
(106, 0, 2, '2024-08-21'),
(107, 0, 2, '2024-08-21'),
(108, 0, 2, '2024-08-21'),
(109, 0, 2, '2024-08-21'),
(110, 0, 2, '2024-08-21'),
(111, 0, 2, '2024-08-21'),
(112, 0, 2, '2024-08-21'),
(113, 0, 2, '2024-08-21'),
(114, 0, 2, '2024-08-21'),
(117, 8, 2, '2024-08-21'),
(120, 0, 2, '2024-08-21'),
(121, 0, 2, '2024-08-21'),
(122, 0, 2, '2024-08-21'),
(123, 0, 2, '2024-08-21'),
(124, 0, 2, '2024-08-21'),
(125, 0, 2, '2024-08-21'),
(126, 0, 2, '2024-08-21'),
(127, 0, 2, '2024-08-21'),
(128, 0, 2, '2024-08-21'),
(129, 0, 2, '2024-08-21'),
(130, 0, 2, '2024-08-21'),
(131, 0, 2, '2024-08-21'),
(132, 0, 2, '2024-08-21'),
(133, 0, 2, '2024-08-21'),
(134, 0, 2, '2024-08-21'),
(135, 0, 2, '2024-08-21'),
(136, 0, 2, '2024-08-21'),
(137, 0, 2, '2024-08-21'),
(138, 0, 2, '2024-08-21'),
(139, 0, 2, '2024-08-21'),
(140, 0, 2, '2024-08-21'),
(141, 0, 2, '2024-08-21'),
(142, 0, 2, '2024-08-21'),
(147, 8, 4, '2024-08-21'),
(148, 11, 4, '2024-08-21'),
(149, 11, 2, '2024-08-21'),
(157, 9, 5, '2024-08-21'),
(158, 13, 5, '2024-08-21'),
(159, 12, 5, '2024-08-21'),
(167, 12, 2, '2024-08-21'),
(170, 13, 2, '2024-08-22'),
(171, 9, 2, '2024-08-22'),
(172, 14, 2, '2024-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'Admin', 'indonesia'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'Admin', 'indonesia'),
(4, 'niaa', 'd6025c26cd5f7e39d2960205f4f28c13', 'niaa28@gmail.com', 'niaa', 'Jelarai'),
(5, 'akun3', '5f5c57d23f6275a6f15337395a4633e4', 'akun3@gmail.com', 'akun3', 'indonesia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
