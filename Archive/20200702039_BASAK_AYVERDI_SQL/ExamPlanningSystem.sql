-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2024 at 08:33 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ExamPlanningSystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `AssistantCourse`
--

CREATE TABLE `AssistantCourse` (
  `AssistantCourseID` int NOT NULL,
  `AssistantID` int DEFAULT NULL,
  `CourseID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AssistantCourse`
--

INSERT INTO `AssistantCourse` (`AssistantCourseID`, `AssistantID`, `CourseID`) VALUES
(2, 1, 2),
(3, 1, 2),
(4, 1, 2),
(20, 1, 2),
(21, 1, 1),
(22, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `AssistantExamAssignment`
--

CREATE TABLE `AssistantExamAssignment` (
  `AssignmentID` int NOT NULL,
  `ExamID` int DEFAULT NULL,
  `AssistantID` int DEFAULT NULL,
  `Score` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AssistantExamAssignment`
--

INSERT INTO `AssistantExamAssignment` (`AssignmentID`, `ExamID`, `AssistantID`, `Score`) VALUES
(29, 5, 6, 0),
(30, 5, 6, 0),
(31, 5, 6, 0),
(32, 5, 6, 0),
(33, 5, 6, 0),
(34, 5, 6, 0),
(35, 5, 6, 0),
(36, 5, 6, 0),
(37, 7, 6, 0),
(38, 7, 6, 0),
(39, 7, 6, 0),
(40, 7, 6, 0),
(41, 7, 6, 0),
(42, 7, 6, 0),
(43, 7, 6, 0),
(44, 7, 6, 0),
(45, 7, 6, 0),
(46, 7, 6, 0),
(47, 7, 6, 0),
(48, 7, 6, 0),
(49, 7, 6, 0),
(50, 6, 6, 0),
(51, 4, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `CourseID` int NOT NULL,
  `CourseName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `DepartmentID` int DEFAULT NULL,
  `Slot1_Day` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Slot1_StartTime` time DEFAULT NULL,
  `Slot1_EndTime` time DEFAULT NULL,
  `Slot2_Day` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Slot2_StartTime` time DEFAULT NULL,
  `Slot2_EndTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`CourseID`, `CourseName`, `DepartmentID`, `Slot1_Day`, `Slot1_StartTime`, `Slot1_EndTime`, `Slot2_Day`, `Slot2_StartTime`, `Slot2_EndTime`) VALUES
(1, 'CSE 331', 1, 'Monday', '13:00:00', '14:00:00', 'Wednesday', '15:00:00', '16:00:00'),
(2, 'Thermodynamics', 2, 'Tuesday', '09:00:00', '10:00:00', 'Thursday', '11:00:00', '12:00:00'),
(3, 'Quantum Mechanics', 3, 'Wednesday', '13:00:00', '14:00:00', 'Friday', '10:00:00', '11:00:00'),
(4, 'Organic Chemistry', 4, 'Thursday', '08:00:00', '09:00:00', 'Monday', '10:00:00', '11:00:00'),
(5, 'World History', 5, 'Friday', '14:00:00', '15:00:00', 'Tuesday', '09:00:00', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `FacultyID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`DepartmentID`, `DepartmentName`, `FacultyID`) VALUES
(1, 'Computer Science', 1),
(2, 'Mechanical Engineering', 1),
(3, 'Physics', 2),
(4, 'Biology', 2),
(5, 'History', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `EmployeeID` int NOT NULL,
  `FirstName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `LastName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Role` enum('Assistant','Secretary','Head of Department','Head of Secretary','Dean') COLLATE utf8mb4_general_ci NOT NULL,
  `DepartmentID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`EmployeeID`, `FirstName`, `LastName`, `Role`, `DepartmentID`) VALUES
(1, 'Basak', 'Ayverdi', 'Assistant', 1),
(2, 'Firat', 'Yildirim', 'Secretary', 2),
(3, 'Kara', 'Kurt', 'Head of Department', 3),
(4, 'Dilan', 'Sahin', 'Head of Secretary', 4),
(5, 'Justin', 'Bieber', 'Dean', 5),
(6, 'Aylin', 'Cebeci', 'Assistant', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Exam`
--

CREATE TABLE `Exam` (
  `ExamID` int NOT NULL,
  `ExamName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `CourseID` int DEFAULT NULL,
  `ExamDate` date NOT NULL,
  `ExamTime` time NOT NULL,
  `NumOfClasses` int NOT NULL,
  `FacultyID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Exam`
--

INSERT INTO `Exam` (`ExamID`, `ExamName`, `CourseID`, `ExamDate`, `ExamTime`, `NumOfClasses`, `FacultyID`) VALUES
(1, 'Operating Systems Midterm', 1, '2024-06-15', '10:00:00', 3, 1),
(2, 'Thermodynamics Final', 2, '2024-06-20', '14:00:00', 2, 1),
(3, 'Quantum Mechanics Quiz', 3, '2024-06-25', '09:00:00', 1, 2),
(4, 'Biology Midterm', 4, '2024-06-30', '11:00:00', 2, 2),
(5, 'World History Final', 5, '2024-07-05', '13:00:00', 3, 3),
(6, 'Midterm', 2, '2024-06-20', '10:00:00', 1, 1),
(7, 'Midterm II', 2, '2024-06-30', '12:00:00', 1, 1),
(14, 'Arasinav', 2, '2024-06-30', '10:20:00', 1, 1),
(15, 'arasinav2', 2, '2024-06-20', '13:00:00', 1, 1),
(16, 'arasinav3', 2, '2024-06-20', '12:00:00', 1, 1),
(17, 'arasinav5', 2, '2024-06-30', '14:00:00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Faculty`
--

CREATE TABLE `Faculty` (
  `FacultyID` int NOT NULL,
  `FacultyName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Faculty`
--

INSERT INTO `Faculty` (`FacultyID`, `FacultyName`) VALUES
(1, 'Engineering'),
(2, 'Science'),
(3, 'Arts'),
(4, 'Business'),
(5, 'Law');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AssistantCourse`
--
ALTER TABLE `AssistantCourse`
  ADD PRIMARY KEY (`AssistantCourseID`),
  ADD KEY `AssistantID` (`AssistantID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `AssistantExamAssignment`
--
ALTER TABLE `AssistantExamAssignment`
  ADD PRIMARY KEY (`AssignmentID`),
  ADD KEY `ExamID` (`ExamID`),
  ADD KEY `AssistantID` (`AssistantID`);

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`DepartmentID`),
  ADD KEY `FacultyID` (`FacultyID`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `Exam`
--
ALTER TABLE `Exam`
  ADD PRIMARY KEY (`ExamID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `FacultyID` (`FacultyID`);

--
-- Indexes for table `Faculty`
--
ALTER TABLE `Faculty`
  ADD PRIMARY KEY (`FacultyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AssistantCourse`
--
ALTER TABLE `AssistantCourse`
  MODIFY `AssistantCourseID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `AssistantExamAssignment`
--
ALTER TABLE `AssistantExamAssignment`
  MODIFY `AssignmentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `Course`
--
ALTER TABLE `Course`
  MODIFY `CourseID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Department`
--
ALTER TABLE `Department`
  MODIFY `DepartmentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `EmployeeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Exam`
--
ALTER TABLE `Exam`
  MODIFY `ExamID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Faculty`
--
ALTER TABLE `Faculty`
  MODIFY `FacultyID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AssistantCourse`
--
ALTER TABLE `AssistantCourse`
  ADD CONSTRAINT `assistantcourse_ibfk_1` FOREIGN KEY (`AssistantID`) REFERENCES `Employee` (`EmployeeID`),
  ADD CONSTRAINT `assistantcourse_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `Course` (`CourseID`);

--
-- Constraints for table `AssistantExamAssignment`
--
ALTER TABLE `AssistantExamAssignment`
  ADD CONSTRAINT `assistantexamassignment_ibfk_1` FOREIGN KEY (`ExamID`) REFERENCES `Exam` (`ExamID`),
  ADD CONSTRAINT `assistantexamassignment_ibfk_2` FOREIGN KEY (`AssistantID`) REFERENCES `Employee` (`EmployeeID`);

--
-- Constraints for table `Course`
--
ALTER TABLE `Course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `Department` (`DepartmentID`);

--
-- Constraints for table `Department`
--
ALTER TABLE `Department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`FacultyID`) REFERENCES `Faculty` (`FacultyID`);

--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `Department` (`DepartmentID`);

--
-- Constraints for table `Exam`
--
ALTER TABLE `Exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `Course` (`CourseID`),
  ADD CONSTRAINT `exam_ibfk_2` FOREIGN KEY (`FacultyID`) REFERENCES `Faculty` (`FacultyID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
