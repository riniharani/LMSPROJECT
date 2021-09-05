-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 04:51 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning_module`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_fname` varchar(200) NOT NULL,
  `admin_lname` varchar(200) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_notel` varchar(20) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_fname`, `admin_lname`, `admin_email`, `admin_notel`, `admin_password`) VALUES
(1, '', '', '', '', ''),
(2, 'dasd', 'asdasd', 'wer@g.com', '2134232', 'asdad');

-- --------------------------------------------------------

--
-- Table structure for table `module_subtopic`
--

CREATE TABLE `module_subtopic` (
  `ms_id` int(11) NOT NULL,
  `ms_title` varchar(200) NOT NULL,
  `ms_content` text NOT NULL,
  `ms_desc` varchar(500) NOT NULL,
  `ms_status` tinyint(4) NOT NULL,
  `mt_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module_subtopic`
--

INSERT INTO `module_subtopic` (`ms_id`, `ms_title`, `ms_content`, `ms_desc`, `ms_status`, `mt_id`) VALUES
(1, 'test', 'local/test', 'testkan', 1, 1),
(2, 'aaaa', 'sasas', 'asas', 0, 2),
(3, 'IRyS', 'Bomb', 'sasas', 0, 1),
(4, 'Hachama 2', 'Chama', 'asa', 1, 1),
(7, 'upload', 'uploads/LMS SYSTEM DFD.pdf', 'test upload', 0, 1),
(8, 'd', 'uploads/LMS SYSTEM DFD.pdf', 'd', 0, 1),
(15, 'sas', '0', 'sasa', 0, 3),
(16, 'as', 'uploads/LMS SYSTEM DFD.pdf', 'sa', 0, 1),
(17, 'dsd', '0', 'sdsd', 0, 3),
(18, 's', '0', 's', 0, 3),
(19, 'jupiter', '0', 'jupiter', 0, 2),
(20, 'sas', '0', 'asa', 0, 2),
(21, 'sa', '0', 'as', 0, 2),
(22, 'sa', '0', 'asas', 0, 1),
(23, 'sa', '0', 'as', 0, 1),
(24, 'test upload', '0', 'test', 0, 1),
(25, 'asasasasasasasas', 'uploads/Dot_to_dot_wfun_1.pdf', 'asasa', 0, 2),
(26, 'asas', '', 'asas', 0, 1),
(27, 'test lagiii', '', 'das', 0, 2),
(28, 'test new curl', 'uploads/PENYELARASAN PENGOPERASIAN LI DI POLITEKNIK PKT (LAMPIRAN 1).pdf', 'test', 0, 2),
(29, 'test curl ', 'uploads/Resume Nur Saufiah Latest (1).pdf', 'cisco', 0, 1),
(30, 'curl huawei', 'uploads/jobscope DDT-DNS.pdf', 'sasas', 0, 3),
(31, 'juniper', '0', 'sas', 0, 2),
(32, 'juniper', 'uploads/MTSFB (IPDG2020)-Nurul Huda Abd Kadir.pdf', 'sas', 0, 2),
(33, 'test new curl', 'uploads/PENYELARASAN PENGOPERASIAN LI DI POLITEKNIK PKT (LAMPIRAN 1).pdf', 'test', 0, 2),
(34, 'cube', 'uploads/LMS SYSTEM DFD.pdf', 'check this', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_title`
--

CREATE TABLE `module_title` (
  `mt_id` int(11) NOT NULL,
  `mt_title` varchar(200) NOT NULL,
  `mt_desc` text NOT NULL,
  `mt_status` tinyint(4) NOT NULL,
  `admin_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module_title`
--

INSERT INTO `module_title` (`mt_id`, `mt_title`, `mt_desc`, `mt_status`, `admin_id`) VALUES
(1, 'Cisco', 'test je', 1, 1),
(2, 'Jupiter', 'status', 0, 1),
(3, 'Huawei', 'status 1', 1, 1),
(8, 'test', 'asas', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_id` int(11) NOT NULL,
  `q_question` text NOT NULL,
  `q_answer` text NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `admin_id` tinyint(4) NOT NULL,
  `ms_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `q_question`, `q_answer`, `user_id`, `admin_id`, `ms_id`) VALUES
(1, 'test', 'jawaban', 1, 1, 1),
(2, 'soalan', '0', 1, 0, 1),
(3, 'tu je?', 'yap tu je..lol', 8, 2, 1),
(4, 'saje lagiiii', 'nape', 8, 2, 1),
(5, 'x paham ah', 'zen zen', 9, 2, 2),
(6, 'nk tanye cube', '0', 0, 0, 34),
(7, 'cube lagii', '0', 0, 0, 34),
(8, 'asasasas', '0', 0, 0, 1),
(9, 'sasasas', '0', 0, 0, 17),
(10, 'wewewewew', '0', 0, 0, 25),
(11, 'test session', '0', 1, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(200) NOT NULL,
  `user_lname` varchar(200) NOT NULL,
  `user_notel` varchar(20) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fname`, `user_lname`, `user_notel`, `user_email`, `user_password`) VALUES
(1, 'adzhan', 'che', '01987544', 'm@h.com', 'asdf'),
(2, 'haruto', 'wizard', '01987544', 'm@h.com', 'asd'),
(3, 'nagatoro', 'wizard', '01987544', 'm@h.com', 'asd'),
(5, 'nagatoro', 'qssssss', '01987544', 'm@h.com', 'asd'),
(8, 'Kamisato', 'Ayaka', '01987544', 'm@h.com', 'lol'),
(9, 'sad', 'asd', '324', 's@c.com', 'asd'),
(10, 'subaru', 'oozora', '0113', 'sa@g.com', 'asd'),
(11, 'test', 'asdasd', '031456', 'asd@d.com', '123'),
(12, 'okayu', 'korone', '012356', 'sa@m.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `module_subtopic`
--
ALTER TABLE `module_subtopic`
  ADD PRIMARY KEY (`ms_id`);

--
-- Indexes for table `module_title`
--
ALTER TABLE `module_title`
  ADD PRIMARY KEY (`mt_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `module_subtopic`
--
ALTER TABLE `module_subtopic`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `module_title`
--
ALTER TABLE `module_title`
  MODIFY `mt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
