USE employees;

# Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee.
SELECT CONCAT(em.last_name, ', ', em.first_name) full_name
FROM employees em LIMIT 10;

# Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(em.last_name, ', ', em.first_name) full_name, birth_date DOB
FROM employees em LIMIT 10;

# Update the query to format full name to include the employee number so it is formatted as 'employee number - lastname, firstname'.
SELECT CONCAT(em.emp_no,' - ',em.last_name, ', ', em.first_name) full_name,
  birth_date DOB
FROM employees em;
