-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: bs0mwck9zxtlyqlslxyh-mysql.services.clever-cloud.com:3306
-- Generation Time: Sep 02, 2023 at 03:08 PM
-- Server version: 8.0.22-13
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bs0mwck9zxtlyqlslxyh`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `id` int NOT NULL,
  `user_token` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `section` varchar(500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `user_token`, `class`, `section`) VALUES
(1, '', 'nursery', 'A'),
(2, '', 'nursery', 'B'),
(3, '', 'nursery', 'C'),
(4, '', 'pre_kg', 'A'),
(5, '', 'pre_kg', 'B'),
(6, '', 'pre_kg', 'C'),
(7, '', 'kg', 'A'),
(8, '', 'kg', 'B'),
(9, '', 'kg', 'C'),
(10, '', '1st', 'A'),
(11, '', '1st', 'B'),
(12, '', '1st', 'C'),
(13, '', '2nd', 'A'),
(14, '', '2nd', 'B'),
(15, '', '2nd', 'C'),
(16, '', '3rd', 'A'),
(17, '', '3rd', 'B'),
(18, '', '3rd', 'C'),
(19, '', '4th', 'A'),
(20, '', '4th', 'B'),
(21, '', '4th', 'C'),
(22, '', '5th', 'A'),
(23, '', '5th', 'B'),
(24, '', '5th', 'C'),
(25, '', '6th', 'A'),
(26, '', '6th', 'B'),
(27, '', '6th', 'C'),
(28, '', '7th', 'A'),
(31, '', '7th', 'B'),
(32, '', '7th', 'C'),
(33, '', '8th', 'A'),
(34, '', '8th', 'B'),
(35, '', '8th', 'C'),
(36, '', '9th', 'A'),
(37, '', '9th', 'B'),
(38, '', '9th', 'C'),
(39, '', '10th', 'A'),
(40, '', '10th', 'B'),
(41, '', '10th', 'C'),
(42, '', '11th', 'A'),
(43, '', '11th', 'B'),
(44, '', '11th', 'C'),
(45, '', '12th', 'A'),
(46, '', '12th', 'B'),
(47, '', '12th', 'C'),
(48, 'd621df5e8a184253bfaf9a730da8c9e2dcfe77db00d8ad57a2ae0043b4bbc8ba', 'nursery', 'D'),
(49, '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', '12th', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `manage_student_fee`
--

CREATE TABLE `manage_student_fee` (
  `id` int NOT NULL,
  `month` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `year` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `student_id` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `section` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `student_name` varchar(3000) COLLATE utf8mb4_general_ci NOT NULL,
  `school_id` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `remain_balance` varchar(300) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manage_student_fee`
--

INSERT INTO `manage_student_fee` (`id`, `month`, `amount`, `status`, `year`, `date`, `time`, `student_id`, `class`, `section`, `student_name`, `school_id`, `remain_balance`) VALUES
(1, 'January', '1500', 'balance_remain', '2023', 'Wed Aug 23 2023', '2023-08-23 09:23:43.390855', 'D8B66024C688', '10th', 'A', 'Ajay Sehwal', '73182635dce703425b27aac8f6a0665de3e9c7033272e76ca803c198a69e018c', '500'),
(2, 'January', '500', 'balance_remain', '2023', 'Wed Aug 23 2023', '2023-08-23 09:24:13.158329', 'D8B66024C688', '10th', 'A', 'Ajay Sehwal', '73182635dce703425b27aac8f6a0665de3e9c7033272e76ca803c198a69e018c', '500'),
(3, 'January', '500', 'balance_clear', '2023', 'Wed Aug 23 2023', '2023-08-23 09:24:20.958137', 'D8B66024C688', '10th', 'A', 'Ajay Sehwal', '73182635dce703425b27aac8f6a0665de3e9c7033272e76ca803c198a69e018c', '500'),
(4, 'January', '500', 'balance_clear', '2023', 'Tue Aug 29 2023', '2023-08-29 09:01:41.039871', 'EC0D3449E8F1', '12th', 'A', 'Himanshu', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', '0');

-- --------------------------------------------------------

--
-- Table structure for table `new_announcement`
--

CREATE TABLE `new_announcement` (
  `id` int NOT NULL,
  `heading` varchar(5000) COLLATE utf8mb4_general_ci NOT NULL,
  `notice` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(700) COLLATE utf8mb4_general_ci NOT NULL,
  `school_id` varchar(4000) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_announcement`
--

INSERT INTO `new_announcement` (`id`, `heading`, `notice`, `date`, `school_id`) VALUES
(1, 'Your School Logo or Header', 'Hello everyone this is first message by me', 'Wed Aug 23 2023', '73182635dce703425b27aac8f6a0665de3e9c7033272e76ca803c198a69e018c'),
(2, 'AUgust 24, 2023', 'final exams', 'Wed Aug 23 2023', 'f8731a3e790058e8beb5eac849dec68788cb6c373c6733b8ecef0f13d4e2f4bc'),
(3, 'My test announcement', 'this is a test announcement', 'Thu Aug 31 2023', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802');

-- --------------------------------------------------------

--
-- Table structure for table `nonteachingstaff`
--

CREATE TABLE `nonteachingstaff` (
  `id` int NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `dob` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `religion` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `bloodgroup` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `qualification` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `martialstatus` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(800) COLLATE utf8mb4_general_ci NOT NULL,
  `dateofjoining` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `joiningsalary` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `accountholdername` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `accountnumber` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `bankname` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `branch` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `identitydocument` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `school_id` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_id` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nonteachingstaff`
--

INSERT INTO `nonteachingstaff` (`id`, `name`, `dob`, `gender`, `religion`, `bloodgroup`, `email`, `phone`, `qualification`, `martialstatus`, `address`, `department`, `dateofjoining`, `joiningsalary`, `status`, `accountholdername`, `accountnumber`, `bankname`, `branch`, `identitydocument`, `img`, `school_id`, `teacher_id`) VALUES
(1, 'My name', '2023-08-25', 'female', '', '', '1@gmail.com', '9876543210', 'B.Ed', 'married', 'My address', 'library', '2023-08-25', '', 'InActive', 'My name', '324324124142', 'My bank', 'My branch', 'images/nonteacherfiles/file1_1693489562356.jpg', 'images/nonteacherfiles/file2_1693489562357.jpg', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', 'EFE517E74C63'),
(2, 'Teacher', '2023-09-01', 'other', 'Hindu', 'A+', 'test@test.com', '1234567890', 'B.Ed.', 'single', '123 Main Street', 'student-affairs', '2023-03-08', '102020493', 'Active', 'Test', '1241242343534253', 'Test bank', 'Test branch', 'images/nonteacherfiles/file1_1693653960587.jpg', 'images/nonteacherfiles/file2_1693653960588.jpg', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', 'B517B1F0BB82');

-- --------------------------------------------------------

--
-- Table structure for table `schoolcalender`
--

CREATE TABLE `schoolcalender` (
  `id` int NOT NULL,
  `school_id` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `start` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `end` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(10000) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schoolcalender`
--

INSERT INTO `schoolcalender` (`id`, `school_id`, `start`, `end`, `title`) VALUES
(1, '99042d2cc6fadd0ad754ee040d65aaf58e843b6f6c3a0a26a0e792a7c2e906fd', '2023-08-29T18:30:00.000Z', '2023-08-29T19:00:00.000Z', 'hello'),
(2, '99042d2cc6fadd0ad754ee040d65aaf58e843b6f6c3a0a26a0e792a7c2e906fd', '2023-08-29T19:30:00.000Z', '2023-08-29T20:00:00.000Z', 'hello'),
(3, '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', '2023-08-30T18:30:00.000Z', '2023-08-30T19:00:00.000Z', 'My event'),
(4, '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', '2023-08-31T19:00:00.000Z', '2023-08-31T19:30:00.000Z', 'helllo'),
(5, '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', '2023-09-07T18:30:00.000Z', '2023-09-08T18:30:00.000Z', 'hello1'),
(6, '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', '2023-08-30T19:00:00.000Z', '2023-08-30T19:30:00.000Z', 'New event');

-- --------------------------------------------------------

--
-- Table structure for table `schoolholiday`
--

CREATE TABLE `schoolholiday` (
  `id` int NOT NULL,
  `user_id` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `holiday_name` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `startdate` varchar(700) COLLATE utf8mb4_general_ci NOT NULL,
  `enddate` varchar(700) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schoolholiday`
--

INSERT INTO `schoolholiday` (`id`, `user_id`, `holiday_name`, `startdate`, `enddate`) VALUES
(1, 'f8731a3e790058e8beb5eac849dec68788cb6c373c6733b8ecef0f13d4e2f4bc', 'Independence day', '2023-08-15', '2023-08-15'),
(2, '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', 'My holiday', '2023-08-30', '2023-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `schoolsubject`
--

CREATE TABLE `schoolsubject` (
  `id` int NOT NULL,
  `subject` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `stream` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_id` varchar(400) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schoolsubject`
--

INSERT INTO `schoolsubject` (`id`, `subject`, `class`, `stream`, `admin_id`) VALUES
(1, 'English ( Basic language skill )', 'nursery', '', ''),
(2, 'Mathematics (Basic counting and shapes)', 'nursery', '', ''),
(3, 'Environmental Studies (Introduction to the environment)', 'nursery', '', ''),
(4, 'Rhymes and Stories', 'nursery', '', ''),
(5, 'Arts and Crafts', 'nursery', '', ''),
(6, 'General Activity', 'nursery', '', ''),
(7, 'English (Language skills development)', 'pre_kg', '', ''),
(8, 'Mathematics (Numbers, basic operations)', 'pre_kg', '', ''),
(9, 'Environmental Studies (Nature, animals, surroundings)', 'pre_kg', '', ''),
(10, 'General Awareness', 'pre_kg', '', ''),
(11, 'General Awareness', 'kg', '', ''),
(12, 'Mathematics (Numbers, basic operations)', 'kg', '', ''),
(13, 'English (Language skills development)', 'kg', '', ''),
(14, 'Environmental Studies (Nature, animals, surroundings)', 'kg', '', ''),
(15, 'English', '1st', '', ''),
(16, 'Mathematics', '1st', '', ''),
(17, 'Environmental Studies', '1st', '', ''),
(18, 'Hindi (or other regional languages as per school\'s choice)', '1st', '', ''),
(19, 'Computer Science (Basic introduction)', '1st', '', ''),
(20, 'Art and Craft', '1st', '', ''),
(21, 'Music', '1st', '', ''),
(22, 'English', '2nd', '', ''),
(23, 'Mathematics', '2nd', '', ''),
(24, 'Environmental Studies', '2nd', '', ''),
(25, 'Hindi (or other regional languages)', '2nd', '', ''),
(26, 'Computer Science', '2nd', '', ''),
(27, 'Art and Craft', '2nd', '', ''),
(28, 'Music', '2nd', '', ''),
(29, 'English', '3rd', '', ''),
(30, 'Mathematics', '3rd', '', ''),
(31, 'Environmental Studies', '3rd', '', ''),
(32, 'Hindi (or other regional languages)', '3rd', '', ''),
(33, 'Science (Basic concepts)', '3rd', '', ''),
(34, 'Social Studies (Basic history, geography, civics)', '3rd', '', ''),
(35, 'Computer Science', '3rd', '', ''),
(36, 'Art and Craft', '3rd', '', ''),
(37, 'Music', '3rd', '', ''),
(38, 'English', '4th', '', ''),
(39, 'Mathematics', '4th', '', ''),
(40, 'Environmental Studies', '4th', '', ''),
(41, 'Hindi (or other regional languages)', '4th', '', ''),
(42, 'Science', '4th', '', ''),
(43, 'Social Studies', '4th', '', ''),
(44, 'Computer Science', '4th', '', ''),
(45, 'Art and Craft', '4th', '', ''),
(46, 'Music', '4th', '', ''),
(47, 'English', '5th', '', ''),
(48, 'Mathematics', '5th', '', ''),
(49, 'Environmental Studies', '5th', '', ''),
(50, 'Hindi (or other regional languages)', '5th', '', ''),
(51, 'Science', '5th', '', ''),
(52, 'Social Studies', '5th', '', ''),
(53, 'Computer Science', '5th', '', ''),
(54, 'Art and Craft', '5th', '', ''),
(55, 'Music', '5th', '', ''),
(56, 'English', '6th', '', ''),
(57, 'Mathematics', '6th', '', ''),
(58, 'Science (Physics, Chemistry, Biology)', '6th', '', ''),
(59, 'Social Studies (History, Geography, Civics)', '6th', '', ''),
(60, 'Hindi (or other regional languages)', '6th', '', ''),
(61, 'Foreign Language (if applicable)', '6th', '', ''),
(62, 'Computer Science', '6th', '', ''),
(63, 'Art and Craft', '6th', '', ''),
(64, 'Music', '6th', '', ''),
(65, 'Physical Education', '6th', '', ''),
(66, 'English', '7th', '', ''),
(67, 'Mathematics', '7th', '', ''),
(68, 'Science (Physics, Chemistry, Biology)', '7th', '', ''),
(69, 'Social Studies (History, Geography, Civics)', '7th', '', ''),
(70, 'Hindi (or other regional languages)', '7th', '', ''),
(71, 'Foreign Language (if applicable)', '7th', '', ''),
(72, 'Computer Science', '7th', '', ''),
(73, 'Art and Craft', '7th', '', ''),
(74, 'Music', '7th', '', ''),
(75, 'Physical Education', '7th', '', ''),
(76, 'English', '8th', '', ''),
(77, 'Mathematics', '8th', '', ''),
(78, 'Science (Physics, Chemistry, Biology)', '8th', '', ''),
(79, 'Social Studies (History, Geography, Civics)', '8th', '', ''),
(80, 'Hindi (or other regional languages)', '8th', '', ''),
(81, 'Foreign Language (if applicable)', '8th', '', ''),
(82, 'Computer Science', '8th', '', ''),
(83, 'Art and Craft', '8th', '', ''),
(84, 'Music', '8th', '', ''),
(85, 'Physical Education', '8th', '', ''),
(86, 'English', '9th', '', ''),
(87, 'Mathematics', '9th', '', ''),
(88, 'Science (Physics, Chemistry, Biology)', '9th', '', ''),
(89, 'Social Studies (History, Geography, Civics/Economics)', '9th', '', ''),
(90, 'Hindi (or other regional languages)', '9th', '', ''),
(91, 'Foreign Language (if applicable)', '9th', '', ''),
(92, 'Computer Science', '9th', '', ''),
(93, 'Art and Craft (optional)', '9th', '', ''),
(94, 'Music (optional)', '9th', '', ''),
(95, 'Physical Education', '9th', '', ''),
(96, 'English', '10th', '', ''),
(97, 'Mathematics', '10th', '', ''),
(98, 'Science (Physics, Chemistry, Biology)', '10th', '', ''),
(99, 'Social Studies (History, Geography, Civics/Economics)', '10th', '', ''),
(100, 'Hindi (or other regional languages)', '10th', '', ''),
(101, 'Foreign Language (if applicable)', '10th', '', ''),
(102, 'Computer Science', '10th', '', ''),
(103, 'Art and Craft (optional)', '10th', '', ''),
(104, 'Music (optional)', '10th', '', ''),
(105, 'Physical Education', '10th', '', ''),
(118, 'English (Core)', '11th', '', ''),
(119, 'Additional Language (if applicable)', '11th', '', ''),
(120, 'Physics', '11th', 'science', ''),
(121, 'Chemistry', '11th', 'science', ''),
(123, 'Mathematics (optional)', '11th', 'science', ''),
(124, 'Biology (optional)', '11th', 'science', ''),
(125, 'Physical Education (optional)', '11th', 'science', ''),
(126, 'Computer Science  (optional)', '11th', 'science', ''),
(127, ' Economics (optional)', '11th', 'science', ''),
(128, 'Business Studies', '11th', 'commerce', ''),
(129, 'Accountancy', '11th', 'commerce', ''),
(130, 'Economics (optional)', '11th', 'commerce', ''),
(131, ' Physical Education (optional)', '11th', 'commerce', ''),
(132, 'History', '11th', 'Art and Humanities', ''),
(133, 'Geography', '11th', 'Art and Humanities', ''),
(134, 'Psychology', '11th', 'Art and Humanities', ''),
(136, 'Political Science', '11th', 'Art and Humanities', ''),
(137, 'Sociology', '11th', 'Art and Humanities', ''),
(138, ' Fine Arts', '11th', 'Art and Humanities', ''),
(139, 'English (Core)', '12th', '', ''),
(140, 'Physics', '12th', 'science', ''),
(141, 'Chemistry', '12th', 'science', ''),
(142, 'Mathematics (optional)', '12th', 'science', ''),
(143, 'Biology (optional)', '12th', 'science', ''),
(144, 'Physical Education (optional)', '12th', 'science', ''),
(145, 'Economics (optional)', '12th', 'science', ''),
(146, 'Computer Science (optional)', '12th', '', ''),
(147, 'Additional Language (if applicable)', '12th', '', ''),
(148, 'Business Studies', '12th', 'commerce', ''),
(149, 'Accountancy', '12th', 'commerce', ''),
(150, 'History', '12th', 'Art and Humanities', ''),
(151, 'Geography', '12th', 'Art and Humanities', ''),
(152, 'Psychology', '12th', 'Art and Humanities', ''),
(153, 'Political Science', '12th', 'Art and Humanities', ''),
(154, 'Sociology', '12th', 'Art and Humanities', ''),
(155, 'Fine Arts ', '12th', 'Art and Humanities', ''),
(156, 'Math', '2nd', '', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802');

-- --------------------------------------------------------

--
-- Table structure for table `schooltimetable`
--

CREATE TABLE `schooltimetable` (
  `id` int NOT NULL,
  `admin_id` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `startday` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `startingtime` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `endingtime` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `endday` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `assign_teacher` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `subject` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `section` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_id` varchar(300) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schooltimetable`
--

INSERT INTO `schooltimetable` (`id`, `admin_id`, `class`, `startday`, `startingtime`, `endingtime`, `endday`, `assign_teacher`, `subject`, `section`, `teacher_id`) VALUES
(1, '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', '12th', 'Daily', '09:40 Am', '10:20 Am', 'Daily', 'Test', 'History', 'D', 'A5BEBE65701E');

-- --------------------------------------------------------

--
-- Table structure for table `signup-info`
--

CREATE TABLE `signup-info` (
  `id` int NOT NULL,
  `user_token` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_name` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_email` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_phone` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_confirmPassword` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `school_id` varchar(300) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup-info`
--

INSERT INTO `signup-info` (`id`, `user_token`, `admin_name`, `admin_email`, `admin_password`, `admin_phone`, `admin_confirmPassword`, `school_id`) VALUES
(2, 'f8731a3e790058e8beb5eac849dec68788cb6c373c6733b8ecef0f13d4e2f4bc', 'IShfaq', 'mukulpant687@gmail.com', 'abc@123456', '1234567890', 'abc@123456', 'EIHGSSOOHR2023'),
(3, '3e6387175f7fdab494b5f620f5f8b7764e208e52d019b8dddd14bb794835b971', 'AIJAZ AHMAD KHAN', 'aijazalwaysonline8@gmail.com', 'Aurhaan123@', '8825010981', 'Aurhaan123@', 'GGDJIYOOHR2023'),
(4, 'f21390961415085b2415dfefd54915d250e871cf964527bf7e825bcb850076e6', 'AIJAZ AHMAD MIR', 'lhpsdoliporakup@gmail.com', 'Meeraijaz@1', '8825011891', 'Meeraijaz@1', 'TBFCSVOOHR2023'),
(5, '183ca4cf8395cceae01c26ad039a359f57be784220aecc350a190241a0a83745', 'WASEEM BASHIR', 'waseem_bhat@yahoo.com', '19221111', '8803034384', '19221111', 'EKJPUXOOHR2023'),
(6, '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', 'My name', 'ashusinha1904@gmail.com', 'admin@admin', '56864618431846434616161', 'admin@admin', 'KQAMPOOOHR2023'),
(7, '99042d2cc6fadd0ad754ee040d65aaf58e843b6f6c3a0a26a0e792a7c2e906fd', 'Ajay Sehwal', 'ajaysehwal000@gmail.com', 'ajay@786', '7404311416', 'ajay@786', 'PJTIDSOOHR2023'),
(8, '65bce57ba855dc2687637177f4515dc55a74ca646e1e66f2a31ec9a85228644c', 'Javid Ahmad Malik ', 'mglistenschoolkmr@gmail.com', 'Malik@123', '9596500816', 'Malik@123', 'ITZKYXOOHR2023'),
(9, '65bce57ba855dc2687637177f4515dc55a74ca646e1e66f2a31ec9a85228644c', 'Javid Ahmad Malik ', 'glistenschoolkmr@gmail.com', 'Glisten123@', '9596500816', 'Glisten123@', 'QUGSOLOOHR2023'),
(10, '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', 'Ajay Sehwal', 'ajaysehwal786@gmail.com', 'ajay@786', '7404311418', 'ajay@786', 'NFQHINOOHR2023');

-- --------------------------------------------------------

--
-- Table structure for table `signupstep1`
--

CREATE TABLE `signupstep1` (
  `id` int NOT NULL,
  `schoolname` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `schoolurl` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `user_token` varchar(400) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signupstep1`
--

INSERT INTO `signupstep1` (`id`, `schoolname`, `schoolurl`, `email`, `phone`, `user_token`) VALUES
(2, 'Vivekanand Model School', 'vivekanad', 'mukulpant687@gmail.com', '7087468711', 'f8731a3e790058e8beb5eac849dec68788cb6c373c6733b8ecef0f13d4e2f4bc'),
(3, 'AGs Public School', 'Rular', 'aijazalwaysonline8@gmail.com', '8825010981', '3e6387175f7fdab494b5f620f5f8b7764e208e52d019b8dddd14bb794835b971'),
(4, 'LIGHT HOUSE PUBLIC SCHOOL DOLIPORA', '', 'lhpsdoliporakup@gmail.com', '8825011891', 'f21390961415085b2415dfefd54915d250e871cf964527bf7e825bcb850076e6'),
(5, 'EXCELLENT COACHING CENTRE', '', 'waseem_bhat@yahoo.com', '8803034384', '183ca4cf8395cceae01c26ad039a359f57be784220aecc350a190241a0a83745'),
(6, 'My school', 'my school.com', 'ashusinha1904@gmail.com', '1234564980', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802'),
(7, 'tryschool', 'tryschool', 'ajaysehwal000@gmail.com', '7404311418', '99042d2cc6fadd0ad754ee040d65aaf58e843b6f6c3a0a26a0e792a7c2e906fd'),
(8, 'Galistan school', '', 'ishfaqkhan0644@gmail.com', '6006818966', '86a88a08aab1055f888c53a2ddd3bdf40e334aa92432a441921124a4413da56c'),
(9, 'GLISTEN SCHOOL ', 'School', 'glistenschoolkmr@gmail.com', '9596500816', '65bce57ba855dc2687637177f4515dc55a74ca646e1e66f2a31ec9a85228644c'),
(10, 'GLISTEN SCHOOL ', 'School', 'glistenschoolkmr@gmail.com', '9596500816', '65bce57ba855dc2687637177f4515dc55a74ca646e1e66f2a31ec9a85228644c'),
(11, 'GLISTEN SCHOOL ', 'School', 'glistenschoolkmr@gmail.com', '9596500816', '65bce57ba855dc2687637177f4515dc55a74ca646e1e66f2a31ec9a85228644c'),
(12, 'test4', 'testurl', 'ajaysehwal786@gmail.com', '7404311418', '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1');

-- --------------------------------------------------------

--
-- Table structure for table `signupstep2-address`
--

CREATE TABLE `signupstep2-address` (
  `id` int NOT NULL,
  `user_token` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `schooladdress` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signupstep2-address`
--

INSERT INTO `signupstep2-address` (`id`, `user_token`, `country`, `schooladdress`) VALUES
(2, 'f8731a3e790058e8beb5eac849dec68788cb6c373c6733b8ecef0f13d4e2f4bc', 'India', 'anatnaag '),
(3, '3e6387175f7fdab494b5f620f5f8b7764e208e52d019b8dddd14bb794835b971', 'India', 'Kupwara kashmir'),
(4, 'f21390961415085b2415dfefd54915d250e871cf964527bf7e825bcb850076e6', 'India', 'DOLIPORA'),
(5, '183ca4cf8395cceae01c26ad039a359f57be784220aecc350a190241a0a83745', 'India', 'Mirgund Dooru ANANTNAG'),
(6, '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', 'India', 'My school address'),
(7, '99042d2cc6fadd0ad754ee040d65aaf58e843b6f6c3a0a26a0e792a7c2e906fd', 'India', 'Sonipat Haryana 131029'),
(8, '65bce57ba855dc2687637177f4515dc55a74ca646e1e66f2a31ec9a85228644c', 'India', 'Villagam kupwara Kashmir '),
(9, '65bce57ba855dc2687637177f4515dc55a74ca646e1e66f2a31ec9a85228644c', 'India', 'Villagam kupwara Kashmir '),
(10, '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', 'India', 'Sonipat Haryana 131029');

-- --------------------------------------------------------

--
-- Table structure for table `studentclasses`
--

CREATE TABLE `studentclasses` (
  `id` int NOT NULL,
  `class_name` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `user_token` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `class_descripition` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentdata`
--

CREATE TABLE `studentdata` (
  `id` int NOT NULL,
  `student_name` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_birth` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `father_name` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `nationality` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `admission_no` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `age` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `religion` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `parents_phone` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `previous_school_name` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `transfer_certificate` varchar(700) COLLATE utf8mb4_general_ci NOT NULL,
  `physical_handicap` varchar(700) COLLATE utf8mb4_general_ci NOT NULL,
  `house` varchar(700) COLLATE utf8mb4_general_ci NOT NULL,
  `student_category` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `select_class` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `state` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `blood_group` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `student_document` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `birth_certificate` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `student_image` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `additional_information` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `other_document` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `mother_name` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `section` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_token` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `student_code` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentdata`
--

INSERT INTO `studentdata` (`id`, `student_name`, `date_of_birth`, `father_name`, `address`, `nationality`, `admission_no`, `age`, `religion`, `city`, `phone`, `parents_phone`, `previous_school_name`, `email`, `transfer_certificate`, `physical_handicap`, `house`, `student_category`, `select_class`, `state`, `blood_group`, `student_document`, `birth_certificate`, `student_image`, `additional_information`, `other_document`, `gender`, `mother_name`, `section`, `admin_token`, `student_code`) VALUES
(2, 'Himanshu', '2006-01-05', 'Himanshu SInha', 'My address', 'Indian', '1234566', '18', 'Hindu', 'Kkr', '1234567890', '1234567892', 'My school name', 'test@test.com', 'Yes', 'No', '', 'General', '12th', 'Haryana', 'B+', 'images/studentfiles/file1_1693299598816.jpg', 'dob', 'images/studentfiles/file3_1693299598819.jpg', 'Nothing', 'images/studentfiles/file2_1693299598818.jpg', 'male', '', 'A', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', 'EC0D3449E8F1'),
(3, 'Ajay Sehwal', '2023-08-02', 'nmfadcx', 'shdcx', 'ewjh', '-378', '98', 'jfgh ', 'WADSVFCVB', '8239802383', '7404311418', 'nothing', 'ajaysehwal786@gmail.com', 'No', 'No', '', 'General', '3rd', 'Haryana', 'AB+', 'images/studentfiles/file1_1693313003524.pdf', 'dob', 'images/studentfiles/file3_1693313003749.png', '', 'images/studentfiles/file2_1693313003749.png', 'male', 'nasdxc', 'A', '99042d2cc6fadd0ad754ee040d65aaf58e843b6f6c3a0a26a0e792a7c2e906fd', '63DEAB2BB86F'),
(4, 'Jack', '2023-08-17', 'nmfadcx', 'Sonipat Haryana 131029', 'India', '90', '17', 'Hindu', 'Sonipat', '8239802383', '7404311418', 'nothing', 'ajaysehwal000@gmail.com', 'No', 'No', '', 'OBC', '1st', 'Haryana', 'AB+', 'images/studentfiles/file1_1693494723796.pdf', 'aadhar', 'images/studentfiles/file3_1693494724233.jpg', '', 'images/studentfiles/file2_1693494724096.jpg', 'other', 'nasdxc', 'A', '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', 'ADADF3D14131'),
(5, 'Jack', '2023-08-17', 'nmfadcx', 'Sonipat Haryana 131029', 'India', '90', '17', 'Hindu', 'Sonipat', '8239802383', '7404311418', 'nothing', 'ajaysehwal000@gmail.com', 'No', 'No', '', 'OBC', '1st', 'Haryana', 'AB+', 'images/studentfiles/file1_1693494736046.pdf', 'aadhar', 'images/studentfiles/file3_1693494736398.jpg', '', 'images/studentfiles/file2_1693494736273.jpg', 'other', 'nasdxc', 'A', '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', '69A8B7A5650B'),
(6, 'Ajay Sehwal', '2023-09-07', 'nmfadcx', 'Sonipat Haryana', 'India', '89', '17', 'Hindu', 'Sonipat', '7404311418', '7404311416', 'nothing', 'ajaysehwal786@gmail.com', 'No', 'No', '', 'OBC', '1st', 'Haryana', 'a+', 'images/studentfiles/file1_1693544299427.pdf', 'dob', 'images/studentfiles/file3_1693544299842.jpg', '', 'images/studentfiles/file2_1693544299703.png', 'male', 'nasdxc', 'A', '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', '67ECF3200A10'),
(7, 'Ajay Sehwal', '2023-09-07', 'nmfadcx', 'Sonipat Haryana', 'India', '89', '17', 'Hindu', 'Sonipat', '7404311418', '7404311416', 'nothing', 'ajaysehwal786@gmail.com', 'No', 'No', '', 'OBC', '1st', 'Haryana', 'a+', 'images/studentfiles/file1_1693544343771.pdf', 'dob', 'images/studentfiles/file3_1693544344243.jpg', '', 'images/studentfiles/file2_1693544344062.png', 'male', 'nasdxc', 'A', '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', '9818C0FCAE8C'),
(8, 'Ajay Sehwal', '2023-09-07', 'nmfadcx', 'Sonipat Haryana', 'India', '89', '17', 'Hindu', 'Sonipat', '7404311418', '7404311416', 'nothing', 'ajaysehwal786@gmail.com', 'No', 'No', '', 'OBC', '1st', 'Haryana', 'a+', 'images/studentfiles/file1_1693544553725.pdf', 'dob', 'images/studentfiles/file3_1693544554110.jpg', '', 'images/studentfiles/file2_1693544554022.png', 'male', 'nasdxc', 'A', '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', 'A0F36F7B37DB'),
(9, 'My name', '2023-09-01', 'my father name', '456 Indian street', 'Indian', '123242142134', '16', 'Hindu', 'Kkr', '1234567890', '1234567890', 'My school', 'test@test.com', 'Yes', 'No', 'Ganga', 'OBC', '12th', 'My State', 'A+', 'images/studentfiles/file1_1693653688992.jpg', 'dob', 'images/studentfiles/file3_1693653689073.jpg', '', 'images/studentfiles/file2_1693653688993.jpg', 'female', 'my mother name', 'D', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', 'B6DFAF7670D7');

-- --------------------------------------------------------

--
-- Table structure for table `studenthouses`
--

CREATE TABLE `studenthouses` (
  `id` int NOT NULL,
  `house_name` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `user_token` varchar(500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studenthouses`
--

INSERT INTO `studenthouses` (`id`, `house_name`, `user_token`) VALUES
(1, 'Mars', '73182635dce703425b27aac8f6a0665de3e9c7033272e76ca803c198a69e018c'),
(2, 'Blue', '3e6387175f7fdab494b5f620f5f8b7764e208e52d019b8dddd14bb794835b971'),
(4, 'Ganga', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802');

-- --------------------------------------------------------

--
-- Table structure for table `teachersdata`
--

CREATE TABLE `teachersdata` (
  `id` int NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `dob` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `religion` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `bloodgroup` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `qualification` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `martialstatus` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `dateofjoining` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `joiningsalary` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `accountholdername` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `accountnumber` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `bankname` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `branch` varchar(600) COLLATE utf8mb4_general_ci NOT NULL,
  `identifydocument` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `school_id` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_id` varchar(300) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachersdata`
--

INSERT INTO `teachersdata` (`id`, `name`, `dob`, `gender`, `religion`, `bloodgroup`, `email`, `phone`, `qualification`, `martialstatus`, `address`, `department`, `dateofjoining`, `joiningsalary`, `status`, `accountholdername`, `accountnumber`, `bankname`, `branch`, `identifydocument`, `img`, `school_id`, `teacher_id`) VALUES
(1, 'Test', '2023-08-31', 'male', '', 'A+', 'test@test.com', '1234567890', 'M.Sc. , B.Ed.', 'single', 'My address', 'foreign-languages', '2023-08-04', '', 'Active', 'Test', '12424325463465656', 'Whatever Bank', 'Kuk', 'images/teachersfiles/file1_1693487473666.jpg', 'images/teachersfiles/file2_1693487473667.jpg', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', 'A5BEBE65701E'),
(2, 'Rohit', '2023-08-17', 'male', 'Hindu', 'A+', 'ajaysehwal786@gmail.com', '7404311418', 'vrjdfh', 'married', 'Sonipat Haryana 131029', 'math', '2023-08-24', '1000', 'Active', 'jwsaxhzkhqwsa', '2wqiu29189', 'jqwhsakxz', 'jqwhasxzk', 'images/teachersfiles/file1_1693493833520.jpg', 'images/teachersfiles/file2_1693493834122.jpg', '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', 'D2AEFAFCEEDB'),
(3, 'new', '2023-09-20', 'male', 'hiyhiyiy', 'A+', 'ajaysehwal786@gmail.com', '7404311418', 'vrjdfh', 'single', 'Sonipat Haryana', 'performing-arts', '2023-09-14', '7877', 'Active', 'jwsaxhzkhqwsa', '2wqiu29189', 'jqwhsakxz', 'jqwhasxzk', 'images/teachersfiles/file1_1693555257016.png', 'images/teachersfiles/file2_1693555257234.jpg', '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', '47C50FCD61B0'),
(4, 'Ajay Sehwal', '2023-09-08', 'male', 'hiyhiyiy', 'wva,dcxbj', 'ajaysehwal786@gmail.com', '+17404311418', 'vrjdfh', 'single', 'shdcx', 'business-ed', '2023-09-07', '7877', 'Active', 'jwsaxhzkhqwsa', '2wqiu29189', 'jqwhsakxz', 'jqwhasxzk', 'images/teachersfiles/file1_1693555531173.pdf', 'images/teachersfiles/file2_1693555531461.jpg', '0e3b782c443ba58236c4e7993b45054272a188eed291f772fa979113a85ff1c1', '1FB75D58BC8B'),
(5, 'Test2', '2023-09-01', 'female', 'Hindu', 'o+', 'test@test.com', '1234567890', '12th', 'single', '123 Main Street', 'home-economics', '2023-06-09', '100000', 'Active', 'Test2', '224325345634634634', 'My bank', 'KUK', 'images/teachersfiles/file1_1693647131902.jpg', 'images/teachersfiles/file2_1693647131903.jpg', '594b4420d6c275bf1e627c937513c4cc5cdd3f9c95d9f85a93c62c9f671a2802', '5CE5167FC40A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_student_fee`
--
ALTER TABLE `manage_student_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_announcement`
--
ALTER TABLE `new_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nonteachingstaff`
--
ALTER TABLE `nonteachingstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolcalender`
--
ALTER TABLE `schoolcalender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolholiday`
--
ALTER TABLE `schoolholiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolsubject`
--
ALTER TABLE `schoolsubject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schooltimetable`
--
ALTER TABLE `schooltimetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup-info`
--
ALTER TABLE `signup-info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signupstep1`
--
ALTER TABLE `signupstep1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signupstep2-address`
--
ALTER TABLE `signupstep2-address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentclasses`
--
ALTER TABLE `studentclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentdata`
--
ALTER TABLE `studentdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studenthouses`
--
ALTER TABLE `studenthouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachersdata`
--
ALTER TABLE `teachersdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `manage_student_fee`
--
ALTER TABLE `manage_student_fee`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `new_announcement`
--
ALTER TABLE `new_announcement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nonteachingstaff`
--
ALTER TABLE `nonteachingstaff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schoolcalender`
--
ALTER TABLE `schoolcalender`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schoolholiday`
--
ALTER TABLE `schoolholiday`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schoolsubject`
--
ALTER TABLE `schoolsubject`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `schooltimetable`
--
ALTER TABLE `schooltimetable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signup-info`
--
ALTER TABLE `signup-info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `signupstep1`
--
ALTER TABLE `signupstep1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `signupstep2-address`
--
ALTER TABLE `signupstep2-address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `studentclasses`
--
ALTER TABLE `studentclasses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentdata`
--
ALTER TABLE `studentdata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `studenthouses`
--
ALTER TABLE `studenthouses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teachersdata`
--
ALTER TABLE `teachersdata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
