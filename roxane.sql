-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for roxane
CREATE DATABASE IF NOT EXISTS `roxane` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `roxane`;

-- Dumping structure for table roxane.attendance
CREATE TABLE IF NOT EXISTS `attendance` (
  `AttendanceID` int NOT NULL,
  `EmployeeID` varchar(50) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  `TimeIn` varchar(50) DEFAULT NULL,
  `TimeOut` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AttendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table roxane.attendance: ~0 rows (approximately)
INSERT INTO `attendance` (`AttendanceID`, `EmployeeID`, `Date`, `TimeIn`, `TimeOut`) VALUES
	(1, '001', '07-01-2026', '8:00 AM', '5:00 PM'),
	(2, '002', '07-01-2026', '8:15 AM', '5:15 PM');

-- Dumping structure for table roxane.department
CREATE TABLE IF NOT EXISTS `department` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table roxane.department: ~0 rows (approximately)
INSERT INTO `department` (`DepartmentID`, `DepartmentName`) VALUES
	(1, 'Finance'),
	(2, 'Human Resources');

-- Dumping structure for table roxane.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `EmployeeID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `DepartmentID` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table roxane.employee: ~2 rows (approximately)
INSERT INTO `employee` (`EmployeeID`, `FirstName`, `LastName`, `Position`, `DepartmentID`, `username`, `password`) VALUES
	(1, 'Carla', 'Santos', 'Accountant', 'D01', 'roxane', '1234'),
	(2, 'Jack', 'Ramos', 'HR Assistant', 'D02', 'irish', '12345');

-- Dumping structure for table roxane.leavee
CREATE TABLE IF NOT EXISTS `leavee` (
  `LeaveID` int NOT NULL,
  `EmployeeID` varchar(50) DEFAULT NULL,
  `LeaveType` varchar(50) DEFAULT NULL,
  `StartDate` varchar(50) DEFAULT NULL,
  `EndDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`LeaveID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table roxane.leavee: ~0 rows (approximately)
INSERT INTO `leavee` (`LeaveID`, `EmployeeID`, `LeaveType`, `StartDate`, `EndDate`) VALUES
	(1, '01', 'Sick Leave', '2026-07-01', '2026-07-10'),
	(2, '02', 'Vacation Leave', '2026-07-05', '2026-07-25');

-- Dumping structure for table roxane.payroll
CREATE TABLE IF NOT EXISTS `payroll` (
  `PayrollID` int NOT NULL,
  `EmployeeID` varchar(50) DEFAULT NULL,
  `BasicSalary` varchar(50) DEFAULT NULL,
  `Allowance` varchar(50) DEFAULT NULL,
  `NetPay` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PayrollID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table roxane.payroll: ~0 rows (approximately)
INSERT INTO `payroll` (`PayrollID`, `EmployeeID`, `BasicSalary`, `Allowance`, `NetPay`) VALUES
	(1, '001', '30,000', '2,000', '32,000'),
	(2, '002', '22,000', '1,500', '23,000');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
