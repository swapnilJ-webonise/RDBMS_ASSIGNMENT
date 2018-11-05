create database rdbms_assignment;

CREATE TABLE order_details( 
	id INT PRIMARY KEY, 
	order_desc VARCHAR(30), 
	order_date TIMESTAMP 
);

INSERT INTO order_details(id,order_desc) VALUES (101,"Lotto Shoes");
INSERT INTO order_details(id,order_desc) VALUES (102,"PUMA SHOES");
INSERT INTO order_details(id,order_desc) VALUES (103,"LANCER SHOES");
INSERT INTO order_details(id,order_desc) VALUES (104,"BUCKAROO SHOES");
INSERT INTO order_details(id,order_desc) VALUES (105,"SPORTS SHOES");
 
 select * from order_details; 