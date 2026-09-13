-- DAY 3: HAVING, CASE & NULL
-- Concepts: HAVING, CASE, NULL

-- Problem 1
-- Display departments having more than 2 employees
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;


-- Problem 2
-- Display salary level as High or Low
SELECT name, salary,
CASE
    WHEN salary >= 50000 THEN 'High'
    ELSE 'Low'
END AS salary_level
FROM employees;


-- Problem 3
-- Find employees whose phone number is NULL
SELECT *
FROM employees
WHERE phone IS NULL;
