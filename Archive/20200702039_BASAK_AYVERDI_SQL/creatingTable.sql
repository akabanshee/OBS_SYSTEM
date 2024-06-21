

-- Table for Faculty
CREATE TABLE Faculty (
    FacultyID INT AUTO_INCREMENT PRIMARY KEY,
    FacultyName VARCHAR(100) NOT NULL
);

-- Table for Department
CREATE TABLE Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    FacultyID INT,
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

-- Table for Course
CREATE TABLE Course (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Table for Employee
CREATE TABLE Employee (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Role ENUM('Assistant', 'Secretary', 'Head of Department', 'Head of Secretary', 'Dean') NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Table for Exam
CREATE TABLE Exam (
    ExamID INT AUTO_INCREMENT PRIMARY KEY,
    ExamName VARCHAR(100) NOT NULL,
    CourseID INT,
    ExamDate DATE NOT NULL,
    ExamTime TIME NOT NULL,
    NumOfClasses INT NOT NULL,
    FacultyID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

-- Table for AssistantExamAssignment
CREATE TABLE AssistantExamAssignment (
    AssignmentID INT AUTO_INCREMENT PRIMARY KEY,
    ExamID INT,
    AssistantID INT,
    Score INT DEFAULT 0,
    FOREIGN KEY (ExamID) REFERENCES Exam(ExamID),
    FOREIGN KEY (AssistantID) REFERENCES Employee(EmployeeID)
);

