/*

INSERT INTO Department VALUES ('D01','Computer Science & Engineering','Block A');
INSERT INTO Department VALUES ('D02','AI & ML','Block B');
INSERT INTO Department VALUES ('D03','3D Animation & Graphics','Block C');
INSERT INTO Department VALUES ('D04','Electrical Engineering','Block D');
INSERT INTO Department VALUES ('D05','Mechanical Engineering','Block E');
INSERT INTO Department VALUES ('D06','Civil Engineering','Block F');
INSERT INTO Department VALUES ('D07','IT Engineering','Block G');
INSERT INTO Department VALUES ('D08','Electronics','Block H');
INSERT INTO Department VALUES ('D09','Data Science','Block I');
INSERT INTO Department VALUES ('D10','Robotics','Block J');


INSERT INTO Faculty VALUES ('F01','Prof. Murlidhar Prasad Singh (HoD)','Assistant Professor, HOD','singhmurlidhar@gmail.com','D01');
INSERT INTO Faculty VALUES ('F02','Prof. Md. Ehtashamoul Haque','Assistant Professor','ehtasham47@gmail.com','D01');
INSERT INTO Faculty VALUES ('F03','Prof. Arun Kumar','Assistant Professor (Guest)','arunkr75@gmail.com','D01');
INSERT INTO Faculty VALUES ('F04','Prof. Amit Kumar','Associate Professor','amitbcebhagalpur@gmail.com','D01');
INSERT INTO Faculty VALUES ('F05','Sujeet Kumar','Assistant Professor','ksujeet.cs@gmail.com','D02');
INSERT INTO Faculty VALUES ('F06','Prof. Praveen Kumar','Assistant Professor','manisha.ks241@gmail.com','D02');
INSERT INTO Faculty VALUES ('F07','Prof. Md. Izhar','Assistant Professor','akumar@bpmce.ac.in','D03');
INSERT INTO Faculty VALUES ('F08','Prof. Hare Krishna Mishra','Assistant Professor','hare.dbit@gmail.com','D04');
INSERT INTO Faculty VALUES ('F09','Prof. Ashish Kumar Suman','Assistant Professor','sumanashish.rkt@gmail.com','D04');
INSERT INTO Faculty VALUES ('F10','Prof. Kunal Kumar (HoD)','Assistant Professor & HOD','kunal1989kumar@gmail.com','D05');
INSERT INTO Faculty VALUES ('F11','Mr. Nishikant Kumar','Assistant Professor','nishikantbpmce32@gmail.com','D05');
INSERT INTO Faculty VALUES ('F12','Prof. A Kumar','Assistant Professor','a1@gmail.com','D06');
INSERT INTO Faculty VALUES ('F13','Prof. C Verma','Associate Professor','c3@gmail.com','D06');
INSERT INTO Faculty VALUES ('F14','Prof. D Sharma','Assistant Professor','d4@gmail.com','D03');
INSERT INTO Faculty VALUES ('F15','Prof. E Gupta','Assistant Professor','e5@gmail.com','D07');
INSERT INTO Faculty VALUES ('F16','Prof. F Yadav','Associate Professor','f6@gmail.com','D07');
INSERT INTO Faculty VALUES ('F17','Prof. G Mishra','Assistant Professor','g7@gmail.com','D08');
INSERT INTO Faculty VALUES ('F18','Prof. H Roy','Assistant Professor','h8@gmail.com','D09');
INSERT INTO Faculty VALUES ('F19','Prof. I Das','Associate Professor','i9@gmail.com','D10');
INSERT INTO Faculty VALUES ('F20','Prof. J Khan','Assistant Professor','j10@gmail.com','D10');


INSERT INTO Course VALUES ('C01','Data Structures',4,'D01','F01');
INSERT INTO Course VALUES ('C02','DBMS',4,'D01','F02');
INSERT INTO Course VALUES ('C03','OS',4,'D02','F03');
INSERT INTO Course VALUES ('C04','CN',4,'D03','F04');
INSERT INTO Course VALUES ('C05','SE',3,'D04','F05');
INSERT INTO Course VALUES ('C06','Mechanics',3,'D05','F06');
INSERT INTO Course VALUES ('C07','Thermodynamics',4,'D05','F06');
INSERT INTO Course VALUES ('C08','Structures',4,'D06','F07');
INSERT INTO Course VALUES ('C09','Electronics Basic',3,'D08','F09');
INSERT INTO Course VALUES ('C10','AI Basics',3,'D09','F10');



INSERT INTO Student VALUES ('S01','Rohit Kumar', TO_DATE('2004-01-10','YYYY-MM-DD'),'M','9000000001','D01');
INSERT INTO Student VALUES ('S02','Anjali Singh', TO_DATE('2004-02-15','YYYY-MM-DD'),'F','9000000002','D01');
INSERT INTO Student VALUES ('S03','Aman Verma', TO_DATE('2003-12-20','YYYY-MM-DD'),'M','9000000003','D01');
INSERT INTO Student VALUES ('S04','Neha Gupta', TO_DATE('2004-03-05','YYYY-MM-DD'),'F','9000000004','D02');
INSERT INTO Student VALUES ('S05','Rahul Yadav', TO_DATE('2003-11-11','YYYY-MM-DD'),'M','9000000005','D02');
INSERT INTO Student VALUES ('S06','Pooja Sharma', TO_DATE('2004-04-18','YYYY-MM-DD'),'F','9000000006','D03');
INSERT INTO Student VALUES ('S07','Vikas Patel', TO_DATE('2003-10-09','YYYY-MM-DD'),'M','9000000007','D03');
INSERT INTO Student VALUES ('S08','Kriti Mishra', TO_DATE('2004-05-22','YYYY-MM-DD'),'F','9000000008','D01');
INSERT INTO Student VALUES ('S09','Suresh Kumar', TO_DATE('2003-09-30','YYYY-MM-DD'),'M','9000000009','D04');
INSERT INTO Student VALUES ('S10','Nisha Rai', TO_DATE('2004-06-14','YYYY-MM-DD'),'F','9000000010','D04');
INSERT INTO Student VALUES ('S26','Akash Dubey', TO_DATE('2003-01-12','YYYY-MM-DD'),'M','9000000026','D01');
INSERT INTO Student VALUES ('S27','Riya Arora', TO_DATE('2004-02-18','YYYY-MM-DD'),'F','9000000027','D02');
INSERT INTO Student VALUES ('S28','Manish Pandey', TO_DATE('2003-03-22','YYYY-MM-DD'),'M','9000000028','D03');
INSERT INTO Student VALUES ('S29','Shalini Saxena', TO_DATE('2004-04-09','YYYY-MM-DD'),'F','9000000029','D04');
INSERT INTO Student VALUES ('S30','Naveen Mishra', TO_DATE('2003-05-15','YYYY-MM-DD'),'M','9000000030','D01');
INSERT INTO Student VALUES ('S31','Komal Bansal', TO_DATE('2004-06-20','YYYY-MM-DD'),'F','9000000031','D02');
INSERT INTO Student VALUES ('S32','Rohit Mishra', TO_DATE('2003-07-11','YYYY-MM-DD'),'M','9000000032','D03');
INSERT INTO Student VALUES ('S33','Ankita Tripathi', TO_DATE('2004-08-25','YYYY-MM-DD'),'F','9000000033','D04');
INSERT INTO Student VALUES ('S34','Saurabh Jain', TO_DATE('2003-09-13','YYYY-MM-DD'),'M','9000000034','D01');
INSERT INTO Student VALUES ('S35','Pallavi Kulkarni', TO_DATE('2004-10-07','YYYY-MM-DD'),'F','9000000035','D02');
INSERT INTO Student VALUES ('S36','Vivek Tandon', TO_DATE('2003-11-19','YYYY-MM-DD'),'M','9000000036','D03');
INSERT INTO Student VALUES ('S37','Neelam Rathi', TO_DATE('2004-12-02','YYYY-MM-DD'),'F','9000000037','D04');
INSERT INTO Student VALUES ('S38','Amit Kulkarni', TO_DATE('2003-01-28','YYYY-MM-DD'),'M','9000000038','D01');
INSERT INTO Student VALUES ('S39','Shreya Ghosh', TO_DATE('2004-02-14','YYYY-MM-DD'),'F','9000000039','D02');
INSERT INTO Student VALUES ('S40','Rakesh Yadav', TO_DATE('2003-03-06','YYYY-MM-DD'),'M','9000000040','D03');
INSERT INTO Student VALUES ('S41','Nidhi Kapoor', TO_DATE('2004-04-21','YYYY-MM-DD'),'F','9000000041','D04');
INSERT INTO Student VALUES ('S42','Alok Srivastava', TO_DATE('2003-05-17','YYYY-MM-DD'),'M','9000000042','D01');
INSERT INTO Student VALUES ('S43','Poonam Joshi', TO_DATE('2004-06-10','YYYY-MM-DD'),'F','9000000043','D02');
INSERT INTO Student VALUES ('S44','Siddharth Malhotra', TO_DATE('2003-07-03','YYYY-MM-DD'),'M','9000000044','D03');
INSERT INTO Student VALUES ('S45','Kavita Deshmukh', TO_DATE('2004-08-29','YYYY-MM-DD'),'F','9000000045','D04');


INSERT INTO Enrollment VALUES ('S01','C01',3,'A');
INSERT INTO Enrollment VALUES ('S02','C02',3,'B+');
INSERT INTO Enrollment VALUES ('S03','C03',4,'B');
INSERT INTO Enrollment VALUES ('S04','C04',3,'A-');
INSERT INTO Enrollment VALUES ('S05','C05',2,'B+');
INSERT INTO Enrollment VALUES ('S06','C06',2,'A');
INSERT INTO Enrollment VALUES ('S07','C07',3,'B');
INSERT INTO Enrollment VALUES ('S08','C08',4,'A-');
INSERT INTO Enrollment VALUES ('S09','C09',1,'B+');
INSERT INTO Enrollment VALUES ('S10','C10',1,'A');


*/

SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
SELECT * FROM Enrollment;
