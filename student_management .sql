-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2025 at 04:28 PM
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
-- Database: `student_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('Present','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `date`, `status`) VALUES
(1, 1, '2014-09-16', 'Present'),
(2, 2, '2014-09-16', 'Absent'),
(3, 3, '2014-09-16', 'Present'),
(4, 4, '2014-09-16', 'Present'),
(5, 5, '2014-09-16', 'Absent'),
(6, 6, '2014-09-16', 'Present'),
(7, 7, '2014-09-16', 'Absent'),
(8, 8, '2014-09-16', 'Present'),
(9, 9, '2014-09-16', 'Present'),
(10, 10, '2014-09-16', 'Absent'),
(11, 11, '2014-09-16', 'Present'),
(12, 12, '2014-09-16', 'Absent'),
(13, 13, '2014-09-16', 'Present'),
(14, 14, '2014-09-16', 'Present'),
(15, 15, '2014-09-16', 'Absent'),
(16, 16, '2014-09-16', 'Present'),
(17, 17, '2014-09-16', 'Absent'),
(18, 18, '2014-09-16', 'Present'),
(19, 19, '2014-09-16', 'Present'),
(20, 20, '2014-09-16', 'Absent'),
(21, 21, '2014-09-16', 'Present'),
(22, 22, '2014-09-16', 'Absent'),
(23, 23, '2014-09-16', 'Present'),
(24, 24, '2014-09-16', 'Present'),
(25, 25, '2014-09-16', 'Absent'),
(26, 26, '2014-09-16', 'Present'),
(27, 27, '2014-09-16', 'Absent'),
(28, 28, '2014-09-16', 'Present'),
(29, 29, '2014-09-16', 'Present'),
(30, 30, '2014-09-16', 'Absent'),
(31, 31, '2014-09-16', 'Present'),
(32, 32, '2014-09-16', 'Absent'),
(33, 33, '2014-09-16', 'Present'),
(34, 34, '2014-09-16', 'Present'),
(35, 35, '2014-09-16', 'Absent'),
(36, 36, '2014-09-16', 'Present'),
(37, 37, '2014-09-16', 'Absent'),
(38, 38, '2014-09-16', 'Present'),
(39, 39, '2014-09-16', 'Present'),
(40, 40, '2014-09-16', 'Absent'),
(41, 41, '2014-09-16', 'Present'),
(42, 42, '2014-09-16', 'Absent'),
(43, 43, '2014-09-16', 'Present'),
(44, 44, '2014-09-16', 'Present'),
(45, 45, '2014-09-16', 'Absent'),
(46, 46, '2014-09-16', 'Present'),
(47, 47, '2014-09-16', 'Absent'),
(48, 48, '2014-09-16', 'Present'),
(49, 49, '2014-09-16', 'Present'),
(50, 50, '2014-09-16', 'Absent'),
(51, 51, '2014-09-16', 'Present'),
(52, 52, '2014-09-16', 'Absent'),
(53, 53, '2014-09-16', 'Present'),
(54, 54, '2014-09-16', 'Present'),
(55, 55, '2014-09-16', 'Absent'),
(56, 56, '2014-09-16', 'Present'),
(57, 57, '2014-09-16', 'Absent'),
(58, 58, '2014-09-16', 'Present'),
(59, 59, '2014-09-16', 'Present'),
(60, 60, '2014-09-16', 'Absent'),
(61, 61, '2014-09-16', 'Present'),
(62, 62, '2014-09-16', 'Absent'),
(63, 63, '2014-09-16', 'Present'),
(64, 64, '2014-09-16', 'Present'),
(65, 65, '2014-09-16', 'Absent'),
(66, 66, '2014-09-16', 'Present'),
(67, 67, '2014-09-16', 'Absent'),
(68, 68, '2014-09-16', 'Present'),
(69, 69, '2014-09-16', 'Present'),
(70, 70, '2014-09-16', 'Absent'),
(71, 71, '2014-09-16', 'Present'),
(72, 72, '2014-09-16', 'Absent'),
(73, 73, '2014-09-16', 'Present'),
(74, 74, '2014-09-16', 'Present'),
(75, 75, '2014-09-16', 'Absent'),
(76, 76, '2014-09-16', 'Present'),
(77, 77, '2014-09-16', 'Absent'),
(78, 78, '2014-09-16', 'Present'),
(79, 79, '2014-09-16', 'Present'),
(80, 80, '2014-09-16', 'Absent'),
(81, 81, '2014-09-16', 'Present'),
(82, 82, '2014-09-16', 'Absent'),
(83, 83, '2014-09-16', 'Present'),
(84, 84, '2014-09-16', 'Present'),
(85, 85, '2014-09-16', 'Absent'),
(86, 86, '2014-09-16', 'Present'),
(87, 87, '2014-09-16', 'Absent'),
(88, 88, '2014-09-16', 'Present'),
(89, 89, '2014-09-16', 'Present'),
(90, 90, '2014-09-16', 'Absent'),
(91, 91, '2014-09-16', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `grade` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `subject`, `grade`) VALUES
(1, 1, 'Java', 'A'),
(2, 1, 'Python', 'B'),
(3, 2, 'Java', 'C'),
(4, 2, 'Python', 'B'),
(5, 3, 'Java', 'B'),
(6, 3, 'Python', 'A'),
(7, 4, 'Java', 'A'),
(8, 4, 'Python', 'A'),
(9, 5, 'Java', 'B'),
(10, 5, 'Python', 'C'),
(11, 6, 'Java', 'A'),
(12, 6, 'Python', 'B'),
(13, 7, 'Java', 'C'),
(14, 7, 'Python', 'B'),
(15, 8, 'Java', 'B'),
(16, 8, 'Python', 'A'),
(17, 9, 'Java', 'A'),
(18, 9, 'Python', 'B'),
(19, 10, 'Java', 'C'),
(20, 10, 'Python', 'C'),
(21, 11, 'Java', 'B'),
(22, 11, 'Python', 'A'),
(23, 12, 'Java', 'A'),
(24, 12, 'Python', 'B'),
(25, 13, 'Java', 'C'),
(26, 13, 'Python', 'B'),
(27, 14, 'Java', 'B'),
(28, 14, 'Python', 'A'),
(29, 15, 'Java', 'A'),
(30, 15, 'Python', 'C'),
(31, 16, 'Java', 'B'),
(32, 16, 'Python', 'B'),
(33, 17, 'Java', 'C'),
(34, 17, 'Python', 'A'),
(35, 18, 'Java', 'A'),
(36, 18, 'Python', 'B'),
(37, 19, 'Java', 'B'),
(38, 19, 'Python', 'C'),
(39, 20, 'Java', 'A'),
(40, 20, 'Python', 'A'),
(41, 21, 'Java', 'B'),
(42, 21, 'Python', 'B'),
(43, 22, 'Java', 'C'),
(44, 22, 'Python', 'A'),
(45, 23, 'Java', 'A'),
(46, 23, 'Python', 'B'),
(47, 24, 'Java', 'B'),
(48, 24, 'Python', 'C'),
(49, 25, 'Java', 'C'),
(50, 25, 'Python', 'B'),
(51, 26, 'Java', 'A'),
(52, 26, 'Python', 'A'),
(53, 27, 'Java', 'B'),
(54, 27, 'Python', 'C'),
(55, 28, 'Java', 'C'),
(56, 28, 'Python', 'B'),
(57, 29, 'Java', 'A'),
(58, 29, 'Python', 'B'),
(59, 30, 'Java', 'B'),
(60, 30, 'Python', 'A'),
(61, 31, 'Java', 'C'),
(62, 31, 'Python', 'B'),
(63, 32, 'Java', 'A'),
(64, 32, 'Python', 'C'),
(65, 33, 'Java', 'B'),
(66, 33, 'Python', 'A'),
(67, 34, 'Java', 'C'),
(68, 34, 'Python', 'B'),
(69, 35, 'Java', 'A'),
(70, 35, 'Python', 'B'),
(71, 36, 'Java', 'B'),
(72, 36, 'Python', 'C'),
(73, 37, 'Java', 'C'),
(74, 37, 'Python', 'B'),
(75, 38, 'Java', 'A'),
(76, 38, 'Python', 'A'),
(77, 39, 'Java', 'B'),
(78, 39, 'Python', 'C'),
(79, 40, 'Java', 'C'),
(80, 40, 'Python', 'B'),
(81, 41, 'Java', 'A'),
(82, 41, 'Python', 'B'),
(83, 42, 'Java', 'B'),
(84, 42, 'Python', 'A'),
(85, 43, 'Java', 'C'),
(86, 43, 'Python', 'B'),
(87, 44, 'Java', 'A'),
(88, 44, 'Python', 'C'),
(89, 45, 'Java', 'B'),
(90, 45, 'Python', 'A'),
(91, 46, 'Java', 'C'),
(92, 46, 'Python', 'B'),
(93, 47, 'Java', 'A'),
(94, 47, 'Python', 'B'),
(95, 48, 'Java', 'B'),
(96, 48, 'Python', 'C'),
(97, 49, 'Java', 'C'),
(98, 49, 'Python', 'A'),
(99, 50, 'Java', 'A'),
(100, 50, 'Python', 'B'),
(101, 51, 'Java', 'B'),
(102, 51, 'Python', 'C'),
(103, 52, 'Java', 'C'),
(104, 52, 'Python', 'B'),
(105, 53, 'Java', 'A'),
(106, 53, 'Python', 'B'),
(107, 54, 'Java', 'B'),
(108, 54, 'Python', 'A'),
(109, 55, 'Java', 'C'),
(110, 55, 'Python', 'B'),
(111, 56, 'Java', 'A'),
(112, 56, 'Python', 'C'),
(113, 57, 'Java', 'B'),
(114, 57, 'Python', 'A'),
(115, 58, 'Java', 'C'),
(116, 58, 'Python', 'B'),
(117, 59, 'Java', 'A'),
(118, 59, 'Python', 'B'),
(119, 60, 'Java', 'B'),
(120, 60, 'Python', 'C'),
(121, 61, 'Java', 'C'),
(122, 61, 'Python', 'B'),
(123, 62, 'Java', 'A'),
(124, 62, 'Python', 'A'),
(125, 63, 'Java', 'B'),
(126, 63, 'Python', 'C'),
(127, 64, 'Java', 'C'),
(128, 64, 'Python', 'B'),
(129, 65, 'Java', 'A'),
(130, 65, 'Python', 'B'),
(131, 66, 'Java', 'B'),
(132, 66, 'Python', 'A'),
(133, 67, 'Java', 'C'),
(134, 67, 'Python', 'B'),
(135, 68, 'Java', 'A'),
(136, 68, 'Python', 'C'),
(137, 69, 'Java', 'B'),
(138, 69, 'Python', 'A'),
(139, 70, 'Java', 'C'),
(140, 70, 'Python', 'B'),
(141, 71, 'Java', 'A'),
(142, 71, 'Python', 'B'),
(143, 72, 'Java', 'B'),
(144, 72, 'Python', 'C'),
(145, 73, 'Java', 'C'),
(146, 73, 'Python', 'A'),
(147, 74, 'Java', 'A'),
(148, 74, 'Python', 'B'),
(149, 75, 'Java', 'B'),
(150, 75, 'Python', 'C'),
(151, 76, 'Java', 'C'),
(152, 76, 'Python', 'B'),
(153, 77, 'Java', 'A'),
(154, 77, 'Python', 'B'),
(155, 78, 'Java', 'B'),
(156, 78, 'Python', 'A'),
(157, 79, 'Java', 'C'),
(158, 79, 'Python', 'B'),
(159, 80, 'Java', 'A'),
(160, 80, 'Python', 'C'),
(161, 81, 'Java', 'B'),
(162, 81, 'Python', 'A'),
(163, 82, 'Java', 'C'),
(164, 82, 'Python', 'B'),
(165, 83, 'Java', 'A'),
(166, 83, 'Python', 'B'),
(167, 84, 'Java', 'B'),
(168, 84, 'Python', 'C'),
(169, 85, 'Java', 'C'),
(170, 85, 'Python', 'A'),
(171, 86, 'Java', 'A'),
(172, 86, 'Python', 'B'),
(173, 87, 'Java', 'B'),
(174, 87, 'Python', 'C'),
(175, 88, 'Java', 'C'),
(176, 88, 'Python', 'B'),
(177, 89, 'Java', 'A'),
(178, 89, 'Python', 'B'),
(179, 90, 'Java', 'B'),
(180, 90, 'Python', 'A'),
(181, 91, 'Java', 'C'),
(182, 91, 'Python', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `class` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `class`, `email`, `contact`) VALUES
(1, 'Aarav Patel', 'BCA-5', 'aarav.patel@example.com', '9876543210'),
(2, 'Diya Shah', 'BCA-5', 'diya.shah@example.com', '9876543211'),
(3, 'Rohan Mehta', 'BCA-5', 'rohan.mehta@example.com', '9876543212'),
(4, 'Nisha Joshi', 'BCA-5', 'nisha.joshi@example.com', '9876543213'),
(5, 'Aditya Singh', 'BCA-5', 'aditya.singh@example.com', '9876543214'),
(6, 'Ananya Gupta', 'BCA-5', 'ananya.gupta@example.com', '9876543215'),
(7, 'Vivaan Kumar', 'BCA-5', 'vivaan.kumar@example.com', '9876543216'),
(8, 'Ishita Sharma', 'BCA-5', 'ishita.sharma@example.com', '9876543217'),
(9, 'Krishna Reddy', 'BCA-5', 'krishna.reddy@example.com', '9876543218'),
(10, 'Saanvi Verma', 'BCA-5', 'saanvi.verma@example.com', '9876543219'),
(11, 'Arjun Kapoor', 'BCA-5', 'arjun.kapoor@example.com', '9876543220'),
(12, 'Mira Nair', 'BCA-5', 'mira.nair@example.com', '9876543221'),
(13, 'Kabir Joshi', 'BCA-5', 'kabir.joshi@example.com', '9876543222'),
(14, 'Anika Iyer', 'BCA-5', 'anika.iyer@example.com', '9876543223'),
(15, 'Sai Ramesh', 'BCA-5', 'sai.ramesh@example.com', '9876543224'),
(16, 'Meera Das', 'BCA-5', 'meera.das@example.com', '9876543225'),
(17, 'Dhruv Chawla', 'BCA-5', 'dhruv.chawla@example.com', '9876543226'),
(18, 'Tanya Bhatia', 'BCA-5', 'tanya.bhatia@example.com', '9876543227'),
(19, 'Raghav Malhotra', 'BCA-5', 'raghav.malhotra@example.com', '9876543228'),
(20, 'Pooja Reddy', 'BCA-5', 'pooja.reddy@example.com', '9876543229'),
(21, 'Ansh Gupta', 'BCA-5', 'ansh.gupta@example.com', '9876543230'),
(22, 'Shruti Sharma', 'BCA-5', 'shruti.sharma@example.com', '9876543231'),
(23, 'Yash Verma', 'BCA-5', 'yash.verma@example.com', '9876543232'),
(24, 'Diya Mehta', 'BCA-5', 'diya.mehta@example.com', '9876543233'),
(25, 'Arnav Singh', 'BCA-5', 'arnav.singh@example.com', '9876543234'),
(26, 'Sofia Rao', 'BCA-5', 'sofia.rao@example.com', '9876543235'),
(27, 'Vivaan Joshi', 'BCA-5', 'vivaan.joshi@example.com', '9876543236'),
(28, 'Ishani Kapoor', 'BCA-5', 'ishani.kapoor@example.com', '9876543237'),
(29, 'Advik Kumar', 'BCA-5', 'advik.kumar@example.com', '9876543238'),
(30, 'Kiara Nair', 'BCA-5', 'kiara.nair@example.com', '9876543239'),
(31, 'Kabir Sharma', 'BCA-5', 'kabir.sharma@example.com', '9876543240'),
(32, 'Anaya Reddy', 'BCA-5', 'anaya.reddy@example.com', '9876543241'),
(33, 'Riaan Malhotra', 'BCA-5', 'riaan.malhotra@example.com', '9876543242'),
(34, 'Mahi Das', 'BCA-5', 'mahi.das@example.com', '9876543243'),
(35, 'Dhruvi Chawla', 'BCA-5', 'dhruvi.chawla@example.com', '9876543244'),
(36, 'Tanish Bhatia', 'BCA-5', 'tanish.bhatia@example.com', '9876543245'),
(37, 'Rhea Verma', 'BCA-5', 'rhea.verma@example.com', '9876543246'),
(38, 'Aarush Mehta', 'BCA-5', 'aarush.mehta@example.com', '9876543247'),
(39, 'Anvi Singh', 'BCA-5', 'anvi.singh@example.com', '9876543248'),
(40, 'Devansh Rao', 'BCA-5', 'devansh.rao@example.com', '9876543249'),
(41, 'Ira Joshi', 'BCA-5', 'ira.joshi@example.com', '9876543250'),
(42, 'Arjun Sharma', 'BCA-5', 'arjun.sharma@example.com', '9876543251'),
(43, 'Kiara Gupta', 'BCA-5', 'kiara.gupta@example.com', '9876543252'),
(44, 'Raghav Nair', 'BCA-5', 'raghav.nair@example.com', '9876543253'),
(45, 'Saanvi Kapoor', 'BCA-5', 'saanvi.kapoor@example.com', '9876543254'),
(46, 'Aditya Reddy', 'BCA-5', 'aditya.reddy@example.com', '9876543255'),
(47, 'Meera Sharma', 'BCA-5', 'meera.sharma@example.com', '9876543256'),
(48, 'Dhruv Verma', 'BCA-5', 'dhruv.verma@example.com', '9876543257'),
(49, 'Tanya Joshi', 'BCA-5', 'tanya.joshi@example.com', '9876543258'),
(50, 'Kabir Malhotra', 'BCA-5', 'kabir.malhotra@example.com', '9876543259'),
(51, 'Anika Das', 'BCA-5', 'anika.das@example.com', '9876543260'),
(52, 'Riaan Chawla', 'BCA-5', 'riaan.chawla@example.com', '9876543261'),
(53, 'Diya Bhatia', 'BCA-5', 'diya.bhatia@example.com', '9876543262'),
(54, 'Vivaan Verma', 'BCA-5', 'vivaan.verma@example.com', '9876543263'),
(55, 'Ishita Mehta', 'BCA-5', 'ishita.mehta@example.com', '9876543264'),
(56, 'Advik Singh', 'BCA-5', 'advik.singh@example.com', '9876543265'),
(57, 'Sofia Sharma', 'BCA-5', 'sofia.sharma@example.com', '9876543266'),
(58, 'Arnav Gupta', 'BCA-5', 'arnav.gupta@example.com', '9876543267'),
(59, 'Kiara Reddy', 'BCA-5', 'kiara.reddy@example.com', '9876543268'),
(60, 'Kabir Nair', 'BCA-5', 'kabir.nair@example.com', '9876543269'),
(61, 'Anaya Kapoor', 'BCA-5', 'anaya.kapoor@example.com', '9876543270'),
(62, 'Raghav Reddy', 'BCA-5', 'raghav.reddy@example.com', '9876543271'),
(63, 'Mahi Verma', 'BCA-5', 'mahi.verma@example.com', '9876543272'),
(64, 'Dhruvi Mehta', 'BCA-5', 'dhruvi.mehta@example.com', '9876543273'),
(65, 'Tanish Sharma', 'BCA-5', 'tanish.sharma@example.com', '9876543274'),
(66, 'Rhea Gupta', 'BCA-5', 'rhea.gupta@example.com', '9876543275'),
(67, 'Aarush Reddy', 'BCA-5', 'aarush.reddy@example.com', '9876543276'),
(68, 'Anvi Verma', 'BCA-5', 'anvi.verma@example.com', '9876543277'),
(69, 'Devansh Mehta', 'BCA-5', 'devansh.mehta@example.com', '9876543278'),
(70, 'Ira Singh', 'BCA-5', 'ira.singh@example.com', '9876543279'),
(71, 'Arjun Gupta', 'BCA-5', 'arjun.gupta@example.com', '9876543280'),
(72, 'Kiara Sharma', 'BCA-5', 'kiara.sharma2@example.com', '9876543281'),
(73, 'Raghav Kapoor', 'BCA-5', 'raghav.kapoor@example.com', '9876543282'),
(74, 'Saanvi Reddy', 'BCA-5', 'saanvi.reddy@example.com', '9876543283'),
(75, 'Aditya Mehta', 'BCA-5', 'aditya.mehta@example.com', '9876543284'),
(76, 'Meera Gupta', 'BCA-5', 'meera.gupta@example.com', '9876543285'),
(77, 'Dhruv Sharma', 'BCA-5', 'dhruv.sharma@example.com', '9876543286'),
(78, 'Tanya Verma', 'BCA-5', 'tanya.verma@example.com', '9876543287'),
(79, 'Kabir Mehta', 'BCA-5', 'kabir.mehta@example.com', '9876543288'),
(80, 'Anika Singh', 'BCA-5', 'anika.singh@example.com', '9876543289'),
(81, 'Riaan Gupta', 'BCA-5', 'riaan.gupta@example.com', '9876543290'),
(82, 'Diya Sharma', 'BCA-5', 'diya.sharma2@example.com', '9876543291'),
(83, 'Vivaan Kapoor', 'BCA-5', 'vivaan.kapoor@example.com', '9876543292'),
(84, 'Ishita Reddy', 'BCA-5', 'ishita.reddy@example.com', '9876543293'),
(85, 'Advik Verma', 'BCA-5', 'advik.verma@example.com', '9876543294'),
(86, 'Sofia Mehta', 'BCA-5', 'sofia.mehta@example.com', '9876543295'),
(87, 'Arnav Sharma', 'BCA-5', 'arnav.sharma@example.com', '9876543296'),
(88, 'Kiara Verma', 'BCA-5', 'kiara.verma2@example.com', '9876543297'),
(89, 'Kabir Gupta', 'BCA-5', 'kabir.gupta2@example.com', '9876543298'),
(90, 'Anaya Mehta', 'BCA-5', 'anaya.mehta@example.com', '9876543299'),
(91, 'Raghav Sharma', 'BCA-5', 'raghav.sharma2@example.com', '9876543300');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
