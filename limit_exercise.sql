use employees;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

SELECT * FROM employees WHERE  birth_date LIKE '%12-25' AND hire_date BETWEEN 19900101 AND 19991231 ORDER BY birth_date ASC, hire_date DESC LIMIT 5 OFFSET 45;