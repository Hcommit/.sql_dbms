
-- 1. Create an employee table
CREATE TABLE employee (
    emp_no INT PRIMARY KEY,
    emp_name VARCHAR(30),
    job VARCHAR(20),
    salary DECIMAL(10,2),
    manager INT
);

-- 2. Add a commission column with domain
ALTER TABLE employee
ADD commission DECIMAL(10,2);

-- 3. Insert 5 records into the table
INSERT INTO employee VALUES
(101, 'Amit', 'Manager', 50000, 105, 5000),
(102, 'Rahul', 'Clerk', 25000, 101, 2000),
(103, 'Priya', 'Analyst', 40000, 101, 3000),
(104, 'Sneha', 'Developer', 35000, 105, 2500),
(105, 'Kiran', 'Director', 70000, NULL, 8000);

-- Display all records
SELECT * FROM employee;

-- 4. Update the job details of an employee
UPDATE employee
SET job = 'Senior Developer'
WHERE emp_no = 104;

-- Display updated records
SELECT * FROM employee;

-- 5. Rename the column employee name using ALTER
ALTER TABLE employee
RENAME COLUMN emp_name TO employee_name;

-- Display the table structure
DESC employee;

-- 6. Delete employee number 105
DELETE FROM employee
WHERE emp_no = 105;

-- Display the final records
SELECT * FROM employee;
