CREATE TABLE product_color(
    product_id INT,
    color_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (color_id) REFERENCES color(id),
    id INT PRIMARY KEY,
	price FLOAT(10,3)
);
		 

    INSERT INTO product_color VALUES(2020,155,900,1999.21);
    INSERT INTO product_color VALUES(2030,215,910,999.21);
    INSERT INTO product_color VALUES(2050,55,890,959.11);
    INSERT INTO product_color VALUES(2060,125,990,989.11);


     SELECT * FROM product_color;