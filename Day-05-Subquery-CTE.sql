-- DAY 5: SQL SUBQUERY AND CTE

-- Create Employees table
CREATE TABLE employees (
    emp_id INTEGER,
    name TEXT,
    department TEXT,
    salary INTEGER
);

-- Insert data
INSERT INTO employees VALUES
(1, 'Arun', 'IT', 50000),
(2, 'Bala', 'HR', 40000),
(3, 'Kumar', 'IT', 60000),
(4, 'Ravi', 'Sales', 45000),
(5, 'Siva', 'IT', 55000);


-- Q1: Find employees earning more than average salary
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- Q2: Find employee with highest salary
SELECT name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- Q3: Find employee with lowest salary
SELECT name, salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);


-- Q4: Count employees earning more than 50000
SELECT COUNT(*) AS employee_count
FROM employees
WHERE salary > 50000;


-- Q5: Find average salary using CTE
WITH avg_salary AS (
    SELECT AVG(salary) AS average
    FROM employees
)
SELECT *
FROM avg_salary;


-- Q6: Find employees earning more than average salary using CTE
WITH avg_salary AS (
    SELECT AVG(salary) AS average
    FROM employees
)
SELECT e.name, e.salary
FROM employees e
CROSS JOIN avg_salary a
WHERE e.salary > a.average;
