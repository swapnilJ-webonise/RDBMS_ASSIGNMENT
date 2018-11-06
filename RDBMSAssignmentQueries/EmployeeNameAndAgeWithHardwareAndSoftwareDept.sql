SELECT DISTINCT(employees.id),employees_Name,age 
FROM employees 
INNER JOIN works 
ON employees.id = works.employeesId 
INNER JOIN departments 
ON departments.id = works.departmentsId
WHERE department.id IN (200,201);;
