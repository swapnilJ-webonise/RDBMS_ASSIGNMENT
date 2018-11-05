create table employees( 
			id INT PRIMARY KEY, 
			employees_name VARCHAR(20), 
			age INT, 
			salary FLOAT(10,3)
);

INSERT INTO employees VALUES(100,"Swapnil Jejurkar",23,12000.232);
INSERT INTO employees VALUES(101,"Shriniwas Kendre",22,4320000.232);
INSERT INTO employees VALUES(102,"Vinay Dubey",23,12000.232);
INSERT INTO employees VALUES(103,"Vaibhav Tapdiya",23,11000.232);
INSERT INTO employees VALUES(104,"Kailas Joshi",24,11500.232);

SELECT * FROM employees;


CREATE TABLE departments(
     id INT PRIMARY KEY,
     departmentsName VARCHAR(30),
     budget FLOAT(15,5),
     managerId INT,
     FOREIGN KEY (managerId) REFERENCES employees(id));

INSERT INTO departments VALUES (200,"Hardware departments",1000000.345,101);
INSERT INTO departments VALUES (201,"Software departments",2500000.235,102);
INSERT INTO departments VALUES (203,"BA departments",1500000.235,104);

SELECT * FROM departments;


CREATE TABLE works(
		employeesId INT,
		departmentsId INT, 
		pct_time INT, 
		FOREIGN KEY (employeesId) REFERENCES employees(id), 
		FOREIGN KEY (departmentsId) REFERENCES departments(id) 
);

INSERT INTO works VALUES (101,200,60);
INSERT INTO works VALUES (101,203,40);
INSERT INTO works VALUES (103,201,50);
INSERT INTO works VALUES (103,200,50);
INSERT INTO works VALUES (100,201,60);
INSERT INTO works VALUES (100,203,40);

SELECT * FROM works;
