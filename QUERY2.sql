select dept.manager_id , GROUP_CONCAT(emp.name)  
from emp,works,dept 
WHERE emp.id=works.emp_id and works.dept_id= dept.id 
GROUP BY dept.manager_id;
