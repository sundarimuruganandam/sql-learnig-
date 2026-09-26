-- DAY 4: SQL JOINS

-- Create Employees table
CREATE TABLE employees (
    emp_id INTEGER,
    name TEXT,
    dept_id INTEGER,
    salary INTEGER
);

-- Create Departments table
CREATE TABLE departments (
    dept_id INTEGER,
    department TEXT
);

-- Insert Employees data
INSERT INTO employees VALUES
(1, 'Arun', 10, 50000),
(2, 'Bala', 20, 40000),
(3, 'Kumar', 10, 60000),
(4, 'Ravi', 30, 45000),
(5, 'Siva', 10, 55000);

-- Insert Departments data
INSERT INTO departments VALUES
(10, 'IT'),
(20, 'HR'),
(30, 'Sales');


-- Q1: Employee name and department
SELECT e.name, d.department
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- Q2: IT employees
SELECT e.name, d.department
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.department = 'IT';


-- Q3: Employee name, salary and department
SELECT e.name, e.salary, d.department
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;


-- Q4: Number of employees in each department
SELECT d.department, COUNT(e.emp_id) AS employee_count
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.department;


-- Q5: Average salary of each department
SELECT d.department, AVG(e.salary) AS average_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.department;
