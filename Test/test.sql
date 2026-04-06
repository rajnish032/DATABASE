
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50)
);

CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50),
    experience INT
);

CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

CREATE TABLE Bill (
    bill_id INT PRIMARY KEY,
    appointment_id INT,
    amount INT,
    payment_status VARCHAR(20),
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);

INSERT INTO Patient VALUES
(1, 'Rahul Sharma', 35, 'Male', 'Delhi'),
(2, 'Anita Verma', 28, 'Female', 'Mumbai'),
(3, 'Suresh Kumar', 42, 'Male', 'Chennai'),
(4, 'Priya Singh', 30, 'Female', 'Kolkata'),
(5, 'Amit Das', 50, 'Male', 'Bhubaneswar');

INSERT INTO Doctor VALUES
(101, 'Dr. Mehta', 'Cardiology', 15),
(102, 'Dr. Rao', 'Orthopedics', 10),
(103, 'Dr. Sen', 'Neurology', 12),
(104, 'Dr. Gupta', 'Dermatology', 8),
(105, 'Dr. Iyer', 'General Medicine', 20);

INSERT INTO Appointment VALUES
(1001, 1, 101, TO_DATE('2024-02-10','YYYY-MM-DD')),
(1002, 2, 105, TO_DATE('2024-02-11','YYYY-MM-DD')),
(1003, 3, 102, TO_DATE('2024-02-12','YYYY-MM-DD')),
(1004, 4, 103, TO_DATE('2024-02-13','YYYY-MM-DD')),
(1005, 5, 101, TO_DATE('2024-02-14','YYYY-MM-DD'));

INSERT INTO Bill VALUES
(5001, 1001, 2000, 'Paid'),
(5002, 1002, 1500, 'Pending'),
(5003, 1003, 3000, 'Paid'),
(5004, 1004, 4000, 'Paid'),
(5005, 1005, 2500, 'Pending');


SELECT p.patient_name, d.doctor_name, a.appointment_date
FROM Appointment a
JOIN Patient p 
    ON a.patient_id = p.patient_id   -- match appointment with patient
JOIN Doctor d 
    ON a.doctor_id = d.doctor_id;    -- match appointment with doctor
    
SELECT p.patient_name
FROM Patient p
JOIN Appointment a 
    ON p.patient_id = a.patient_id   -- link patient to appointment
JOIN Doctor d 
    ON a.doctor_id = d.doctor_id     -- link appointment to doctor
WHERE d.specialization = 'Cardiology';  -- filter only cardiology

SELECT p.patient_name, d.doctor_name, b.amount
FROM Bill b
JOIN Appointment a 
    ON b.appointment_id = a.appointment_id   -- bill linked to appointment
JOIN Patient p 
    ON a.patient_id = p.patient_id           -- appointment → patient
JOIN Doctor d 
    ON a.doctor_id = d.doctor_id             -- appointment → doctor
WHERE b.payment_status = 'Paid';             -- only paid bills

SELECT d.doctor_name, SUM(b.amount) AS total_bill
FROM Doctor d
JOIN Appointment a 
    ON d.doctor_id = a.doctor_id     -- doctor → appointments
JOIN Bill b 
    ON a.appointment_id = b.appointment_id  -- appointment → bill
WHERE b.payment_status = 'Paid'      -- consider only paid money
GROUP BY d.doctor_name;              -- group per doctor

SELECT p.patient_name
FROM Patient p
JOIN Appointment a 
    ON p.patient_id = a.patient_id
JOIN Bill b 
    ON a.appointment_id = b.appointment_id
WHERE b.payment_status = 'Pending';  -- unpaid bills

SELECT DISTINCT d.doctor_name
FROM Doctor d
JOIN Appointment a 
    ON d.doctor_id = a.doctor_id
JOIN Patient p 
    ON a.patient_id = p.patient_id
WHERE p.age > 40;   -- condition on patient age


SELECT d.doctor_name, COUNT(a.appointment_id) AS total_appointments
FROM Doctor d
LEFT JOIN Appointment a 
    ON d.doctor_id = a.doctor_id   -- include doctors even if no appointments
GROUP BY d.doctor_name;
