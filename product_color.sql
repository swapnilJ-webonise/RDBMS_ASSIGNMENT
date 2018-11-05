CREATE TABLE products_colors(
    product_id INT,
    color_id INT,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (color_id) REFERENCES colors(id),
    id INT PRIMARY KEY,
		price FLOAT(10,3)
);
		 

    INSERT INTO products_colors VALUES(2020,155,900,1999.21);
    INSERT INTO products_colors VALUES(2030,215,910,999.21);
    INSERT INTO products_colors VALUES(2050,55,890,959.11);
    INSERT INTO products_colors VALUES(2060,125,990,989.11);


     SELECT * FROM products_colors;
