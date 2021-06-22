-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 12:13 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u2`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentarai`
--

CREATE TABLE `komentarai` (
  `Komentaro_ID` int(11) NOT NULL,
  `Komentaras` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `komentarai`
--

INSERT INTO `komentarai` (`Komentaro_ID`, `Komentaras`) VALUES
(1, 'bl bla bla'),
(1, 'bl bla bla');

-- --------------------------------------------------------

--
-- Table structure for table `kursai`
--

CREATE TABLE `kursai` (
  `Kurso_autorius` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Ikelimo_data` timestamp NOT NULL DEFAULT current_timestamp(),
  `Pavadinimas` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Aprasymas` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Did_aprasymas` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `Img_kelias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Populiarumas` int(11) DEFAULT NULL,
  `Komentaro_ID` int(11) NOT NULL,
  `Kaina` int(11) DEFAULT NULL,
  `Reitingas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kursai`
--

INSERT INTO `kursai` (`Kurso_autorius`, `Ikelimo_data`, `Pavadinimas`, `Aprasymas`, `Did_aprasymas`, `Img_kelias`, `Populiarumas`, `Komentaro_ID`, `Kaina`, `Reitingas`) VALUES
('Birute', '2021-06-22 10:02:50', 'Santechnikas', 'Vamzdziu myletojas', 'Gali atkimsti vamzdzius.', 'https://www.kaunosantechnikas.lt/wp-content/uploads/revslider/plumber1/home_plumber_slider_image.png', 10, 1, 1000, 10),
('Antanas', '2021-06-22 10:04:26', 'Aukletokja', 'Myli suniukus', 'Gali but su vaikais.', 'https://p0.pikist.com/photos/746/352/baby-sitter-children-educator-nanny-kindergarten-teacher-buildi', 10, 2, 1000, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kursai`
--
ALTER TABLE `kursai`
  ADD PRIMARY KEY (`Komentaro_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kursai`
--
ALTER TABLE `kursai`
  MODIFY `Komentaro_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
