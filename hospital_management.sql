-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 04:49 PM
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
-- Database: `hospital management`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `ID` int(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Specialization` varchar(20) NOT NULL,
  `Joining_Date` date NOT NULL,
  `Salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`ID`, `Name`, `Contact`, `Specialization`, `Joining_Date`, `Salary`) VALUES
(101, 'jade weston', 8745963458, 'brain', '2022-12-02', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `for_contact`
--

CREATE TABLE `for_contact` (
  `S.No.` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email_ID` varchar(30) NOT NULL,
  `Hospital_Name` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Pin_Code` int(15) NOT NULL,
  `Country_code` int(5) NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `Query` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `for_contact`
--

INSERT INTO `for_contact` (`S.No.`, `Name`, `Email_ID`, `Hospital_Name`, `Address`, `City`, `State`, `Pin_Code`, `Country_code`, `MobileNumber`, `Query`) VALUES
(2, 'DHRUV HALDWANI', 'dhruvhaldwani5@gmail.com', 'Aiims, INDIA', 'St No. 18\r\nK-22/17-A', 'North East Delhi', 'Delhi', 110053, 91, '4587961478', 'what is the price of the services.'),
(3, 'Dilip Kumar', 'dilipkumar@gmail.com', 'Rajiv Gandhi Hospital', 'Dilshad Garden', 'Delhi', 'Delhi', 1100093, 91, '8596473158', 'what is the time period of lease.');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` int(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Age` int(3) NOT NULL,
  `Treatment` varchar(30) NOT NULL,
  `Room_No` int(5) NOT NULL,
  `Admit_Date` date NOT NULL,
  `Discharge_Date` date NOT NULL,
  `Doctor_Assigned` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `Name`, `Age`, `Treatment`, `Room_No`, `Admit_Date`, `Discharge_Date`, `Doctor_Assigned`) VALUES
(202, 'Dilip sharma', 22, 'eye', 65, '2022-12-11', '2022-12-13', 'maria');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S.No.` int(11) NOT NULL,
  `Hospital_Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Country_Code` int(5) NOT NULL,
  `Mobile_No.` bigint(20) NOT NULL,
  `Link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S.No.`, `Hospital_Name`, `Username`, `Password`, `Address`, `Country_Code`, `Mobile_No.`, `Link`) VALUES
(8, 'krishan hospital', 'dhruvhaldwani5@gmail.com ', 'dhruv', 'St No. 18\r\nK-22/17-A', 91, 8527426617, 'view.php');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Contact` (`Contact`);

--
-- Indexes for table `for_contact`
--
ALTER TABLE `for_contact`
  ADD PRIMARY KEY (`S.No.`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `UNIQUE` (`S.No.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `for_contact`
--
ALTER TABLE `for_contact`
  MODIFY `S.No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S.No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
