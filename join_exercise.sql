use join_test_db;

SELECT concat(a.name,', ', a.email) AS User_info, b.name AS Role
FROM users AS a JOIN roles AS b ON a.role_id = b.id;

SELECT CONCAT(a.name,', ', a.email) AS User_info, b.name AS Role
FROM users AS a LEFT JOIN roles AS b ON a.role_id = b.id;

SELECT concat(a.name,', ', a.email) AS User_info, b.name AS Role
FROM users AS a RIGHT JOIN roles AS b ON a.role_id = b.id;


