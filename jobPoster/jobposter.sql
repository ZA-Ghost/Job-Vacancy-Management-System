-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 06:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobposter`
--

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `job_post` varchar(1000) NOT NULL,
  `closing_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id`, `date`, `job_post`, `closing_date`) VALUES
(1, '2023-06-12', 'Testing_Ghost.ZA', '2023-06-30'),
(2, '2023-06-21', 'Testing@ 123', '2023-06-14'),
(3, '2023-06-24', 'Ghost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA', '2023-06-30'),
(4, '2023-06-24', 'Ghost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA\r\n\r\nGhost_ZA', '2023-06-30'),
(5, '2023-06-24', 'Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, Ghost_za, ', '2023-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`username`, `password`) VALUES
('ghost_za', 'ghost_za');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
