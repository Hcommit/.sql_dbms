CREATE DATABASE IF NOT EXISTS Lab_Assistant;
CREATE TABLE Assist_Lab (    id INT ,    name VARCHAR(50),    salary INT,    dept VARCHAR(10));

INSERT INTO Assist_Lab VALUES 
(1, 'Arun', 30000, 'ISE'), 
(2, 'Priya', 32000, 'ISE'), 
(3, 'Raju', 45000, 'CSE'), 
(4, 'Hardeep', 47000, 'CSE'), 
(5, 'Zerko', 35000, 'AIML'), 
(6, 'Tanush', 55000, 'AIML'), 
(7, 'Archit', 25000, 'CV'), 
(8, 'Archit', 25000, 'CV'), 
(9, 'Raj', 75000, 'MECH');

SELECT * FROM Assist_Lab

SELECT * FROM Assist_Lab WHERE dept = 'CSE' AND salary > 30000;

 SELECT * FROM Assist_Lab ORDER BY salary ASC;