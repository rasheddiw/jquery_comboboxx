-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 09:29 AM
-- Server version: 10.4.17-MariaDB-log
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `depart_id` int(6) NOT NULL,
  `depart_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`depart_id`, `depart_name`) VALUES
(1, 'Marketing'),
(2, 'Operations'),
(3, 'Finance'),
(4, 'Sales'),
(5, 'HR'),
(6, 'Purchase');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `desig_id` int(6) NOT NULL,
  `desig_name` varchar(40) NOT NULL,
  `depart_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`desig_id`, `desig_name`, `depart_id`) VALUES
(1, 'Cheif Marketing Officer', 1),
(2, 'Director of Marketing', 1),
(3, 'Market Analyst', 1),
(4, 'Cheif of Operation Officer', 2),
(5, 'Operation Manager', 2),
(6, 'Entry Operator', 2),
(7, 'Finance Directer', 3),
(8, 'Finance Manager', 3),
(9, 'Sales manager', 4),
(10, 'Sales Assistence', 4),
(11, 'Cheif Human Resource Manager', 5),
(12, 'Interviewer', 5),
(13, 'Purchase Manager', 6),
(14, 'Inventory Manager', 6);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `emp_address` text NOT NULL,
  `desig_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `phone`, `email`, `emp_address`, `desig_id`) VALUES
(1, 'Manik Miah', '01711454785', 'manik@gmail.com', 'Dhaka, Kolabagan', 1),
(2, 'Kamal Ahmed', '01711254785', 'kml112@gmail.com', 'Dhaka, Mirpur', 1),
(3, 'Liakat Hossain', '01819874585', 'liakot@gmail.com', 'Dhaka, Arambagh', 2),
(4, 'Sirajul Islam', '01911254478', 'siraj@yahoo.com', 'Chittagong, Bohaddar Hat', 2),
(5, 'Ramesh', '01712541478', 'ramesh_mm@gmail.com', 'Chittagong, Satkania', 3),
(6, 'Sorol Miah', '01758451258', 'sorol@gmail.com', 'Dhaka, Mirpur', 3),
(7, 'Kaji Din Islam', '01819845878', 'dinislam@gmail.com', 'Dhaka, Kakrail', 3),
(8, 'Kamal Ahmed', '01711458745', 'kamalahmed@gmail.com', 'Comilla, Chartha', 4),
(9, 'Jalal Uddin', '01924778547', 'jalal@yahoo.com', 'Dhaka, Adabor', 5),
(10, 'Sarafat Hossain', '01712587487', 'sarafat@yahoo.com', 'Comilla, Jhawtala', 5),
(11, 'Kamini Roy', '01911254785', 'kamini@gmail.com', 'Sylhet, Ambarkhana', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(6) NOT NULL,
  `order_customer_name` varchar(30) NOT NULL,
  `order_item` varchar(30) NOT NULL,
  `order_value` double(12,2) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_customer_name`, `order_item`, `order_value`, `order_date`) VALUES
(1, 'Kamal Ahmed', 'Shuttering Plywood', 1500.00, '2022-05-12'),
(2, 'Hasnuzzaman', 'Almunium Heavy Windows', 2000.00, '2022-06-08'),
(3, 'Md. Ain Uddin', 'Plaster of Paris', 150.00, '2022-06-23'),
(4, 'Kamal Uddin Khandokar', 'Spin Diller Machine', 450.00, '2022-07-07'),
(5, 'Jalal Ahmed', 'Shopping Trolly', 140.00, '2022-07-09'),
(6, 'Poly Khandokar', 'CCTV Cameras', 1200.00, '2022-06-16'),
(7, 'Hasan Jahir', 'Truck Tires', 500.00, '2022-06-13'),
(8, 'Jamil Ahmed', 'Glass Block', 200.00, '2022-08-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`depart_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`desig_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `depart_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `desig_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
