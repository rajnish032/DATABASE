/*
CREATE TABLE Students (
  RollNo INT,
  Name VARCHAR(50),
  Dept VARCHAR(20),
  Age INT,
  Phone VARCHAR(15)
);

-- 4. Create Course table
CREATE TABLE Courses (
  CourseID INT,
  CourseName VARCHAR(50),
  Credits INT
);


ALTER TABLE Students ADD City VARCHAR(50);
ALTER TABLE Students ADD Semester INT;
ALTER TABLE Students RENAME COLUMN Phone TO MobileNo;

DROP TABLE Courses;



INSERT INTO Students (RollNo, Name, Dept, Age, MobileNo, City, Semester) VALUES
(101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 3),
(102, 'Amit', 'CSE', 21, '9876543211', 'Mumbai', 5),
(103, 'Neha', 'ECE', 19, '9876543212', 'Patna', 2),
(104, 'Priya', 'ME', 22, '9876543213', 'Kolkata', 7),
(105, 'Rohit', 'CSE', 23, '9876543214', 'Bhopal', 8);


*/

-- Display

SELECT * FROM Students;

--Display RollNo and Name only
SELECT RollNo, Name FROM Students;
-- Students from CSE
SELECT * FROM Students WHERE Dept = 'CSE';
--Students with age > 20
SELECT * FROM Students WHERE Age > 20;
--Update department of RollNo = 101 to ECE
UPDATE Students SET Dept = 'ECE' WHERE RollNo = 101;
--Update city of Rahul to Patna
UPDATE Students SET City = 'Patna' WHERE Name = 'Rahul';
--Increase age of all students by 1
UPDATE Students SET Age = Age + 1;
--Delete student with RollNo = 105
DELETE FROM Students WHERE RollNo = 105;
--Delete all
DELETE FROM Students;