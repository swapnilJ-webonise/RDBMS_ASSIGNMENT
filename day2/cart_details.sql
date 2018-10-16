 CREATE TABLE cart_details (id INT PRIMARY KEY);

ALTER TABLE variant ADD CONSTRAINT FOREIGN KEY (cart_id) REFERENCES cart_details(id);

INSERT INTO cart_details VALUES(321,2020);
INSERT INTO cart_details VALUES(322,2030);
INSERT INTO cart_details VALUES(323,2010);
INSERT INTO cart_details VALUES(324,2010);
INSERT INTO cart_details VALUES(325,2050);

select * from cart_details;
