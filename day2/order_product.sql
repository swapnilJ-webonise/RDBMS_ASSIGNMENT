CREATE TABLE order_product(
     	user_id INT,
      variant_id INT,
      order_id INT,
      order_date DATE,
      FOREIGN KEY (user_id) REFERENCES users(id),
      FOREIGN KEY (variant_id) REFERENCES variants(id),
      FOREIGN KEY (order_id) REFERENCES order_details(id)
     );

