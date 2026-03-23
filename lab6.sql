
SELECT COUNT(*) AS Total_Students FROM Student;
SELECT COUNT(*) AS Total_Faculty FROM Faculty;
SELECT COUNT(*) AS Total_Courses FROM Course;
SELECT MAX(Credits) AS Max_Credits FROM Course;
SELECT MIN(Credits) AS Min_Credits FROM Course;




SELECT DEPT_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY DEPT_ID;

SELECT DEPT_ID, COUNT(*) AS Total_Faculty
FROM Faculty
GROUP BY DEPT_ID;

SELECT DEPT_ID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DEPT_ID;

SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester;

SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade;




SELECT DEPT_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY DEPT_ID
HAVING COUNT(*) > 3;

SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

SELECT DEPT_ID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DEPT_ID
HAVING COUNT(*) > 1;





SELECT COURSE_ID, COUNT(STUDENT_ID) AS Enrolled_Students
FROM Enrollment
GROUP BY COURSE_ID;

SELECT c.COURSE_NAME, COUNT(e.STUDENT_ID) AS Enrolled_Students
FROM Course c
INNER JOIN Enrollment e
ON c.COURSE_ID = e.COURSE_ID
GROUP BY c.COURSE_NAME;


SELECT DEPT_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY DEPT_ID;

SELECT f.FACULTY_NAME, COUNT(c.COURSE_ID) AS Total_Courses
FROM Faculty f
INNER JOIN Course c
ON f.FACULTY_ID = c.FACULTY_ID
GROUP BY f.FACULTY_NAME;





SELECT c.COURSE_NAME, MAX(e.Grade) AS Max_Grade
FROM Course c
INNER JOIN Enrollment e
ON c.COURSE_ID = e.COURSE_ID
GROUP BY c.COURSE_NAME;

SELECT dept_id, COUNT(*) AS Total_Courses
FROM Course
GROUP BY dept_id;

SELECT Semester, COUNT(student_id) AS Total_Students
FROM Enrollment
GROUP BY Semester;

SELECT course_id, COUNT(student_id) AS Total_Students
FROM Enrollment
GROUP BY course_id
HAVING COUNT(student_id) > 2;