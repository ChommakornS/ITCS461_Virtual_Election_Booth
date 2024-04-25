-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2024 at 01:33 PM
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
(1, 'admin', '$2y$10$qHPItGj1whb4MFcCJAqhR.Mq7tQi94TVV0HFQs/hSiwT0twDT04S2', 'kafka', 'kim');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `voters_id` int(11) NOT NULL,
  `id_number` varchar(13) NOT NULL,
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
(11, '7717229422087', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'Isaac', 'Ndema', '', 'Voted', 'Active'),
(12, '8937067448086', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'Isaac', 'Isa', '', 'UnVoted', 'Active'),
(13, '0422224878120', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'User', '1', '', 'UnVoted', 'Active'),
(14, '6362286845542', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'User', '2', '', 'UnVoted', 'Active'),
(15, '6979079969177', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'Test', 'Isaac', '', 'Unvoted', 'Active'),
(16, '4324851917902', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'voter', 'viter', '', 'Voted', 'Active'),
(17, '4003741026634', '$2y$10$Kq.s3scJIiFyRW9c9zRom.Uk/qXhfSp4Wqi.pCMkNZd2ajKBkK8h2', 'Isa', 'Kalaka', '', 'Voted', 'Active'),
(19, '3239083355649', '$2y$10$WY9QrclADsJRFyTYjVHeq.zbyKEkDsdIJKMsXHdd2AoH3Bp5dRxeC', 'Issaac', 'NDEMA', '', 'Unvoted', 'Active'),
(20, '9068072826959', '$2y$10$3JBM4UBfmbZkHe3hHVR.A.FsMxvsRgMQPBiUuilSbIxuvjOcQMAjO', 'Asahi', 'Hamada', '', 'Voted', 'Active'),
(23, '5697095319187', '$2y$10$mW84rmLK0Vu/iWjKi77AhuNoMx7c7MZcE1U8lfWO2s6A/Hk.FG2Ve', 'Junkyu', 'Kim', '', 'Voted', 'Active'),
(24, '3902097198816', '$2y$10$4IZZCIC/lE9bsHDayaP4nuGo0o30pKkK.Cgy0K0t/SqkL0pr8EcBK', 'Hyunsuk', 'Choi', '', 'Voted', 'Active'),
(26, '4340693127340', '$2y$10$AUwt4cyKXOeUQIFW4qP6zONvqJnfWTUOvC3avbZ3B.l54O9xD8aa2', 'ks', 'ks', '', 'Voted', 'Active'),
(28, '5057293412507', '$2y$10$.PWXKhkU9QaJ4sU08Me32u4IxR4gG1DHgmlw.PpxEk3Dh/mHr4Zzi', 'itthi', 'pol', '', 'Voted', 'Active'),
(29, '5182825415014', '$2y$10$6y/rPNZQHBpnienP0xuAkO0ys1snFB5G3a3z2k.eqTfhPrjQGcpOu', 'jing', 'prx', '', 'Voted', 'Active'),
(30, '1437434107988', '$2y$10$XXI1ylW1qdnDT79UNfnuPOIy/gjHSZHsvE9z1OL2h7CfftWETbKDm', 'Bus', 'becauseofu', '', 'Voted', 'Active'),
(31, '3051111462387', '$2y$10$I72Sdvdf/eCy4AR5boSKnemXpjXRPHOTmn0yAFuUHK1I1jqlpvv1y', 'Natty', 'eiei', '', 'Voted', 'Active'),
(32, '2457078249764', '$2y$10$5nx8V2Qn7vHQa8Q8V25ANufx8ftCprH8K5ys2toaC8C6DdZ2H3E5e', 'Jeff', 'Satur', '', 'Voted', 'Active'),
(33, '4913071053002', '$2y$10$tFWSWP3L6EBnmLh2hD.kruygofGOKv6QmHeFrOGi1shPeCtEjVxS2', 'something', 'prx', '', 'Voted', 'Active'),
(34, '6217449561178', '$2y$10$22CNvq3VMz.mYyaWMUFa8eUY8pcql5hZZA74uktfOtLpTxAy7fwry', 'sheesh', 'baemon', '', 'Voted', 'Active'),
(35, '6456070777327', '$2y$10$GQQwgeDtmmVV6wgNiCMzP.f6LvkaUc/LCOUI7slP/egVkPON5Fory', 'aa', 'bbb', '', 'Voted', 'Active');

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
(194, '12', '24', 'Priminister'),
(195, '1', '26', 'Priminister'),
(196, '1', '28', 'Priminister'),
(197, '0', '', 'Priminister'),
(198, '12', '29', 'Priminister'),
(199, '1', '30', 'Priminister'),
(200, '1', '31', 'Priminister'),
(201, '1', '32', 'Priminister'),
(202, '12', '33', 'Priminister'),
(203, '1', '34', 'Priminister'),
(204, '2', '35', 'Priminister');

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `voters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
