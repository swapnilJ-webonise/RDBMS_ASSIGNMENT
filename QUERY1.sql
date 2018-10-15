	SELECT emp.name, emp.age  FROM emp, works , dept  
	WHERE emp.id=works.emp_id AND works.dept_id=dept.id AND dept.name='Hardware' AND 
	emp.id IN (SELECT works.emp_id FROM works, dept
	where works.dept_id=dept.id AND dept.name='Software');

