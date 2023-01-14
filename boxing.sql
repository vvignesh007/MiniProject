phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 04:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `draclets_martial_arts_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `user_id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `username`, `password`) VALUES
(1, 'Vignesh', '3701'),
(2, 'Vaishnavi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `uId` int(11) NOT NULL,
  `acc_no` int(20) NOT NULL,
  `IFSC` varchar(20) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `Amount` int(20) NOT NULL,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`uId`, `acc_no`, `IFSC`, `bank_name`, `payment_mode`, `Amount`, `username`) VALUES
(2, 454, 'VIJ12093', 'Vijaya Bank', 'Mobile Payment', 4000, 'Ram'),
(3, 789, 'ICICI12011', 'ICICI Bank', 'Cash', 3500, 'sam'),
(4, 888, 'SBI00143', 'SBI Bank', 'Cash', 5000, 'sam'),
(25, 2147483647, 'SB165265', 'SBI', 'CARD', 5000, 'swasthik _jain'),
(26, 1234, '12553', 'hdfc', 'upi', 4000, 'John_smith'),
(27, 2147483647, 'CNRB1234', 'SBI', 'cash', 50000, 'John_smith');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `S_id` int(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `S_uname` varchar(20) NOT NULL,
  `Sex` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Phno` bigint(25) NOT NULL,
  `Salary` int(20) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`S_id`, `Fname`, `Lname`, `S_uname`, `Sex`, `Address`, `Phno`, `Salary`, `type`) VALUES
(32, 'Jyothi', 'Singh', 'Jyothi_singh16', 'female', 'Kolkata', 9624785543, 50000, 'Karate'),
(66, 'Rajesh', 'Sharma', 'Rajesh_sharma12', 'male', 'Bangalore', 9869475958, 47000, 'Krav Maga'),
(77, 'Ashwath', 'Kumar', 'Ashwath_kumar17', 'male', 'Mangalore', 9856473737, 59000, 'Kung-fu'),
(88, 'Prasad', 'Shetty', 'Prasad_shetty01', 'male', 'Mumbai', 8463765847, 78000, 'Judo'),
(102, 'Yashwanth', 'Yash', 'Yashu', 'male', 'Karkala', 1234568, 60000, 'Boxing');

-- --------------------------------------------------------

--
-- Table structure for table `staff_login`
--

CREATE TABLE `staff_login` (
  `user_id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_login`
--

INSERT INTO `staff_login` (`user_id`, `username`, `password`) VALUES
(1, 'Jyothi_singh16', '123'),
(2, 'Rajesh_sharma12', '123'),
(3, 'Ashwath_kumar17', 'ashwath@788'),
(4, 'Prasad_shetty01', 'prasad@787'),
(7, 'Yashu', '123'),
(8, 'Raju', '123'),
(9, 'sanshri', '123'),
(10, 'ramu', '1234'),
(11, 'tdthfg', '123');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SSN` varchar(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Sex` varchar(20) NOT NULL,
  `Art_form` varchar(20) NOT NULL,
  `Blood` varchar(20) NOT NULL,
  `St_uname` varchar(20) NOT NULL,
  `Phno` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SSN`, `Fname`, `Lname`, `Sex`, `Art_form`, `Blood`, `St_uname`, `Phno`, `Address`) VALUES
('12', 'John', 'Smith', 'M', 'Karate', 'Blood', 'John_smith', '8674997432', 'Bangalore'),
('13', 'Alia', 'Bhat', 'F', 'Judo', 'O+ve', 'Alia_bhat', '9876423166', 'Mysore'),
('14', 'Shilpa', 'Shetty', 'F', 'Kung-fu', 'AB+ve', 'Shilpa_shetty', '8787858384', 'Mangalore'),
('15', 'Irfa', 'Khan', 'F', 'Krav Maga', 'A+ve', 'Irfa_khan', '9885667575', 'Udupi'),
('16', 'Hrithik', 'Raj', 'M', 'Judo', 'B+ve', 'Hrithik_raj', '9786858686', 'Kolkatha'),
('187057140', 'veeena', 'nayak', 'other', 'Judo', 'O+', 'veeena_nayak', '8886117845', 'talapaday'),
('1927702274', 'raj', 'kesar', 'male', 'Judo', 'O+', 'raj_kesar', '123456789', 'Karkala'),
('1936310254', 'swasthik ', 'jain', 'male', 'Karate', 'O+', 'swasthik _jain', '7254656125', 'jain pete  '),
('295587310', 'Samson', 'Immanuel K', 'M', 'Boxing', 'B +ve', 'Samson_immanuel K', '1234567890', 'Karkala'),
('301305850', 'Ram', 'Raju', 'male', 'Kung-fu', 'B+', 'Ram_raju', '7895845844', 'karkala'),
('730617526', 'Prajwal', 'Shetty', 'M', 'Boxing ', 'B +ve', 'Prajwal_shetty', '1234567890', 'Kaveri'),
('903710958', 'veena', 'lk', 'female', 'Kung-fu', 'O-', 'veena_lk', '108977', 'nsuqusg');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `use_id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`use_id`, `username`, `password`) VALUES
(1, 'John_smith', '123'),
(2, 'Alia_bhat', '123'),
(3, 'Shilpa_shetty', 'shilpa@852'),
(4, 'Irfa_khan', 'irfa@895'),
(5, 'Hrithik_raj', 'hrithik@458'),
(59537845, 'KJIOCL_dCHSHKJN', '123'),
(155056189, 'yash_ta', '3701'),
(187057140, 'veeena_nayak', 'adi'),
(197503607, 'KJIOC_dCHSHKJN', '456'),
(295587310, 'Samson_immanuel K', '123'),
(301305850, 'Ram_raju', '1234'),
(433953344, 'Samson_immanuel', '123'),
(436804197, 'Test_moodbidri', '123'),
(517749932, 'ab_ba', '123'),
(662992936, 'gdwyuelgsjh_jxiuas', '4584'),
(730617526, 'Prajwal_shetty', '123'),
(903710958, 'veena_lk', '12344'),
(1155645280, 'sncjlhc_sdahd', '123'),
(1165901268, 'jjj_kkk', '123'),
(1533064768, 'Vimal_kesar', '1234'),
(1537487825, 'hsyiudh_erghhh', '1234'),
(1537524387, 'Ram_raj', '1234'),
(1587050977, 'KJIOCLK_dCHSHKJN', '1234'),
(1716666466, 'gan_iurg', '123'),
(1735791824, 'yashu_yash', '123'),
(1911412089, 'ram_kesar', '123'),
(1927702274, 'raj_kesar', '1234'),
(1936310254, 'swasthik _jain', 'Pmj@1432'),
(2042191467, 'hsgygd_dgyud', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `t_desc` text NOT NULL,
  `t_type` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `t_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`t_id`, `t_name`, `t_desc`, `t_type`, `venue`, `date`, `t_img`) VALUES
(1, 'ufc', 'this is international champs', 'karate', 'Mangalore', '22/01/2022', '246063.jpg'),
(2, 'ewc', 'national game', 'judo', 'mite', '22/01/2022', '246119.jpg'),
(11, 'WWE', 'Wrestling', 'Boxing', 'mite', '2022-02-03', 'IMG-61f79e751c1909.44456360.jpg'),
(13, 'IPL', 'karate', 'Karate', 'eden gardens', '2022-03-26', 'IMG-623befb3932b57.48049252.jpg'),
(14, 'karate', 'wrwe', 'Karate', 'mangalore', '2021-08-24', 'IMG-623bfea8746371.84995845.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tour_regs`
--

CREATE TABLE `tour_regs` (
  `t_id` int(10) NOT NULL,
  `uname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour_regs`
--

INSERT INTO `tour_regs` (`t_id`, `uname`) VALUES
(1, 'John_smith'),
(1, 'swasthik _jain'),
(1, 'yash_ta'),
(2, 'John_smith'),
(3, 'John_smith'),
(4, 'John_smith'),
(6, 'John_smith'),
(11, 'John_smith'),
(13, 'John_smith');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_id`,`username`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`uId`,`acc_no`),
  ADD UNIQUE KEY `uId_UNIQUE` (`uId`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `staff_login`
--
ALTER TABLE `staff_login`
  ADD PRIMARY KEY (`user_id`,`username`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`use_id`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `tour_regs`
--
ALTER TABLE `tour_regs`
  ADD PRIMARY KEY (`t_id`,`uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `S_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `staff_login`
--
ALTER TABLE `staff_login`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_login`
--
ALTER TABLE `student_login`
  MODIFY `use_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2042191468;

--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;