-- Create a new table named 'employees'
CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert data into the 'employees' table
INSERT INTO employees (id, first_name, last_name, age, department, salary) VALUES
(1, 'John', 'Doe', 30, 'HR', 60000.00),
(2, 'Jane', 'Smith', 35, 'Finance', 75000.00),
(3, 'Sam', 'Johnson', 28, 'IT', 68000.00),
(4, 'Anna', 'Brown', 40, 'Marketing', 82000.00);

-- Query all data from the 'employees' table
SELECT * FROM employees;

-- Query specific columns from the 'employees' table
SELECT first_name, last_name, department FROM employees;

-- Query data with a condition
SELECT * FROM employees WHERE department = 'IT';

-- Query data with multiple conditions
SELECT * FROM employees WHERE age > 30 AND salary < 80000.00;

-- Update data in the 'employees' table
UPDATE employees SET salary = 70000.00 WHERE id = 1;

-- Delete data from the 'employees' table
DELETE FROM employees WHERE id = 4;

-- Aggregate functions: Count, Sum, Average, Min, Max
-- Count the number of employees
SELECT COUNT(*) AS total_employees FROM employees;

-- Sum of all salaries
SELECT SUM(salary) AS total_salary FROM employees;

-- Average salary
SELECT AVG(salary) AS average_salary FROM employees;

-- Minimum salary
SELECT MIN(salary) AS minimum_salary FROM employees;

-- Maximum salary
SELECT MAX(salary) AS maximum_salary FROM employees;

-- Group data and use aggregate functions
-- Total salary by department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- Order data by a specific column
SELECT * FROM employees ORDER BY last_name ASC;

-- Join two tables (example)
-- Create another table 'departments'
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert data into the 'departments' table
INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

-- Query with JOIN
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department = d.department_name;
