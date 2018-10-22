 CREATE TABLE payments
  (
     id              INT PRIMARY KEY,
     payments_method VARCHAR(20),
     payments_status VARCHAR(30),
     user_id         INT,
     discount_id     VARCHAR(20),
     FOREIGN KEY (user_id) REFERENCES users(id),
     FOREIGN KEY (discount_id) REFERENCES discounts(id)
  );


