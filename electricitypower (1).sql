-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 08:11 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricitypower`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeid` int(10) NOT NULL,
  `employeename` varchar(20) NOT NULL,
  `employeedob` varchar(15) NOT NULL,
  `employeeaddress` varchar(50) NOT NULL,
  `employeegender` varchar(10) NOT NULL,
  `employeesalary` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymanage`
--

CREATE TABLE `paymanage` (
  `pID` int(6) NOT NULL,
  `pAccNo` varchar(200) NOT NULL,
  `pCus` varchar(200) NOT NULL,
  `pDate` varchar(200) NOT NULL,
  `pAmount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymanage`
--

INSERT INTO `paymanage` (`pID`, `pAccNo`, `pCus`, `pDate`, `pAmount`) VALUES
(1, 'RasikaP', '1234567890st2', '2022.04.03', '10000'),
(2, '0101092983', 'Rasika', '2022.02.02', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `powermanage`
--

CREATE TABLE `powermanage` (
  `pdID` int(6) NOT NULL,
  `pdCusName` varchar(200) NOT NULL,
  `pdAccNo` varchar(200) NOT NULL,
  `psUnit` varchar(200) NOT NULL,
  `pdDate` varchar(200) NOT NULL,
  `pdPay` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `powermanage`
--

INSERT INTO `powermanage` (`pdID`, `pdCusName`, `pdAccNo`, `psUnit`, `pdDate`, `pdPay`) VALUES
(1, 'Kaveesha', '99992', '120', '2022.04.03', '10000'),
(2, 'Kaveesha', '00001', '1300', '2022.02.02', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(100) NOT NULL,
  `acnumber` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indexes for table `paymanage`
--
ALTER TABLE `paymanage`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `powermanage`
--
ALTER TABLE `powermanage`
  ADD PRIMARY KEY (`pdID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymanage`
--
ALTER TABLE `paymanage`
  MODIFY `pID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `powermanage`
--
ALTER TABLE `powermanage`
  MODIFY `pdID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
