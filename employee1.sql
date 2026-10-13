-- 1. Create Employee Table

CREATE TABLE employee (
    empno NUMBER,
    empname VARCHAR2(30),
    job VARCHAR2(20),
    mgr NUMBER,
    sal NUMBER(10,2),
    commission NUMBER(10,2)
);

-- Insert Three Records

INSERT INTO employee VALUES (101, 'Arun', 'Manager', NULL, 50000, 5000);
INSERT INTO employee VALUES (102, 'Rahul', 'Clerk', 101, 25000, 2000);
INSERT INTO employee VALUES (103, 'Priya', 'Analyst', 101, 35000, 3000);

SELECT * FROM employee;

-- Rollback and Check Result

ROLLBACK;

SELECT * FROM employee;


-- 2. Add Primary Key and NOT NULL Constraints

ALTER TABLE employee
ADD CONSTRAINT emp_pk PRIMARY KEY (empno);

ALTER TABLE employee
MODIFY (
    empname NOT NULL,
    job NOT NULL,
    sal NOT NULL
);

DESC employee;


-- 3. Insert NULL Values and Verify the Result

-- This statement fails because empno is a primary key
INSERT INTO employee
VALUES (NULL, 'Kiran', 'Clerk', 101, 20000, 1000);

-- This statement fails because empname is NOT NULL
INSERT INTO employee
VALUES (104, NULL, 'Clerk', 101, 20000, 1000);

-- This statement succeeds because commission allows NULL
INSERT INTO employee
VALUES (104, 'Kiran', 'Clerk', 101, 20000, NULL);

SELECT * FROM employee;


-- 4. Create a User and Grant Permissions

CREATE USER student IDENTIFIED BY student123;

GRANT ALL PRIVILEGES ON employee TO student;
