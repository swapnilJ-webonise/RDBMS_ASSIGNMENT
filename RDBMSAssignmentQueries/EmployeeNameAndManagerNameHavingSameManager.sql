SELECT departments.managerId , GROUP_CONCAT(employees.employees_Name) 
FROM employees 
INNER JOIN works 
ON employees.id = works.employeesId 
INNER JOIN departments 
ON works.departmentsId= departments.id  
GROUP BY departments.managerId;
