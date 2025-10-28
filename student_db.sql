-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2025 at 12:06 PM
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
-- Database: `student_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `name`, `age`, `course`, `grade`) VALUES
(2, '2001-6063-A', 'Mike Santos', 29, 'BSIT', '2.5'),
(4, '2015-6601-A', 'Oliver Hernandez', 29, 'BSCS', '1.2'),
(5, '2015-6602-A', 'Patricia Diaz', 21, 'BSBA', '2.2'),
(6, '2015-6603-A', 'Patricia Cruz', 27, 'BSCS', '3.4'),
(7, '2015-6604-A', 'Ethan Perez', 21, 'BSIS', '3.4'),
(8, '2015-6605-A', 'Camille Gonzales', 20, 'BSIS', '1.0'),
(9, '2015-6606-A', 'Wesley Vargas', 30, 'BSIT', '1.5'),
(10, '2015-6607-A', 'Ariana Morales', 23, 'BSIS', '2.1'),
(11, '2015-6608-A', 'Yves Silva', 22, 'BSIT', '1.5'),
(12, '2015-6609-A', 'Ariana Morales', 29, 'BSCS', '3.8'),
(13, '2015-6610-A', 'Fiona Garcia', 19, 'BSIT', '4.0'),
(14, '2015-6611-A', 'Rafael Torres', 18, 'BSBA', '1.0'),
(15, '2015-6612-A', 'Wesley Mercado', 18, 'BSIS', '1.2'),
(16, '2015-6613-A', 'Tomas Torres', 21, 'BSIS', '1.5'),
(17, '2015-6614-A', 'Fiona Torres', 28, 'BSCS', '1.7'),
(18, '2015-6615-A', 'Gabriel Navarro', 27, 'BSEd', '2.1'),
(19, '2015-6616-A', 'Quinn Mendoza', 28, 'BSBA', '1.5'),
(20, '2015-6617-A', 'Noah Mendoza', 23, 'BSBA', '2.4'),
(21, '2015-6618-A', 'Diego Hernandez', 29, 'BSN', '2.9'),
(22, '2015-6619-A', 'Liza Gonzales', 17, 'BSEd', '1.7'),
(23, '2015-6620-A', 'Quinn Alcantara', 26, 'BSN', '1.2'),
(24, '2015-6621-A', 'Yves Torres', 30, 'BSCS', '1.7'),
(25, '2015-6622-A', 'Leo Dela Cruz', 22, 'BSIS', '3.0'),
(26, '2015-6623-A', 'Ulysses Mendoza', 27, 'BSN', '2.0'),
(27, '2015-6624-A', 'Patricia Delos Santos', 25, 'BSN', '3.6'),
(28, '2015-6625-A', 'Ximena Mendoza', 27, 'BSIT', '2.7'),
(29, '2015-6626-A', 'Ximena Diaz', 22, 'BSCS', '2.6'),
(30, '2015-6627-A', 'Hannah Vargas', 30, 'BSBA', '1.7'),
(31, '2015-6628-A', 'Rafael Navarro', 20, 'BSEd', '1.6'),
(32, '2015-6629-A', 'Rafael Villanueva', 21, 'BSCS', '2.4'),
(33, '2015-6630-A', 'Tomas Alcantara', 28, 'BSCS', '3.2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
