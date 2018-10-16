select emp.name,manager_id,budget 
from dept,emp,works 
where emp.id = works.emp_id and dept.id = works.dept_id 
order by budget desc;
