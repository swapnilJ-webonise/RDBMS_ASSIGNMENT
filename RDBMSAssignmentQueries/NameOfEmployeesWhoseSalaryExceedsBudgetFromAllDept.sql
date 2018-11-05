SELECT DISTINCT(employees.employees_name),employees.salary 
FROM employees 
LEFT JOIN works 
ON employees.id = works.employeesId 
INNER JOIN departments 
ON departments.id = works.depart 
AND employees.salary > departments.budget;
