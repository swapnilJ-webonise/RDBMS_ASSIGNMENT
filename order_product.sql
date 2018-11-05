CREATE TABLE orders_products( 
order_id INT, 
product_color_id INT, 
FOREIGN KEY (order_id) REFERENCES order_details(id), 
FOREIGN KEY (product_color_id) REFERENCES products_colors(id) 
);

INSERT INTO orders_products VALUES (102,890);
INSERT INTO orders_products VALUES (104,900);
INSERT INTO orders_products VALUES (105,910);
INSERT INTO orders_products VALUES (110,900);


SELECT * FROM orders_products;
