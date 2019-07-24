 CREATE TABLE variants
  (
     id         INT PRIMARY KEY,
     product_id INT,
     color      VARCHAR(20),
     price      DOUBLE (7, 3),
     size       VARCHAR(20),
     FOREIGN KEY (product_id) REFERENCES products(id)
  );

INSERT INTO variants
VALUES      (421,
             2030,
             "red",
             499.89,
             "medium");

INSERT INTO variants
VALUES      (422,
             2010,
             "black",
             599.89,
             "medium");

INSERT INTO variants
VALUES      (423,
             2040,
             "blue",
             389.89,
             "small");

INSERT INTO variants
VALUES      (424,
             2020,
             "pink",
             399.89,
             "small");

INSERT INTO variants
VALUES      (425,
             2050,
             "white",
             1229.89,
             "large");  
             
             
SELECT * 
FROM variants;
