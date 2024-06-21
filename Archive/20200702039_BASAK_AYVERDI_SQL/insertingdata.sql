
INSERT INTO Faculty (FacultyName) VALUES 
('Engineering'),
('Science'),
('Arts'),
('Business'),
('Law');

INSERT INTO Department (DepartmentName, FacultyID) VALUES 
('Computer Science', 1),
('Mechanical Engineering', 1),
('Physics', 2),
('Biology', 2),
('History', 3);


INSERT INTO Course (CourseName, DepartmentID) VALUES 
('CSE 331', 1),
('Thermodynamics', 2),
('Quantum Mechanics', 3),
('Organic Chemistry', 4),
('World History', 5);


INSERT INTO Employee (FirstName, LastName, Role, DepartmentID) VALUES 
('Basak', 'Ayverdi', 'Assistant', 1),
('Firat', 'Yildirim', 'Secretary', 2),
('Kara', 'Kurt', 'Head of Department', 3),
('Dilan', 'Sahin', 'Head of Secretary', 4),
('Justin', 'Bieber', 'Dean', 5),
('Aylin', 'Cebeci', 'Assistant', 1);

INSERT INTO Exam (ExamName, CourseID, ExamDate, ExamTime, NumOfClasses, FacultyID) VALUES 
('CSE 331 Midterm', 1, '2024-06-15', '10:00:00', 3, 1),
('Thermodynamics Final', 2, '2024-06-20', '14:00:00', 2, 1),
('Quantum Mechanics Quiz', 3, '2024-06-25', '09:00:00', 1, 2),
('Biology Midterm', 4, '2024-06-30', '11:00:00', 2, 2),
('World History Final', 5, '2024-07-05', '13:00:00', 3, 3);


INSERT INTO AssistantExamAssignment (ExamID, AssistantID, Score) VALUES 
(1, 1, 85),
(2, 1, 90),
(3, 1, 88),
(4, 1, 92),
(5, 1, 87);

UPDATE `Course` SET 
  `Slot1_Day` = 'Monday', `Slot1_StartTime` = '13:00:00', `Slot1_EndTime` = '14:00:00',
  `Slot2_Day` = 'Wednesday', `Slot2_StartTime` = '15:00:00', `Slot2_EndTime` = '16:00:00'
WHERE `CourseID` = 1;

UPDATE `Course` SET 
  `Slot1_Day` = 'Tuesday', `Slot1_StartTime` = '09:00:00', `Slot1_EndTime` = '10:00:00',
  `Slot2_Day` = 'Thursday', `Slot2_StartTime` = '11:00:00', `Slot2_EndTime` = '12:00:00'
WHERE `CourseID` = 2;

UPDATE `Course` SET 
  `Slot1_Day` = 'Wednesday', `Slot1_StartTime` = '13:00:00', `Slot1_EndTime` = '14:00:00',
  `Slot2_Day` = 'Friday', `Slot2_StartTime` = '10:00:00', `Slot2_EndTime` = '11:00:00'
WHERE `CourseID` = 3;

UPDATE `Course` SET 
  `Slot1_Day` = 'Thursday', `Slot1_StartTime` = '08:00:00', `Slot1_EndTime` = '09:00:00',
  `Slot2_Day` = 'Monday', `Slot2_StartTime` = '10:00:00', `Slot2_EndTime` = '11:00:00'
WHERE `CourseID` = 4;

UPDATE `Course` SET 
  `Slot1_Day` = 'Friday', `Slot1_StartTime` = '14:00:00', `Slot1_EndTime` = '15:00:00',
  `Slot2_Day` = 'Tuesday', `Slot2_StartTime` = '09:00:00', `Slot2_EndTime` = '10:00:00'
WHERE `CourseID` = 5;

