SELECT employees_name AS manager_Name,budget 
FROM employees 
RIGHT JOIN departments  
ON employees.id = departments.managerId 
ORDER BY budget desc;
