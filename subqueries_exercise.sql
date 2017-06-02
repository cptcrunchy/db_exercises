use employees;

# Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT CONCAT(em.last_name,' ',em.first_name) Full_Name,
  em.hire_date Hire_Date
FROM employees em WHERE em.hire_date
IN (
  SELECT em.hire_date
  FROM employees em
  WHERE em.emp_no = '101010'
);

# Find all the titles held by all employees with the first name Aamod.
SELECT COUNT(t.title)Count, t.title 'Titles by Aamod'
FROM titles t
WHERE t.emp_no
  IN (
    SELECT em.emp_no
    FROM employees em
    WHERE em.first_name LIKE 'Aamod'
  )
GROUP BY `Titles by Aamod` ASC;


# Find all the department managers that are female.
SELECT em.emp_no,
  CONCAT(em.last_name,' ',em.first_name) Manager,
  em.gender Gender
FROM employees em
WHERE em.emp_no
  IN (
    SELECT dm.emp_no
    FROM dept_manager dm
      JOIN employees em ON dm.emp_no = em.emp_no
    WHERE dm.to_date LIKE '9999%' AND em.gender = 'F'
  );

# BONUS Find all the department names that have female managers.
SELECT dep.dept_name Department,
  dep.dept_no Department_ID
FROM departments dep
WHERE dep.dept_no
      IN (
        SELECT dm.dept_no
        FROM dept_manager dm
          JOIN employees em ON dm.emp_no = em.emp_no
        WHERE em.gender = 'F' AND dm.to_date LIKE '9999%'
      );