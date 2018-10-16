CREATE TABLE payment ( 
id INT PRIMARY KEY, 
payment_method VARCHAR(20), 
payment_status VARCHAR(30), 
cart_id INT, 
discount_id VARCHAR(20), 
FOREIGN KEY (cart_id) REFERENCES cart_details(id), 
FOREIGN KEY (discount_id) REFERENCES discount(id) );
