
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;
-- Create a table
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample records
INSERT INTO employees (name, email, department, salary, hire_date)
VALUES
    ('Hardik Patel', 'hardik@example.com', 'Engineering', 55000.00, '2023-01-15'),
    ('Priya Shah', 'priya@example.com', 'Marketing', 48000.00, '2022-08-01'),
    ('Aman Verma', 'aman@example.com', 'Sales', 42000.00, '2024-03-10');

SELECT * FROM employees;