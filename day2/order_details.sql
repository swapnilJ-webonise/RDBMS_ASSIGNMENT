CREATE TABLE order_details (
id INT PRIMARY KEY, 
price DOUBLE(10,3), 
discount_id VARCHAR(20), 
payment_id INT, 
user_id INT, 
FOREIGN KEY (discount_id) REFERENCES discount(id), 
FOREIGN KEY (payment_id) REFERENCES payment(id), 
FOREIGN KEY (user_id) REFERENCES user(id)); 
