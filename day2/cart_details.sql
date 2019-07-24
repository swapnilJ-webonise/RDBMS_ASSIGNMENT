 CREATE TABLE cart_details
  (
     user_id    INT,
     variant_id INT,
     FOREIGN KEY (variant_id) REFERENCES variants(id),
     FOREIGN KEY (user_id) REFERENCES users(id)
  );

INSERT INTO cart_details
VALUES     (511,
            423);

INSERT INTO cart_details
VALUES     (512,
            422);

INSERT INTO cart_details
VALUES     (513,
            424);

INSERT INTO cart_details
VALUES     (515,
            425);

INSERT INTO cart_details
VALUES     (514,
            421);

SELECT *
FROM   cart_details;  
