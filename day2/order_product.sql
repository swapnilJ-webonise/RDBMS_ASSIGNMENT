CREATE TABLE order_product(
      variant_id INT,
      order_id INT,
      FOREIGN KEY (variant_id) REFERENCES variant(id),
      FOREIGN KEY (order_id) REFERENCES order_details(id),
      order_date DATE);

