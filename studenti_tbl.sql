-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 02:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studenti_tbl`
--

-- --------------------------------------------------------

--
-- Table structure for table `studenti_pod`
--

CREATE TABLE `studenti_pod` (
  `id` int(11) NOT NULL,
  `ime` varchar(255) NOT NULL,
  `prezime` varchar(255) NOT NULL,
  `god_rodj` int(11) NOT NULL,
  `prosjek_ocj` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studenti_pod`
--

INSERT INTO `studenti_pod` (`id`, `ime`, `prezime`, `god_rodj`, `prosjek_ocj`) VALUES
(1, 'Ana', 'Anić', 1998, 4.50),
(2, 'Ivan', 'Ivanić', 1997, 4.00),
(3, 'Marko', 'Markić', 1999, 3.80),
(4, 'Petra', 'Perić', 2000, 4.20),
(5, 'Ivan', 'Ilić', 1998, 2.30),
(6, 'Mija', 'Sabljić', 2002, 3.90),
(7, 'Lara', 'Milić', 2004, 3.60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studenti_pod`
--
ALTER TABLE `studenti_pod`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studenti_pod`
--
ALTER TABLE `studenti_pod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
