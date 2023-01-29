-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 04:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinematic`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `ID` int(10) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `age` int(100) NOT NULL,
  `sex` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`ID`, `firstname`, `lastname`, `age`, `sex`) VALUES
(1, 'George ', 'Clooney', 55, 'M'),
(2, 'Julia', 'Roberts', 45, 'F'),
(3, 'Cameron', 'Diaz', 47, 'F'),
(4, 'Jim', 'Carey', 57, 'M'),
(5, 'Arnold', 'Scwarzeneger', 61, 'M'),
(6, 'Robert', 'De Niro', 65, 'M'),
(7, 'Tom', 'Hanks', 64, 'M'),
(8, 'Leonardo ', 'Dicaprio', 50, 'M'),
(9, 'Harrison', 'Ford', 63, 'M'),
(10, 'Ben', 'Affleck', 50, 'M'),
(11, 'Jonah ', 'Hill', 39, 'M'),
(12, 'Matt', 'Damon', 52, 'M'),
(13, 'Ryan', 'Gosling', 42, 'M'),
(14, 'Will', 'Smith', 54, 'M'),
(15, 'Russel', 'Crowe', 58, 'M'),
(16, 'Colin ', 'Farrell', 46, 'M'),
(17, 'Edward ', 'Norton', 53, 'M'),
(18, 'Morgot', 'Robbie', 33, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `actors_movies`
--

CREATE TABLE `actors_movies` (
  `id_actor` int(25) NOT NULL,
  `ID_movie` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actors_movies`
--

INSERT INTO `actors_movies` (`id_actor`, `ID_movie`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(8, 10),
(9, 9),
(18, 10);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(10) NOT NULL,
  `awardname` varchar(25) NOT NULL,
  `winner` int(30) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `awardname`, `winner`, `year`) VALUES
(1, 'oscar', 1, 2016),
(2, 'golden', 2, 2014),
(3, 'silver', 3, 2014);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(10) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `Age` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `firstname`, `lastname`, `Age`) VALUES
(1, 'Jodie', 'Foster', 60),
(2, ' Ryan ', 'Murphy', 68),
(3, 'Will Gluck', 'Gluck', 44),
(4, 'Farelly ', 'Brothers', 66),
(5, ' Alan ', 'Taylor', 64),
(6, 'David ', 'Russell', 64),
(7, 'Kirk', 'Jones', 58),
(8, 'James', 'Cameron', 68),
(9, 'Lee Toland ', 'Krieger', 39);

-- --------------------------------------------------------

--
-- Table structure for table `director_movie`
--

CREATE TABLE `director_movie` (
  `id_director` int(11) NOT NULL,
  `ID_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `director_movie`
--

INSERT INTO `director_movie` (`id_director`, `ID_movie`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` year(4) NOT NULL,
  `language` varchar(30) NOT NULL,
  `genre` varchar(30) NOT NULL,
  `duration` time(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `year`, `language`, `genre`, `duration`) VALUES
(1, 'Money Monster', 2016, 'english', 'drama', '01:38:35.00000'),
(2, 'The Normal Heart', 2014, 'english', 'biographical', '02:12:48.00000'),
(3, 'Annie', 2014, 'english', 'Comedy', '01:58:07.00000'),
(4, 'Dumb and Dumber To', 2014, 'english', 'Comedy', '01:42:00.00000'),
(5, 'Terminator Genisys', 2015, 'english', 'Action', '02:06:00.00000'),
(6, 'Amsterdam', 2022, 'english', 'History', '02:14:00.00000'),
(7, 'My Big Fat Greek Wedding 2', 2016, 'english', 'Romance', '01:34:00.00000'),
(8, 'Titanic', 1999, 'english', 'History', '03:12:00.00000'),
(9, 'The Age of Adaline', 2015, 'english', 'drama', '01:52:00.00000'),
(10, 'The wolf of the wall street', 2013, 'english', 'Comedy', '03:00:00.00000');

-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

CREATE TABLE `rankings` (
  `id` int(10) NOT NULL,
  `movie` varchar(30) NOT NULL,
  `stars` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rankings`
--

INSERT INTO `rankings` (`id`, `movie`, `stars`) VALUES
(1, 'Money Monster', 6.5),
(2, 'The Normal Heart', 8.5),
(3, 'Annie', 7.6),
(4, 'Dumb and Dumber To', 7.9),
(5, 'Terminator Genisys', 8.5),
(6, 'Amsterdam', 8.5),
(7, 'My Big Fat Greek Wedding 2', 7.7),
(8, 'Titanic', 9.1),
(9, 'The Age of Adaline', 7.7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD PRIMARY KEY (`id_actor`,`ID_movie`),
  ADD KEY `ID_movie` (`ID_movie`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `winner` (`winner`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director_movie`
--
ALTER TABLE `director_movie`
  ADD PRIMARY KEY (`id_director`,`ID_movie`),
  ADD KEY `ID_movie` (`ID_movie`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `rankings`
--
ALTER TABLE `rankings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movie` (`movie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rankings`
--
ALTER TABLE `rankings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD CONSTRAINT `actors_movies_ibfk_1` FOREIGN KEY (`ID_movie`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `actors_movies_ibfk_2` FOREIGN KEY (`id_actor`) REFERENCES `actors` (`ID`);

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`winner`) REFERENCES `directors` (`id`);

--
-- Constraints for table `director_movie`
--
ALTER TABLE `director_movie`
  ADD CONSTRAINT `director_movie_ibfk_2` FOREIGN KEY (`ID_movie`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `director_movie_ibfk_3` FOREIGN KEY (`id_director`) REFERENCES `directors` (`id`);

--
-- Constraints for table `rankings`
--
ALTER TABLE `rankings`
  ADD CONSTRAINT `rankings_ibfk_1` FOREIGN KEY (`movie`) REFERENCES `movies` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
