USE employees;

# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya');
# SELECT * FROM employees WHERE first_name='Irena' OR first_name='Vidya' OR first_name='Maya';
SELECT * FROM employees WHERE gender = 'M' AND (first_name='Irena' OR first_name='Vidya' OR first_name='Maya');

# Employees whose last name starts with 'E' — 7,330 rows.
# SELECT * FROM employees WHERE last_name LIKE 'E%';
# SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# Employees hired in the 90s — 135,214 rows.
SELECT * FROM employees WHERE hire_date BETWEEN 19900101 AND 19991231 AND birth_date LIKE '%12-25';

# Employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE birth_date LIKE '%12-25';

# Employees with a 'q' in their last name — 1,873 rows.
# SELECT * FROM employees WHERE last_name LIKE '%q%';
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

