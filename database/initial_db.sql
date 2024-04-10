-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 08:48 PM
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
-- Database: `initial_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `position`, `firstname`, `lastname`, `year_level`, `gender`, `img`) VALUES
(1, '1', 'Pita', 'Limjaroenrat', 'Move Forward Party', 'Male', '/upload/pita.jpg'),
(2, '1', 'Varawut', 'Silpa-archa', 'Chartthaipattana Party', 'Male', '/upload/warawut.jpg'),
(3, '1', 'Korn', 'Chatikavanij', 'Chart Pattana KLA Party', 'Male', '/upload/korn.jpg'),
(4, '1', 'Suwat', 'Liptapanlop', 'Chart Pattana KLA Party', 'Male', '/upload/suwat.jpg'),
(5, '1', 'Tewan', 'Liptapallop', 'Chart Pattana KLA Party', 'Male', '/upload/tewan.jpg'),
(6, '1', 'Warong', 'Dechgitvigrom', 'Thai Pakdee Party', 'Male', '/upload/warong.jpg'),
(7, '1', 'Sudarat', 'Keyuraphan', 'Thai Sang Thai Party', 'Female', '/upload/sudarat.jpg'),
(8, '1', 'Sita', 'Divari', 'Thai Sang Thai Party', 'Male', '/upload/sita.jpg'),
(9, '1', 'Supant', 'Mongkolsuthi', 'Thai Sang Thai Party', 'Male', '/upload/supan.jpg'),
(10, '1', 'Jurin', 'Laksanawisit', 'DEMOCRAT PARTY', 'Male', '/upload/jurin.jpg'),
(11, '1', 'Prawit', 'Wongsuwan', 'Palang Pracharath Party', 'Male', '/upload/pom.jpg'),
(12, '1', 'Paetongtarn', 'Shinawatra', 'Pheu Thai Party', 'Female', '/upload/ing.jpg'),
(13, '1', 'Srettha', 'Thavisin', 'Pheu Thai Party', 'Male', '/upload/srettha.jpg'),
(14, '1', 'Chaikasem', 'Nitisiri', 'Pheu Thai Party', 'Male', '/upload/chai.jpg'),
(15, '1', 'Anutin', 'Chanvirakul', 'Bhum Jai Thai Party', 'Male', '/upload/enoo.jpg'),
(16, '1', 'Prayut', 'Chan-o-cha', 'United Thai Nation Party', 'Male', '/upload/too.jpg'),
(17, '1', 'Pirapan', 'Salirathavibhaga', 'United Thai Nation Party', 'Male', '/upload/peera.jpg'),
(18, '1', 'Seripisut', 'Tamiyawet', 'Thai Liberal Party', 'Male', '/upload/seri.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `postes`
--

CREATE TABLE `postes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `class_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `postes`
--

INSERT INTO `postes` (`id`, `name`, `class_name`) VALUES
(1, 'Priminister Candidate', 'Priminister');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', '$2y$10$qHPItGj1whb4MFcCJAqhR.Mq7tQi94TVV0HFQs/hSiwT0twDT04S2', 'Isaac', 'Ndema');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `voters_id` int(11) NOT NULL,
  `id_number` varchar(6) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`voters_id`, `id_number`, `password`, `firstname`, `lastname`, `year_level`, `status`, `account`) VALUES
(11, '17P123', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'Isaac', 'Ndema', '4th Year', 'Voted', 'Active'),
(12, '17P124', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'Isaac', 'Isa', '5th Year', 'UnVoted', 'Active'),
(13, '17P125', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'User', '1', '3rd Year', 'UnVoted', 'Active'),
(14, '17P126', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'User', '2', '1st Year', 'UnVoted', 'Active'),
(15, '17P128', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'Test', 'Isaac', '4th Year', 'Unvoted', 'Active'),
(16, '17P150', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'voter', 'viter', '3rd Year', 'Voted', 'Active'),
(17, '17P160', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'Isa', 'Kalaka', '4th Year', 'Voted', 'Active'),
(19, '17P201', '$2y$10$WY9QrclADsJRFyTYjVHeq.zbyKEkDsdIJKMsXHdd2AoH3Bp5dRxeC', 'Issaac', 'NDEMA', '1st Year', 'Unvoted', 'Active'),
(20, '789789', '$2y$10$3JBM4UBfmbZkHe3hHVR.A.FsMxvsRgMQPBiUuilSbIxuvjOcQMAjO', 'Asahi', 'Hamada', '2nd Year', 'Voted', 'Active'),
(23, '989898', '$2y$10$mW84rmLK0Vu/iWjKi77AhuNoMx7c7MZcE1U8lfWO2s6A/Hk.FG2Ve', 'Junkyu', 'Kim', '', 'Voted', 'Active'),
(24, '765676', '$2y$10$4IZZCIC/lE9bsHDayaP4nuGo0o30pKkK.Cgy0K0t/SqkL0pr8EcBK', 'Hyunsuk', 'Choi', '', 'Voted', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(255) NOT NULL,
  `candidate_id` varchar(255) NOT NULL,
  `voters_id` varchar(255) NOT NULL,
  `poste_class_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `candidate_id`, `voters_id`, `poste_class_name`) VALUES
(94, '11', '11', 'president'),
(95, '13', '11', 'vp1'),
(96, '-1', '11', 'vp2'),
(97, '14', '11', 'sgr'),
(98, '-1', '11', 'sga'),
(99, '10', '11', 'commisaire'),
(100, '-1', '11', 'tresorier'),
(101, '-1', '11', 'censeur1'),
(102, '-1', '11', 'censeur2'),
(103, '11', '16', 'president'),
(104, '13', '16', 'vp1'),
(105, '-1', '16', 'vp2'),
(106, '14', '16', 'sgr'),
(107, '-1', '16', 'sga'),
(108, '10', '16', 'commisaire'),
(109, '-1', '16', 'tresorier'),
(110, '-1', '16', 'censeur1'),
(111, '-1', '16', 'censeur2'),
(112, '12', '17', 'president'),
(113, '13', '17', 'vp1'),
(114, '-1', '17', 'vp2'),
(115, '14', '17', 'sgr'),
(116, '-1', '17', 'sga'),
(117, '15', '17', 'commisaire'),
(118, '-1', '17', 'tresorier'),
(119, '16', '17', 'censeur1'),
(120, '-1', '17', 'censeur2'),
(175, '11', '20', 'president'),
(176, '13', '20', 'vp1'),
(184, '11', '20', 'president'),
(185, '13', '20', 'vp1'),
(186, '0', '20', 'vp2'),
(187, '14', '20', 'sgr'),
(188, '0', '20', 'sga'),
(189, '10', '20', 'commisaire'),
(190, '0', '20', 'tresorier'),
(191, '16', '20', 'censeur1'),
(192, '0', '20', 'censeur2'),
(193, '1', '23', 'Priminister'),
(194, '12', '24', 'Priminister');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `postes`
--
ALTER TABLE `postes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`class_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`voters_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `postes`
--
ALTER TABLE `postes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `voters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
