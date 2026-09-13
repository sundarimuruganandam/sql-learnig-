-- DAY 2: Aggregate Functions + GROUP BY
-- Concepts: COUNT, SUM, AVG, MIN, MAX, GROUP BY

-- Problem 1
-- Find the total number of employees
SELECT COUNT(*)
FROM employees;


-- Problem 2
-- Find the average salary of each department
SELECT department, AVG(salary)
FROM employees
GROUP BY department;


-- Problem 3
-- Find the highest salary in each department
SELECT department, MAX(salary)
FROM employees
GROUP BY department;
