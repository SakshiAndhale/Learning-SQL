-- Step 1: Create the Database
CREATE DATABASE IF NOT EXISTS EmployeeManagement;
USE EmployeeManagement;

-- Step 2: Create Tables

-- Create departments table
CREATE TABLE IF NOT EXISTS departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- Create employees table
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    salary DECIMAL(8, 2) NOT NULL,
    manager_id INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Step 3: Insert Data

-- Insert data into departments table
INSERT INTO departments (department_id, department_name) VALUES 
(1, 'HR') ON DUPLICATE KEY UPDATE department_name='HR',
(2, 'IT') ON DUPLICATE KEY UPDATE department_name='IT',
(3, 'Finance') ON DUPLICATE KEY UPDATE department_name='Finance';

-- Insert data into employees table
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '555-1234', '2020-01-15', 'HR_MANAGER', 75000, NULL, 1) ON DUPLICATE KEY UPDATE first_name='John', last_name='Doe', email='john.doe@example.com', phone_number='555-1234', hire_date='2020-01-15', job_id='HR_MANAGER', salary=75000, manager_id=NULL, department_id=1,
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2019-03-23', 'IT_PROG', 90000, 1, 2) ON DUPLICATE KEY UPDATE first_name='Jane', last_name='Smith', email='jane.smith@example.com', phone_number='555-5678', hire_date='2019-03-23', job_id='IT_PROG', salary=90000, manager_id=1, department_id=2,
(3, 'Sam', 'Brown', 'sam.brown@example.com', '555-8765', '2018-11-11', 'FIN_ANALYST', 85000, 1, 3) ON DUPLICATE KEY UPDATE first_name='Sam', last_name='Brown', email='sam.brown@example.com', phone_number='555-8765', hire_date='2018-11-11', job_id='FIN_ANALYST', salary=85000, manager_id=1, department_id=3;

-- Step 4: Perform Queries

-- Query 1: Retrieve all employees
SELECT * FROM employees;

-- Query 2: Retrieve employees with a salary greater than $80,000
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary > 80000;

-- Query 3: Join employees with departments
SELECT e.first_name, e.last_name, e.email, d.department_name 
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Query 4: Count employees in each department
SELECT d.department_name, COUNT(e.employee_id) AS num_employees
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

