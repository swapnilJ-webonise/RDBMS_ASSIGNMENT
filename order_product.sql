CREATE TABLE order_product( 
order_id INT, 
product_color_id INT, 
FOREIGN KEY (order_id) REFERENCES order_details(id), 
FOREIGN KEY (product_color_id) REFERENCES product_color(id) 
);

INSERT INTO order_product VALUES (102,890);
INSERT INTO order_product VALUES (104,900);
INSERT INTO order_product VALUES (105,910);
INSERT INTO order_product VALUES (110,900);


SELECT * FROM order_product;
