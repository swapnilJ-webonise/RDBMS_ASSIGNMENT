select emp.name  from emp, works , dept  
where emp.id=works.emp_id and works.dept_id=dept.id and        
emp.salary >all (select max(dept.budget) from dept where dept.id=dept.id);
