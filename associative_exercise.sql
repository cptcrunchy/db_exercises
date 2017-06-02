use employees;

SELECT dept_name Department_Name,
  concat(e.first_name,' ', e.last_name) Department_Manager
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments dep ON dm.dept_no = dep.dept_no
WHERE dm.to_date LIKE '9999%' ORDER BY Department_Name ASC ;

SELECT dept_name Department_Name,
  concat(e.first_name,' ',e.last_name) Manager_Name
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments dep ON dm.dept_no = dep.dept_no
WHERE dm.to_date LIKE '9999%' AND e.gender = 'F'
ORDER BY Department_Name ASC;

SELECT t.title Title, COUNT(t.title) Count
FROM titles t
JOIN dept_emp emp ON t.emp_no = emp.emp_no
JOIN departments dep ON emp.dept_no = dep.dept_no
WHERE t.to_date LIKE '9999%' AND dep.dept_no = 'd009'
GROUP BY Title ASC;

SELECT dept_name Department_Name,
  CONCAT(e.first_name,' ',e.last_name) Name, s.salary Salary
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments dep ON dm.dept_no = dep.dept_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date LIKE '9999%' AND s.to_date LIKE '9999%'
ORDER BY Department_Name ASC ;

SELECT CONCAT(e.first_name,' ',e.last_name) Employee_Name,
  dep.dept_name Department_Name
FROM employees e
JOIN dept_emp demp ON e.emp_no = demp.emp_no
JOIN departments dep ON demp.dept_no = dep.dept_no
WHERE demp.to_date LIKE '9999%' ORDER BY Employee_Name ASC ;
